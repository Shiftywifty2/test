@ECHO OFF
mode 50,40

color 0F
setlocal enabledelayedexpansion
:: Hi, This is my first time putting comments in scripts so... Expect it to be trash


:: The main menu
:res
color 4
cls
title Shifty Wifty Shiftstarter tool [WIN11/WIN10]
echo -       -
echo --     --
echo ---   ---
echo /       \
echo _       o
echo \   v   /
echo  /     \
echo /       \
echo ******************************************
echo Shifty Wifty Shiftstarter Tool [WIN11/WIN10]
echo ******************************************
echo [A] Install Firefox
echo [S] Install Chrome
echo [D] Install WinRAR
echo [F] Install WinRAR [For XP, Win7, etc.]
echo [G] Install Supermium [32x]
echo [H] Install Supermium [64x]
echo *******************************************
echo BASIC PACKAGES
echo *******************************************
echo [J] Recommended Install
echo [K] Alternative Install
echo [L] Compatibility Install
echo [Z] Clear excess files [installers, etc]
echo ******************************************
echo WINDOWS 10/11 OPTIONS
echo ******************************************
echo [Q] Install Powertoys [Quality of life]
echo [W] Install Everything [Ultrafast search]
echo [E] Install Notepad++ [Better than notepad]
echo [R] Install WPS Office [Free Office]
echo [T] Install Everything Powertoys Plugin
echo [Y] Install VLC Media Player
echo [U] Install Discord [Yes I put that here]
echo [I] Install Steam
echo ******************************************
echo WINDOWS 10/11 PACKAGES
echo IN ORDER TO GET BASIC THINGS, USE NORMAL
echo PACKAGES!! THERE UP THERE!
echo ******************************************
echo [1] Sweaty Gamer Pack
echo [2] Essentials Pack
echo [3] Essentials + Optionals Pack
echo [4] Weightless Pack
echo ******************************************
echo Scroll up! Theres more options.
echo ******************************************

:: The thing that actually allows your input! :)
choice /c ASDFGHJKLZQWERTYUI1234 /n /m "$ "


:: Inputs and stuff... *BRRRRRRRT*
if !errorlevel!==22 goto weightlesspack
if !errorlevel!==21 goto epots
if !errorlevel!==20 goto essentialspack
if !errorlevel!==19 goto sweatygamerpack
if !errorlevel!==18 goto isteam
if !errorlevel!==17 goto idiscord
if !errorlevel!==16 goto ivlc
if !errorlevel!==15 goto ievtfpt
if !errorlevel!==14 goto iwps
if !errorlevel!==13 goto nplus
if !errorlevel!==12 goto ievt
if !errorlevel!==11 goto ipt
if !errorlevel!==10 goto cleartemp
if !errorlevel!==9 goto ci
if !errorlevel!==8 goto ainstall
if !errorlevel!==7 goto ri
if !errorlevel!==6 goto ism64
if !errorlevel!==5 goto ism
if !errorlevel!==4 goto iwinrold
if !errorlevel!==3 goto iwinr
if !errorlevel!==2 goto ic
if !errorlevel!==1 goto if

::Install Firefox
:if
winget install Mozilla.Firefox
cls
echo Installation Complete!
timeout /t 1 /nobreak >nul
goto res

::Install Chrome
:ic
winget install Google.Chrome
cls
echo Installation Complete!
timeout /t 1 /nobreak >nul
goto res

::Install Winrar
:iwinr
curl -k -L -O "https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-713.exe"
cls
echo You will have to manually continue with this installation.
timeout /t 1 /nobreak >nul
start /wait "" "%~dp0winrar-x64-713.exe"
cls
echo Installation process finished
timeout /t 1 /nobreak >nul
goto res

::Install OLD Winrar 
:iwinrold
powershell -Command "iwr 'https://dn721205.ca.archive.org/0/items/tucows_194276_WinRAR/wrar34b5.exe' -OutFile 'winrar-wxp-w7.exe'"
echo Waiting for user input...
start /wait "" "%~dp0winrar-wxp-w7.exe"
cls
echo Installation complete!
timeout /t 1 /nobreak >nul
goto res

