@echo off
:tag
for /f "skip=50" %%G IN (main.config) DO if not defined line set "line=%%G"
Set /A ress=%line%+1
call :TEXTMAN RL 51 "main.config" "%ress%"
goto :eof
:TEXTMAN
(SET /A "A=0", "LINE=0", "TOTAL_LINES=0")  &  (CALL :%~1 %* || (ECHO Invalid parameter & Exit /B 1)) & (GOTO:EOF)

:RL
(For /F "tokens=1* delims=]" %%A in ('type "%~3" ^| find /n /v ""') DO (Call Set /A "LINE+=1" && (CMD /C "IF NOT "%%LINE%%" EQU "%~2" (if "%%B" EQU "" (Echo+>> "%~3.NEW") ELSE ((Echo %%B)>> "%~3.NEW")) ELSE ((Echo %~4)>> "%~3.NEW")"))) && (CALL :RENAMER "%~3") & (GOTO:EOF)
:RENAMER
(REN "%~1" "%~nx1.BAK") & (MOVE /Y "%~1.BAK" "%TEMP%\" >NUL) & (REN "%~1.NEW" "%~nx1") & (GOTO:EOF)