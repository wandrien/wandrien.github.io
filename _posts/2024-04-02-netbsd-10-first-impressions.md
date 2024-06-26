---
title: NetBSD 10.0 — первые впечатления от использования
category: user-notes
tags: netbsd bsd operating-systems
---

Несколько дней назад релизнулась NetBSD 10.0, включающая в себя улучшения производительности и множество доработок ядра.([Новость на OpenNET с описанием изменений.](https://www.opennet.ru/opennews/art.shtml?num=60886)) Кроме того, что 10 — это красивая и знаковая цифра, это также и по улучшениям весьма интересный релиз. Для меня это стало стимулом поставить NetBSD на реальное железо, ведь версию 9.x я щупал только в виртуалке.

# Установочный раздел

NetBSD возможно установить либо на раздел GPT, либо на первичный раздел MBR (но не на расширенный).

Ядро не работает с MBR напрямую, а генерирует для таких дисков фиктивную таблицу BSD label и затем уже работает с ней. По какой-то причине генерирует оно её только для первичных разделов, но не для расширенных.

Поэтому при работе с дисками, размеченными в MBR реалистичный сценарий такой:

* Создать первичный раздел. Присвоить ему тип номер 169. В начале этого раздела NetBSD будет хранить BSD label. На нём же будет располагаться её корневая ФС.
* При помощи `mbrlabel` сгенерировать BSD label, повторяющую разделы MBR. Теперь NetBSD видит все разделы.
* Если при использовании нескольких ОС вы поменяете разметку в MBR и не синхронизируете изменения в BSD label, то вы сами себе создали проблемы.

NetBSD также поддерживает тома LVM. Однако загрузка с тома LVM невозможна, так как LVM еще не инициализирован на этапе монтирования корня ядром. Вероятно, эта задача не является неразрешимой, и можно использовать аналог линуксового `initramfs`, который будет инициализировать LVM. Эту задачку я оставил на будущее.

Итого: если у вас диск размечен в GPT, то у вас всё хорошо. Если у вас, как у меня, диск форматирован в далёкие времена в MBR, и на нём куча данных, которые так просто не переместить, то вы можете огрести приключений. Но всё решаемо.

# Загрузка системы

Я форматировал корень в новую версию FFS v2ea, которую GRUB 2 не смог распознать. Поэтому для загрузки ОС через GRUB необходимо скопировать ядро на раздел, который GRUB 2 понимает. Конфиг для загрузки может быть максимально простой:

```
menuentry "NetBSD" {
    set root=(hd0,2) # это раздел, где GRUB может считать ядро netbsd
    knetbsd -r wd0g /boot/netbsd/netbsd # грузим ядро с указанием, что будет для него служить корнем
}
```

# Управление памятью в ядре

Управление страничной памятью в NetBSD устроено иначе, чем в Linux, и доступные прикладному коду счётчики, показывающие число страниц памяти в разных состояниях, слабо помогают ответить на практический вопрос: *сколько еще памяти я могу использовать под вычисления перед тем, как система начнёт тормозить из-за нехватки ОЗУ?* В Linux это тоже не всегда очевидно, но там некоторые предположения можно сделать более уверенно.

Если вы видите, что у вас постоянно половину ОЗУ занимают страницы в состоянии `Active`, а при этом реально ничего тяжелого не запущено — это нормально. В таких случаях большая часть этой `Active` — это файловый кэш. NetBSD не стремится выводить такую память в список `Inactive`.

Возможно, на тему работы подсистемы виртуальной памяти в NetBSD я позже напишу отдельную заметку.

# Прикладной софт

Собранных пакетов в БД pkgin не так уж много, но в целом все базово необходимое — есть.

Поскольку я сварщик не настоящий, то сразу установил и прописал в качестве shell `bash` вместо предлагаемого по умолчанию `ksh`, а также установил и настроил `sudo`.

XFCE4 работает без проблем, точнее сказать если и имеет проблемы, то это не проблемы, специфичные для NetBSD.

В целом прикладные программы работают точно так же, как и на Linux, на этом уровне разница между ОС исчезает. А вот что касается багов и падений — время даст ответ.

# Баги

У меня случились три существенных проблемы, мешающих эксплуатации ОС.

**1. Нерабочий Wi-Fi на Centrino Wireless-N 130.**

[Изучил и исправил проблему.]({% link _posts/2024-04-03-netbsd-centrino-n-130-fix.md %})

**2. Нет вывода звука через гнездо для наушников на чипе ALC269**

Нужно разбираться с кодом драйвера, пока не вникал.

**3. Артефакты рендеринга в Firefox**

Очень неприятный и загадочный баг. Рендеринг всех полупрозрачных элементов графики сломан. Соответствующие элементы либо не рендерятся вообще, либо "огрубляются" до непроизрачных некоторым образом. То есть сломан альфа-блендинг.

Выглядит это вот так: [ссылка](/media/netbsd-firefox-rendering-glitch.png).

Глюк затрагивает как содержимое сайтов, так и UI firefox-а.

Глюк воспроизводится на всех актуальных версиях, которые представлены в репозитории pkgin: 102, 115, 120. Не воспроизводится на древней версии 52.

Глюк идентично себя проявляет как на виртуалке Virtual Box так и на реальном железе с интеловскими драйверами.

Так как затронуты все недавние версии firefox, это не проблема сборки конкретной версии, а нечто, возникающее на стыке взаимодействия кода firefox и... чего-то еще. Чего именно и как именно? Не представляю.

Еще более загадочно, что проблема, похоже, есть только у меня, и ничего подобного не гуглится.

Пользоваться большинством сайтов с трудом можно — выглядят страшно, и кое-где приходится угадывать невидимые ссылки и кнопки по памяти.

Что плохо — я не понимаю, с чего начинать диагностику и отладку этой проблемы.