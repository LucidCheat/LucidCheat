@echo off
title Lucid Anticheat Disabler
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
pause