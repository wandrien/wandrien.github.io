---
title:  "Ссылки"
---

## Проектирование, дизайн систем

[Простыми словами про Brewer's CAP Theorem.](http://softwaremaniacs.org/blog/2010/01/31/brewers-cap-theorem/) «В распределённой системе невозможно обеспечить одновременное выполнение всех трёх условий: корректности, доступности, устойчивости к сбоям узлов.»

[«Null-terminated строки - самая большая ошибка в истории программирования»](http://jakobz.livejournal.com/216642.html)

[Пишите код, который легко удалять, а не дополнять](https://habrahabr.ru/company/payonline/blog/277629/) ([оригинал на английском](http://programmingisterrible.com/post/139222674273/write-code-that-is-easy-to-delete-not-easy-to))

## Версионирование

[Semantic Versioning](http://semver.org/)

[Semantic Versioning vs. Romantic Versioning](http://dafoster.net/articles/2015/03/14/semantic-versioning-vs-romantic-versioning/)

[On Versioning](http://blog.hypesystem.dk/on-versioning)

## На грани юмора и правды жизни

[Devil’s Dictionary of Programming](http://programmingisterrible.com/post/65781074112/devils-dictionary-of-programming)

## Алгоритмы

[Hash Table Denial of Service Attacks, Revisited.](http://programmingisterrible.com/post/40620375793/hash-table-denial-of-service-attacks-revisited) См также: [SipHash](https://en.wikipedia.org/wiki/SipHash) by [Daniel J. Bernstein](http://cr.yp.to/djb.html).

[Красно-чёрные деревья, предельно понятно](http://rflinux.blogspot.ru/2011/10/red-black-trees.html)

[Обзор сбалансированных деревьев](https://habrahabr.ru/post/66926/)

[Рандомизированные деревья поиска](https://habrahabr.ru/post/145388/)

[2-3 heap](https://habrahabr.ru/post/246105/)

[Lock-free массив для случая "один поток добавляет/удаляет, N потоков читают"](http://alenacpp.blogspot.ru/2010/07/blog-post_30.html)

[Фильтр Блума](https://ru.wikipedia.org/wiki/%D0%A4%D0%B8%D0%BB%D1%8C%D1%82%D1%80_%D0%91%D0%BB%D1%83%D0%BC%D0%B0)

[Алгоритм Кнута-Морриса-Пратта](http://algolist.manual.ru/search/esearch/kmp.php)

[Branchfree Saturating Arithmetic](http://locklessinc.com/articles/sat_arithmetic/)

## Программирование на ассемблере (FASM)

[flat assembler](https://flatassembler.net/) by [Tomasz Grysztar](http://niewidoczna.pl/)

[rwasa](https://2ton.com.au/rwasa/) — http-сервер на FASM. «rwasa is our full-featured, high performance, scalable web server designed to compete with the likes of nginx. It has been built from the ground-up with no externel library dependencies entirely in x86_64 assembly language, and is the result of many years' experience with high volume web environments.» GPLv3+.

[MiniMagAsm](https://asm32.info/index.cgi?page=content/0_MiniMagAsm/index.txt) — CMS на FASM. The Fresh Artistic License.

[AsmBB](https://asm32.info/fossil/repo/asmbb/index) — форумный движок на FASM. Задействует musl и SQLite. 
EUPL. Статьи на Хабре: [\[1\]](https://habrahabr.ru/post/318916/), [\[2\]](https://habrahabr.ru/post/319028/).

[Fresh IDE](https://fresh.flatassembler.net/) — IDE на FASM для FASM. EUPL.

## Языки программирования: Си

[Primula C Compiler](http://primula.l4os.ru/) — русские разработчики делают операционную систему на ядре L4, компилятор Си и собственный CPU.

[Portable C Compiler](http://pcc.ludd.ltu.se/) — я пробовал разобраться в исходниках, рассчитывал выдернуть оттуда фронт-энд и использовать для анализа и трансформаций кода. Увы, там не исходники, а лапша в худших «хакерских» традициях.

[LADSoft CC386 Compiler](http://ladsoft.tripod.com/cc386_compiler.html)

[LADSoft OrangeC Compiler](http://ladsoft.tripod.com/orange_c_compiler.html) ([Github](https://github.com/LADSoft/OrangeC))

[UPS Debugger (C Interpreter)](http://ups.sourceforge.net/main.html) — This is actually a graphical source level debugger for X Window, but it contains a built in C interpreter.

[The BD Software C Compiler (BDS C)](http://www.bdsoft.com/resources/bdsc.html) — исторический компилятор под CP/M, public domain.

[OpenWatcom](http://openwatcom.org/)

[OpenWatcom v2 fork](https://github.com/open-watcom/open-watcom-v2)

[Open64](https://en.wikipedia.org/wiki/Open64) — компилятор для Itanium-а и x86-64.

[DeSmet C](http://www.desmet-c.com/) — старый (под DOS) open source-ный компилятор.

[CParser/libFirm](http://pp.ipd.kit.edu/firm/) — Firm is a C-library that provides a graph-based intermediate representation, optimizations, and assembly code generation suitable for use in compilers. CParser: GCC-compatible C frontend with full C99 support.

[neatcc](http://repo.or.cz/w/neatcc.git) — neatcc implements a large subset of ansi C but lacks features like floating point types, non-integer parameters and struct bitfields.

[nwcc](http://nwcc.sourceforge.net/) — nwcc is a simple C compiler for Unix systems targeting a variety of architectures. Full source code is freely available under the (revised) BSD license.

[rcor C compiler](https://github.com/rcorcs/rcc)

[ucc](http://ucc.sourceforge.net/)

[SmallerC](https://github.com/alexfru/SmallerC) — Smaller C is a simple and small single-pass C compiler, currently supporting most of the C language common between C89/ANSI C and C99 (minus some C89 and plus some C99 features). Currently it generates 16-bit and 32-bit 80386+ assembly code for NASM that can then be assembled and linked into DOS, Windows and Linux programs.

[SubC](http://www.t3x.org/subc/) — SubC is a fast and simple public domain compiler for a clean subset of the C programming language.

Еще интересного у автора SubC:
* [Книга Practical Compiler Construction](http://www.t3x.org/reload/index.html)
* [T3X](http://www.t3x.org/index.html) is a lightweight procedural language with backends for the 8086 (EXE), 386, Alpha, and the Tcode Machine. It features modules, objects, a full optimizing compiler, and a set of tools for manipulating Tcode. The Tcode port of the 8.1.7b compiler works fine on 64-bit systems. Development of T3X ceased in 2004. Version 6.8 of the compiler is described in the book "Lightweight Compiler Techniques" (above). 

[TCC - Tiny C Compiler](http://repo.or.cz/w/tinycc.git) (Старая домашняя страница — [bellard.org/tcc/](http://bellard.org/tcc/))

[SDCC - Small Device C Compiler](http://sdcc.sourceforge.net/) — SDCC is a retargettable, optimizing ANSI - C compiler suite that targets the Intel MCS51 based microprocessors (8031, 8032, 8051, 8052, etc.), Maxim (formerly Dallas) DS80C390 variants, Freescale (formerly Motorola) HC08 based (hc08, s08), Zilog Z80 based MCUs (z80, z180, gbz80, Rabbit 2000/3000, Rabbit 3000A, TLCS-90) and STMicroelectronics STM8.

[Fail-Safe C](https://staff.aist.go.jp/y.oiwa/FailSafeC/index-en.html) — Fail-Safe C is a memory-safe implementation of the full ANSI C language. More precisely, it detects and disallows all unsafe operations, yet conforming to the full ANSI C standard (including casts and unions) and even supporting many "dirty tricks" common in many existing programs which do not strictly conform to the standard.

[Cyclone](http://cyclone.thelanguage.org/) — Си-подобный язык, благодаря суровой системе типов ловящий множество классов ошибок во время компиляции.

[Cilk](http://supertech.csail.mit.edu/cilk/) — Си-подобный язык, предназначенный для паралелльного многопоточного программирования.

## Языки программирования: Tcl

[Jim is an opensource small-footprint implementation of the Tcl programming language.](http://jim.tcl.tk/index.html/doc/www/www/index.html) Увы, но классическая реализация Tcl — типичный пример bloatware. Jim решает эту проблему.

[Lil](http://runtimelegend.com/rep/lil/home) — встраиваемый Tcl-подобный язык. (Примечание: ссылка долхая. У меня где-то была копия репозитория. Найти бы...)

[partcl](http://zserge.com/blog/tcl-interpreter.html):

    ~600 lines of "pedantic" C99 code
    No external dependencies
    Good test coverage
    Can be extended with custom Tcl commands
    Runs well on bare metal embedded MCUs (~10k of flash is required)
    MIT License

# Языки программирования: Скриптовые мини-языки (в основном, встраиваемые)

[Duktape](http://duktape.org/) — компактный встраиваемый движок JavaScript. "Код Duktape занимает около 200 Кб и потребляет всего 46kB ОЗУ, а в режиме низкого потребления памяти 22kB ОЗУ. Подобная особенность позволяет использовать Duktape на встраиваемых системах, укомплектованных 256kB Flash и 96kB ОЗУ."

[Lua](http://www.lua.org/) — начиная с версии 5.3 Lua поддерживает 64-разрядную целочисленную арифметику и зачатки UTF8.

[LuaJIT](http://luajit.org/) — а LuaJIT по-прежнему поддерживает лишь 5.1, зато исполняет код с фантастической скоростью.

[wren](https://github.com/darius/wren) — Language with a bytecode compiler that can run on computers with only a few kB of RAM. (by darius)

[tusl](https://github.com/darius/tusl) — A scripting language for extending C programs; recognizably Forth-like, but definitely not Forth. (by darius)

[req](https://github.com/darius/req) — a programmable calculator using rewrite rules. (by darius)

[NSP](https://nulllogic.ca/nsp/) is the complete object-based scripting language written in just a few thousand lines of ANSI C. It's portable, thread-safe, flexible, embeddable, expandable and easy to understand (as a language and as an API).

[aime](https://sourceforge.net/projects/aime-embedded/) is a simple, C like programming language and an application embeddable interpreter. 

[execline](http://www.skarnet.org/software/execline/) is a (non-interactive) scripting language, like sh ; but its syntax is quite different from a traditional shell syntax.

## Языки программирования: Прочее (экспериментальные, перспективные и т.п.)

[occ](https://ooc-lang.org/) is a small programming language with a clear and concise syntax that compiles to C99.

[Seed7](http://seed7.sourceforge.net/). Очень интересный проект. Собственные конструкции языка описаны с использованием его же собственного подмножества типов. Фактически, 90% того, что принято считать «языком», здесь представляет собой стандартную библиотеку, завёрнутую в синтаксических сахар благодаря расширяемому синтаксису.
Подход правильный, как мне представляется. На мой взгляд, транслятор идеального статически типизированного языка должен сводиться к интерпретатору языка типов, а компиляция целевой программы — к выполнению вывода типов над исходным кодом.

[Zig](http://ziglang.org/) is a system programming language which prioritizes optimality, safety, and readability.

[Terra](http://terralang.org/) is a low-level system programming language that is embedded in and meta-programmed by the Lua programming language.

[Felix](http://felix-lang.org/) — An advanced high performance statically typed scripting language.

[Io](http://iolanguage.org/) — Гомоиконность, ООП на прототипах, ВСЁ в программе является посылкой сообщения (в т.ч. встроенные примитивы).

[Ioke](https://ioke.org/) — основан на идеях Io. Проект не развивается.

[Red](http://www.red-lang.org/p/about.html) s a next-gen programming language, strongly inspired by REBOL. Main features are:

    Homoiconic (Red is its own meta-language and own data-format)
    Functional, imperative, reactive and symbolic programming
    Prototype-based object support
    Gradual and multi-typing
    Macros system
    Rich set of built-in datatypes (50+)
    Both statically and JIT-compiled to native code
    Cross-compilation done right.
    Produces executables of less than 1MB, with no dependencies.
    Concurrency and parallelism strong support (actors, parallel collections)
    Low-level system programming abilities through the built-in Red/System DSL
    Powerful PEG parser DSL
    Cross-platform native GUI system, with a UI DSL and drawing DSL.
    Bridging to the JVM
    High-level scripting and REPL console included
    Highly embeddable
    Low memory footprint, garbage collected
    Single-file (~1MB) contains whole toolchain, standard library and REPL.
    No install, no setup
    Fun guaranteed. ;-)


## Разработка юзерспейса Linux со товарищи

[heirloom.sourceforge.net](http://heirloom.sourceforge.net/)

[www.landley.net/toybox/](http://www.landley.net/toybox/)

[tools.suckless.org/sbase](http://tools.suckless.org/sbase)

[tools.suckless.org/ubase](http://tools.suckless.org/ubase)

[www.fefe.de/embutils/](http://www.fefe.de/embutils/)

[github.com/darius/ung](https://github.com/darius/ung)

[vdev](https://github.com/PeteGozz/vdev) — «Представлен новый проект vdev (virtual device filesystem), нацеленный на разработку менеджера файлов-устройств, выступающего в роли кросс-платформенной и не зависящей от систем инициализации альтернативы udev и devfs. Работа vdev изначально тестируется не только в Linux, но и во FreeBSD и OpenBSD.»

# Инит и/или супервизор

[cinit](http://www.nico.schottelius.org/software/cinit/)

[runit](http://smarden.org/runit/)

[s6](http://skarnet.org/software/s6/)

[qinit](http://galos.no-ip.org/qinit)

[epoch](http://universe2.us/epoch.html)

[without-systemd.org](http://without-systemd.org/wiki/index.php/Main_Page)

## Unix Shell

[Filenames and Pathnames in Shell: How to do it Correctly](http://www.dwheeler.com/essays/filenames-in-shell.html)

[POSIX shell tricks](http://www.etalabs.net/sh_tricks.html)

## Библиотеки для работы с изображениями

[libpng](http://www.libpng.org/pub/png/libpng.html) — кодек PNG.

[libjpeg-turbo](http://www.libjpeg-turbo.org/) — кодек JPEG.

[openjpeg](http://www.openjpeg.org/) — кодек JPEG 2000.

[bpg](http://bellard.org/bpg/) — «Fabrice Bellard представил новый свободный формат упаковки изображений BPG (Better Portable Graphics), нацеленный на замену формата JPEG, обеспечивая более оптимальные характеристики качества картинки и результирующего размера файла.»

## Библиотеки виджетов, тулкиты

[Little Forms](http://runtimelegend.com/rep/lforms/index) is an open source minimalistic GUI widget library written in plain C. It currently supports Windows and X11 backends.

[Nuklear](https://github.com/vurtun/nuklear) — встраиваемая библиотека для создания пользовательских интерфейсов. Не имеет никаких зависимостей (чистый C89). Есть примеры встраивания для WinAPI, X11, SDL, Allegro, GLFW, OpenGL, DirectX.  Небольшой размер (порядка 15 тысяч строк кода). Public Domain. (Также: [статья на Хабре](https://habrahabr.ru/post/319106/).)

[Agar](http://libagar.org/) is a cross-platform GUI toolkit. Agar provides a base framework and a collection of GUI widgets from which GUI applications can be built. Agar can be styled and themed using a CSS-style engine.

[TekUI](http://tekui.neoscientists.org/) is a small, freestanding and portable graphical user interface (GUI) toolkit written in Lua and C.

## Трёхмерная графика

[steps3d](http://steps3d.narod.ru/index.html) — огромное количество информации по 3D графике.

## Дизайн графического интерфейса пользователя

[My Ideal OS](http://orangejuiceliberationfront.com/my-ideal-os/) — статья содержит несколько интересных частных идей улучшения GUI.

## Операционные системы

[HelenOS](http://www.helenos.org/) — довольно активно разрабатывающаяся микроядерная система.

## Персоналии

[EWONTFIX](http://ewontfix.com/) — Rich Felker, разработчик Musl.

[asm32](https://asm32.info/) — John Found, разработчик из Болгарии, пишущий на FASM.

[transl-gunsmoker.ru](http://www.transl-gunsmoker.ru/) — переводы на русский статей Реймонда Чена и других авторов из мира Windows.

[Daniel J. Bernstein](http://cr.yp.to/djb.html)

## Философия Downgrade

[fdd5-25.net](http://www.fdd5-25.net/) — «С ноября 2000 года данный проект рассказывает о нашей прикладной философии жизни - Довнгрейд. Сайт посвящен необыкновеннымм техническим решениям на базе морально устаревших технологий (x86, DOS, Win32, MSX и т.д), а так же контркультуре альтернативной обществу массового потребления. Наш ресурс содержит более 700 архивов софта, документов, тысячи тематических статей и материалов.»

[old-hard.ru](http://www.old-hard.ru/)

## Разное

[Unlicense](http://unlicense.org/) — шаблон для передачи программного обеспечения в общественное достояние. Сайт также содержит список ПО, передеанного в общественное достояние с помощью Unlicense или иным способом.

## Мировоззрение

[«Дао Пуха»](http://taopooh.narod.ru/taopooh/intro.htm)

[«Дао Дэ Цзин»](http://taopooh.narod.ru/3/ddc_strann.pdf)

**Кодо Саваки, «Тебе»** (без ссылки; не смог найти в сети полную копию)

[Экхарт Толле](http://mir45.narod.ru/Tolle.html)

[Марк Аврелий, «Размышления»](http://www.psylib.ukrweb.net/books/avrel01/txt01.htm)
