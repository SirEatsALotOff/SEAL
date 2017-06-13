@echo off
:main
title %title%
set NumericalI=" "
cls
echo Input.
set /p NumericalI=Type "help" to see a list of commands = 
::ENTER COMMANDS IN HERE
if %NumericalI%== help goto help
if %NumericalI%== 0001 goto 0001
if %NumericalI%== settings goto programStyle
else goto 0001
::END OF COMMANDS
goto main
:help
set helpInput=" "
cls
echo This page displays all available commands. Does not include secrets. Feel free to contact me if something's wrong!
echo CONTACT: sireatsalotoff.darian@gmail.com
echo To find a specific command, type it into input. When your done, hit enter.
set /p helpInput= Command Name=
::START

::END
goto main

:0001
cls
set /p NumericalI=File Number: 
goto 0002
:0002
cls
Echo Attempting To Display "%NumericalI%"
if exist C:\SEAL\%NumericalI%.txt type C:\SEAL\%NumericalI%.txt
if NOT exist  C:\SEAL\%NumericalI%.txt goto CreateFile


echo.


pause
goto main
:CreateFile
echo Failed to open file
set pagetext="NoInput"
set /p pagetext=New File Contents= 
@echo on
@echo>C:\SEAL\%NumericalI%.txt
@echo %pagetext%> %NumericalI%.txt
@echo off
cls
goto :0001
:programStyle
echo.
echo Change what you see
echo.
echo 1) Set Title
echo 2) Set Primary Color
echo 3) See whats happening (turns @echo on)
echo 4) Enable Beta Mode (REALLY UNSTABLE)
echo.
echo ____________________________________________

set /p styleID= Setting Number= 
if %styleID%== 1 goto setTitle
if %styleID%== 2 goto colorPicker
if %styleID%== 3 @echo on
if %styleID%== 4 goto betaValue
