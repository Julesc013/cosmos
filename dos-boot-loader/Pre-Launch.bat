@echo off



set "windowwidth=82"
set "windowheight=30"
mode %windowwidth%,%windowheight%


set "boot=yes"
set "echo=off"


set "version=x.x.x"
set "year=20xx"


set "company=company_name"
set "companycaps=COMPANY_NAME"
set "website=http:\\xxx.xxx.xxx"


SET /A tempa1=%RANDOM% * (978 - 101 + 1) / 32768 + 101
SET /A tempa2=%RANDOM% * (32768 - 10210 + 1) / 32768 + 10210
::
set "ram=xxGB"
set "avai-ram-bl=xx%tempa1%%tempa2% BYTES"


set "arch=xxbit"
::
if %arch% ==32bit goto arch32
if %arch% ==64bit goto arch64
if %arch% ==%arch% goto archelse
:arch32
set "archformat=x86"
set "archformat2=i386"
goto next
:arch64
set "archformat=x86-64"
set "archformat2=AMD64"
goto next
:archelse
set "archformat=Unknown Instruction Set"
set "archformat2=Unknown Instruction Set"
goto next
:next


CALL "DOS Loader 0.1.bat"