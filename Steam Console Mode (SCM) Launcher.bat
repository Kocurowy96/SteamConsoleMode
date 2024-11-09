@echo off
title "Steam Console Mode"
:menu
cls

echo.
echo.
echo Steam Console Mode
echo.
echo.
echo --------------------------------
echo -  1. Start Console Mode (SCM) -
echo -  2. Exit Launcher            -
echo -  3. Back to desktop          -
echo --------------------------------
echo.
SET /P M="app\scm>> "
IF %M%==1 GOTO scm
IF %M%==2 exit
IF %M%==3 GOTO normalMode

:scm
taskkill /f /im explorer.exe
cd C:\Program Files (x86)\Steam
steam.exe -start steam://open/bigpicture
goto menu



:normalMode
explorer
goto menu

goto menu
pause