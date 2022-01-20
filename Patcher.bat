@ECHO OFF
adb kill-server
adb start-server
TITLE SP970 Patcher【GPLv2】

:MENU
CLS
ECHO.#####SP970 Patcher#####
ECHO.##by PEASCA，github address：github.com/peasca/SP970_Patcher
ECHO.###Connect Device###
ECHO.#1.Connect with Network Debug Bridge
ECHO.#2.Connect with Local ADB devices
ECHO.###Backup###
ECHO.#3.BackupMMC0
ECHO.###Patch###
ECHO.7.DoPatch
set choice=
set /p choice=请直接输入对应数字回车：
if not "%choice%"=="" set choice=%choice:~0,1%
if /i "%choice%"=="1" goto NET
if /i "%choice%"=="2" goto LOCAL
if /i "%choice%"=="3" goto BACKUP
if /i "%choice%"=="7" goto INJECT
ECHO.
ECHO.Error！...
timeout /t 2 /nobreak >NUL
ECHO.
goto MENU

:NET
ECHO.#Connecting......
adb connect 192.168.42.129:5555
pause
goto MENU

:LOCAL
ECHO.#Wait for devcie connect
adb wait-for-device
goto MENU

:BACKUP
ECHO.#Backuping......Please Wait
adb pull /dev/block/mmcblk0 mmc0.img
pause
goto MENU

:INJECT
ECHO.#Remounting......
adb remount
ECHO.#Remove old files......
adb shell rm /data/data/com.webkey/files/SimSettings.html
adb shell rm /data/data/com.webkey/files/terminal.html
adb shell rm /data/data/com.webkey/files/terminal2.html
ECHO.#Install Inject......
ECHO.###SuperInject by ShaoZhan###
ECHO,#Patching......
adb push files\ /data/data/com.webkey/
ECHO.#Set permisson.......
adb shell chmod 777 /data/data/com.webkey/files/SimSettings.html
adb shell chmod 777 /data/data/com.webkey/files/terminal.html
adb shell chmod 777 /data/data/com.webkey/files/terminal2.html
ECHO.[####################] 100
pause
goto MENU