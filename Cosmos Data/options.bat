:check
if %boot% ==yes goto options
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

:options
cls
echo.
echo Cosmos v%version% Options
echo ===============================================================================
echo.
:: First decision; trees from here.
if %userlock% ==off goto userlockoff
if %userlock% ==on goto userlockon
goto fatalerror

:userlockon
if %cursor% ==msdos goto cdshowonop
if %cursor% ==python goto cdshowoffop
    :cdshowonop
    if %ascii% ==no goto opnoascii
    if %ascii% ==yes goto opyesascii
        :opnoascii
        if %lightmode% ==no goto opnolight1
        if %lightmode% ==yes goto opyeslight1
            :opnolight1
            cmdMenuSel 0fa0 "Enable ASCII Characters" "Light Mode" "Resize Window" "Reset Prefrences" "Save Prefrences" "Unlock Creating Accounts" "Switch to Python Cursor (Command Line)" "Developer Options" "Back"
            if %ERRORLEVEL% == 1 goto enascii
            if %ERRORLEVEL% == 2 goto enlightmode
            if %ERRORLEVEL% == 3 goto resize
            if %ERRORLEVEL% == 4 goto resetpref
			if %ERRORLEVEL% == 5 goto savepref
			if %ERRORLEVEL% == 6 goto userlockturnoff
            if %ERRORLEVEL% == 7 goto cdshowoff
            if %ERRORLEVEL% == 8 goto devoptions
            if %ERRORLEVEL% == 9 goto optionspremenu
            goto options
            :opyeslight1
            cmdMenuSel f0cf "Enable ASCII Characters" "Dark Mode" "Resize Window" "Reset Prefrences" "Save Prefrences" "Unlock Creating Accounts" "Switch to Python Cursor (Command Line)" "Developer Options" "Back"
            if %ERRORLEVEL% == 1 goto enascii
            if %ERRORLEVEL% == 2 goto dislightmode
            if %ERRORLEVEL% == 3 goto resize
            if %ERRORLEVEL% == 4 goto resetpref
			if %ERRORLEVEL% == 5 goto savepref
			if %ERRORLEVEL% == 6 goto userlockturnoff
            if %ERRORLEVEL% == 7 goto cdshowoff
            if %ERRORLEVEL% == 8 goto devoptions
            if %ERRORLEVEL% == 9 goto optionspremenu
            goto options

        :opyesascii
        if %lightmode% ==no goto opnolight2
        if %lightmode% ==yes goto opyeslight2
            :opnolight2
            cmdMenuSel 0fa0 "Disable ASCII Characters" "Light Mode" "Resize Window" "Reset Prefrences" "Save Prefrences" "Unlock Creating Accounts" "Switch to Python Cursor (Command Line)" "Developer Options" "Back"
            if %ERRORLEVEL% == 1 goto disascii
            if %ERRORLEVEL% == 2 goto enlightmode
            if %ERRORLEVEL% == 3 goto resize
            if %ERRORLEVEL% == 4 goto resetpref
			if %ERRORLEVEL% == 5 goto savepref
			if %ERRORLEVEL% == 6 goto userlockturnoff
            if %ERRORLEVEL% == 7 goto cdshowoff
            if %ERRORLEVEL% == 8 goto devoptions
            if %ERRORLEVEL% == 9 goto optionspremenu
            goto options
            :opyeslight2
            cmdMenuSel f0cf "Disable ASCII Characters" "Dark Mode" "Resize Window" "Reset Prefrences" "Save Prefrences" "Unlock Creating Accounts" "Switch to Python Cursor (Command Line)" "Developer Options" "Back"
            if %ERRORLEVEL% == 1 goto disascii
            if %ERRORLEVEL% == 2 goto dislightmode
            if %ERRORLEVEL% == 3 goto resize
            if %ERRORLEVEL% == 4 goto resetpref
			if %ERRORLEVEL% == 5 goto savepref
			if %ERRORLEVEL% == 6 goto userlockturnoff
            if %ERRORLEVEL% == 7 goto cdshowoff
            if %ERRORLEVEL% == 8 goto devoptions
            if %ERRORLEVEL% == 9 goto optionspremenu
            goto options

    :cdshowoffop
    if %ascii% ==no goto opnoasciib
    if %ascii% ==yes goto opyesasciib
        :opnoasciib
        if %lightmode% ==no goto opnolight1b
        if %lightmode% ==yes goto opyeslight1b
            :opnolight1b
            cmdMenuSel 0fa0 "Enable ASCII Characters" "Light Mode" "Resize Window" "Reset Prefrences" "Save Prefrences" "Unlock Creating Accounts" "Switch to MS-DOS Cursor (Command Line)" "Developer Options" "Back"
            if %ERRORLEVEL% == 1 goto enascii
            if %ERRORLEVEL% == 2 goto enlightmode
            if %ERRORLEVEL% == 3 goto resize
            if %ERRORLEVEL% == 4 goto resetpref
			if %ERRORLEVEL% == 5 goto savepref
			if %ERRORLEVEL% == 6 goto userlockturnoff
            if %ERRORLEVEL% == 7 goto cdshowon
            if %ERRORLEVEL% == 8 goto devoptions
            if %ERRORLEVEL% == 9 goto optionspremenu
            goto options
            :opyeslight1b
            cmdMenuSel f0cf "Enable ASCII Characters" "Dark Mode" "Resize Window" "Reset Prefrences" "Save Prefrences" "Unlock Creating Accounts" "Switch to MS-DOS Cursor (Command Line)" "Developer Options" "Back"
            if %ERRORLEVEL% == 1 goto enascii
            if %ERRORLEVEL% == 2 goto dislightmode
            if %ERRORLEVEL% == 3 goto resize
            if %ERRORLEVEL% == 4 goto resetpref
			if %ERRORLEVEL% == 5 goto savepref
			if %ERRORLEVEL% == 6 goto userlockturnoff
            if %ERRORLEVEL% == 7 goto cdshowon
            if %ERRORLEVEL% == 8 goto devoptions
            if %ERRORLEVEL% == 9 goto optionspremenu
            goto options

        :opyesasciib
        if %lightmode% ==no goto opnolight2b
        if %lightmode% ==yes goto opyeslight2b
            :opnolight2b
            cmdMenuSel 0fa0 "Disable ASCII Characters" "Light Mode" "Resize Window" "Reset Prefrences" "Save Prefrences" "Unlock Creating Accounts" "Switch to MS-DOS Cursor (Command Line)" "Developer Options" "Back"
            if %ERRORLEVEL% == 1 goto disascii
            if %ERRORLEVEL% == 2 goto enlightmode
            if %ERRORLEVEL% == 3 goto resize
            if %ERRORLEVEL% == 4 goto resetpref
			if %ERRORLEVEL% == 5 goto savepref
			if %ERRORLEVEL% == 6 goto userlockturnoff
            if %ERRORLEVEL% == 7 goto cdshowon
            if %ERRORLEVEL% == 8 goto devoptions
            if %ERRORLEVEL% == 9 goto optionspremenu
            goto options
            :opyeslight2b
            cmdMenuSel f0cf "Disable ASCII Characters" "Dark Mode" "Resize Window" "Reset Prefrences" "Save Prefrences" "Unlock Creating Accounts" "Switch to MS-DOS Cursor (Command Line)" "Developer Options" "Back"
            if %ERRORLEVEL% == 1 goto disascii
            if %ERRORLEVEL% == 2 goto dislightmode
            if %ERRORLEVEL% == 3 goto resize
            if %ERRORLEVEL% == 4 goto resetpref
			if %ERRORLEVEL% == 5 goto savepref
			if %ERRORLEVEL% == 6 goto userlockturnoff
            if %ERRORLEVEL% == 7 goto cdshowon
            if %ERRORLEVEL% == 8 goto devoptions
            if %ERRORLEVEL% == 9 goto optionspremenu
            goto options

