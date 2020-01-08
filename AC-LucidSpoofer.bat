@echo off
title LucidSpoofer V1.2 (Includes Anticheat Disabler)
if _%1_==_payload_  goto payload
:getadmin
    echo Awaiting Permission...
    set vbs=%temp%\getadmin.vbs
    echo Set UAC = CreateObject^("Shell.Application"^)                >> "%vbs%"
    echo UAC.ShellExecute "%~s0", "payload %~sdp0 %*", "", "runas", 1 >> "%vbs%"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
goto eof				
:payload
color b
echo.
echo.
echo.
echo.
echo.
echo 				Thank You For Downloading Strayfade's HWID Changer!
echo.
echo 		    This program will reset your HWID if you are getting kicked from matches!
echo.
echo.
echo.
echo.
echo.
pause
cd %~dp0
echo.
echo.
echo.
echo.
echo.
echo Base:
wmic diskdrive get name,size,model,SerialNumber
echo.
echo.
echo.
echo.
echo.
cd %~dp0
mapper.exe spoofer.sys
mapper.exe spoofer.sys
mapper.exe spoofer.sys
echo.
echo.
echo.
echo.
echo.
echo Result:
wmic diskdrive get name,size,model,SerialNumber
echo.
echo.
echo.
echo.
echo.
echo 						Spoofing Complete!
goto end
:end
echo.
echo.
echo.
echo.
echo.
pause