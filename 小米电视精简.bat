
@echo off
chcp 936
:: �޸�������ɫ
color a

:: title
title С�׵���1.3.85(�ȶ��棩����
echo С�׵���1.3.85(�ȶ��棩����
echo 2021-11-13
echo by �����
echo.
echo.

::adb �汾
echo adb�汾�ţ�
adb version
echo.
echo.

echo ###��ʼ�豸����##��
echo. 
echo.

::���ӵ��ӣ�����Ϊ�Լ��ĵ�ַ��������
set /p ipinput=������Ŀ�����ip��ַ:
echo.
echo �����ip��ַΪ: %ipinput%
echo.
set /p portinput=������Ŀ�����adbd�����˿�:
echo.
echo ����ļ����˿�Ϊ: %portinput%
echo.

::adb connect %ipinput%:%portinput% >linkreturn.txt


::findstr "cannot" linkreturn.txt >nul &&(goto end)||(goto start)

:start
adb connect %inimput%:%portinput%
::echo ȷ�������豸��Ϣ��
adb devices 
::pause
echo ��ʼ����ϵͳ

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


echo ������˳�
pause
exit 

:::end
::type linkreturn.txt
::echo ���ӹ��ϡ�������˳�
::pause 
::rem exit