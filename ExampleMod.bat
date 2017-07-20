@echo off
:: This section is how a program sets its color based on the SEAL settings. Put it before the main tag of your file, just in case there is a function in the mod that changes colors.
set /p color=<C:\SEAL\color.title
color %color%
:: 
title Mod Example
:main
cls
echo.
echo Construct Economic Viewer
PING 1.1.1.1 -n 1 -w 2000 >NUL
echo.
echo This is also an example of how to mod the SEAL file. See the code for details.
call :ColorText 0b "V01"
PING 1.1.1.1 -n 1 -w 4000 >NUL
goto menu
::For those who are new to batch, one of the most powerful tools is the IF command. Menus like this are easy to make, and fun to mess around with.
::For a menu to work well, the parameters of your tag should look like this.
::	:menu
::	cls
::	echo stuff and stuff like options and crap
::	goto menu
::You put all the useful bits where echo is. You should probably look up video tuturials for more information.
:menu
cls
echo MAIN MENU
echo _________________________________________
echo.
:: echo. simply breaks the like to make things look better.
echo 1) Read statistics
echo 2) Create statistics
echo 3) Settings
echo 4) Exit
goto menu

:ColorText
::This enables colored text, but for whatever reason is incredibly fickle. Careful when using it.
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
goto :eof
