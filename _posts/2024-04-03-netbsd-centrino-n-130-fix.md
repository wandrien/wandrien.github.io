---
title: "BUGFIX: NetBSD: Использование корректной firmware для Intel Centrino Wireless-N 130"
category: my-contributions
tags: netbsd
---

Модель модуля WiFi: `Intel Corporation Centrino Wireless-N 130 (rev 34)`. (`8086:0896`)

Повторяющаяся ошибка в `dmesg`, нет инициализации устройства:

```
[     7.100458] iwn0: autoconfiguration error: fatal firmware error
[     7.100458] autoconfiguration error: firmware error log:
[     7.100458] autoconfiguration error:   error type      = "UNKNOWN" (0x00001999)
[     7.100458] autoconfiguration error:   program counter = 0x00014130
[     7.100458] autoconfiguration error:   source line     = 0x00000136
[     7.100458] autoconfiguration error:   error data      = 0x00000001000000A4
[     7.100458] autoconfiguration error:   branch link     = 0x0001410200014102
[     7.100458] autoconfiguration error:   interrupt link  = 0x0000C71E00000000
[     7.100458] autoconfiguration error:   time            = 26817
[     7.100458] autoconfiguration error: driver status:
[     7.100458] autoconfiguration error:   tx ring  0: qid=0  cur=0   queued=0  
[     7.100458] autoconfiguration error:   tx ring  1: qid=1  cur=0   queued=0  
[     7.100458] autoconfiguration error:   tx ring  2: qid=2  cur=0   queued=0  
[     7.100458] autoconfiguration error:   tx ring  3: qid=3  cur=0   queued=0  
[     7.100458] autoconfiguration error:   tx ring  4: qid=4  cur=2   queued=0  
[     7.100458] autoconfiguration error:   tx ring  5: qid=5  cur=0   queued=0  
[     7.100458] autoconfiguration error:   tx ring  6: qid=6  cur=0   queued=0  
[     7.100458] autoconfiguration error:   tx ring  7: qid=7  cur=0   queued=0  
[     7.100458] autoconfiguration error:   tx ring  8: qid=8  cur=0   queued=0  
[     7.100458] autoconfiguration error:   tx ring  9: qid=9  cur=0   queued=0  
[     7.100458] autoconfiguration error:   tx ring 10: qid=10 cur=0   queued=0  
[     7.100458] autoconfiguration error:   tx ring 11: qid=11 cur=0   queued=0  
[     7.100458] autoconfiguration error:   tx ring 12: qid=12 cur=0   queued=0  
[     7.100458] autoconfiguration error:   tx ring 13: qid=13 cur=0   queued=0  
[     7.100458] autoconfiguration error:   tx ring 14: qid=14 cur=0   queued=0  
[     7.100458] autoconfiguration error:   tx ring 15: qid=15 cur=0   queued=0  
[     7.100458] autoconfiguration error:   tx ring 16: qid=16 cur=0   queued=0  
[     7.100458] autoconfiguration error:   tx ring 17: qid=17 cur=0   queued=0  
[     7.100458] autoconfiguration error:   tx ring 18: qid=18 cur=0   queued=0  
[     7.100458] autoconfiguration error:   tx ring 19: qid=19 cur=0   queued=0  
[     7.100458] autoconfiguration error:   rx ring: cur=2
[     7.100458] autoconfiguration error:   802.11 state 0
[     8.090453] iwn0: autoconfiguration error: crystal calibration failed
[     8.090453] iwn0: autoconfiguration error: could not initialize hardware
[     8.190451] iwn0: cannot assign link-local address
```

Причина: использование неверной firmware для устройства.

Багрепорт и исправление: [https://gnats.netbsd.org/58105](https://gnats.netbsd.org/58105).

Статус: исправлено.