:userlockoff
if %cursor% ==msdos goto cdshowonop0
if %cursor% ==python goto cdshowoffop0
    :cdshowonop0
    if %ascii% ==no goto opnoascii0
    if %ascii% ==yes goto opyesascii0
        :opnoascii0
        if %lightmode% ==no goto opnolight10
        if %lightmode% ==yes goto opyeslight10
            :opnolight10
            cmdMenuSel 0fa0 "Enable ASCII Characters" "Light Mode" "Resize Window" "Reset Prefrences" "Save Prefrences" "Lock Creating Accounts" "Switch to Python Cursor (Command Line)" "Developer Options" "Back"
            if %ERRORLEVEL% == 1 goto enascii
            if %ERRORLEVEL% == 2 goto enlightmode
            if %ERRORLEVEL% == 3 goto resize
            if %ERRORLEVEL% == 4 goto resetpref
			if %ERRORLEVEL% == 5 goto savepref
			if %ERRORLEVEL% == 6 goto userlockturnon
            if %ERRORLEVEL% == 7 goto cdshowoff
            if %ERRORLEVEL% == 8 goto devoptions
            if %ERRORLEVEL% == 9 goto optionspremenu
            goto options
            :opyeslight10
            cmdMenuSel f0cf "Enable ASCII Characters" "Dark Mode" "Resize Window" "Reset Prefrences" "Save Prefrences" "Lock Creating Accounts" "Switch to Python Cursor (Command Line)" "Developer Options" "Back"
            if %ERRORLEVEL% == 1 goto enascii
            if %ERRORLEVEL% == 2 goto dislightmode
            if %ERRORLEVEL% == 3 goto resize
            if %ERRORLEVEL% == 4 goto resetpref
			if %ERRORLEVEL% == 5 goto savepref
			if %ERRORLEVEL% == 6 goto userlockturnon
            if %ERRORLEVEL% == 7 goto cdshowoff
            if %ERRORLEVEL% == 8 goto devoptions
            if %ERRORLEVEL% == 9 goto optionspremenu
            goto options

        :opyesascii0
        if %lightmode% ==no goto opnolight20
        if %lightmode% ==yes goto opyeslight20
            :opnolight20
            cmdMenuSel 0fa0 "Disable ASCII Characters" "Light Mode" "Resize Window" "Reset Prefrences" "Save Prefrences" "Lock Creating Accounts" "Switch to Python Cursor (Command Line)" "Developer Options" "Back"
            if %ERRORLEVEL% == 1 goto disascii
            if %ERRORLEVEL% == 2 goto enlightmode
            if %ERRORLEVEL% == 3 goto resize
            if %ERRORLEVEL% == 4 goto resetpref
			if %ERRORLEVEL% == 5 goto savepref
			if %ERRORLEVEL% == 6 goto userlockturnon
            if %ERRORLEVEL% == 7 goto cdshowoff
            if %ERRORLEVEL% == 8 goto devoptions
            if %ERRORLEVEL% == 9 goto optionspremenu
            goto options
            :opyeslight20
            cmdMenuSel f0cf "Disable ASCII Characters" "Dark Mode" "Resize Window" "Reset Prefrences" "Save Prefrences" "Lock Creating Accounts" "Switch to Python Cursor (Command Line)" "Developer Options" "Back"
            if %ERRORLEVEL% == 1 goto disascii
            if %ERRORLEVEL% == 2 goto dislightmode
            if %ERRORLEVEL% == 3 goto resize
            if %ERRORLEVEL% == 4 goto resetpref
			if %ERRORLEVEL% == 5 goto savepref
			if %ERRORLEVEL% == 6 goto userlockturnon
            if %ERRORLEVEL% == 7 goto cdshowoff
            if %ERRORLEVEL% == 8 goto devoptions
            if %ERRORLEVEL% == 9 goto optionspremenu
            goto options

    :cdshowoffop0
    if %ascii% ==no goto opnoasciib0
    if %ascii% ==yes goto opyesasciib0
        :opnoasciib0
        if %lightmode% ==no goto opnolight1b0
        if %lightmode% ==yes goto opyeslight1b0
            :opnolight1b0
            cmdMenuSel 0fa0 "Enable ASCII Characters" "Light Mode" "Resize Window" "Reset Prefrences" "Save Prefrences" "Lock Creating Accounts" "Switch to MS-DOS Cursor (Command Line)" "Developer Options" "Back"
            if %ERRORLEVEL% == 1 goto enascii
            if %ERRORLEVEL% == 2 goto enlightmode
            if %ERRORLEVEL% == 3 goto resize
            if %ERRORLEVEL% == 4 goto resetpref
			if %ERRORLEVEL% == 5 goto savepref
			if %ERRORLEVEL% == 6 goto userlockturnon
            if %ERRORLEVEL% == 7 goto cdshowon
            if %ERRORLEVEL% == 8 goto devoptions
            if %ERRORLEVEL% == 9 goto optionspremenu
            goto options
            :opyeslight1b0
            cmdMenuSel f0cf "Enable ASCII Characters" "Dark Mode" "Resize Window" "Reset Prefrences" "Save Prefrences" "Lock Creating Accounts" "Switch to MS-DOS Cursor (Command Line)" "Developer Options" "Back"
            if %ERRORLEVEL% == 1 goto enascii
            if %ERRORLEVEL% == 2 goto dislightmode
            if %ERRORLEVEL% == 3 goto resize
            if %ERRORLEVEL% == 4 goto resetpref
			if %ERRORLEVEL% == 5 goto savepref
			if %ERRORLEVEL% == 6 goto userlockturnon
            if %ERRORLEVEL% == 7 goto cdshowon
            if %ERRORLEVEL% == 8 goto devoptions
            if %ERRORLEVEL% == 9 goto optionspremenu
            goto options

        :opyesasciib0
        if %lightmode% ==no goto opnolight2b0
        if %lightmode% ==yes goto opyeslight2b0
            :opnolight2b0
            cmdMenuSel 0fa0 "Disable ASCII Characters" "Light Mode" "Resize Window" "Reset Prefrences" "Save Prefrences" "Lock Creating Accounts" "Switch to MS-DOS Cursor (Command Line)" "Developer Options" "Back"
            if %ERRORLEVEL% == 1 goto disascii
            if %ERRORLEVEL% == 2 goto enlightmode
            if %ERRORLEVEL% == 3 goto resize
            if %ERRORLEVEL% == 4 goto resetpref
			if %ERRORLEVEL% == 5 goto savepref
			if %ERRORLEVEL% == 6 goto userlockturnon
            if %ERRORLEVEL% == 7 goto cdshowon
            if %ERRORLEVEL% == 8 goto devoptions
            if %ERRORLEVEL% == 9 goto optionspremenu
            goto options
            :opyeslight2b0
            cmdMenuSel f0cf "Disable ASCII Characters" "Dark Mode" "Resize Window" "Reset Prefrences" "Save Prefrences" "Lock Creating Accounts" "Switch to MS-DOS Cursor (Command Line)" "Developer Options" "Back"
            if %ERRORLEVEL% == 1 goto disascii
            if %ERRORLEVEL% == 2 goto dislightmode
            if %ERRORLEVEL% == 3 goto resize
            if %ERRORLEVEL% == 4 goto resetpref
			if %ERRORLEVEL% == 5 goto savepref
			if %ERRORLEVEL% == 6 goto userlockturnon
            if %ERRORLEVEL% == 7 goto cdshowon
            if %ERRORLEVEL% == 8 goto devoptions
            if %ERRORLEVEL% == 9 goto optionspremenu
            goto options
			
			
