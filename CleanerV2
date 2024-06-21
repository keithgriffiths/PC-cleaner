@echo off
REM Keith Griffiths 2022, Cleaner v2
REM Improved by [Your Name] 2024

SET label=Keith Griffiths
color 02
title Cleaner
SET T1= Completed By Cleaner

cls 

REM Network reset
echo Resetting network settings...
ipconfig /release
ipconfig /renew
ipconfig /flushdns
netsh winsock reset all
netsh int ip reset all

REM Clean system temp folders
echo Cleaning system temp folders...
del /s /f /q C:\Windows\Temp\*.*
rd /s /q C:\Windows\Temp
md C:\Windows\Temp

REM Clean user temp folders
echo Cleaning user temp folders...
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%

REM Clean Recycle Bin
echo Cleaning Recycle Bin...
rd /s /q %systemdrive%\$Recycle.bin

REM Clean Prefetch
echo Cleaning Prefetch...
del /s /f /q C:\Windows\Prefetch\*.*

REM Clean other directories
echo Cleaning additional directories...
del /s /f /q C:\Windows\History\*.*
del /s /f /q C:\Windows\Cookies\*.*
del /s /f /q C:\Windows\Recent\*.*
del /s /f /q C:\Windows\Spool\Printers\*.*
cls

REM Summary of actions
echo.
echo ============
echo Cleaner (free up disk space)
echo ============
echo.

echo 1) Deletes your cookies
echo 2) Deletes your temporary internet files
echo 3) Deletes downloaded program files
echo 4) Deletes recent files
echo 5) Deletes prefetch files
echo 6) Deletes internal cache
echo 7) Resets your internal IP address
echo.

echo Cleaner has finished. Press any key to exit.
echo.

REM Display a simple finished message
echo ***********************  **********************
echo *********************     *********************
echo ******************           ******************
echo ***************     Cleaner     ***************
echo ************        Has            ************
echo **********          Finished         **********
echo ************        2024           ************
echo **************                   **************
echo *****************             *****************
echo *******************         *******************
echo.

pause >nul

exit
