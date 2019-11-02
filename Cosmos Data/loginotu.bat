:check
if %boot% ==yes goto loginotu
goto booterror

:booterror
color 0c
title Cosmos Error
cls
echo.
echo Cosmos was unable to start.
echo.
echo.
echo If this is the first time you've seen this:
echo Try running the Start file in the folder above this.
echo.
echo If this has occured multiple times:
echo Please contact Jules Carboni on his homepage for troubleshooting and details.
echo.
echo.
echo Press any key to terminate this window . . .
pause >nul
exit

:loginotu
if "%otucodeused%"=="yes" goto retrieve9
if "%otucodeused%"=="no" goto retrieve
goto retrieve
:retrieve
cls
echo.
echo Cosmos v%version% Login \ Help \ Retrieve One-Time-Use Code
echo ===============================================================================
echo.
echo WARNING: This code will deactivate when entered and will not be reusable.
echo.
echo Are you sure you want to continue? (y/n)
echo.
echo.
Set /p lhinput2="Choice: "
if "%lhinput2%"=="y" goto retrieve2
if "%lhinput2%"=="n" call "login"
if "%lhinput2%"=="yes" goto retrieve2
if "%lhinput2%"=="no" call "login"
goto retrieve
:retrieve2
set "otucode=%random%%random%"
cls
echo.
echo Cosmos v%version% Login \ Help \ Retrieve One-Time-Use Code
echo ===============================================================================
echo.
echo Your one-time-use code is: %otucode%
echo.
echo To use your code, type it in the field that requires your username
echo on the login screen.
echo.
echo.
echo Press any key once you have written it down . . .
pause >nul
set "otucodetemp=true"
call "login"
:retrieve9
cls
echo.
echo Cosmos v%version% Login \ Help \ Retrieve One-Time-Use Code
echo ===============================================================================
echo.
echo You have already retrieved your one-time-use code.
echo.
echo.
pause
call "login"