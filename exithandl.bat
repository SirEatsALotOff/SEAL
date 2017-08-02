@echo off
for /f "skip=1" %%G IN (main.config) DO if not defined line set "lin e=%%G"
Set/A ress=line+1
call :RL RL 3 "main.config" "%ress%"
goto :eof
:RL
(For /F "tokens=1* delims=]" %%A in ('type "%~3" ^| find /n /v ""') DO (Call Set /A "LINE+=1" && (CMD /C "IF NOT "%%LINE%%" EQU "%~2" (if "%%B" EQU "" (Echo+>> "%~3.NEW") ELSE ((Echo %%B)>> "%~3.NEW")) ELSE ((Echo %~4)>> "%~3.NEW")"))) && (CALL :RENAMER "%~3") & (GOTO:EOF)
:RENAMER
(REN "%~1" "%~nx1.BAK") & (MOVE /Y "%~1.BAK" "%TEMP%\" >NUL) & (REN "%~1.NEW" "%~nx1") & (GOTO:EOF)