@ECHO off

SETLOCAL EnableDelayedExpansion

adb shell cat /proc/net/xt_qtaguid/stats | FINDSTR 10362 >> netstats-brawlstars-case1.txt