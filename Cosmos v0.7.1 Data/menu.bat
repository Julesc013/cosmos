:check
if %boot%==yes goto menu0
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

:menu0
if %lightmode% ==yes goto lightmodey1
if %lightmode% ==no goto lightmoden1
goto menu
:lightmodey1
set "cmdmenuselclr=f0cf"
set "clr=f9"
goto menu
:lightmoden1
set "cmdmenuselclr=0fa0"
set "clr=0e"
goto menu

:menu
if %loggedin% ==no goto menu2
if %loggedin% ==yes goto menu3
goto menu2

:menu2
title Cosmos v%version%
color %clr%
cls
if %echo% ==off goto echooff
if %echo% ==on goto echoon
:echoon
@echo on
set "echo=on"
goto menunext1
:echooff
@echo off
set "echo=off"
goto menunext1
:menunext1
if %ascii% ==yes goto menuascii
if %ascii% ==no goto menunormal
goto menunormal
:menunormal
cls
echo.
echo   #####    #####    #####   #    #   #####    #####   v%version% %betaa%
echo  #     #  #     #  #        ##  ##  #     #  #       
echo  #        #     #   #####   # ## #  #     #   #####   
echo  #        #     #        #  #    #  #     #        #  
echo  #     #  #     #  #     #  #    #  #     #  #     #  
echo   #####    #####    #####   #    #   #####    #####  
goto menu2aa
:menuascii
cls
echo.
echo   ¦¦¦¦¦    ¦¦¦¦¦    ¦¦¦¦¦   ¦    ¦   ¦¦¦¦¦    ¦¦¦¦¦   v%version% %betaa%
echo  ¦     ¦  ¦     ¦  ¦        ¦¦  ¦¦  ¦     ¦  ¦       
echo  ¦        ¦     ¦   ¦¦¦¦¦   ¦ ¦¦ ¦  ¦     ¦   ¦¦¦¦¦  
echo  ¦        ¦     ¦        ¦  ¦    ¦  ¦     ¦        ¦  
echo  ¦     ¦  ¦     ¦  ¦     ¦  ¦    ¦  ¦     ¦  ¦     ¦  
echo   ¦¦¦¦¦    ¦¦¦¦¦    ¦¦¦¦¦   ¦    ¦   ¦¦¦¦¦    ¦¦¦¦¦  
goto menu2aa
:menu2aa
echo.
echo.
set /a randm=%random% %% 32 + 1
if %randm% == 1 (
echo                                                    Programmed By Jules Carboni!
)
if %randm% == 2 (
echo                                                                    Only for PC!
)
if %randm% == 3 (
echo                                                                  Updated often!
)
if %randm% == 4 (
echo                                                              META-INF aprooved!
)
if %randm% == 5 (
echo                                                                8-bit graphics?!
)
if %randm% == 6 (
echo                                                              Windows Exclusive!
)
if %randm% == 7 (
echo                                                      MS-DOS for regular people!
)
if %randm% == 8 (
echo                                                                    RANDOM TEXT!
)
if %randm% == 9 (
echo                                                     Chuck Norris will find you!
)
if %randm% == 10 (
echo                                                            Not written in java!
)
if %randm% == 11 (
echo                                                           Written in Notepad++!
)
if %randm% == 12 (
echo                                                                 Charlie Bit me!
)
if %randm% == 13 (
echo                                                                 www.google.com!
)
if %randm% == 14 (
echo                                                             The world is yours!
)
if %randm% == 15 (
echo                                                                    0 Downloads!
)
if %randm% == 16 (
echo                                                                 I'm yellow too!
)
if %randm% == 17 (
echo                                                                  Not Minecraft!
)   
if %randm% == 18 (
echo                                                           SOOOO many bug fixes!
) 
if %randm% == 19 (
echo                                             Pretend I'm bouncing on the screen!
)      
if %randm% == 20 (
echo                                                                   BattleSneeze!
)  
if %randm% == 21 (
echo                                             [insert developer inside-joke here]
)
if %randm% == 22 (
echo                                                                        You're*!
)
if %randm% == 23 (
echo                                                               Work in Progress!
)
if %randm% == 24 (
echo                                                                         
echo.
)
if %randm% == 25 (
echo                                                           Since April 9th 2016!
)
if %randm% == 26 (
echo                                                               Not WoW in Batch!
)
if %randm% == 27 (
echo                                                                           Life!
)
if %randm% == 28 (
echo                                                          As seen in episode 17!
)
if %randm% == 29 (
echo                                                           Fans of Red vs. Blue!
)
if %randm% == 30 (
echo                                                                             HI!
)
if %randm% == 31 (
echo                                                                    Salutations!
)
if %randm% == 32 (
echo                                                        New California Republic!
)
echo.
echo -------------------------------------------------------------------------------
echo.
cmdMenuSel %cmdmenuselclr% "Login" "Create Account" "Refresh This Page" "Exit"
if %ERRORLEVEL% == 1 goto login
if %ERRORLEVEL% == 2 goto create
if %ERRORLEVEL% == 3 goto menu
if %ERRORLEVEL% == 4 goto exit2
goto menu

