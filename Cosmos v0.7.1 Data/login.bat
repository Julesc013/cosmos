:check
if %boot% ==yes goto login
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

:login
:logon
cls
echo.
echo Cosmos v%version% Login
echo ===============================================================================
echo.
echo Type "cancel" to return to the Menu.
echo Type "help" if you have forgotten your username/password.
echo.
echo.
Set /p logname="Username: "
if "%logname%"=="cancel" goto skippref
if "%logname%"=="help" goto loghelp
if "%logname%"=="%otucode%" goto otucodeactivate
if "%logname%"=="admin" goto logadmin
if "%logname%"=="%logname%" goto 2.1w
:logadmin
set "loggedadmin=yes"
set "realusername=Administrator"
echo.
set /p logpass="Password: "
if "%logpass%"=="%adminpass%" goto logdonew
goto errorlogw
:2.1w
echo.
set /p logpass="Password: "
if "%logpass%"=="%logpass%" goto login2w
:login2w
cd "Users"
if exist "%logname%.bat" goto callw
if not exist "%logname%.bat" goto errorlogw
:callw
call "%logname%.bat"
if "%password%"=="%logpass%" goto logdonew
goto errorlogw
:errorlogw
echo.
echo.
echo Username or Password incorrect.
echo Access denied.
echo.
pause
if "%loggedadmin%"=="yes" call "menu"
cd ..
call "menu"
:logdonew
set "loggedin=yes"
cls
echo.
echo Cosmos v%version% Login
echo ===============================================================================
echo.
echo Successfully logged in!
echo.
echo.
pause
goto cdcd2
:cdcd2
if "%loggedadmin%"=="yes" goto cdcd2admin
cd ..
:cdcd2admin
cd Preferences
if exist "%realusername%.bat" goto calpref
if not exist "%realusername%.bat" goto skippref
:calpref
call "%realusername%.bat"
:skippref
call "menu"

:loghelp
cls
echo.
echo Cosmos v%version% Login \ Help
echo ===============================================================================
echo.
echo If you do not have the permission to create a new account,
echo and have forgotten the credentials to an active account;
echo.
echo You can retrieve a one-time-use code that will allow you to
echo create a new account.
echo.
echo.
echo To use your code, type it in the field that requires your username
echo on the login screen.
echo.
echo.
echo Type "cancel" to go back.
echo Type "retrieve" to get your one-time-use code.
echo.
echo.
Set /p lhinput=Choice: 
if "%lhinput%"=="cancel" goto login
if "%lhinput%"=="retrieve" goto retrievepre
goto loghelp
:retrievepre
cd Preferences
call "otucode.bat"

:otucodeactivate
if exist "Preferences" goto skipq1q
if not exist "Preferences" goto noskipq1q
:noskipq1q
md "Preferences"
goto skipq1q
:skipq1q
cd "Preferences"
if exist "otucode.bat" goto namexistq1q
if not exist "otucode.bat" goto skip2q1q
:namexistq1q
del "otucode.bat"
goto skip2q1q
:skip2q1q
echo set otucodeused=yes> "otucode.bat"
echo cd ..>> "otucode.bat"
echo Call "loginotu">> "otucode.bat"
cd ..
set "otucodetemp2=true"
call "create"