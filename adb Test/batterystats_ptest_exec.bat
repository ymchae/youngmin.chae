@ECHO off

SETLOCAL EnableDelayedExpansion

echo.
ECHO. ## The host computer waits for the Android device to USB connection.
echo.

adb wait-for-device
adb devices
echo.


::Start = 1
::Increment per step = 1
::End = 61 Cycles
FOR /L %%i IN (1,1,61) DO (

	ECHO %%i !date! !time!

	Start /B batterystats.bat

::Time Interval (1s)
	timeout /t 1 /nobreak > NUL

	ECHO.
)

PAUSE