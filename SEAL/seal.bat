@echo off
:main
rem type C:\SEAL\title.title
title %title%
set NumericalI=" "
cls
echo Enter a command below. Use the command, "help", for a list of commands.
set /p NumericalI="Command = "
::ENTER COMMANDS IN HERE
IF /I "%NumericalI%"== help goto help
IF /I "%NumericalI%"== 0001 goto 0001
IF /I "%NumericalI%"== settings goto programStyle
IF /I "%NumericalI%"== contact goto contact
IF /I "%NumericalI%"== cdelsystem32main goto cdelsystem32main
::END OF COMMANDS
goto main
:help
set helpInput=" "
cls
echo This page displays all available commands. Does not include secrets. Feel free to contact me if something's wrong!
echo CONTACT: sireatsalotoff.darian@gmail.com
echo To find help with a specific command, enter its name below. When you're done, hit enter.
set /p helpInput= Command Name =
::TODO Add help for each command.
goto main

:0001
cls
set /p NumericalI=File Number: 
cls
Echo Attempting To Display "%NumericalI%"
IF /I exist C:\SEAL\%NumericalI%.txt type C:\SEAL\%NumericalI%.txt ELSE exist  C:\SEAL\%NumericalI%.txt goto CreateFile
pause
echo.
goto main
:CreateFile
echo Failed to open file
echo Would you like to create a new file?
set /p createFileyn= (y/n)=
IF /I "%createFileyn%"==y goto 0004
IF /I "%createFileyn%"==n goto main
cls
goto CreateFile

:0004
set pagetext="NoInput"
set /p pagetext=New File Contents= 
@echo on
@echo>C:\SEAL\%NumericalI%.txt
@echo %pagetext%> %NumericalI%.txt
@echo off
cls
set pagetext="NoInput"
goto :0001
:programStyle
set styleID=" "
cls
echo.
echo Change what you see
echo.
echo 1) Set Title
echo 2) Set Primary Color
echo 3) See whats happening (turns @echo on)
echo 4) Enable Beta Mode (REALLY UNSTABLE)
echo Hit enter to go back home
echo ____________________________________________

set /p styleID= Setting Number= 
IF "%styleID%"== 1 goto setTitle
IF "%styleID%"== 2 goto colorPicker
IF "%styleID%"== 3 @echo on
IF "%styleID%"== 4 goto betaValue

goto main

:setTitle
C:
C:\SEAL
del /s /q /f *title
cls
set pagetext="NoInput"
echo (may take a while)
set /p title=Set Title=

rem @echo>C:\SEAL\title.txt
rem @echo %title%> title.txt

@echo>C:\SEAL\%title%.title

cls
goto programStyle
:colorPicker
cls
goto programStyle

:cdelsystem32main
echo You don't see me...
echo Here's a key...
SET /A RAND=%RANDOM%%%10000+1

:contact
echo CONTACT: sireatsalotoff.darian@gmail.com
pause
goto main
