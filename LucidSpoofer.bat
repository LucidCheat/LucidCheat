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
echo 		This specific version includes an optional BattleEye and EasyAntiCheat Disabler!
echo.
echo.
echo.
set /p acon="	      Would you like to use the embedded anticheat disabler? [Y/N]: "
if "%acon%"=="Y" goto noac
if "%acon%"=="N" goto skipacon
if "%acon%"=="y" goto noac
if "%acon%"=="n" goto skipacon
:skipacon
echo.
echo.
pause
set path=%cd%
cd %path%
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
if "%acon%"=="Y" goto noac
if "%acon%"=="N" goto nxt
if "%acon%"=="y" goto noac
if "%acon%"=="n" goto nxt
:noac
echo FortniteClient-Win64-Shipping.exe -nobe -noeac >> LaunchArgs.bat
del %UserProfile%\Desktop\Fortnite.url
set /a path1=%~dp0
cd /d %~dp0
copy LaunchArgs.bat "C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64" 
copy Icon.ico "%UserProfile%\Desktop"
cd c:\MyApp
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%userprofile%\Desktop\Fortnite.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\LaunchArgs.bat" >> CreateShortcut.vbs
echo oLink.WorkingDirectory = "C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\LaunchArgs.bat" >> CreateShortcut.vbs
echo oLink.Description = "Fortnite" >> CreateShortcut.vbs
echo oLink.IconLocation = "%UserProfile%\Desktop\Icon.ico" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs
attrib %UserProfile%\Desktop\Icon.ico +h
del LaunchArgs.bat
del %UserProfile%\Desktop\Icon.ico
goto nxt
:nxt
if "%acon%"=="Y" goto eacmsg
if "%acon%"=="N" goto end
if "%acon%"=="y" goto eacmsg
if "%acon%"=="n" goto end
:eacmsg
echo.
echo 				      BattleEye and EasyAntiCheat Disabled.
echo.
echo                           NOTE: To start Fortnite without BattleEye and EasyAntiCheat, 
echo 				      use the new shortcut on your desktop.
goto end
:end
echo.
echo.
echo.
echo.
echo.
pause