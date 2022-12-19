REM Keith Griffiths 2022, Cleaner v1

label=Keith Griffiths

color 02
title Cleaner
SET T1= Completed By Cleaner

cls 

@echo off
ipconfig /release
ipconfig /renew
ipconfig /flushdns
netsh winsock reset all
netsh int ip reset all

@echo off
del /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%

@echo off
rd /s /q /y %systemdrive%\$Recycle.bin
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\temp
deltree /y c:\windows\spool\printers
cls

echo.
echo ============
echo Cleaner (free up disk space)
echo ============
echo.

echo 1) Deletes your cookies
echo 2) Deletes your temporary internet files
echo 3) Deletes downloaded program files
echo 4) Deletes recent
echo 5) Deletes prefetch
echo 5) Deletes your internal cache
echo 6) Resets your internal IP address
echo.

echo.
echo Cleaner has finished press space bar to exit.
echo.

echo ***********************  **********************
echo *********************     *********************
echo ******************           ******************
echo ***************     Cleaner     ***************
echo ************        Has            ************
echo **********          Finished         **********
echo ************        2022           ************
echo **************                   **************
echo *****************             *****************
echo *******************         *******************
echo.

Pause

EXIT
