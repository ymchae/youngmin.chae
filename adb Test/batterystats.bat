@ECHO off

SETLOCAL EnableDelayedExpansion

adb shell dumpsys batterystats --charged com.zepetto.theoutlaw | FINDSTR /C:"Uid u0a371" >> batterystats.txt
