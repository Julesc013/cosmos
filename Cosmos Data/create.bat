:check
if %boot% ==yes goto createpre
if else goto booterror
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

:fatalerror
title Catastrophic Failure!
color 0c
cls
echo.
echo An unexpected error occured.
echo.
echo We're not sure why this happened.
echo Relaunch the program and try not to do it again :)
echo.
echo.
echo Press any key to terminate this window . . .
pause >nul
exit

:createpre
if %otucodetemp2% ==true goto create
if %otucodetemp2% ==false goto nexttestb
goto nexttestb
:nexttestb
if %loggedin% ==no goto nexttest
if %loggedin% ==yes goto create
goto fatalerror
:nexttest
if %userlock% ==on goto userlockerror
if %userlock% ==off goto create
goto fatalerror

:userlockerror
color 0c
cls
echo.
echo Cosmos v%version% Create Account
echo ===============================================================================
echo.
echo Access denied!
echo.
echo Creating accounts has been disabled to guests.
echo To create an account you must login first.
echo.
echo.
echo Press any key to return to the menu . . .
pause >nul
Call "menu"

:create
cls
echo.
echo Cosmos v%version% Create Account
echo ===============================================================================
echo.
echo Type "cancel" to quit.
echo.
echo.
set /p newname="Enter new username: "
if "%newname%"=="cancel" call "menu"
if "%newname%"=="%newname%" goto inputnameq
goto create
:inputnameq
if exist "Users" goto skipq
if not exist "Users" goto noskipq
:noskipq
md "Users"
goto skipq
:skipq
cd "Users"
if exist "%newname%.bat" goto namexistq
if not exist "%newname%.bat" goto skip2q
:skip2q
set realusername=%newname%
echo set realusername=%newname%> "%newname%.bat"
goto nextq
:nextq
echo.
set /p pswd="Enter new Password: "
if "%pswd%"=="%pswd%" goto inputpassq
:inputpassq
echo set password=%pswd%>> "%newname%.bat"
goto next1q
:namexistq
echo.
echo The entered username already exists.
echo.
echo.
echo Press any key to return. . .
pause >nul
goto cdcd
:next1q
cd ..
if exist "Preferences" goto skipq1q9
if not exist "Preferences" goto noskipq1q9
:noskipq1q9
md "Preferences"
goto skipq1q9
:skipq1q9
cd "Preferences"
if exist "%realusername%.bat" goto namexistq1q9
if not exist "%realusername%.bat" goto skip2q1q9
:namexistq1q9
del "%realusername%.bat"
goto skip2q1q9
:skip2q1q9
echo @echo off> "%realusername%.bat"
echo set "windowwidth=80">> "%realusername%.bat"
echo set "windowheight=30">> "%realusername%.bat"
echo mode %windowwidth%,%windowheight%>> "%realusername%.bat"
echo set "echo=off">> "%realusername%.bat"
echo set "cursor=msdos">> "%realusername%.bat"
echo set "ascii=no">> "%realusername%.bat"
echo set "lightmode=no">> "%realusername%.bat"
echo cd ..>> "%realusername%.bat"
echo call "menu">> "%realusername%.bat"
goto next1q2
:next1q2
cls
echo.
echo Cosmos v%version% Create Account
echo ===============================================================================
echo.
echo Your account has been successfully created!
echo.
echo.
pause
goto cdcd
:cdcd
cd ..
call "menu"