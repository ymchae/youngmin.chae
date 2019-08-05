@ECHO off

SETLOCAL EnableDelayedExpansion

adb shell cat /proc/net/xt_qtaguid/stats | FINDSTR 10371 >> netstats.txt