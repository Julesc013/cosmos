@echo off

:sysinfo
set "loadernamecaps=NOVA LOADER"
set "loadername=Nova Loader"
set "loaderv=1.3.2"
set "loaderbuild=1.3-PATCH2-BUILD1042"

:check
if %boot% ==yes goto boot
if %boot% ==no goto booterror
goto booterror

:booterror
color 0c
title Boot Loader Error
cls
echo.
echo %loadername% %loaderv% was unable to start.
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

:exit
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

:boot
cls
title %loadername% v%loaderv%
color 0a
cls
echo.
echo ****************************** %loadernamecaps%(R) V%loaderv% *****************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%
CScript sleep.vbs 1000 //NoLogo
echo.
echo LOADER V%loaderbuild%
CScript sleep.vbs 1000 //NoLogo
echo.
echo %arch% ARCHITECTURE (%archformat% INSTRUCTION SET)
CScript sleep.vbs 1000 //NoLogo
echo.
echo %ram% RAM SYSTEM
CScript sleep.vbs 2000 //NoLogo
echo %avai-ram-bl% FREE
CScript sleep.vbs 1000 //NoLogo
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA
CScript sleep.vbs 1000 //NoLogo
cls
echo.
echo ****************************** %loadernamecaps%(R) V%loaderv% *****************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%
echo.
echo LOADER V%loaderbuild%
echo.
echo %arch% ARCHITECTURE (%archformat% INSTRUCTION SET)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA .
CScript sleep.vbs 1000 //NoLogo
cls
echo.
echo ****************************** %loadernamecaps%(R) V%loaderv% *****************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%
echo.
echo LOADER V%loaderbuild%
echo.
echo %arch% ARCHITECTURE (%archformat% INSTRUCTION SET)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA . .
CScript sleep.vbs 1000 //NoLogo
cls
echo.
echo ****************************** %loadernamecaps%(R) V%loaderv% *****************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%
echo.
echo LOADER V%loaderbuild%
echo.
echo %arch% ARCHITECTURE (%archformat% INSTRUCTION SET)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA . . .
echo FloppyDiskette(0)
CScript sleep.vbs 1000 //NoLogo
cls
echo.
echo ****************************** %loadernamecaps%(R) V%loaderv% *****************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%
echo.
echo LOADER V%loaderbuild%
echo.
echo %arch% ARCHITECTURE (%archformat% INSTRUCTION SET)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA
echo FloppyDiskette(0)
CScript sleep.vbs 1000 //NoLogo
cls
echo.
echo ****************************** %loadernamecaps%(R) V%loaderv% *****************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%
echo.
echo LOADER V%loaderbuild%
echo.
echo %arch% ARCHITECTURE (%archformat% INSTRUCTION SET)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA .
echo FloppyDiskette(0)
CScript sleep.vbs 1000 //NoLogo
cls
echo.
echo ****************************** %loadernamecaps%(R) V%loaderv% *****************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%
echo.
echo LOADER V%loaderbuild%
echo.
echo %arch% ARCHITECTURE (%archformat% INSTRUCTION SET)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA . .
echo FloppyDiskette(0)
echo CompactDisk(0)
CScript sleep.vbs 1000 //NoLogo
cls
echo.
echo ****************************** %loadernamecaps%(R) V%loaderv% *****************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%
echo.
echo LOADER V%loaderbuild%
echo.
echo %arch% ARCHITECTURE (%archformat% INSTRUCTION SET)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA . . .
echo FloppyDiskette(0)
echo CompactDisk(0)
CScript sleep.vbs 1000 //NoLogo
cls
echo.
echo ****************************** %loadernamecaps%(R) V%loaderv% *****************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%
echo.
echo LOADER V%loaderbuild%
echo.
echo %arch% ARCHITECTURE (%archformat% INSTRUCTION SET)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA
echo FloppyDiskette(0)
echo CompactDisk(0)
CScript sleep.vbs 1000 //NoLogo
cls
echo.
echo ****************************** %loadernamecaps%(R) V%loaderv% *****************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%
echo.
echo LOADER V%loaderbuild%
echo.
echo %arch% ARCHITECTURE (%archformat% INSTRUCTION SET)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA .
echo FloppyDiskette(0)
echo CompactDisk(0)
CScript sleep.vbs 1000 //NoLogo
cls
echo.
echo ****************************** %loadernamecaps%(R) V%loaderv% *****************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%
echo.
echo LOADER V%loaderbuild%
echo.
echo %arch% ARCHITECTURE (%archformat% INSTRUCTION SET)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA . .
echo FloppyDiskette(0)
echo CompactDisk(0)
CScript sleep.vbs 1000 //NoLogo
cls
echo.
echo ****************************** %loadernamecaps%(R) V%loaderv% *****************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%
echo.
echo LOADER V%loaderbuild%
echo.
echo %arch% ARCHITECTURE (%archformat% INSTRUCTION SET)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA
echo FloppyDiskette(0)
echo CompactDisk(0)
echo UniversalSerialBus(0)
echo.
echo NO EXTERNAL BOOTABLE MEDIA FOUND
CScript sleep.vbs 1000 //NoLogo
echo.
echo.
echo SELECT MEDIA TO BOOT:
echo.

cmdMenuSel cfa0 "MS-DOS %msdosv%" "Cosmos v%version%" "Cancel"
if %ERRORLEVEL% == 1 goto msdos
if %ERRORLEVEL% == 2 goto COSMOS
if %ERRORLEVEL% == 3 goto exit
goto fatalerror

:msdos
Call "MS-DOS"

:COSMOS
Call "load"
