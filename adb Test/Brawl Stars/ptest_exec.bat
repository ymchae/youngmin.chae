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
::End = 120 Cycles
FOR /L %%i IN (1,1,120) DO (

    ECHO %%i !date! !time!

    Start /B netstats.bat

::Time Interval (1s)
    timeout /t 1 /nobreak > NUL

    ECHO.
)

PAUSE