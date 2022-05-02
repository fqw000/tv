
@echo off
chcp 936
:: 修改文字颜色
color a

:: title
title 小米电视1.3.85(稳定版）精简
echo 小米电视1.3.85(稳定版）精简
echo 2021-11-13
echo by 王奇飞
echo.
echo.

::adb 版本
echo adb版本号：
adb version
echo.
echo.

echo ###开始设备连接##。
echo. 
echo.

::连接电视（更换为自己的地址）请输入
set /p ipinput=请输入目标电视ip地址:
echo.
echo 输入的ip地址为: %ipinput%
echo.
set /p portinput=请输入目标电视adbd监听端口:
echo.
echo 输入的监听端口为: %portinput%
echo.

::adb connect %ipinput%:%portinput% >linkreturn.txt


::findstr "cannot" linkreturn.txt >nul &&(goto end)||(goto start)

:start
adb connect %inimput%:%portinput%
::echo 确认连接设备信息：
adb devices 
::pause
echo 开始精简系统

adb shell pm uninstall --user 0 com.mipay.wallet.tv
adb shell pm uninstall --user 0 com.mitv.alarmcenter
adb shell pm uninstall --user 0 com.mitv.gallery
adb shell pm uninstall --user 0 com.mitv.screensaver
adb shell pm uninstall --user 0 com.miui.systemAdSolution
adb shell pm uninstall --user 0 com.miui.tv.analytics
adb shell pm uninstall --user 0 com.sogou.speech.offlineservice
adb shell pm uninstall --user 0 com.xiaomi.devicereport
adb shell pm uninstall --user 0 com.xiaomi.mibox.gamecenter
adb shell pm uninstall --user 0 com.xiaomi.mibox.lockscreen
adb shell pm uninstall --user 0 com.xiaomi.miplay
adb shell pm uninstall --user 0 com.xiaomi.mitv.appstore
adb shell pm uninstall --user 0 com.xiaomi.mitv.handbook
adb shell pm uninstall --user 0 com.xiaomi.mitv.karaoke.service
adb shell pm uninstall --user 0 com.xiaomi.mitv.pay
adb shell pm uninstall --user 0 com.xiaomi.mitv.tvpush.tvpushservice
adb shell pm uninstall --user 0 com.xiaomi.screenrecorder
adb shell pm uninstall --user 0 com.xiaomi.smarthome.tv
adb shell pm uninstall --user 0 com.xiaomi.voicecontrol
adb shell pm uninstall --user 0 com.android.captiveportallogin
adb shell pm uninstall --user 0 com.android.providers.downloads
adb shell pm uninstall --user 0 com.xiaomi.gamecenter.sdk.service.mibox
adb shell pm uninstall --user 0 com.xiaomi.mimusic2
adb shell pm uninstall --user 0 com.xiaomi.mitv.payment
adb shell pm uninstall --user 0 com.xiaomi.mitv.shop
adb shell pm uninstall --user 0 com.xiaomi.mitv.upgrade
adb shEll pm uninstall --user 0 com.xiaomi.statistic
adb shell pm uninstall --user 0 com.xiaomi.tv.appupgrade
adb shell pm uninstall --user 0 com.xiaomi.tv.gallery


echo 任意键退出
pause
exit 

:::end
::type linkreturn.txt
::echo 连接故障。任意键退出
::pause 
::rem exit