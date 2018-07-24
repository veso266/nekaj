ECHO OFF
CLS
:MENI
ECHO.
ECHO .....................................................................
ECHO == PRITISNI 1, 2 ALI 3 da izberes, kaj bos odprl, ali 4 za IZHOD. ==
ECHO .....................................................................
ECHO.
ECHO 1 - Odpri beleznico
ECHO 2 - Odpri Kalkulator
ECHO 3 - Odpri OBOJE
ECHO 4 - VEN
ECHO.
CHOICE /C:1234 > NUL
IF ERRORLEVEL 1 SET M=1
IF ERRORLEVEL 2 SET M=2
IF ERRORLEVEL 3 SET M=3
IF ERRORLEVEL 4 SET M=4
IF %M%==1 GOTO belezka
IF %M%==2 GOTO racunalo
IF %M%==3 GOTO obje
IF %M%==4 GOTO EOF
:belezka
cd %windir%\system32\notepad.exe
start notepad.exe
GOTO MENU
:racunalo
cd %windir%\system32\calc.exe
start calc.exe
GOTO MENU
:obje
cd %windir%\system32\notepad.exe
start notepad.exe
cd %windir%\system32\calc.exe
start calc.exe
GOTO MENI
