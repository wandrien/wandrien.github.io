---
title:  "Исторический софт, который был открыт под свободными лицензиями"
category: misc
tags: operating-systems dos solaris
---

На этой странице собраны интересные на мой взгляд примеры проприетарного софта, который был выпущен под свободными лицензиями — как правило, спустя годы после того, как перестал иметь коммерческую ценность.

В основном здесь представлены системные компоненты. Более полный список перелицензированного ПО можно посмотреть в википедии — [раз](https://en.wikipedia.org/wiki/List_of_formerly_proprietary_software) и [два](https://en.wikipedia.org/wiki/Category:Formerly_proprietary_software).

### Операционные системы

* [CP/M](https://en.wikipedia.org/wiki/CP/M) и [MP/M](https://en.wikipedia.org/wiki/MP/M). BSD.
* [MS-DOS v1.25 и v2.0](https://github.com/microsoft/ms-dos). MIT.
* [PC-MOS/388](https://github.com/roelandjansen/pcmos386v501) — DOS-совместимая многозадачная ОС. GPLv3+. [Мой краткий обзор]({% post_url 2021-11-12-ps-mos %}).
* [DR-DOS и OpenDOS](https://en.wikipedia.org/wiki/DR-DOS) — DOS-совместимая ОС с расширенными функциями и поддержкой многозадачности. Часть версий доступны под опенсорсными лицензиями. См. также: [OpenDOS](http://www.deltasoft.com/opendos.htm).
* [OpenSolaris](https://en.wikipedia.org/wiki/OpenSolaris). CDDL на основе MPL. Кажется, уникальный случай, когда проприетарная операционная система такого уровня проработки была выпущена в опенсорс. Хотя этот продукт не совсем «исторический» (кое-где еще актуальный), но уже близок к таковому.
* [Minix](https://en.wikipedia.org/wiki/Minix). BSD. Актуальные в начале 90-х версии Minix распространялись под проприетарной лицензией, что и послужило мотивом к разработке ядра Linux. Перелицензирована в 00-х.
* [Coherent](http://www.nesssoftware.com/home/mwc/source.php) — unix-подобная ОС. BSD.

Также в этой категории стоит упомнять **свободные клоны проприетарных операционных систем**:

* [FreeDOS](https://www.freedos.org/) — клон **MS-DOS**. GPLv2+.
  * Статус: Почти полный клон, достаточный для запуска большинства приложений. Однако, часть недокументированных API для работы с памятью не реализованы. Поэтому запустить поверх этого ДОСа ядра Windows 3, 95, 98, ME на данный момент невозможно.
* [ReactOS](https://reactos.org/) — клон **Windows NT/2k/XP/7**. GPLv2+.
  * Статус: Вечная альфа. По состоянию на 2021 год ядро всё еще работает нестабильно, годится только для тестов в виртуалке. (UPD: В 2023-м ничего не поменялось. Разрабатывать ReactOS практически некому.)
* [Haiku](https://www.haiku-os.org/) — клон **BeOS**. MIT.
  * Статус: Практически полный функциональный клон + много собственных доработок. Активно развивается.
* [AROS](https://www.haiku-os.org/) — клон **AmigaOS**. Лицензия схожа с MPL, является свободной, но несовместима с GPL.
  * Статус: На достаточно высоком уровне проработке, но детали мне неизвестны. Есть вот такой отчёт: [http://www.aros.org/introduction/status/everything.php](http://www.aros.org/introduction/status/everything.php)
* [osFree](http://www.osfree.org/) — клон **OS/2**. Лицензия: смешанная, разные компоненты под разными.
  * Статус: Ранняя альфа. Проект долгое время был заброшен, но пару лет назад снова появилась какая-то активность.
* [EmuTOS](https://emutos.sourceforge.io/) — клон **TOS**, операционной системы для **Atari ST**. А также [FreeMiNT](https://freemint.github.io/) — с многозадачностью, защитой памяти, поддержкой многопользовательских конфигураций и расширенными API для портирвоания Unix-like софта. GPLv2+.
  * Статус: Стабильный продукт + много собственных доработок. Активно развивается.

### Графические оболочки и операционные среды

* [PC/GEOS](https://github.com/bluewaysw/pcgeos) — операционная среда для MS-DOS. Apache License 2.0.
* [GEM](http://www.deltasoft.com/) — операционная среда для различных систем 80-х годов, включая MS-DOS, TOS, CP/M-68K. GPLv2-only. См.: [FreeGEM](https://en.wikipedia.org/wiki/FreeGEM). Также: [ViewMAX](https://en.wikipedia.org/wiki/ViewMAX).
* [CDE](http://sf.net/projects/cdesktopenv/) — среда рабочего стола для X11. LGPLv2+.

### Тулкиты

* [Motif](https://motif.ics.com/motif). LGPLv2.1+.
* [MGR](https://hack.org/mc/mgr/) — не совсем подходит для этого списка, так как под свободной лицензией так и не был выпущен. Тем не менее «на почитать» исходники доступны. Довольно уникальная оконная система для unix-совместимых машин.

### Трансляторы, компиляторы, интерпретаторы...

* [Microsoft GW-BASIC](https://github.com/microsoft/GW-BASIC). MIT.
* [Watcom C/C++](https://en.wikipedia.org/wiki/Watcom_C/C%2B%2B)
* [BDS C Compiler](https://en.wikipedia.org/wiki/BDS_C). Public domain.

### Прочее:

* [WinFile](https://github.com/Microsoft/winfile) — файловый менеджер из Windows 3. MIT.
