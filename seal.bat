@echo off
call exithandl.bat
start /min starting.bat
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
if %NumericalI%== startup goto startUp
if %NumericalI%== news goto News
if %NumericalI%== prg goto PRG
if %NumericalI%== DevUni goto universalC
if %NumericalI%== callp goto callp
if %NumericalI%== UniDoc goto UniDoc
if %NumericalI%== UniCreate goto actualUniCreate
cls
set NumericalI=" "
::END OF COMMANDS
goto main
:callp
cls
set /p PRID= [7mProgram Name (including extension)~ [0m 

if exist %PRID% call %PRID%
goto main
:help
set helpInput=" "
cls
echo This page displays all available commands. Does not include secrets. Feel free to contact me if something's wrong!
echo CONTACT: sireatsalotoff.darian@gmail.com
echo [7mHighlighted comments are new commands.[0m
::START
echo.
echo.
echo 0001 = Read a text file
echo settings = Display settings
echo contact = Displays email
echo txt or TXT = Create text macro
echo Predict = Opens up a sarcastic magic 8 ball.
echo Info = Menu that allows you to collect information about PCs on your network, and other SEAL files.
echo startup =  Allows user to enable SEAL to run on startup
echo prg = Create a program macro
echo [7mcallp = calls any batch file in program ~[0m 
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
echo [7mFOR UNIDOC[0m
echo Format Name is the name of the template that you can type in to make documenting faster.
echo The first [7m4[0m values go in order at the beginning of the text file. Type 0 if you don't need that specific value.
echo The final value goes at the end of the document. A good way to use this would be a character count.
echo Below are a list of values you can use.
echo.
echo time          ~  Types Normal Batch Time (%time%)
echo timeLarge     ~  Types current time (date-month-year hour.minute.second.mili)
echo date          ~  Types Normal Batch Date (%date%)
echo pcName        ~  Types computer name (%computername%)
set txtmcount=0
for %%x in (*.txt) do set /a txtmcount+=1
echo ordernum      ~  Types number of text files in a directory (%txtmcount%)
echo.
pause
::END
goto main
::rem%ass%
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
goto main
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
SET /A RPre=%RANDOM%%%9+1
if %RPre%== 1 echo You are correct
if %RPre%== 2 echo I have a good feeling
if %RPre%== 3 echo You're going to fail miserably
if %RPre%== 4 echo Everyone believes in you
if %RPre%== 5 echo Good luck with that
if %RPre%== 6 echo Hello World
if %RPre%== 7 echo Nobody freakin cares
if %RPre%== 8 echo The rediculous question you asked is not even worth my time to answer, nothing in this universe matters, you don't exist, reality is a construct. That is all.
if %RPre%== 9 echo This program and all of its contents really have no effect on the universe, no matter who you are, someone is sick of your shit, but the universe doesn't give a flying fuck about you.
if %RPre%== 10 echo This statement is impossible
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
PING 1.1.1.1 -n 1 -w 1500 >NUL
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
call :ColorText 0d " Remote Connect"
echo.
call :ColorText 0b "5)"
call :ColorText 0d " User Info"
echo.
call :ColorText 0b "6)"
call :ColorText 0d " Go Back"
PING 1.1.1.1 -n 1 -w 1500 >NUL
echo.
set /p InfoID= Number:  
if %InfoID%== 1 goto System
if %InfoID%== 2 goto SealSystem
if %InfoID%== 3 goto OtherSystem
if %InfoID%== 4 goto rShut
if %InfoID%== 5 goto userinfo
if %InfoID%== 6 goto main
goto GetInfo
:userinfo
cls
echo Processors: %NUMBER_OF_PROCESSORS%
echo Computer Name: %computername%
echo User Domain: %USERDOMAIN%
echo Date: %date%
echo Os: %os%
echo Time: %time%
echo Username: %USERNAME%
pause
cls
goto GetInfo
:rShut
cls
echo Note this part is under construction
echo.
call :ColorText 0d "Remote Menu"
echo.
call :ColorText 0d "Type in f to do without user prompt"
echo.
call :ColorText 0b "1)"
call :ColorText 0d " Remote Shutdown"
echo.
call :ColorText 0b "2)"
call :ColorText 0d " Remote Logoff"
echo.
call :ColorText 0b "3)"
call :ColorText 0d " Remote Restart"
echo.
call :ColorText 0b "4)"
call :ColorText 0d " Go Back"
set /p RMenu= Number: 
if %RMenu%== 1 goto reShut
if %RMenu%== 2 goto reLogf
if %RMenu%== 3 goto restart
if %RMenu%== 4 goto Info
if %RMenu%== f1 goto freShut
if %RMenu%== f2 goto freLogf
if %RMenu%== f3 goto frestart
if %RMenu%== f4 goto crd
set RMenu=" "
goto rShut
:reShut
cls
set /p RMenu= Computer Name: 
goto rShut
:reLogf
cls
set /p RMenu= Computer Name: 
goto rlogf
:restart
cls
set /p RMenu= Computer Name: 
goto restart
:freShut
cls
set /p RMenu= Computer Name: 
goto frShut
:freLogf
cls
set /p RMenu= Computer Name: 
goto frlogf
:frestart
cls
set /p RMenu= Computer Name: 
goto frestart

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
 
echo.
echo Any text files are text macros.
echo Ink files are shortcuts.
echo title files are user preferences
pause
goto GetInfo
:OtherSystem
goto GetInfo
:startUp
cls
echo Here you can run the installer that tells windows to open SEAL files on startup.
echo Just CTRL V the directory, and edit USER to your username
echo|set /p=C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup|clip
pause
PING 1.1.1.1 -n 1 -w 2000 >NUL
start C:\SEAL\SEALSTART.exe
PING 1.1.1.1 -n 1 -w 2000 >NUL
echo After going through the installer, it should work. Have a nice day!
goto main
:News
cls
echo This page will display updates about this version, and those that may come.
echo.
call :ColorText 60 "NEXT UPDATE"
PING 1.1.1.1 -n 1 -w 2000 >NUL
pause
:PRG
echo Type in the new program macro ID
set /p x= ID= 
if exist %x%.smac goto PRG
cls
goto PRGNEXT
:PRGNEXT
cls
echo.
echo Copy the directory of your application into the input.
echo Make sure to include the application name itself.
explorer C:\Program Files (x86)
PING 1.1.1.1 -n 1 -w 2000 >NUL
set /p prgthing= Directory= 
@echo>C:\SEAL\%x%.smac
@echo %prgthing%> %x%.smac
set prgthing=" "
set x=" "
goto main
:universalC
cls
::write to specific line, writes on 5th
::for /F "skip=4 delims=" %i in (test.txt) do echo %i
::call :TEXTMAN RL 1 main.config 2
goto main
::
:UniDoc
set uname=None
set uconfirm=" "
set u1="0"
set u2="0"
set u3="0"
set u4="0"
set u5=""
cls
echo [94mUniversal Documenter[0m
echo [97mAllows you to create a text file template with custom values.[0m
echo.
echo See [92m'Help'[0m to see the available commands.
echo Type exit to go back to the main menu.
echo You can have a possible [92m5[0m values to include in your document.
set /p uname= [91mFormat Name[0m ~ 
if %u1%==exit goto main
set /p u1= [91m1st[0m Value ~ 
set /p u2= [91m2nd[0m Value ~ 
set /p u3= [91m3rd[0m Value ~ 
set /p u4= [91m4th[0m Value ~ 
set /p u5= [91m5th[0m Value ~ 
cls
goto ifblock
:ifblock
::if block, don't know if this is the most efficient way of doing things, but I don't think an array would work here.
if %u1%==time set u1t=%time%
if %u2%==time set u2t=%time%
if %u3%==time set u3t=%time%
if %u4%==time set u4t=%time%
if %u5%==time set u5t=%time%
call :GetTime
set timeLarge=%GetTime%
if %u1%==timeLarge set u1t=%timeLarge%
if %u2%==timeLarge set u2t=%timeLarge%
if %u3%==timeLarge set u3t=%timeLarge%
if %u4%==timeLarge set u4t=%timeLarge%
if %u5%==timeLarge set u5t=%timeLarge%

if %u1%==date set u1t=%date%
if %u2%==date set u2t=%date%
if %u3%==date set u3t=%date%
if %u4%==date set u4t=%date%
if %u5%==date set u5t=%date%
set inputsum=%u1t%~%u2t%~%u3t%~%u4t%
:endifblock
::end if block
echo Confirm that your template will be named "%uname%"
echo Note: If your values are dynamic, the one displayed below may not match the document.
echo The start of your documents will begin with %inputsum% and end with %u5t%
set uconfirm="y"
set /p uconfirm= y/n
IF %uconfirm%== y goto uniCreate
IF %uconfirm%== n goto UniDoc
goto UniDoc
:uniCreate
cls
if exist C:\SEAL\%uname%.UniTemp goto UniDoc
if NOT exist  C:\SEAL\%uname%.UniTemp goto creationisgreat
:creationisgreat
@echo>C:\SEAL\%uname%.UniTemp
::set Unitemplate=%u1%~%u2%~%u3%~%u4%~%u5%
call :TEXTMAN I 1 %uname%.UniTemp brk
call :TEXTMAN I 2 %uname%.UniTemp %u1%

call :TEXTMAN I 3 %uname%.UniTemp %u2%

call :TEXTMAN I 4 %uname%.UniTemp %u3%

call :TEXTMAN I 5 %uname%.UniTemp %u4%

call :TEXTMAN I 6 %uname%.UniTemp %u5%

call :TEXTMAN E 7 %uname%.UniTemp
goto main
:actualUniCreate
set uname=" "
cls
set /p uname= Name of template. 
echo.
set /p udname= Name of document. 
echo.
set /p UniText= Text for document. 
::Uses UniDoc templates
set confirm=0
if exist C:\SEAL\%uname%.UniTemp set /a confirm=%confirm%+1
if NOT exist C:\SEAL\%udname%.rtf set /a confirm=%confirm%+1
if %confirm%== 2 goto actualnotlyingcreation
goto actualUniCreate
:actualnotlyingcreation
set "xprvar="
for /F "skip=1 delims=" %%i in (C:\SEAL\%uname%.UniTemp) do if not defined xprvar set "xprvar=%%i"
set u1=%xprvar%
set "xprvar="
for /F "skip=2 delims=" %%i in (C:\SEAL\%uname%.UniTemp) do if not defined xprvar set "xprvar=%%i"
set u2=%xprvar%
set "xprvar="
for /F "skip=3 delims=" %%i in (C:\SEAL\%uname%.UniTemp) do if not defined xprvar set "xprvar=%%i"
set u3=%xprvar%
set "xprvar="
for /F "skip=4 delims=" %%i in (C:\SEAL\%uname%.UniTemp) do if not defined xprvar set "xprvar=%%i"
set u4=%xprvar%
set "xprvar="
for /F "skip=5 delims=" %%i in (C:\SEAL\%uname%.UniTemp) do if not defined xprvar set "xprvar=%%i"
set u5=%xprvar%
call :ifblock

set "UniText= %u1t% ~ %u2t% ~ %u3t% ~ %u4t%. %UniText% %u5t%"

@echo %UniText%> %udname%.rtf
goto main
:TEXTMAN
:: by Elektro H@cker
REM SYNTAX:
::
:: TEXTMAN [ACTION] [LINE(S)] [FILE] [TEXT]
::
:: * [LINE(S)] parameter is Optional for some actions
:: * [TEXT] parameter is Optional for some actions


REM ACTIONS:
::
::  AB  = ADD_BEGINNING      * Add text to the beginning of a line.
::  AE  = ADD_ENDING         * Add text to the end of a line.
::  E   = ERASE              * Delete a line.
::  I   = INSERT             * Add a empty line (Or a line with text).
::  RL  = REPLACE_LINE       * Replace a entire line.
::  RS  = REPLACE_STRING     * Replace word from line.
::  RSA = REPLACE_STRING_ALL * Replace word from all lines.
::  C+  = CHARACTER_PLUS     * Delete the first "X" characters from all lines.
::  C-  = CHARACTER_LESS     * Delete the last  "X" characters from all lines.
::  L+  = LINE_PLUS          * Cut the first "X" amount of lines.
::  L-  = LINE_LESS          * Cut the last  "X" amount of lines.
::  GL  = GET_LINE           * Delete all except "X" line.
::  GR  = GET_RANGE          * Delete all except "X" range of lines.
(SET /A "A=0", "LINE=0", "TOTAL_LINES=0")  &  (CALL :%~1 %* || (ECHO Invalid parameter & Exit /B 1)) & (GOTO:EOF)
:AB
(For /F "tokens=1* delims=]" %%A in ('type "%~3" ^| find /n /v ""') DO (Call Set /A "LINE+=1" && (CMD /C "IF NOT "%%LINE%%" EQU "%~2" (if "%%B" EQU "" (Echo+>> "%~3.NEW") ELSE ((Echo %%B)>> "%~3.NEW")) ELSE (if "%%B" EQU "" ((Echo %~4)>> "%~3.NEW") ELSE ((Echo %~4%%B)>> "%~3.NEW"))"))) && (CALL :RENAMER "%~3") & (GOTO:EOF)
:AE
(For /F "tokens=1* delims=]" %%A in ('type "%~3" ^| find /n /v ""') DO (Call Set /A "LINE+=1" && (CMD /C "IF NOT "%%LINE%%" EQU "%~2" (if "%%B" EQU "" (Echo+>> "%~3.NEW") ELSE ((Echo %%B)>> "%~3.NEW")) ELSE ((Echo %%B%~4)>> "%~3.NEW")"))) && (CALL :RENAMER "%~3") & (GOTO:EOF)
:E
(For /F "tokens=1* delims=]" %%A in ('type "%~3" ^| find /n /v ""') DO (Call Set /A "LINE+=1" && (CMD /C "IF NOT "%%LINE%%" EQU "%~2" (if "%%B" EQU "" (Echo+>> "%~3.NEW") ELSE ((Echo %%B) >> "%~3.NEW"))"))) && (CALL :RENAMER "%~3") & (GOTO:EOF)
:I
(For /F "tokens=1* delims=]" %%A in ('type "%~3" ^| find /n /v ""') DO (Call Set /A "LINE+=1" && (CMD /C "IF     "%%LINE%%" EQU "%~2" (IF NOT "%~4" EQU "" ((Echo %~4) >> "%~3.NEW") ELSE (Echo+>> "%~3.NEW"))" & (if "%%B" EQU "" (Echo+>> "%~3.NEW") ELSE ((Echo %%B)>> "%~3.NEW"))))) && (CALL :RENAMER "%~3") & (GOTO:EOF)
:RL
(For /F "tokens=1* delims=]" %%A in ('type "%~3" ^| find /n /v ""') DO (Call Set /A "LINE+=1" && (CMD /C "IF NOT "%%LINE%%" EQU "%~2" (if "%%B" EQU "" (Echo+>> "%~3.NEW") ELSE ((Echo %%B)>> "%~3.NEW")) ELSE ((Echo %~4)>> "%~3.NEW")"))) && (CALL :RENAMER "%~3") & (GOTO:EOF)
:RS
(For /F "tokens=1* delims=]" %%A in ('type "%~3" ^| find /n /v ""') DO (Call Set /A "LINE+=1" && (CMD /C "IF NOT "%%LINE%%" EQU "%~2" (if "%%B" EQU "" (Echo+>> "%~3.NEW") ELSE ((Echo %%B)>> "%~3.NEW")) ELSE (CALL SET "STRING=%%B" &&     (if "%%B" EQU "" (Echo+>> "%~3.NEW") ELSE ((CALL ECHO %%STRING:%~4=%~5%%)>> "%~3.NEW")))"))) && (CALL :RENAMER "%~3") & (GOTO:EOF)
:RSA
(For /F "tokens=1* delims=]" %%A in ('type "%~2" ^| find /n /v ""') DO (CALL SET "STRING=%%B" && (if "%%B" EQU "" (Echo+>> "%~2.NEW") ELSE ((CALL ECHO %%STRING:%~3=%~4%%)>>"%~2.NEW")))) && (CALL :RENAMER "%~2") & (GOTO:EOF)
:C+
(For /F "usebackq tokens=*" %%@ in ("%~3") DO (Call Set   "LINE=%%@" && (CALL ECHO %%LINE:~%~2%% >>      "%~3.NEW"))) && (CALL :RENAMER "%~3") & (GOTO:EOF)
:C-
(For /F "usebackq tokens=*" %%@ in ("%~3") DO (Call Set   "LINE=%%@" && (CALL ECHO %%LINE:~0,-%~2%% >>   "%~3.NEW"))) && (CALL :RENAMER "%~3") & (GOTO:EOF)
:L+
(Call SET /A "A=%~2") && (Call TYPE "%~3" |@MORE +%%A%% > "%~3.NEW") && (CALL :RENAMER "%~3") & (GOTO:EOF)
:L-
(For /F "tokens=1* delims=]" %%A in ('type "%~3" ^| find /n /v ""') DO (CALL SET /A "TOTAL_LINES+=1")) & (CALL SET /A "TOTAL_LINES-=%~2-1") & (For /F "tokens=1* delims=]" %%A in ('type "%~3" ^| find /n /v ""') DO (Call Set /A "LINE+=1" & Call echo "%%LINE%%"|@FIND "%%TOTAL_LINES%%" >NUL) && (CALL :RENAMER "%~3" && GOTO:EOF) || (Echo %%B >> "%~3.NEW"))
:GL
(Call SET /A "A=%~2" && Call SET /A "A-=1") && (Call TYPE "%~3" |@MORE +%%A%% > "%temp%\getline.tmp") && (For /F "tokens=1* delims=]" %%A in ('type "%temp%\getline.tmp" ^| find /n /v ""') DO ((if "%%B" EQU "" (Echo+>> "%~3.NEW") ELSE ((Echo %%B)> "%~3.NEW"))) && ((CALL :RENAMER "%~3") & (GOTO:EOF))) 
:GR
(For /F "tokens=1* delims=]" %%A in ('type "%~4" ^| find /n /v ""') DO (Call Set /A "LINE+=1" && (CMD /C "(IF "%%LINE%%" GEQ "%~2" IF "%%LINE%%" LEQ "%~3" (if "%%B" EQU "" (Echo+>> "%~4.NEW") ELSE ((Echo %%B)>> "%~4.NEW"))) && (IF "%%LINE%%" EQU "%~3" Exit /B 1)" || ((CALL :RENAMER "%~4") & (GOTO:EOF)))))

:RENAMER
(REN "%~1" "%~nx1.BAK") & (MOVE /Y "%~1.BAK" "%TEMP%\" >NUL) & (REN "%~1.NEW" "%~nx1") & (GOTO:EOF)

goto main


:GetTime
set Now=
for /f "tokens=* skip=1" %%A in ('wmic os get LocalDateTime') do (
  if not defined Now (
    set Now=%%A
  )
)
set yy=%Now:~2,2%
set nn=%Now:~4,2%
set dd=%Now:~6,2%
set hh=%Now:~8,2%
set mm=%Now:~10,2%
set ss=%Now:~12,9%
set /a n=1%nn%-100
for /f "tokens=%n% delims=," %%a IN ("Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec") do set mmm=%%a
set AmPm=AM
set /a h=1%hh%-100
if %h% GTR 12 (
  set /a h=%h%-12
  set AmPm=PM
)
set hh=0%h%
set hh=%hh:~-2%
set GetTime=%dd%-%mmm%-%yy% %hh%.%mm%.%ss% %AmPm%
exit /b