::Install Supermium 32x
:ism
powershell -Command "iwr 'https://release-assets.githubusercontent.com/github-production-release-asset/638089306/31036791-57b6-4cec-a1a0-7739939b3a97?sp=r&sv=2018-11-09&sr=b&spr=https&se=2025-11-17T11%3A34%3A38Z&rscd=attachment%3B+filename%3Dsupermium_132_32_setup.exe&rsct=application%2Foctet-stream&skoid=96c2d410-5711-43a1-aedd-ab1947aa7ab0&sktid=398a6654-997b-47e9-b12b-9515b896b4de&skt=2025-11-17T10%3A34%3A21Z&ske=2025-11-17T11%3A34%3A38Z&sks=b&skv=2018-11-09&sig=MA%2Fyt8YUJnJrF8zr7hVM8juiH5oT8qbj4KGtLpLoi0A%3D&jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmVsZWFzZS1hc3NldHMuZ2l0aHVidXNlcmNvbnRlbnQuY29tIiwia2V5Ijoia2V5MSIsImV4cCI6MTc2MzM3OTg0NiwibmJmIjoxNzYzMzc2MjQ2LCJwYXRoIjoicmVsZWFzZWFzc2V0cHJvZHVjdGlvbi5ibG9iLmNvcmUud2luZG93cy5uZXQifQ.drV0FrpdM6w3SW4Dc7hyBhSDKEeYhI2p3buOLHZ7RVU&response-content-disposition=attachment%3B%20filename%3Dsupermium_132_32_setup.exe&response-content-type=application%2Foctet-stream' -OutFile '%~dp0supermium32x.exe'"
pause
cls
echo You will be prompted the setup wizard.
timeout /t 1 /nobreak >nul
start /wait "" "%~dp0supermium32x.exe"
cls
echo Download complete!
timeout /t 1 /nobreak >nul
goto res

::Install Supermium 64x
:ism64
powershell -Command "iwr 'https://release-assets.githubusercontent.com/github-production-release-asset/638089306/443bb4f8-50ed-4e73-a377-f3e0cdd43114?sp=r&sv=2018-11-09&sr=b&spr=https&se=2025-11-10T14%3A16%3A01Z&rscd=attachment%3B+filename%3Dsupermium_132_64_setup.exe&rsct=application%2Foctet-stream&skoid=96c2d410-5711-43a1-aedd-ab1947aa7ab0&sktid=398a6654-997b-47e9-b12b-9515b896b4de&skt=2025-11-10T13%3A15%3A53Z&ske=2025-11-10T14%3A16%3A01Z&sks=b&skv=2018-11-09&sig=jPniVFK7bvQnJHO7i10upGcRJqEhKmAWhYllNOrt24s%3D&jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmVsZWFzZS1hc3NldHMuZ2l0aHVidXNlcmNvbnRlbnQuY29tIiwia2V5Ijoia2V5MSIsImV4cCI6MTc2Mjc4NTIyMCwibmJmIjoxNzYyNzgxNjIwLCJwYXRoIjoicmVsZWFzZWFzc2V0cHJvZHVjdGlvbi5ibG9iLmNvcmUud2luZG93cy5uZXQifQ.YbvX5J3_nOmUh_wMsUNXHKOwBsFCv6FxT5mJgn_qzfE&response-content-disposition=attachment%3B%20filename%3Dsupermium_132_64_setup.exe&response-content-type=application%2Foctet-stream' -OutFile 'supermium64x.exe'"
cls
echo You will be prompted the setup wizard.
timeout /t 1 /nobreak >nul
start /wait "" "%~dp0supermium64x.exe"
cls
echo Download complete!
timeout /t 1 /nobreak >nul
goto res

