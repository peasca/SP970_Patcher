中文：如果软件修改后切换SIM提示''无SIM''，则意味着您的设备可能需要硬件改动，此处提供的是硬件改动图例；English：If "no SIM" is prompted when switching SIM after software modification, it means that your device may need hardware change. The legend of hardware change is provided here


原理解析：六角管其实是个开关，可以靠系统内特定的GPIO切换给哪张SIM VCC，自然，短接就是强制把VCC带到Local SIM上，硬件改动后，是无需切卡的（因为没用，已经被强行拉到LocalSIM上了）


Tips：对于SP970_V9以上的版本，请参照Changes_New进行操作

备注#1：（20220121）目前有新版飞线方法，得益于之前的研究，我们可以直接将ESIM的VCC拉到SIM卡槽端，这样干是无需在SOC附近短接的，且只需要拉一条线，更稳定，更安全，更方便

备注#2：（20220121）理论上可以从1688等批发平台买到六角管，吹上去也可以做到完美

备注#3：（20220121）如果有兴趣交流，可以加入QQ群，群号：927818754
