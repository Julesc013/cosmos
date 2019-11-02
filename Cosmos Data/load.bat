@echo off

:check
if %boot% ==yes goto load
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

:load
cls
title Booting Cosmos v%version%
color %clr%
cls
echo.
echo Booting Kernel
echo [                         ] 0
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.                        ] 4
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [..                       ] 8
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [...                      ] 12
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [....                     ] 16
CScript sleep.vbs 200 //NoLogo
cls
echo.
echo Booting Kernel
echo [.....                    ] 20
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [......                   ] 24
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.......                  ] 28
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [........                 ] 32
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........                ] 36
CScript sleep.vbs 100 //NoLogo
cls
echo.
echo Booting Kernel
echo [..........               ] 40
CScript sleep.vbs 100 //NoLogo
cls
echo.
echo Booting Kernel
echo [...........              ] 44
CScript sleep.vbs 100 //NoLogo
cls
echo.
echo Booting Kernel
echo [............             ] 48
CScript sleep.vbs 100 //NoLogo
cls
echo.
echo Booting Kernel
echo [.............            ] 52
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [..............           ] 56
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [...............          ] 60
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [................         ] 64
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.................        ] 68
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [..................       ] 72
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [...................      ] 76
CScript sleep.vbs 200 //NoLogo
cls
echo.
echo Booting Kernel
echo [....................     ] 80
CScript sleep.vbs 200 //NoLogo
cls
echo.
echo Booting Kernel
echo [.....................    ] 84
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [......................   ] 88
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.......................  ] 92
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [........................ ] 96
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
CScript sleep.vbs 200 //NoLogo
echo.
echo Loading Programs and System Files
echo [                         ] 0
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.                        ] 4
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [..                       ] 8
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [...                      ] 12
CScript sleep.vbs 150 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [....                     ] 16
CScript sleep.vbs 600 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.....                    ] 20
CScript sleep.vbs 150 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [......                   ] 24
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.......                  ] 28
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [........                 ] 32
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........                ] 36
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [..........               ] 40
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [...........              ] 44
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [............             ] 48
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.............            ] 52
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [..............           ] 56
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [...............          ] 60
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [................         ] 64
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.................        ] 68
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [..................       ] 72
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [...................      ] 76
CScript sleep.vbs 600 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [....................     ] 80
CScript sleep.vbs 150 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.....................    ] 84
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [......................   ] 88
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.......................  ] 92
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [........................ ] 96
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
CScript sleep.vbs 200 //NoLogo
echo.
echo Detecting Hardware and Establishing Connections
echo [                         ] 0
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.                        ] 4
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [..                       ] 8
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [...                      ] 12
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [....                     ] 16
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.....                    ] 20
CScript sleep.vbs 150 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [......                   ] 24
CScript sleep.vbs 150 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.......                  ] 28
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [........                 ] 32
CScript sleep.vbs 25 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........                ] 36
CScript sleep.vbs 25 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [..........               ] 40
CScript sleep.vbs 25 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [...........              ] 44
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [............             ] 48
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.............            ] 52
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [..............           ] 56
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [...............          ] 60
CScript sleep.vbs 200 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [................         ] 64
CScript sleep.vbs 150 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.................        ] 68
CScript sleep.vbs 150 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [..................       ] 72
CScript sleep.vbs 150 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [...................      ] 76
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [....................     ] 80
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.....................    ] 84
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [......................   ] 88
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.......................  ] 92
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [........................ ] 96
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........................] 100
CScript sleep.vbs 200 //NoLogo
echo.
echo Updating Cache
echo [                         ] 0
CScript sleep.vbs 100 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........................] 100
echo.
echo Updating Cache
echo [.                        ] 4
CScript sleep.vbs 100 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........................] 100
echo.
echo Updating Cache
echo [..                       ] 8
CScript sleep.vbs 100 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........................] 100
echo.
echo Updating Cache
echo [...                      ] 12
CScript sleep.vbs 100 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........................] 100
echo.
echo Updating Cache
echo [....                     ] 16
CScript sleep.vbs 150 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........................] 100
echo.
echo Updating Cache
echo [.....                    ] 20
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........................] 100
echo.
echo Updating Cache
echo [......                   ] 24
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........................] 100
echo.
echo Updating Cache
echo [.......                  ] 28
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........................] 100
echo.
echo Updating Cache
echo [........                 ] 32
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........................] 100
echo.
echo Updating Cache
echo [.........                ] 36
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........................] 100
echo.
echo Updating Cache
echo [..........               ] 40
CScript sleep.vbs 25 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........................] 100
echo.
echo Updating Cache
echo [...........              ] 44
CScript sleep.vbs 25 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........................] 100
echo.
echo Updating Cache
echo [............             ] 48
CScript sleep.vbs 25 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........................] 100
echo.
echo Updating Cache
echo [.............            ] 52
CScript sleep.vbs 25 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........................] 100
echo.
echo Updating Cache
echo [..............           ] 56
CScript sleep.vbs 25 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........................] 100
echo.
echo Updating Cache
echo [...............          ] 60
CScript sleep.vbs 25 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........................] 100
echo.
echo Updating Cache
echo [................         ] 64
CScript sleep.vbs 25 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........................] 100
echo.
echo Updating Cache
echo [.................        ] 68
CScript sleep.vbs 25 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........................] 100
echo.
echo Updating Cache
echo [..................       ] 72
CScript sleep.vbs 25 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........................] 100
echo.
echo Updating Cache
echo [...................      ] 76
CScript sleep.vbs 25 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........................] 100
echo.
echo Updating Cache
echo [....................     ] 80
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........................] 100
echo.
echo Updating Cache
echo [.....................    ] 84
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........................] 100
echo.
echo Updating Cache
echo [......................   ] 88
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........................] 100
echo.
echo Updating Cache
echo [.......................  ] 92
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........................] 100
echo.
echo Updating Cache
echo [........................ ] 96
CScript sleep.vbs 50 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........................] 100
echo.
echo Updating Cache
echo [.........................] 99
CScript sleep.vbs 2000 //NoLogo
cls
echo.
echo Booting Kernel
echo [.........................] 100
echo.
echo Loading Programs and System Files
echo [.........................] 100
echo.
echo Detecting Hardware and Establishing Connections
echo [.........................] 100
echo.
echo Updating Cache
echo [.........................] 100
echo.
echo.
echo Press any key to initiate Cosmos v%version% . . .
pause >nul
set "loggedin=no"
Call "menu"