:: Recommended Installation
:ri
winget install Mozilla.Firefox
curl -k -L -O "https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-713.exe"
cls
echo Waiting for user input...
start /wait "" "%~dp0winrar-x64-713.exe"
cls
echo Recommended Installation Settings Completed!
timeout /t 1 /nobreak >nul
goto res

:: Alternative Installation
:ainstall
winget install Google.Chrome
curl -k -L -O "https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-713.exe"
cls
echo Waiting for user input...
start /wait "" "%~dp0winrar-x64-713.exe"
cls
echo Recommended Installation Settings Completed!
timeout /t 1 /nobreak >nul
goto res

:: Compatibility Installation
:: Ok this may look like a bunch of crap but thats actually the download link. NO joke.
:ci
echo Installing compatibility package..
echo Please note that compatibility package will always install 32 bit supermium.
timeout /t 1 /nobreak >nul
cls
powershell -Command "iwr 'https://release-assets.githubusercontent.com/github-production-release-asset/638089306/31036791-57b6-4cec-a1a0-7739939b3a97?sp=r&sv=2018-11-09&sr=b&spr=https&se=2025-11-10T14%3A43%3A15Z&rscd=attachment%3B+filename%3Dsupermium_132_32_setup.exe&rsct=application%2Foctet-stream&skoid=96c2d410-5711-43a1-aedd-ab1947aa7ab0&sktid=398a6654-997b-47e9-b12b-9515b896b4de&skt=2025-11-10T13%3A42%3A53Z&ske=2025-11-10T14%3A43%3A15Z&sks=b&skv=2018-11-09&sig=WaNKAI%2B4KbcpSa6LBtX6hWBo9LjLjVXIS9AhgwJPVxw%3D&jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmVsZWFzZS1hc3NldHMuZ2l0aHVidXNlcmNvbnRlbnQuY29tIiwia2V5Ijoia2V5MSIsImV4cCI6MTc2Mjc4NjYwMiwibmJmIjoxNzYyNzgzMDAyLCJwYXRoIjoicmVsZWFzZWFzc2V0cHJvZHVjdGlvbi5ibG9iLmNvcmUud2luZG93cy5uZXQifQ.1H-iTHbSvIUhMYI-dxDCKtC65SuM1Ts9_ek_vpHUP80&response-content-disposition=attachment%3B%20filename%3Dsupermium_132_32_setup.exe&response-content-type=application%2Foctet-stream' -OutFile 'supermium32x.exe'"
echo Waiting for user input...
start /wait "" "%~dp0supermium32x.exe"
cls
echo Installing WinRAR [For older versions of windows] ...
timeout /t 1 /nobreak >nul
cls
powershell -Command "iwr 'https://dn721205.ca.archive.org/0/items/tucows_194276_WinRAR/wrar34b5.exe' -OutFile 'winrar-wxp-w7.exe'"
cls
echo Waiting for user input...
start /wait "" "%~dp0winrar-wxp-w7.exe"
cls
echo Installation complete!
timeout /t 1 /nobreak >nul
goto res

:: Clear installers and stuff
:cleartemp
del /s /q "%~dp0winrar-wxp-w7.exe" >nul 2>&1
del /s /q "%~dp0supermium32x.exe" >nul 2>&1
del /s /q "%~dp0supermium64x.exe" >nul 2>&1
del /s /q "%~dp0winrar-x64-713.exe" >nul 2>&1
echo Files deleted!
timeout /t 1 /nobreak >nul
goto res


:: WELCOME TO WINDOWS 11 / 10 OPTIONS!!!

:: Install powertoys
:ipt
cls
echo Installing..
winget install Microsoft.PowerToys
cls
echo Download complete!
timeout /t 1 /nobreak >nultimeout /t 1 /nobreak >nul
goto res


::Install Notepad++
:nplus
cls
echo Installing..
winget install Notepad++.Notepad++
cls
echo Download complete!
timeout /t 1 /nobreak >nul
goto res

::Install Everything
:ievt
cls
echo Installing..
winget install voidtools.Everything
cls
echo Download complete!
timeout /t 1 /nobreak >nul
goto res

