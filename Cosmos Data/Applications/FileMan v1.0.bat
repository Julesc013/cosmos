@echo off
set version=1.0
color 1f
title FileMan v%version%

:start
:fileManStart
cls
echo.
ctext.exe "{1e} FileMan v%version%                        {1d} TIP: Type "cancel" in any menu to go back." {\n}
ctext.exe "{1f}"
echo ===============================================================================
echo.
cmdmenusel 0fa1 " Browse To Directory" " List Files In Directory" " Copy Files" " Copy Folders" " Delete Files" " Delete Folders" " Exit Fileman"

if %ERRORLEVEL% == 1 goto fileManBrowseDirNEW
if %ERRORLEVEL% == 2 goto fileManList
if %ERRORLEVEL% == 3 goto fileManCopy
if %ERRORLEVEL% == 4 goto fileManCopyfol
if %ERRORLEVEL% == 5 goto fileManDelete
if %ERRORLEVEL% == 6 goto fileManDeletefol
if %ERRORLEVEL% == 7 goto fileManExitProg
goto start

:fileManCopyfol
cls
echo.
ctext.exe "{1e} FileMan v%version% \ Copy Folders" {\n}
ctext.exe "{1f}"
echo ===============================================================================
echo.
ctext.exe "{1f} Type the directory of the desired folder, then hit {1e}Enter. {1f}" {\n}
echo  Next, type the directory of the desired location (to copy folder to),
ctext.exe "{1f} then hit {1e}Enter." {\n}
echo.
ctext.exe "{1c}"
echo  NOTE: Do NOT include any files or extentions! (.exe)
echo.
ctext.exe "{18}"
echo  Example: C:\Files\Batch Files
echo.
echo.
ctext.exe "{1a}"
set /p fileManCopyOrigin3=" Origin Folder Directory: "
if %fileManCopyOrigin3% == cancel goto start
echo.
set /p fileManCopyTarget3=" Target Directory:        "
echo.
echo.
echo.
ctext.exe "{1f}"
echo  Please Verify:
echo.
ctext.exe "{1f} Origin Folder Directory: {1e}%fileManCopyOrigin3%" {\n}
ctext.exe "{1f} Target Directory:        {1e}%fileManCopyTarget3%" {\n}
echo.
cmdmenusel 0fa1 " Correct" " Incorrect (cancel)"
if %ERRORLEVEL% == 1 goto fileManCopyYN2
if %ERRORLEVEL% == 2 goto fileManCopyNN2
:fileManCopyNN2
echo.
echo.
ctext.exe "{1c}"
echo  Copy Cancelled.
echo.
ctext.exe "{1f}"
echo  Press any key to continue . . .
pause >nul
goto start
:fileManCopyYN2
copy %fileManCopyOrigin3% %fileManCopyTarget3%
echo.
echo.
ctext.exe "{1d}"
echo  Folder Copied.
echo.
ctext.exe "{1f}"
echo  Press any key to continue . . .
pause >nul
goto start

:fileManDeletefol
cls
echo.
ctext.exe "{1e} FileMan v%version% \ Delete Folders" {\n}
ctext.exe "{1f}"
echo ===============================================================================
echo.
echo  Delete a folder by entering it's directory.
echo.
echo.
ctext.exe "{1c}"
echo  NOTE: Do NOT include any files or extentions! (.exe)
echo.
ctext.exe "{18}"
echo  Example: C:\Files\Batch Files
echo.
echo.
ctext.exe "{1a}"
set /p fileManDeleteFile9=" Directory: "
if %fileManDeleteFile9% == cancel goto start
ctext.exe "{1f}"
echo.
echo.
echo  Please Verify:
echo.
ctext.exe "{1f} Folder Directory: {1e}%fileManDeleteFile9%" {\n}
echo.
cmdmenusel 0fa1 " Correct" " Incorrect (cancel)"
if %ERRORLEVEL% == 1 goto fileManDelYN9
if %ERRORLEVEL% == 2 goto fileManDelNN9
:fileManDelNN9
echo.
echo.
ctext.exe "{1c}"
echo  Delete Cancelled.
echo.
ctext.exe "{1f}"
echo  Press any key to continue . . .
pause >nul
goto start
:fileManDelYN9
del %fileManDeleteFile9%
echo.
echo.
ctext.exe "{1d}"
echo  Folder Deleted.
echo.
ctext.exe "{1f}"
echo  Press any key to continue . . .
pause >nul
goto start

:fileManCopy
cls
echo.
ctext.exe "{1e} FileMan v%version% \ Copy Files" {\n}
ctext.exe "{1f}"
echo ===============================================================================
echo.
ctext.exe "{1f} Type the directory of the desired file, then hit {1e}Enter. {1f}" {\n}
echo  Next, type the directory of the desired location (to copy file to),
ctext.exe "{1f} then hit {1e}Enter." {\n}
echo.
ctext.exe "{1c}"
echo  NOTE: Include the actual file and it's extention! (.exe)
echo.
ctext.exe "{18}"
echo  Example: C:\Files\Batch Files\FileMan v%version%.bat
echo.
echo.
ctext.exe "{1a}"
set /p fileManCopyOrigin=" Origin File Directory: "
if %fileManCopyOrigin% == cancel goto start
echo.
set /p fileManCopyTarget=" Target Directory:      "
echo.
echo.
echo.
ctext.exe "{1f}"
echo  Please Verify:
echo.
ctext.exe "{1f} Origin File Directory: {1e}%fileManCopyOrigin%" {\n}
ctext.exe "{1f} Target Directory:      {1e}%fileManCopyTarget%" {\n}
echo.
cmdmenusel 0fa1 " Correct" " Incorrect (cancel)"
if %ERRORLEVEL% == 1 goto fileManCopyYN
if %ERRORLEVEL% == 2 goto fileManCopyNN
:fileManCopyNN
echo.
echo.
ctext.exe "{1c}"
echo  Copy Cancelled.
echo.
ctext.exe "{1f}"
echo  Press any key to continue . . .
pause >nul
goto start
:fileManCopyYN
copy %fileManCopyOrigin% %fileManCopyTarget%
echo.
echo.
ctext.exe "{1d}"
echo  File Copied.
echo.
ctext.exe "{1f}"
echo  Press any key to continue . . .
pause >nul
goto start


