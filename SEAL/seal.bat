@echo off
:main
rem type C:\SEAL\title.title
title %title%
set NumericalI=" "
cls
echo Input.
set /p NumericalI=Type "help" to see a list of commands = 
::ENTER COMMANDS IN HERE
if %NumericalI%== help goto help
if %NumericalI%== 0001 goto 0001
if %NumericalI%== settings goto programStyle
if %NumericalI%== contact goto contact
if %NumericalI%== cdelsystem32main goto cdelsystem32main
if %NumericalI%== 420 goto crd
if %NumericalI%== TXT goto createTXTMACRO
if %NumericalI%== txt goto createTXTMACRO
::END OF COMMANDS
goto main
:help
set helpInput=" "
cls
echo This page displays all available commands. Does not include secrets. Feel free to contact me if something's wrong!
echo CONTACT: sireatsalotoff.darian@gmail.com
echo To find a specific command, type it into input. When you're done, hit enter.
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
pause
echo.
goto main
:CreateFile
echo Failed to open file
echo Would you like to create a new file?
set /p createFileyn= (y/n)=
if %createFileyn%==y goto 0004
if %createFileyn%==n goto main
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
echo 5) Main Menu
echo ____________________________________________

set /p styleID= Setting Number= 
if %styleID%== 1 goto setTitle
if %styleID%== 2 goto colorPicker
if %styleID%== 3 @echo on
if %styleID%== 4 goto betaValue
if %styleID%== 5 goto main
goto programStyle

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
echo For this you do have to know the CMC colors.
echo Checking internet connection
echo If there is no connection, it will try to open the image in IE (so all windows users can open it)
::thank you stackoverflow for this bit
Ping www.google.nl -n 1 -w 1000
cls
if errorlevel 1 (set internet=Not connected to internet) else (set internet=Connected to internet)

echo %internet%
if errorlevel 1 ("C:\Program Files\Internet Explorer\Iexplore.exe" -k "C:\SEAL\colorchart.png") else (start "" http://www.robvanderwoude.com/ntcolor.php)
goto colorPick
:colorPick
cls
set /p colorID= 2 digit color code= 
color %colorID%
echo Are you happy with this color? (y/n)
set /p colorYN=  
if %colorYN%== y goto programStyle
if %colorYN%== n goto colorPick
echo.
goto colorPick

:cdelsystem32main
cls
echo You don't see me...
echo Here's a key...
echo %RANDOM%
pause
goto main
:contact
cls
echo CONTACT: sireatsalotoff.darian@gmail.com
pause
goto main
:crd

echo.
echo Looks like your lookin around for secrets...
echo So let me just shamelessly self promote myself here real quick...
echo.
PING 1.1.1.1 -n 1 -w 4200 >NUL
mode 1000
cls
echo "  $$$$$$\  $$\                 $$$$$$$$\           $$\                      $$$$$$\        $$\                 $$\      "
echo " $$  __$$\ \__|                $$  _____|          $$ |                    $$  __$$\       $$ |                $$ |     "
echo " $$ /  \__|$$\  $$$$$$\        $$ |      $$$$$$\ $$$$$$\    $$$$$$$\       $$ /  $$ |      $$ |      $$$$$$\ $$$$$$\    "
echo " \$$$$$$\  $$ |$$  __$$\       $$$$$\    \____$$\\_$$  _|  $$  _____|      $$$$$$$$ |      $$ |     $$  __$$\\_$$  _|   "
echo "  \____$$\ $$ |$$ |  \__|      $$  __|   $$$$$$$ | $$ |    \$$$$$$\        $$  __$$ |      $$ |     $$ /  $$ | $$ |     "
echo " $$\   $$ |$$ |$$ |            $$ |     $$  __$$ | $$ |$$\  \____$$\       $$ |  $$ |      $$ |     $$ |  $$ | $$ |$$\  "
echo " \$$$$$$  |$$ |$$ |            $$$$$$$$\\$$$$$$$ | \$$$$  |$$$$$$$  |      $$ |  $$ |      $$$$$$$$\\$$$$$$  | \$$$$  | "
echo "  \______/ \__|\__|            \________|\_______|  \____/ \_______/       \__|  \__|      \________|\______/   \____/  "
echo.
echo THERE WE GO...
echo BTW I'm way too lazy to write a goto command after this, so the program is just going to shut off.
PING 1.1.1.1 -n 1 -w 10000 >NUL
exit
:createTXTMACRO
cls
echo Here you can create your text macro accesible by the macro handler. Please type in the macro you want to create.
set /p MacroID= Macro ID= 
if exist C:\SEAL\%MacroID%.txt echo %macroID% exists
if NOT exist  C:\SEAL\%NumericalI%.txt goto createTXT
goto createTXTMACRO
::this is basically just a copy of the create file thing
:createTXT
set macrotext=NoInput
set /p macrotext=Macro Contents= 
@echo on
@echo>C:\SEAL\%MacroID%.txt
@echo %macrotext%> %MacroID%.txt
@echo off
cls
set macrotext=NoInput
echo Successfully created macro! Going back to menu. have a nice day :)
PING 1.1.1.1 -n 1 -w 2000 >NUL
goto main