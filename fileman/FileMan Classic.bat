echo off
cd C:/
:fileManStart
cls
echo fileMan beta
echo ====================================================
echo 1. Copy files
echo 2. Browse to directory
echo 3. List files in directory
echo 4. Delete files
echo 5. Exit fileMan

set /p fileManMain=Fileman\Choice: 

if %fileManMain%==1 goto fileManCopy
if %fileManMain%==2 goto fileManBrowseDir
if %fileManMain%==3 goto fileManList
if %fileManMain%==4 goto fileManDelete
if %fileManMain%==5 goto fileManExitProg
goto fileManStart

:fileManCopy
cls
echo fileMan Copy Function:
echo ==============================================
echo Enter the path to your file...
echo If you have already switched to the Directory
echo of your Origin File, Only type the full path of
echo the Target File.
pause >nul
cls
set /p fileManCopyOrigin=Origin File/Path:
echo Origin Path/File is %fileManCopyOrigin%
pause >nul
cls
 
set /p fileManCopyTarget=Target Path:
echo Target Path is %fileManCopyTarget%
pause >nul
cls

copy %fileManCopyOrigin% %fileManCopyTarget%
echo Files Copied.
pause >nul
cls
goto fileManStart


:fileManBrowseDir
cls
echo fileMan Browse Function:
echo ===============================================
echo Enter the directory in which you want to browse to.
echo If DIR is invalid, An error will show.
set /p fileManBrowseDirDirectory=Enter Dir:
cd %fileManBrowseDirDirectory%
pause >nul
goto fileManStart

:fileManList
cls
echo fileMan List Function:
echo ===============================================
echo List all files in a Directory.
echo If has not been done already, Browse to a Directory
echo using the Browse Function.
pause >nul
cls
dir
pause >nul
goto fileManStart

:fileManDelete
cls
echo fileMan Delete Function:
echo ===============================================
echo Delete a file by entering a Directory.
set /p fileManDeleteFile=File Path: 
echo File path to be Deleted is %fileManDeleteFile%.
pause >nul
cls
del %fileManDeleteFile%
pause >nul
goto fileManStart

:fileManExitProg
CommandTerminal2.bat