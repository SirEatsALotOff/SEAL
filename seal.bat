@echo off
SETLOCAL EnableDelayedExpansion
:main
set /p title=<C:\SEAL\title.title
rem type C:\SEAL\title.title
title %title%
set /p color=<C:\SEAL\color.title
set title="SEAL V.0.0.02"
set NumericalI=" "
color %color%
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
if %NumericalI%== macrohandler call MacroHandler.bat
if %NumericalI%== PasswordLocker call PasswordLocker.bat
if %NumericalI%== Predict goto RPre
if %NumericalI%== Info goto GetInfo

cls
::END OF COMMANDS
goto main
:help
set helpInput=" "
cls
echo This page displays all available commands. Does not include secrets. Feel free to contact me if something's wrong!
echo CONTACT: sireatsalotoff.darian@gmail.com
::START
echo 0001 = Read a text file
echo settings = Display settings
echo contact = Displays email
echo txt or TXT = Create text macro
echo Predict = Opens up a sarcastic magic 8 ball.
echo Info = Menu that allows you to collect information about PCs on your network, and other SEAL files.
echo.
echo FOR MACRO HANDLER
echo Type in the ID of prefered macro, and hit enter.
echo The macro handler will put the macro text in your clipboard. Press CTRL + V to paste it anywhere.
echo The macro handler has several prebuild macros as examples as listed below:
echo -SHW types Hello World
echo -SYT types www.youtube.com
echo -SFB types www.facebook.com
echo -SGG types www.google.com
echo.
pause
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
@echo on
@echo>C:\SEAL\title.title
@echo %title%> title.title
@echo off
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
@echo>C:\SEAL\color.title
@echo %colorID%> color.title
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
if exist C:\SEAL\%MacroID%.txt goto createTXTMACRO
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
:RPre
cls
echo Please ask your question here, and the program will totally try to answer it, and not completely ignore it.
set /p x= What is your question? 
set x=" "
::Fuck your question ya freakin loser
SET /A RPre=%RANDOM%%%8+1
if %RPre%== 1 echo You are correct
if %RPre%== 2 echo I have a good feeling
if %RPre%== 3 echo You're going to fail miserably
if %RPre%== 4 echo Everyone believes in you
if %RPre%== 5 echo Good luck with that
if %RPre%== 6 echo Hello World
if %RPre%== 7 echo Nobody freakin cares
if %RPre%== 8 echo The rediculous question you asked is not even worth my time to answer, nothing in this universe matters, you don't exist, reality is a construct. That is all.
pause
goto main

:GetInfo
color 0f
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)
::Thanks to this post for the multicolored text I've been avoiding!
:: https://stackoverflow.com/questions/4339649/how-to-have-multiple-colors-in-a-windows-batch-file
cls
::This tag is like a really advanced systeminfo, that can get other connected computers information
echo ______________________________________________________________________________________
echo.
call :ColorText 0C "Hello, and welcome to the SEAL PC Information core."
echo.
call :ColorText 0a "Here you will be able to read SEAL files, system files, and other computers information."
echo.
echo So tell me, what would you like to do?
echo.
call :ColorText 0b "1)"
call :ColorText 0d " My System"
echo.
call :ColorText 0b "2)"
call :ColorText 0d " SEAL Files"
echo.
call :ColorText 0b "3)"
call :ColorText 0d " Another PC"
echo.
call :ColorText 0b "4)"
call :ColorText 0d " Go Back"
echo.
set /p InfoID= Number:  
if %InfoID%== 1 goto System
if %InfoID%== 2 goto SealSystem
if %InfoID%== 3 goto OtherSystem
if %InfoID%== 4 goto main
goto GetInfo
:ColorText
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
goto :eof
::I really don't like tokens
::for /f "tokens=*" %%a in (input.txt) do (
::  echo line=%%a
::)
::pause

:System
cls
systeminfo
echo.
echo.
echo Now for a more understandable version.
echo.
echo Checking your system info, Please wating... 
systeminfo | findstr /c:"Host Name" 
systeminfo | findstr /c:"Domain" 
systeminfo | findstr /c:"OS Name" 
systeminfo | findstr /c:"OS Version" 
systeminfo | findstr /c:"System Manufacturer" 
systeminfo | findstr /c:"System Model" 
systeminfo | findstr /c:"System type" 
systeminfo | findstr /c:"Total Physical Memory" 
ipconfig | findstr IPv4
echo.
echo Hard Drive Space: 
wmic diskdrive get size
echo. 
echo.
echo Service Tag: 
wmic bios get serialnumber
echo. 
echo. 
echo CPU: 
wmic cpu get name
pause
goto GetInfo
:SealSystem
cls
echo These are the files currently inside of SEAL.
dir /b /a-d
echo.
echo Any text files are text macros.
echo Ink files are shortcuts.
echo title files are user preferences
pause
goto GetInfo
:OtherSystem
goto GetInfo