:fileManBrowseDirNEW
cls
echo.
ctext.exe "{1e} FileMan v%version% \ Directory Browser" {\n}
ctext.exe "{1f}"
echo ===============================================================================
echo.
echo  Enter the directory in which you want to browse to.
echo  If DIR is invalid, an error will show.
echo.
ctext.exe "{17}"
echo  Type "dir" to view files and directories (in currect DIR)
echo.
echo.
ctext.exe "{1e}"
echo  Current DIR: 
echo  %CD%
echo.
echo.
ctext.exe "{1a}"
set /p fileManBrowseDirDirectory2=" Directory: "
ctext.exe "{1f}"
if %fileManBrowseDirDirectory2% == dir goto fileManBrowseDirNEWdir
if %fileManBrowseDirDirectory2% == cancel goto start
if %fileManBrowseDirDirectory2% == end goto start
if %fileManBrowseDirDirectory2% == quit goto start
if %fileManBrowseDirDirectory2% == exit goto start
if %fileManBrowseDirDirectory2% == done goto start
if %fileManBrowseDirDirectory2% == legacy goto fileManBrowseDir
cd %fileManBrowseDirDirectory2%
goto fileManBrowseDirNEW
:fileManBrowseDirNEWdir
echo.
dir
echo.
ctext.exe "{1a}"
set /p fileManBrowseDirDirectory2=" Directory: "
ctext.exe "{1f}"
if %fileManBrowseDirDirectory2% == dir goto fileManBrowseDirNEWdir
if %fileManBrowseDirDirectory2% == cancel goto start
if %fileManBrowseDirDirectory2% == end goto start
if %fileManBrowseDirDirectory2% == quit goto start
if %fileManBrowseDirDirectory2% == exit goto start
if %fileManBrowseDirDirectory2% == done goto start
if %fileManBrowseDirDirectory2% == legacy goto fileManBrowseDir
cd %fileManBrowseDirDirectory2%
goto fileManBrowseDirNEW
:fileManBrowseDir
cls
echo.
ctext.exe "{1e} FileMan v%version% \ Browse To Directory (Legacy)" {\n}
ctext.exe "{1f}"
echo ===============================================================================
echo  Enter the directory in which you want to browse to.
echo  If DIR is invalid, an error will show.
echo.
ctext.exe "{1a}"
set /p fileManBrowseDirDirectory=" Directory: "
ctext.exe "{1f}"
cd %fileManBrowseDirDirectory%
echo.
pause
goto fileManStart

:fileManList
cls
echo.
ctext.exe "{1e} FileMan v%version% \ List Files & Directories" {\n}
ctext.exe "{1f}"
echo ===============================================================================
echo.
echo  If has not been done already; browse to a directory.
echo.
ctext.exe "{18}"
echo  Type "skip" to list the active/current directory.
echo.
echo.
ctext.exe "{1a}"
set /p fileManBrowseDirDirectory3=" Directory: "
ctext.exe "{1f}"
if %fileManBrowseDirDirectory3% == cancel goto start
if %fileManBrowseDirDirectory3% == skip goto fileManListskip
cd %fileManBrowseDirDirectory3%
:fileManListskip
echo.
dir
echo.
pause >nul
goto fileManStart

:fileManDelete
cls
echo.
ctext.exe "{1e} FileMan v%version% \ Delete Files" {\n}
ctext.exe "{1f}"
echo ===============================================================================
echo.
echo  Delete a file by entering it's directory.
echo.
echo.
ctext.exe "{1c}"
echo  NOTE: Include the actual file and it's extention! (.exe)
echo.
ctext.exe "{18}"
echo  Example: C:\Files\Batch Files\FileMan v%version%.bat
echo.
echo.
ctext.exe "{1a}"
set /p fileManDeleteFile=" Directory: "
if %fileManDeleteFile% == cancel goto start
ctext.exe "{1f}"
echo.
echo.
echo  Please Verify:
echo.
ctext.exe "{1f} File Directory: {1e}%fileManDeleteFile%" {\n}
echo.
cmdmenusel 0fa1 " Correct" " Incorrect (cancel)"
if %ERRORLEVEL% == 1 goto fileManDelYN
if %ERRORLEVEL% == 2 goto fileManDelNN
:fileManDelNN
echo.
echo.
ctext.exe "{1c}"
echo  Delete Cancelled.
echo.
ctext.exe "{1f}"
echo  Press any key to continue . . .
pause >nul
goto start
:fileManDelYN
del %fileManDeleteFile%
echo.
echo.
ctext.exe "{1d}"
echo  File Deleted.
echo.
ctext.exe "{1f}"
echo  Press any key to continue . . .
pause >nul
goto start

:fileManExitProg
cd..
color %clr%
call "cmdline"