:optionspremenu
if %optionsfromcmd% ==yes call "cmdline"
if %optionsfromcmd% ==no call "menu"
call "menu"

:: "cursor" previously "cdshow"
:cdshowoff
set "cursor=python"
goto options
:cdshowon
set "cursor=msdos"
goto options

:enlightmode
set "lightmode=yes"
set "cmdmenuselclr=f0cf"
set "clr=f9"
color %clr%
goto options
:dislightmode
set "lightmode=no"
set "cmdmenuselclr=0fa0"
set "clr=0e"
color %clr%
goto options

:enascii
set "ascii=yes"
goto options
:disascii
set "ascii=no"
goto options

:userlockturnon
set "userlock=on"
goto userlocknext
:userlockturnoff
set "userlock=off"
goto userlocknext
:userlocknext
if exist "Preferences" goto skipq1
if not exist "Preferences" goto noskipq1
:noskipq1
md "Preferences"
goto skipq1
:skipq1
cd "Preferences"
if exist "userlock.bat" goto namexistq1
if not exist "userlock.bat" goto skip2q1
:namexistq1
del "userlock.bat"
goto skip2q1
:skip2q1
echo set userlock=%userlock%> "userlock.bat"
goto nextq1
:nextq1
echo cd ..>> "userlock.bat"
echo Call "Nova Loader 1.3">> "userlock.bat"
cd ..
goto options



