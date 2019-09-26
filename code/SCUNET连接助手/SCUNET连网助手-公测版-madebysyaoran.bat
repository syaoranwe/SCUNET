@echo off

title SCUNET连接助手公测版
setlocal enabledelayedexpansion
echo SCUNET连接助手，在你人在一教综合楼连接不上SCUNET时帮你强力连接上的脚本，由syaoran制作
echo=
echo 更新地址：1.SCU网络避坑指北，网址：https://scunet.syaoran.top
echo           2.（主要渠道）SCU资源站外部群，资源站网址：https://file.syaoran.top，外部QQ群：534629825
echo=
echo 使用说明：选择你所在的区域，将修改WIFI设置，自动尝试该区域的专用强力连接模式，尝试后将提示打开登录界面（浏览器输入地址 192.168.2.135 并回车）
echo 如果在3秒后能正常打开登录界面就说明成功了，一般每次连接成功率在4成左右，如果打不开请按照提示多试几次，如果试了十几次还不行请加群反馈。
echo=
echo 注1：强力模式只适合特定区域的SCUNET，如果你需要连接其他WIFI，但之前用过强力模式，请选择下面的“修改为普通模式”，否则没法连网
echo 注2：请右键点击脚本文件使用管理员权限运行，否则易报错！
echo 注3：请在SCUNET信号较强处连接，否则成功率不高，如果在尝试强力连接后WIFI是断线的状态，请先尝试手动连接两下，不行再按照提示重试。
echo=

goto init

:init
set chose=
set ethernetAdapter=
set cks=
set subMask=
set gateway=
set DNS1=202.115.32.39
set DNS2=202.115.32.36
set defaultSubMask=255.255.255.0
echo 修改为普通模式，请输入1
echo 人在一教，请输入2
echo 人在综合楼，请输入3
echo 人在图书馆，请输入4
echo=
set /p chose=请选择你的选择:
netsh interface show interface
echo=
echo 上面显示了你电脑上所有的网口信息，在最后一列中
echo 选择最像无线网卡的接口名称（一般有WLAN/WIFI/wireless等字样）复制到下方并回车！
echo 一定要保证名称正确，不要多空格！
echo=
set /p adaptername=输入无线接口名称:

:reconnect
set ipAddr=

if !chose! == 1 ( 
    goto auto
) else ( 
    if !chose! == 2 ( 
        goto static2
    ) else ( 
      if !chose! == 3 ( 
          goto static3
      ) else (
        if !chose! == 4 ( 
            goto static4
        ) else (
               if !chose! == exit (
                  exit /b
               ) else (
                    goto error
                   )
                )
        )      
      )
)
:eof

:auto
echo 自动模式
goto scanEthernetAdapter
:eof

:static2
echo=
set /a AA=10
set /a BB=132
set /a CC=!random! %% 15
set /a DD=!random! %% 254
set ipAddr=!AA!.!BB!.!CC!.!DD!
set subMask=255.255.240.0
set gateway=10.132.15.254
goto scanEthernetAdapter
:eof

:static3
echo=
set /a AA=10
set /a BB=132
set /a CC=!random! %% 3 + 36
set /a DD=!random! %% 254
set ipAddr=!AA!.!BB!.!CC!.!DD!
set subMask=255.255.252.0
set gateway=10.132.39.254
goto scanEthernetAdapter
:eof

:static4
echo=
set /a AA=10
set /a BB=132
set /a CC=!random! %% 4 + 28
set /a DD=!random! %% 254
set ipAddr=!AA!.!BB!.!CC!.!DD!
set subMask=255.255.252.0
set gateway=10.132.31.254
goto scanEthernetAdapter
:eof

:scanEthernetAdapter
set ethernetAdapter=%adaptername%
echo 输入的无线网卡名称为!ethernetAdapter!
goto setup
pause
:eof

:setup
if !chose! == 1 (
    echo=
    echo 正在设置普通模式...
    netsh interface ip set address name = %ethernetAdapter% source = dhcp
    netsh interface ip set dns name = %ethernetAdapter% source = dhcp
    echo 设置成功！可以正常连接其他WIFI了
) else (
    echo=
    echo 正在强力连接...
    if "%subMask%"=="" (
        echo=
        echo IP地址： %ethernetAdapter% %ipAddr% %defaultSubMask% %gateway%
        netsh interface ip set addr name=%ethernetAdapter% source=static addr=%ipAddr% mask=%defaultSubMask% gateway=%gateway%
    ) else (
        echo=
        echo IP地址： %ethernetAdapter% %ipAddr% %subMask% %gateway%
        netsh interface ip set addr name=%ethernetAdapter% source=static addr=%ipAddr% mask=%subMask% gateway=%gateway%
    )
    echo=
    echo 正在设置首选DNS...
    cmd /c netsh interface ip set dns name=%ethernetAdapter% source=static addr=%DNS1% register=PRIMARY validate=no
    echo=
    echo 正在设置备用DNS...
    cmd /c netsh interface ip add dns name=%ethernetAdapter% addr=%DNS2% validate=no
    echo=
    echo 强力连接已经配置成功！请在浏览器地址栏输入192.168.2.135并回车以打开登录页
    echo=
    goto check
)
pause
exit /b
:eof

:check
echo 现在是否可以正常打开登录页？是请输入1，否则请输入0重试
set /p cks=请输入:
if !cks! == 1 (
      echo 谢谢使用，欢迎加群交流：534629825，你现在可以关闭窗口了，记得连接别的WIFI前恢复到普通模式哦！
      pause
      exit /b
) else ( 
      if !cks! == 0 (
          goto reconnect
           ) else (
                goto error
                )   
        ) 
:eof

:error
echo=
echo 输入错误，请重新输入
goto init
:eof