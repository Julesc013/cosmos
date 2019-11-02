:check
if %boot% ==yes goto cmd0
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





:cmd0
cls
echo.
echo Cosmos v%version% Command Line              NOTE: Enter all commands in LOWER case!
echo ===============================================================================
echo.
echo Type "help" for a list of commands.
echo Type "menu" to return to the Menu.
echo Type "options" to access the Options.
echo.
echo.
goto cmd2
:cmd
cls
echo.
echo Cosmos v%version% Command Line              NOTE: Enter all commands in LOWER case!
echo ===============================================================================
echo.
:cmd2
if "%cursor%" == "msdos" goto cmd2ms
if "%cursor%" == "python" goto cmd2py
:cmd2ms
set /P CMD="%CD%>"
goto commands
:cmd2py
set /P CMD=">>> "
goto commands





:commands
if "%CMD%" == "" goto cmd2
if "%CMD%" == " " goto cmd2

if "%CMD%" == "logout" goto logout
if "%CMD%" == "logoff" goto logout
if "%CMD%" == "quit" goto quit
if "%CMD%" == "exit" goto quit
if "%CMD%" == "kill" exit
if "%CMD%" == "shutdown" call "shutdown"

if "%CMD%" == "help" goto help
if "%CMD%" == "help shutdown" goto shelp
if "%CMD%" == "shutdown help" goto shelp

if "%CMD%" == "fileman" goto fileman
if "%CMD%" == "file manager" goto fileman

if "%CMD%" == "cls" goto cmd
if "%CMD%" == "clear" goto cmd
if "%CMD%" == "clear screen" goto cmd
if "%CMD%" == "cls full" cls
if "%CMD%" == "clear full" cls

if "%CMD%" == "date" goto date
if "%CMD%" == "time" goto time

if "%CMD%" == "renew" goto renewip
if "%CMD%" == "renew internet" goto renewip
if "%CMD%" == "renew connection" goto renewip
if "%CMD%" == "renew internet connection" goto renewip

if "%CMD%" == "menu" call "menu"
if "%CMD%" == "options" goto cmdpreoptions
goto appcheck0





:appcheck0
if exist "Cosmos v%verson% Data" goto appcheck1
if not exist "Cosmos v%verson% Data" goto appcheck2
:appcheck2
if exist "Applications" goto appcheck3
if not exist "Applications" goto appcheck4
:appcheck4
if exist "MS-DOS" goto appcheck5
if not exist "MS-DOS" goto appcheck6
:appcheck6
if exist "EDIT.EXE" goto appcheck7
if not exist "EDIT.EXE" goto cmdengine
:appcheck1
cd Cosmos v%verson% Data
cd Applications
cd MS-DOS
goto appcheck7
:appcheck3
cd Applications
cd MS-DOS
goto appcheck7
:appcheck5
cd MS-DOS
goto appcheck7
:appcheck7
%CMD%
cd C:\
goto cmd2




:cmdengine
%CMD%
cd C:\
goto cmd2




:help
echo List of "simple" commands:
echo.
echo menu			= Returns to the Menu
echo options			= Accesses the Options menu
echo logout			= Logs out and returns to the Menu
echo quit			= Exits the program (with prompt)
echo kill			= Exits the program immediately
echo.
echo shutdown		= Shows the Shutdown menu
echo         			(type "help shutdown" for more info)
echo.
echo fileman			= Opens the FileMan application (file manager)
echo.
echo clear			= Clears the screen of entered commands
echo clear full		= Clears the screen of everything
echo.
echo date			= Shows the system date
echo time			= Shows the system time
echo.
echo renew connection	= Renews/Reconnects your internet connection
echo.
echo.
echo Would like to see the full Batch help page? (y/n)
echo.
if "%cursor%" == "msdos" goto help2ms
if "%cursor%" == "python" goto help2py
:help2ms
set /P helpop="Choice: "
goto help3
:help2py
set /P helpop=">>> "
goto help3
:help3
if "%helpop%" == "" goto help3.1
if "%helpop%" == " " goto help3.1
if "%helpop%" == "n" goto help3.1
if "%helpop%" == "no" goto help3.1
if "%helpop%" == "y" goto help4
if "%helpop%" == "yes" goto help4
goto help3.1
:help3.1
echo.
goto cmd2
:help4
help
echo.
goto cmd2

:shelp
echo List of shutdown commands:
echo.
echo Logout (Cosmos)			= Logs out the active Cosmos user
echo Shutdown (Cosmos)			= Shuts down Cosmos
echo.
echo Logout						= Logs out the active Windows user
echo Shutdown					= Shuts down Windows
echo Restart					= Restarts Windows
echo Hibernate					= Hibernates Windows (Stays on in a sleeping state)
echo Shutdown (Timer)			= Shuts down after the set time (you set time)
echo Shutdown (Fast Startup)	= Hybrid Shutdown, prepares system for start up
echo Shutdown (Instant)			= Immidiately shuts down without warning
echo                    				(Can cause loss of data)
echo.
echo Abort Shutdown				= Aborts (stops) any shutdown procedures
echo.
goto cmd2


:date
echo Today's date is %date%
echo.
goto cmd2
:time
echo Here's the time: %time%
echo.
goto cmd2


:renewip
ipconfig /renew
goto cmd2

:logout
set "loggedin=no"
call "menu"



:fileman
cd Applications
call "FileMan v1.0"


:cmdpreoptions
set "optionsfromcmd=yes"
call "options"

:quit
:exit2
cls
echo.
echo Cosmos v%version%
echo ===============================================================================
echo.
echo Are you sure you want to quit?
echo.
cmdMenuSel %cmdmenuselclr% "Quit" "Cancel"
if %ERRORLEVEL% == 1 exit
if %ERRORLEVEL% == 2 goto cmd
goto exit2