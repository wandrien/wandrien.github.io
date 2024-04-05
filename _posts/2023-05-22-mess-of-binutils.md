---
title: Бардак в binutils
category: developer-notes
tags: binutils gnu-brain-damage
---

(Это копия моего поста, размещенного на форуме: <https://www.linux.org.ru/forum/talks/17234241>)

Простите, но у меня сгорела жопа.

Итак, **binutils**.

* На гнутой странице проекта нет ни ссылок на релиз ноты, ни даже дат выхода новых релизов: <https://www.gnu.org/software/binutils/>.
* На странице проекта на сорсваре то же самое: <https://sourceware.org/binutils/>.
* Релиз ноты постятся в общетрёпный мейл-лист, в котором это выглядит вот так: <https://sourceware.org/pipermail/binutils/2022-February/thread.html>. Не в отдельный мейл-лист для анонсов, сцуко. Что им млять помешало его завести.
* Единственный способ найти там релиз ноты - это воспользоваться гуглопоиском в надежде, что он достаточно умный. Типа такого: <https://www.google.com/search?q=binutils+2.21+released+site%3Ahttps%3A%2F%2Fsourceware.org>.
* Но вообще это вам не поможет: <https://sourceware.org/legacy-ml/binutils/2013-12/msg00027.html>.
* Если скачать сорцы программы, то релиз ноты там не лежат одним файлом, а разбиты на пять, вашу мать, частей. Патамушта патаму.
```
$ find . -name NEWS
./gold/NEWS
./gas/NEWS
./ld/NEWS
./binutils/NEWS
./libctf/NEWS
```
* В релиз нотах нет даты выхода релиза. Хер бы с ней, но напоминаю: на сайте этой инфы тоже нигде нет. Иди гугли мейл-листы.
* У `gold` собственная система нумерации релизов, не совпадающая с нумерацией проекта. А почему бы и нет?
* В распределении сорцов по каталогам хаос, ничего похожего на адекватную структуру и близко нет. Вали всё кучей, в 1980-м люди экономят время на `cd`.
* Никакого внятного мануала по сборке из сорцов и по требованиям к системе нет в info-документации. В корневом `./README` тоже нет. Внезапно крохи информации есть в файле `./binutils/README`. А чо не в `./binutils/I/fukin/love/weird/places/README`? Удачи грепать сборочные конфиги, если что-то пошло не так:
```
$ find . -name configure.ac | xargs wc -cl
   711  22977 ./gold/configure.ac
    80   2528 ./gprof/configure.ac
   239   6841 ./gprofng/configure.ac
    68   1959 ./gprofng/libcollector/configure.ac
  1109  44906 ./bfd/configure.ac
  1053  30229 ./gas/configure.ac
   680  20278 ./ld/configure.ac
   558  15835 ./binutils/configure.ac
  3683 117906 ./configure.ac
   297  11115 ./libctf/configure.ac
   791  22529 ./libiberty/configure.ac
   397  13662 ./opcodes/configure.ac
    77   2355 ./intl/configure.ac
   131   3452 ./zlib/configure.ac
    32    787 ./zlib/contrib/minizip/configure.ac
```
* У проекта даже есть вики, но зачем она есть, никто не знает: <https://sourceware.org/binutils/wiki/TitleIndex>

---

Некоторые комменты:

**EXL**:

> Самое отвратное – нет нигде таблицы совместимости вида
>
> binutils-version <=> gcc-version
>
> Если требуется собрать старый GCC, нужно ориентироваться по датам.



**a1ba**:

> Именно такое у меня было взаимодействие с этим же binutils, как ты описал.
> 
> Более того, чтобы законтрибутить туда что-то, надо подписывать CLA и отправлять в FSF. Но вот детальной информации о том как оформлять патчи нет.

**AP**:

> Скажи спасибо, что NEWS вообще есть. Мне как-то пришлось для дела выгрести из гита полтора года коммитов в проект, чтобы понять изменения. Потому что «ну мы тут чё-то выпустили, вот, пользуйтесь, нужен список изменений – читайте гит лог». Это просто низкая культура software development. Как говорит один мой знакомый про таких персонажей, «ты программист хороший, но разработчик херовый».

---

P.S.

Для меня примером, как надо оформлять релиз ноты, является `glibc`. На странице <https://sourceware.org/glibc/wiki/Glibc%20Timeline> представлена таблица с версиями и датами, а также со ссылками, перейдя по которым, вы можете прочитать подробную информацию о релизе.

А примером того, как описывать требования к сборочному процессу, можно считать `musl`: <https://web.archive.org/web/20221020125040/https://musl.libc.org/doc/1.1.24/manual.html>

Это уже не говоря о том, что:

> The only build-time prerequisites for musl are the standard POSIX shell and utilities, GNU Make (version 3.81 or later) and an appropriate freestanding C99 compiler toolchain (see below) targeting the desired instruction set architecture and ABI.
>
> The system used to build musl does not need to be Linux-based, nor do the Linux kernel headers need to be available.