:resize
cls
echo.
echo Cosmos v%version% Options \ Resize Window
echo ===============================================================================
echo.
echo CAUTION: It is NOT ADVISED that you set the window WIDTH below 82.
echo The current window is: %windowwidth% x %windowheight%
echo.
echo.
set /p windowwidth=New Window Width:  
echo.
set /p windowheight=New Window Height: 
echo.
echo.
echo Press any key to resize . . .
pause >nul
mode %windowwidth%,%windowheight%
goto options

:resetpref
cd Preferences
del "%realusername%.bat"
cd ..
cls
echo.
echo Cosmos v%version% Options \ Reset Prefrences
echo ===============================================================================
echo.
echo Your saved prefrences have been cleared.
echo.
echo.
echo Press any key to return to Options . . .
pause >nul
goto options

:savepref
cd "Preferences"
if exist "%realusername%.bat" goto namexists
if not exist "%realusername%.bat" goto skip2s
:namexists
del "%realusername%.bat"
goto skip2s
:skip2s
echo @echo off> "%realusername%.bat"
echo set "windowwidth=%windowwidth%">> "%realusername%.bat"
echo set "windowheight=%windowheight%">> "%realusername%.bat"
echo mode %windowwidth%,%windowheight%>> "%realusername%.bat"
echo set "echo=%echo%">> "%realusername%.bat"
echo set "cursor=%cursor%">> "%realusername%.bat"
echo set "ascii=%ascii%">> "%realusername%.bat"
echo set "lightmode=%lightmode%">> "%realusername%.bat"
echo cd ..>> "%realusername%.bat"
echo call "menu">> "%realusername%.bat"
cd ..
cls
echo.
echo Cosmos v%version% Options \ Save Prefrences
echo ===============================================================================
echo.
echo Your current prefrences have been saved.
echo.
echo.
echo Press any key to return to Options . . .
pause >nul
goto options