::Install WPS Office
:iwps
cls
echo Installing..
winget install Kingsoft.WPSOffice
cls
echo Download complete!
timeout /t 1 /nobreak >nul
goto res

::Install Everything plugin for PowerToys
:ievtfpt
cls
echo Installing..
winget install lin-ycv.EverythingPowerToys
cls
echo Download complete!
timeout /t 1 /nobreak >nul
goto res

:: Install VLC
:ivlc
cls
echo Installing..
choco install vlc
cls
echo Download complete!
timeout /t 1 /nobreak >nul
goto res

::Install discord.. [haha gamer]
:idiscord
cls
echo Installing..
winget intsall Discord.discord
cls
echo Download complete!
timeout /t 1 /nobreak >nul
goto res

:isteam
cls
echo Installing..
winget install Valve.Steam
cls
echo Download complete!
timeout /t 1 /nobreak >nul
goto res


:sweatygamerpack
color A
cls
echo Installing..
echo Installed [0/5]
echo Pending: Discord
winget install discord.discord
cls
echo Installing..
echo Installed [1/5] [Discord]
echo Pending: VLC
winget install VideoLAN.vlc
cls
echo Installing..
echo Installed [2/5] [Discord, VLC]
echo Pending: Everything
winget install voidtools.Everything
cls
echo Installing..
echo Installed [3/5] [Discord, VLC, Everything]
echo Pending: Powertoys
winget install Microsoft.Powertoys
cls
echo Installing..
echo Installed [4/5] [Discord, VLC, Everything, Powertoys]
echo Pending: Steam
winget install valve.steam
cls
echo Installed [5/5] [Discord, VLC, Everything, Powertoys, Steam]
echo Download complete!
timeout /t 3 /nobreak >nul
goto res

:essentialspack
color A
echo Installing..
echo Installed [0/3]
echo Pending: VLC
winget install VideoLAN.vlc
cls
echo Installing..
echo Installed [1/3] [VLC]
echo Pending: Everything
winget install voidtools.Everything
cls
echo Installing..
echo Installed [2/3] [VLC, Everything]
echo Pending: Powertoys
winget install Microsoft.Powertoys
cls
echo Installed [3/3] [VLC, Everything, Powertoys]
echo Download complete!
timeout /t 3 /nobreak >nul
goto res

:: If your wondering, since this thing isnt self explanatory ill explain it for you!
:: epots = essentials + optionals pack
:: the thing would be TOO long if i did it the other way so yeah
:epots
color A
echo Installing..
echo Installed [0/5]
echo Pending: VLC
winget install VideoLAN.vlc
cls
echo Installing..
echo Installed [1/5] [VLC]
echo Pending: Everything
winget install voidtools.Everything
cls
echo Installing..
echo Installed [2/5] [VLC, Everything]
echo Pending: Powertoys
winget install Microsoft.Powertoys
cls
echo Installing..
echo Installed [3/5] [VLC, Everything, Powertoys]
echo Pending: WPS Office
winget install Kingsoft.WPSOffice
cls
echo Installing..
echo Installed [4/5] [VLC, Everything, Powertoys, WPS Office]
echo Pending: WPS Office
winget install winget install Notepad++.Notepad++
cls
echo Installed [5/5] [VLC, Everything, Powertoys, WPS Office, Notepad++]
echo Download complete!
timeout /t 3 /nobreak >nul
goto res

:weightlesspack
color A
echo Installing..
echo Installed [0/3]
echo Pending: VLC
winget install VideoLAN.vlc
cls
echo Installing..
echo Installed [1/3] [VLC]
echo Pending: Everything
winget install voidtools.Everything
cls
echo Installing..
echo Installed [2/3] [VLC, Everything]
echo Pending: Notepad++
winget install Notepad++.Notepad++
cls
cls
echo Installed [3/3] [VLC, Everything, Notepad++]
echo Download complete!
timeout /t 3 /nobreak >nul
goto res


:: Hey thats the end of the script!!


