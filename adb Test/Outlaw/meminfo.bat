@ECHO off

SETLOCAL EnableDelayedExpansion

adb shell dumpsys meminfo com.zepetto.theoutlaw | FINDSTR TOTAL: >> meminfo.txt