@echo off
title Slate Logger

:main
set txtmcount=0
for %%x in (*.txt) do set /a txtmcount+=1
set textcount=0000
set /a txtcount= %txtmcount%+1
IF %txtmcount% GEQ 1001 (
set /a "textcount=%txtmcount%-1000"
)
cls
set ordered=%textcount%.%txtcount%
set pagetext=" "
set ID="Default"
echo Slate Logger
echo There are currently %txtmcount% logs.
set /p ID=Specific Name or ID ~ 
if exist C:\SEAL\Slate\%ID%-%ordered%.txt goto read
if NOT exist  C:\SEAL\Slate\%ID%-%ordered%.txt goto logg
goto main
:logg
set /p pagetextt= Log ~ 
set pagetext=%DATE% - %pagetextt%
@echo>C:\SEAL\Slate\%ID%-%ordered%.txt
@echo %pagetext%> %ID%-%ordered%.txt
goto main
:read
cls
echo File already exists:
echo.
type C:\SEAL\Slate\%ID%-%ordered%.txt
echo.
pause
goto main