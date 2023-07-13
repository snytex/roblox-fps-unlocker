@echo off
setlocal enabledelayedexpansion
title Snytex's FPS Unlocker
color 9
echo Welcome to Snytex's FPS Unlocker Script!
echo ========================================
echo Press any key to begin...
pause >nul
cd %localappdata%\Roblox\Versions
rem Get the first folder in the current directory
for /d %%d in (*) do (
    cd "%%d"
    goto :a
)

:a
md ClientSettings
cd ClientSettings
echo {"DFIntTaskSchedulerTargetFps": 300} >> ClientAppSettings.json
color a
echo.
echo Successfully unlocked FPS!
timeout /t 3 /NOBREAK >nul
exit