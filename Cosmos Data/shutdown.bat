:check
if %boot% ==yes goto shutdown
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

:shutdown
cls
echo.
echo Cosmos v%version%
echo ===============================================================================
echo.
echo NOTE: Most of these options apply to WINDOWS itself!
echo.
echo.
echo What would you like to do?
echo.
cmdMenuSel %cmdmenuselclr% "Logout (Cosmos)" "Shutdown (Cosmos)" "" "Logout" "Shutdown" "Restart" "Hibernate" "Shutdown (Timer)" "Shutdown (Instant)" "Shutdown (Fast Startup)" "" "Abort Shutdown" "" "Cancel"
if %ERRORLEVEL% == 1 goto logout
if %ERRORLEVEL% == 2 exit
if %ERRORLEVEL% == 3 goto shutdown
if %ERRORLEVEL% == 4 goto logoutWIN
if %ERRORLEVEL% == 5 goto shutdownWIN
if %ERRORLEVEL% == 6 goto restartWIN
if %ERRORLEVEL% == 7 goto hibernateWIN
if %ERRORLEVEL% == 8 goto shutdownWINtimer
if %ERRORLEVEL% == 9 goto shutdownWINinstant
if %ERRORLEVEL% == 10 goto shutdownWINfaststartup
if %ERRORLEVEL% == 11 goto shutdown
if %ERRORLEVEL% == 12 goto abortWIN
if %ERRORLEVEL% == 13 goto shutdown
if %ERRORLEVEL% == 14 call "cmdline"
goto shutdown

:logout
set "loggedin=no"
call "menu"

:logoutWIN
shutdown /l
goto shutdown

:shutdownWIN
shutdown /s
goto shutdown

:restartWIN
shutdown /r
goto shutdown

:hibernateWIN
shutdown /h
goto shutdown

:shutdownWINtimer
cls
echo.
echo Cosmos v%version%
echo ===============================================================================
echo.
echo Type "cancel" to return to the Shutdown menu.
echo.
echo How many seconds until shutdown?   (Range: 0-31536000 (10 years)) [Default: 30]
echo.
echo.
set /P secs="Amount: "
if "%secs%" == "cancel" goto shutdownWINtimer
if "%secs%" == "" goto shutdownWINtimer
if "%secs%" == " " goto shutdownWINtimer
if "%secs%" == "%secs%" goto shutdownWINtimer2
goto shutdownWINtimer
:shutdownWINtimer2
shutdown /t %secs%
goto shutdown

:shutdownWINinstant
shutdown /p
goto shutdown

:shutdownWINfaststartup
shutdown /hybrid
goto shutdown

:abortWIN
shutdown /a
goto shutdown