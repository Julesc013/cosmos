@echo off

:sysinfo
set "loadernamecaps=NOVA LOADER"
set "loadername=Nova Loader"
set "bootloaderv=1.3"

:check
:: if %boot% ==yes goto :boot else goto :booterror
:: if %year% ==%year% goto :boot else goto :booterror
:: if %bootloaderv% ==%bootloaderv% goto :boot else goto :booterror
:: if %version% ==%version% goto :boot else goto :booterror
:: if %company% ==%company% goto :boot else goto :booterror
:: if %companycaps% ==%companycaps% goto :boot else goto :booterror
:: if %ram% ==%ram% goto :boot else goto :booterror
:: if %avai-ram-bl% ==%avai-ram-bl% goto :boot else goto :booterror
:: if %arch% ==%arch% goto :boot else goto :booterror
:: if %loadernamecaps% ==%loadernamecaps% goto :boot else goto :booterror
:: if %loadername% ==%loadername% goto :boot else goto :booterror
:: if %os% ==%os% goto :boot else goto :booterror
:: if %oscaps% ==%oscaps% goto :boot else goto :booterror
:: if %archformat% ==%archformat% goto :boot else goto :booterror
:: goto booterror
goto boot

:booterror
color 0c
title Boot Loader Error
cls
echo.
echo %loadername% %bootloaderv% was unable to start.
echo.
echo.
echo If this is the first time you've seen this:
echo Try rerunning the file.
echo.
echo If this has occured multiple times:
echo Please contact Jules Carboni for troubleshooting and details.
echo.
echo.
echo Press any key to terminate this window . . .
pause >nul
exit

:exit
exit