:menu3
title Cosmos v%version%
color %clr%
cls
if %echo% ==off goto logged.echooff
if %echo% ==on goto logged.echoon
:logged.echoon
@echo on
set "echo=on"
goto logged.menunext1
:logged.echooff
@echo off
set "echo=off"
goto logged.menunext1
:logged.menunext1
if %ascii% ==yes goto logged.menuascii
if %ascii% ==no goto logged.menunormal
goto logged.menunormal
:logged.menunormal
cls
echo.
echo   #####    #####    #####   #    #   #####    #####   v%version% %betaa%
echo  #     #  #     #  #        ##  ##  #     #  #       
echo  #        #     #   #####   # ## #  #     #   #####   
echo  #        #     #        #  #    #  #     #        #  
echo  #     #  #     #  #     #  #    #  #     #  #     #  
echo   #####    #####    #####   #    #   #####    #####   User: %realusername%
goto logged.menu2aa
:logged.menuascii
cls
echo.
echo   ¦¦¦¦¦    ¦¦¦¦¦    ¦¦¦¦¦   ¦    ¦   ¦¦¦¦¦    ¦¦¦¦¦   v%version% %betaa%
echo  ¦     ¦  ¦     ¦  ¦        ¦¦  ¦¦  ¦     ¦  ¦       
echo  ¦        ¦     ¦   ¦¦¦¦¦   ¦ ¦¦ ¦  ¦     ¦   ¦¦¦¦¦  
echo  ¦        ¦     ¦        ¦  ¦    ¦  ¦     ¦        ¦  
echo  ¦     ¦  ¦     ¦  ¦     ¦  ¦    ¦  ¦     ¦  ¦     ¦  
echo   ¦¦¦¦¦    ¦¦¦¦¦    ¦¦¦¦¦   ¦    ¦   ¦¦¦¦¦    ¦¦¦¦¦   User: %realusername%
goto logged.menu2aa
:logged.menu2aa
echo.
echo.
set /a randm=%random% %% 32 + 1
if %randm% == 1 (
echo                                                    Programmed By Jules Carboni!
)
if %randm% == 2 (
echo                                                                    Only for PC!
)
if %randm% == 3 (
echo                                                                  Updated often!
)
if %randm% == 4 (
echo                                                              META-INF aprooved!
)
if %randm% == 5 (
echo                                                                8-bit graphics?!
)
if %randm% == 6 (
echo                                                              Windows Exclusive!
)
if %randm% == 7 (
echo                                                      MS-DOS for regular people!
)
if %randm% == 8 (
echo                                                                    RANDOM TEXT!
)
if %randm% == 9 (
echo                                                     Chuck Norris will find you!
)
if %randm% == 10 (
echo                                                            Not written in java!
)
if %randm% == 11 (
echo                                                           Written in Notepad++!
)
if %randm% == 12 (
echo                                                                 Charlie Bit me!
)
if %randm% == 13 (
echo                                                                 www.google.com!
)
if %randm% == 14 (
echo                                                             The world is yours!
)
if %randm% == 15 (
echo                                                                    0 Downloads!
)
if %randm% == 16 (
echo                                                                 I'm yellow too!
)
if %randm% == 17 (
echo                                                                  Not Minecraft!
)   
if %randm% == 18 (
echo                                                           SOOOO many bug fixes!
) 
if %randm% == 19 (
echo                                             Pretend I'm bouncing on the screen!
)      
if %randm% == 20 (
echo                                                                   BattleSneeze!
)  
if %randm% == 21 (
echo                                             [insert developer inside-joke here]
)
if %randm% == 22 (
echo                                                                        You're*!
)
if %randm% == 23 (
echo                                                               Work in Progress!
)
if %randm% == 24 (
echo                                                                         
echo.
)
if %randm% == 25 (
echo                                                           Since April 9th 2016!
)
if %randm% == 26 (
echo                                                               Not WoW in Batch!
)
if %randm% == 27 (
echo                                                                           Life!
)
if %randm% == 28 (
echo                                                          As seen in episode 17!
)
if %randm% == 29 (
echo                                                           Fans of Red vs. Blue!
)
if %randm% == 30 (
echo                                                                             HI!
)
if %randm% == 31 (
echo                                                                    Salutations!
)
if %randm% == 32 (
echo                                                        New California Republic!
)
echo.
echo -------------------------------------------------------------------------------
echo.
cmdMenuSel %cmdmenuselclr% "Proceed to Command Line" "Create Account" "Refresh This Page" "Options" "Logout" "Exit"
if %ERRORLEVEL% == 1 goto cmd
if %ERRORLEVEL% == 2 goto create
if %ERRORLEVEL% == 3 goto menu
if %ERRORLEVEL% == 4 goto options
if %ERRORLEVEL% == 5 goto logout
if %ERRORLEVEL% == 6 goto exit2
goto menu

:cmd
Call "cmdline"

:create
Call "create"

:login
Call "login"

:logout
set "loggedin=no"
call "menu"

:options
set "optionsfromcmd=no"
Call "options"

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
if %ERRORLEVEL% == 2 goto menu
goto exit2