:devoptions
cls
echo.
echo Cosmos v%version% Options \ Developer Options
echo ===============================================================================
echo.
echo Please enter the developer password . . .
echo.
echo Type "cancel" to quit.
echo.
echo.
set /p devpass2=Password: 
if %devpass2% == "cancel" goto options
if %devpass% == %devpass2% goto devoptions2
goto devoptionserror
:devoptionserror
echo.
echo Incorrect Password!
echo.
echo.
echo Press any key to retry . . .
pause >nul
goto devoptions
:devoptions2
cls
echo.
echo Cosmos v%version% Options \ Developer Options
echo ===============================================================================
echo.
if %echo% ==off goto echooff11
if %echo% ==on goto echoon11
:echooff11
cmdMenuSel %cmdmenuselclr% "Change Variables" "Turn Echo On" "Back"
goto lightnext6
:echoon11
cmdMenuSel %cmdmenuselclr% "Change Variables" "Turn Echo Off" "Back"
goto lightnext61
:lightnext6
if %ERRORLEVEL% == 1 goto changevar
if %ERRORLEVEL% == 2 goto turnechoon
if %ERRORLEVEL% == 3 goto options
goto devoptions2
:lightnext61
if %ERRORLEVEL% == 1 goto changevar
if %ERRORLEVEL% == 2 goto turnechooff
if %ERRORLEVEL% == 3 goto options
goto devoptions2
:turnechooff
@echo off
set "echo=off"
goto devoptions2
:turnechoon
@echo on
set "echo=on"
goto devoptions2
:changevar
cls
echo.
echo Cosmos v%version% Options \ Developer Options \ Change Variables
echo ===============================================================================
echo.
cmdMenuSel %cmdmenuselclr% "Boot" "ASCII" "Year" "Version" "Company" "Architecture" "Developer Passcode" "Add Custom Variable" "Back"
if %ERRORLEVEL% == 1 goto varboot
if %ERRORLEVEL% == 2 goto varascii
if %ERRORLEVEL% == 3 goto varyear
if %ERRORLEVEL% == 4 goto varversion
if %ERRORLEVEL% == 5 goto varcompany
if %ERRORLEVEL% == 6 goto vararch
if %ERRORLEVEL% == 7 goto vardevpass
if %ERRORLEVEL% == 8 goto varnew
if %ERRORLEVEL% == 9 goto devoptions2
goto devoptions2
:varboot
cls
echo.
echo ... Options \ Developer Options \ Change Variables \ Boot
echo ===============================================================================
echo.
set /p boot2=Boot: 
set "boot=%boot2%"
goto changevar
:varascii
cls
echo.
echo ... Options \ Developer Options \ Change Variables \ ASCII
echo ===============================================================================
echo.
set /p ascii2=ASCII: 
set "ascii=%ascii2%"
goto changevar
:varyear
cls
echo.
echo ... Options \ Developer Options \ Change Variables \ Year
echo ===============================================================================
echo.
set /p year2=Year: 
set "year=%year2%"
goto changevar
:varversion
cls
echo.
echo ... Options \ Developer Options \ Change Variables \ Version
echo ===============================================================================
echo.
set /p version2=Version: 
set "version=%version2%"
goto changevar
:varcompany
cls
echo.
echo ... Options \ Developer Options \ Change Variables \ Company
echo ===============================================================================
echo.
set /p company2=Company: 
set "company=%company2%"
goto changevar
:vararch
cls
echo.
echo ... Options \ Developer Options \ Change Variables \ Architecture
echo ===============================================================================
echo.
set /p arch2=Architecture: 
set "arch=%arch2%"
goto changevar
:vardevpass
cls
echo.
echo ... Options \ Developer Options \ Change Variables \ Developer Passcode
echo ===============================================================================
echo.
set /p devpass2=Developer Passcode: 
set "devpass=%devpass2%"
goto changevar
:varnew
cls
echo.
echo ... Options \ Developer Options \ Change Variables \ Add Custom Variable
echo ===============================================================================
echo.
set /p tempvariable=Variable Name:  
echo.
set /p tempvariable2=Variable Value: 
set "%tempvariable%=%tempvariable2%"
echo.
echo.
echo The variable "%tempvariable%" has been set to "%tempvariable2%"
echo.
pause
goto changevar