:fatalerror
title Catastrophic Error!
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
title %loadername% v%bootloaderv%
color 0a
cls
echo.
echo **************************** %loadernamecaps%(R) V%bootloaderv% ***************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%(R)
CScript Sleep.vbs 1000 //NoLogo
echo.
echo LOADER V%bootloaderv%
CScript Sleep.vbs 1000 //NoLogo
echo.
echo %arch% ARCHITECTURE (%archformat%)
CScript Sleep.vbs 1000 //NoLogo
echo.
echo %ram% RAM SYSTEM
CScript Sleep.vbs 2000 //NoLogo
echo %avai-ram-bl% FREE
CScript Sleep.vbs 1000 //NoLogo
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA
CScript Sleep.vbs 1000 //NoLogo
cls
echo.
echo **************************** %loadernamecaps%(R) V%bootloaderv% ***************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%(R)
echo.
echo LOADER V%bootloaderv%
echo.
echo %arch% ARCHITECTURE (%archformat%)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA .
CScript Sleep.vbs 1000 //NoLogo
cls
echo.
echo **************************** %loadernamecaps%(R) V%bootloaderv% ***************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%(R)
echo.
echo LOADER V%bootloaderv%
echo.
echo %arch% ARCHITECTURE (%archformat%)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA . .
CScript Sleep.vbs 1000 //NoLogo
cls
echo.
echo **************************** %loadernamecaps%(R) V%bootloaderv% ***************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%(R)
echo.
echo LOADER V%bootloaderv%
echo.
echo %arch% ARCHITECTURE (%archformat%)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA . . .
CScript Sleep.vbs 1000 //NoLogo
cls
echo.
echo **************************** %loadernamecaps%(R) V%bootloaderv% ***************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%(R)
echo.
echo LOADER V%bootloaderv%
echo.
echo %arch% ARCHITECTURE (%archformat%)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA
CScript Sleep.vbs 1000 //NoLogo
cls
echo.
echo **************************** %loadernamecaps%(R) V%bootloaderv% ***************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%(R)
echo.
echo LOADER V%bootloaderv%
echo.
echo %arch% ARCHITECTURE (%archformat%)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA .
echo FloppyDiskette(0)
CScript Sleep.vbs 1000 //NoLogo
cls
echo.
echo **************************** %loadernamecaps%(R) V%bootloaderv% ***************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%(R)
echo.
echo LOADER V%bootloaderv%
echo.
echo %arch% ARCHITECTURE (%archformat%)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA . .
echo FloppyDiskette(0)
CScript Sleep.vbs 1000 //NoLogo
cls
echo.
echo **************************** %loadernamecaps%(R) V%bootloaderv% ***************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%(R)
echo.
echo LOADER V%bootloaderv%
echo.
echo %arch% ARCHITECTURE (%archformat%)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA . . .
echo FloppyDiskette(0)
CScript Sleep.vbs 1000 //NoLogo
cls
echo.
echo **************************** %loadernamecaps%(R) V%bootloaderv% ***************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%(R)
echo.
echo LOADER V%bootloaderv%
echo.
echo %arch% ARCHITECTURE (%archformat%)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA
echo FloppyDiskette(0)
CScript Sleep.vbs 1000 //NoLogo
cls
echo.
echo **************************** %loadernamecaps%(R) V%bootloaderv% ***************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%(R)
echo.
echo LOADER V%bootloaderv%
echo.
echo %arch% ARCHITECTURE (%archformat%)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA .
echo FloppyDiskette(0)
CScript Sleep.vbs 1000 //NoLogo
cls
echo.
echo **************************** %loadernamecaps%(R) V%bootloaderv% ***************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%(R)
echo.
echo LOADER V%bootloaderv%
echo.
echo %arch% ARCHITECTURE (%archformat%)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA . .
echo FloppyDiskette(0)
echo CompactDisk(0)
CScript Sleep.vbs 1000 //NoLogo
cls
echo.
echo **************************** %loadernamecaps%(R) V%bootloaderv% ***************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%(R)
echo.
echo LOADER V%bootloaderv%
echo.
echo %arch% ARCHITECTURE (%archformat%)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA . . .
echo FloppyDiskette(0)
echo CompactDisk(0)
CScript Sleep.vbs 1000 //NoLogo
cls
echo.
echo **************************** %loadernamecaps%(R) V%bootloaderv% ***************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%(R)
echo.
echo LOADER V%bootloaderv%
echo.
echo %arch% ARCHITECTURE (%archformat%)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA
echo FloppyDiskette(0)
echo CompactDisk(0)
CScript Sleep.vbs 1000 //NoLogo
cls
echo.
echo **************************** %loadernamecaps%(R) V%bootloaderv% ***************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%(R)
echo.
echo LOADER V%bootloaderv%
echo.
echo %arch% ARCHITECTURE (%archformat%)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA .
echo FloppyDiskette(0)
echo CompactDisk(0)
CScript Sleep.vbs 1000 //NoLogo
cls
echo.
echo **************************** %loadernamecaps%(R) V%bootloaderv% ***************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%(R)
echo.
echo LOADER V%bootloaderv%
echo.
echo %arch% ARCHITECTURE (%archformat%)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA . .
echo FloppyDiskette(0)
echo CompactDisk(0)
CScript Sleep.vbs 1000 //NoLogo
cls
echo.
echo **************************** %loadernamecaps%(R) V%bootloaderv% ***************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%(R)
echo.
echo LOADER V%bootloaderv%
echo.
echo %arch% ARCHITECTURE (%archformat%)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA . . .
echo FloppyDiskette(0)
echo CompactDisk(0)
CScript Sleep.vbs 1000 //NoLogo
cls
echo.
echo **************************** %loadernamecaps%(R) V%bootloaderv% ***************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%(R)
echo.
echo LOADER V%bootloaderv%
echo.
echo %arch% ARCHITECTURE (%archformat%)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA
echo FloppyDiskette(0)
echo CompactDisk(0)
CScript Sleep.vbs 1000 //NoLogo
cls
echo.
echo **************************** %loadernamecaps%(R) V%bootloaderv% ***************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%(R)
echo.
echo LOADER V%bootloaderv%
echo.
echo %arch% ARCHITECTURE (%archformat%)
echo.
echo %ram% RAM SYSTEM
echo %avai-ram-bl% FREE
echo.
echo SEARCHING FOR EXTERNAL BOOTABLE MEDIA .
echo FloppyDiskette(0)
echo CompactDisk(0)
CScript Sleep.vbs 1000 //NoLogo
cls
echo.
echo **************************** %loadernamecaps%(R) V%bootloaderv% ***************************
echo.
echo.
echo.
echo COPYRIGHT %year% %companycaps%(R)
echo.
echo LOADER V%bootloaderv%
echo.
echo %arch% ARCHITECTURE (%archformat%)
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
CScript Sleep.vbs 1000 //NoLogo
echo.
echo.
echo SELECT MEDIA TO BOOT:
echo.

cmdMenuSel cfa0 "Option One" "Option Two" "Cancel"
if %ERRORLEVEL% == 1 goto optionone
if %ERRORLEVEL% == 2 goto optiontwo
if %ERRORLEVEL% == 3 goto exit
goto fatalerror

:optionone
Call "batchfile.bat"
:optiontwo
Call "batchfile2.bat"