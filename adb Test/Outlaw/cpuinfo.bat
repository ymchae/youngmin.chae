@ECHO off

SETLOCAL EnableDelayedExpansion

adb shell top -n 1 -s cpu |FINDSTR com.zepetto.theoutlaw >> cpuinfo.txt