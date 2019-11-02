:: PRELOAD.BAT
@echo off



set "windowwidth=82"
set "windowheight=30"
mode %windowwidth%,%windowheight%


set "boot=yes"
set "echo=off"
set "cursor=msdos"
set "ascii=no"


set "version=0.7.1"
set "year=2017"
set "beta=yes"
::
if %beta% ==yes goto betayes
if %beta% ==no goto betano
goto next0
:betayes
set "betaa=Beta"
goto next0
:betano
set "betaa= "
goto next0
:next0


set "lightmode=no"
::
if %lightmode% ==yes goto lightmodey1
if %lightmode% ==no goto lightmoden1
goto next9
:lightmodey1
set "cmdmenuselclr=f0cf"
set "clr=f9"
goto next9
:lightmoden1
set "cmdmenuselclr=0fa0"
set "clr=0e"
goto next9
:next9


set "company=Jules Carboni"
set "companycaps=JULES CARBONI"
set "website=the download site"


SET /A tempa1=%RANDOM% * (978 - 101 + 1) / 32768 + 101
SET /A tempa2=%RANDOM% * (32768 - 10210 + 1) / 32768 + 10210
::
set "ram=4GB"
set "avai-ram-bl=37%tempa1%%tempa2% BYTES"

:: ARCH is Bus Width and ARCHFORMAT is Architecture/Instruction Set
set "arch=32bit"
::
if %arch% ==32bit goto arch32
if %arch% ==64bit goto arch64
if %arch% ==%arch% goto archelse
:arch32
set "archformat=x86"
set "archformat2=i386 (x86)"
goto next
:arch64
set "archformat=x86-64"
set "archformat2=AMD64 (x86-64)"
goto next
:archelse
set "archformat=Unknown Instruction Set"
set "archformat2=Unknown Instruction Set"
goto next
:next


set "devpass=3713210183"
set "adminpass=3713210183"


set "msdosv=(NT)"


set "optionsfromcmd=no"
set "otucodetemp=false"
set "otucodetemp2=false"
set "otucode=%random%%random%%random%"



cd Preferences
CALL "userlock"
