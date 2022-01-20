中文：如果软件修改后切换SIM提示''无SIM''，则意味着您的设备可能需要硬件改动，此处提供的是硬件改动图例；English：If "no SIM" is prompted when switching SIM after software modification, it means that your device may need hardware change. The legend of hardware change is provided here


原理解析：六角管其实是个开关，可以靠系统内特定的GPIO切换给哪张SIM供电，自然，短接就是强制把供电带到Local SIM上，硬件改动后，是无需切卡的（因为没用，已经被强行拉到LocalSIM上了）


Tips：对于SP970_V9以上的版本，请参照Changes_New进行操作
