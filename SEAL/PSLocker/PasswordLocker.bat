:start
title Seal Password Locker
set /p firsttime=<C:\SEAL\PSLocker\setup.txt
if firsttime== TRUE goto main


@echo off
cls
echo This program will securely all your passwords and usernames. It will try its best to encrypt the actual files.
echo This program heavily relies on file creation inside PSLocker, DO NOT TOUCH IT!
PING 1.1.1.1 -n 1 -w 4000 >NUL
echo You can only decrypt these files with a master password. We recommend a password at least 10 characters long.
echo WE ARE NOT RESPONSIBLE FOR YOUR PASSWORDS! We don't store anything on a server, and unlike SEAL,
echo this program will not connect to the internet.
PING 1.1.1.1 -n 1 -w 4000 >NUL
pause
echo.
:startt
cls
set "masterp="
set /P "masterp= Now that that's over, what would you like your master password to be?  "
::apparently batch has no natural limiter command, so I'm having to work pretty hard to do this crap
::screw it I'll just do a freakin range command
::ya know what, screw it. 
::I have been up all night, this took way too long to figure out
@echo TRUE> setup.txt
cls
goto main
:main

echo HI
pause
exit