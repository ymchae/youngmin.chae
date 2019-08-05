@ECHO off

SETLOCAL EnableDelayedExpansion

echo.
Echo. ## The host computer waits for the Android device to USB connection
echo.

adb wati-for-device
adb devices
echo.



::Start = 1
::Increment per step = 1
::End = 60 Cycles
FOR /L %%i IN (1,1,60) DO (

    ECHO %%i !date! !time!

    Start /B cpuinfo.bat
    Start /B netstats.bat
    Start /B batterystats.bat

::Time Interval (1s)
    timeout /t 1 /nobreak > NUL

    ECHO.
)

PAUSE