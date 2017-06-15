@echo off
title Macro Handler V.0.0.01
::Macro Handler, this one may require some coding knowledge, sorry about that.
:main
echo Create macros by going to SEAL.
echo Right now we only handle text macros. Sorry about that.
::If you're reading this for whatever reason, have a nice day :)
set txtmcount=0
for %%x in (*.txt) do set /a txtmcount+=1
echo Text Macros Available: %txtmcount%

::This program is meant to be as streamlined as possible, thus most macro creation will be up to the seal.bat file and/or this programs config.
set /p macroID= MacroID= 


cls
goto textMacro
:textMacro
::textMacro acts as a sort of large scale clipboard. Once you excecute the command, it puts whatever it needs to into your clipboard, so you can paste. (paste with CTRL V)
::this bit sets the next variable with the text in the file.
set /p txtmcro=<C:\SEAL\%macroID%.txt
::this bit copies it
echo "%txtmcro%" successfully copied! (use CTRL - V to paste anywhere)
echo|set /p=%txtmcro%|clip
cls
set macroID " "
goto main
::I'll be working on the program opening macros next, but the user input is going to be a huge pain because I don't want you to have to type
::an entire directory just to use it.
:prgMacro
::now THIS is going to be a huge pain on seal.bat code. This part is easy.
set /p pgrmcro=<C:\SEAL\%macroID%.smcr
