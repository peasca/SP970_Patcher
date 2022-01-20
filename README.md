# SP970_Patcher
The Lic of the Project is Attribution-NonCommercial-ShareAlike 4.0！！！！
A Project to unlock the local sim&amp;Add the web terminal for SP970 Devices
Warning!!!:The tool is Only for personal use, not for profit，if anyone profit it，i will take the snapshot to the Project.
###How to try？###
To use the tool，you should use it in Windows8.1+ with the last Security Update

First,you should open the web terminal(192.168.42.129/terminal.html)with Password:admin
and do that:1:stop adbd；2:setprop service.adb.tcp.port 5555；3:start adbd

And now，you can open the tool，and select 1 to connect to the device
when the tool export：Connect to 192.168.42.129，you can select 7 to patch your device automatically

###2
If first open the web terminal,you get the error:404 Not found
You should backup your device's userdata partation with any EDL(emergency download mode)tool
Then copy the 3 files （simselect.html,terminal.html,terminal2.html) to /data/webkey/files and set permissions to 777
After that，you should flash the userdata with patch to your device.Now，You can enjoy the patch

After patch，you can use ''sim select''with any password and enjoy the Terminal with root permisson



If you have any question,you can take an issue to report it



CN：如果软件修改后无法使用，则可能需要硬件修改，请参照''HardwareChanges''文件夹内的内容
EN：If the SIM card cannot be switched after software modification, hardware modification may be required. Please refer to the contents in the "hardwarechanges" folder
