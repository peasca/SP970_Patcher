@ECHO OFF
adb kill-server
adb start-server
TITLE SP970 Patcher¡¾CC BY LIC¡¿

:MENU
CLS
ECHO.#####SP970 Patcher#####
ECHO.##by PEASCA£¬github address£ºgithub.com/peasca/SP970_Patcher
ECHO.##This is a free software£¡£¡£¡
ECHO.###Connect Option###
ECHO.#0.[Start]Local ADB Bridge
ECHO.###Connect Device###
ECHO.#1.[Connect] with Local ADB devices
ECHO.###Backup###
ECHO.#2.[Backup]MMC0
ECHO.###Patch###
ECHO.#3.[Do]Patch
set choice=
set /p choice=Try the nunber and press enter£º
if not "%choice%"=="" set choice=%choice:~0,1%
if /i "%choice%"=="0" goto ADBIJ
if /i "%choice%"=="1" goto LOCAL
if /i "%choice%"=="2" goto BACKUP
if /i "%choice%"=="3" goto INJECT
ECHO.
ECHO.Error£¡...
timeout /t 2 /nobreak >NUL
ECHO.
goto MENU

:ADBIJ
ECHO.#Please connect device to the computer and open the RNDIS Internet Share!!!
pause
ECHO.#Doing Patch......Please wait a few
ECHO.#If click a Internet Explorer or MS Edge, Please wait for 3 seconds and close the session
explorer "http://192.168.42.129/run_115_101_116_112_114_111_112_32_115_121_115_46_117_115_98_46_99_111_110_102_105_103_32_97_100_98_59_101_99_104_111_32_104_115_100_98_113_108_62_47_101_116_99_47_99_114_107"
ECHO.#Done!
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
touch /data/media/0/patchflag/0Z71CS
ECHO.#Set permisson.......
adb shell chmod 777 /data/data/com.webkey/files/SimSettings.html
adb shell chmod 777 /data/data/com.webkey/files/terminal.html
adb shell chmod 777 /data/data/com.webkey/files/terminal2.html
ECHO.[####################] 100
pause
goto MENU