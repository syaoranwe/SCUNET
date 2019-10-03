# 魔法上网教程
#### 1. 为什么你需要魔法上网？

因为你需要有选择权，即，世界上有谷歌、有百度，你可以自由选择用其中之一，而不是在百度和类似百度之间选择。

#### 2. 翻墙的原理是什么？

针对不同的屏蔽方式，有不同的应对方法，今天介绍的shadowsocksR是一种socks代理，它的原理是通过转发流量实现翻墙的目的。简单的说，在国外的互联网上的某个房子里（服务器），安排某个人（shadowsocks服务端程序），站在房子特定的大门口（服务器端口），接收黑衣客人（经过加密的流量）的拜访。并按照密信上的指示访问相应被屏蔽的网站，将内容返回给黑衣客人（流量转发），这位客人再返回到我们本地，将相关内容解密后呈现给我们。

#### 3. 除了SSR还有其他的方式吗？
赛风/自由门等轮子提供的软件一直坚挺，你可以去使用。

蓝灯/VPN日常歇火速度慢，且有中资背景，你可以冲会员用，虽然并没有什么卵用。

企业应用的Anyconnect倒也是挺稳定的，你也可以去用。

V2Ray等是新式工具，并有望比肩SS，你也可以尝试。

当然，你一直频繁的更改Hosts也不是不可以，如果你不嫌烦的话。

Tor的网桥也是一个选择，如果你还连得上的话...

外国/香港电话卡理论上一直可以用，毕竟漫游网络没有墙，但是也只有土豪用得起吧（50元1G流量的价格）。

对于新手入门的话，SSR够了（傻瓜/便宜/耐用）。

#### 4. 在翻墙前，需要准备哪些东西？
- 首先，大家肯定要准备手机/平板/电脑/路由器（相信倒腾路由器的、Linux的、Mac的都已经对这些十分熟悉了，本文主要介绍Android和Windows 10系统下的**简单**使用，至于IOS，请看[这篇文章](https://moe.best/tutorial/shadowsocksr.html)）
- 其次，请下载你使用的系统的shadowsocks客户端，你可以从[这里](https://github.com/shadowsocksrr/shadowsocksr-csharp/releases/download/4.9.0/ShadowsocksR-win-4.9.0.zip)下载Windows客户端，从[这里](https://github.com/shadowsocksrr/shadowsocksr-android/releases/download/3.5.4/shadowsocksr-android-3.5.4.apk)下载Android客户端。
- **再者，请卸载Windows系统上的360/腾讯管家/百度管家等国产安全软件（火绒除外）或者国产管家类软件。不做完此步切勿往下！**
- 最后，请准备一些有效的shadowsocksR（SSR）节点，即在2中说到的有运行SSR的服务器（也称SSR节点，后面会提到怎么获取）。
- 如果在学习过程中有任何问题，~~可以在加群页面联系作者获取支持~~ 去找卖给你节点的人。

#### 5. SSR节点在哪儿搞？

在新手入门的时候，我建议先用一些白菜价/免费节点拿来练手，等学会后再去购买稳定的付费机场服务或者购买服务器自己搭建。这里解释以下，通常SSR节点会被称为“飞机”，提供"飞机"服务的网站服务商称为“机场”。服务器被[GFW](https://www.wikiwand.com/zh/%E9%98%B2%E7%81%AB%E9%95%BF%E5%9F%8E)屏蔽称为"坠机"。

机场可以联系作者推荐，请注意，目前的机场的均价是1元钱10-100G的流量，比这个贵的基本上就不划算了。下面的两个机场的地址基本都被屏蔽了。可联系获取最新地址。

~~先向大家介绍一个免费的机场用来练手，机场目前的服务器完全够初期入门使用了。[点我注册](http://jiji.ro/invite?code=Cbcx)。注：如果无法注册，请到[导航页](https://china.tg/)选择爱国富强进入即可。登陆后你会发现是友好的小白模式，我们只需要复制一下订阅链接就好了（订阅链接包含SSR节点信息）。这里就不再对这个UI做详细介绍，相信老司机都能很快适应。复制了订阅链接后请继续看下面的使用教程：~~

~~等各位学会基本操作之后，需要**更稳定速度更快**的服务时，可以自信谷歌相关服务商购买使用。目前我使用的是这家（[点我注册](https://ssrcloud.org/auth/register?code=RpRZ)），**年付RMB100元10T流量，有世界各个国家共180+个节点**（有几十条专线网络）。各位可以在寻找新商家购买时对照这家参照性价比。不过ballball各位大佬，如果没有付费使用的意愿不要注册好吗，我的邀请码次数也是有限的，你注册了不买7天后账号就会被删，完全是在浪费邀请次数，用完了后别人想注册都注册不成了。~~

下面以一家付费的机场为例介绍如何充值和购买飞机服务。

- 首先，先在[注册界面](https://ssrcloud.org/auth/register?code=RpRZ)填写相关信息注册，注意联系方式不需要是真实的，但是邮箱必须是自己正在使用的，以防止忘记密码时无法重置。

- 提示注册成功后在登录界面用注册的邮箱密码登录，然后进入个人中心，滑动网站首页左侧的选项栏，找到充值选项。点进去按照提示充值余额，充值多少请看购买页面你想购买的套餐的价格。

<div style="text-align: center">
<img src="/assets/某cloud.jpg"/>
</div>

- 接着在“充值”的下方，进入套餐购买选项，按提示购买月付套餐即可。
- 最后回到网站的用户中心首页，找到首页的一个叫“**订阅链接**”的东西。这个是我们之后会用到的东西。

#### 6. 在Android上的使用：
- 首先下载安装完软件后，打开程序，点击上方的“**shadowsocks R ▼**”字样即可进入配置管理界面。

<div style="text-align: center">
<img src="https://az787680.vo.msecnd.net/user/%E9%98%BF%E8%99%9A%E5%90%8C%E5%AD%A6/ed5d88cc-5bc6-4113-bfa4-92c34e9e1e9a/1533963551_17538.png"/>
</div>

- 点击 **右下角的“+”** 之后就会出现图中所示的5种配置添加方式，我们点击**添加/升级SSR订阅**。

<div style="text-align: center">
<img src="https://blobscdn.gitbook.com/v0/b/gitbook-28427.appspot.com/o/assets%2F-LPX_CajWK57Uj2P1CNM%2F-LPXq-TjXuO0qScQJsQc%2F-LPXqokSniUAGjlhLrX2%2F%E5%9B%BE23.png?alt=media&token=1b670008-80c2-4b04-85c6-86e2d456b293"/>
</div>

- 点击**添加订阅地址**，粘贴之前在网站上的那个订阅地址。并**点击确定**。

<div style="text-align: center">
<img src="https://blobscdn.gitbook.com/v0/b/gitbook-28427.appspot.com/o/assets%2F-LPX_CajWK57Uj2P1CNM%2F-LPXq-TjXuO0qScQJsQc%2F-LPXqxOn7giJcFqTZj8a%2F%E5%9B%BE24.png?alt=media&token=8dd5c9b2-b6be-4073-82bd-092370ad2418"/>
</div>
<div style="text-align: center">
<img src="https://blobscdn.gitbook.com/v0/b/gitbook-28427.appspot.com/o/assets%2F-LPX_CajWK57Uj2P1CNM%2F-LPXq-TjXuO0qScQJsQc%2F-LPXr7VQClGrOyn9uu2p%2F%E5%9B%BE25.png?alt=media&token=96c97733-d9a2-46ef-abf8-71bbb1774de0"/>
</div>


- **将自动更新打开，并左滑删除默认的订阅，再点击确认并升级。**

<div style="text-align: center">
<img src="https://blobscdn.gitbook.com/v0/b/gitbook-28427.appspot.com/o/assets%2F-LPX_CajWK57Uj2P1CNM%2F-LPXq-TjXuO0qScQJsQc%2F-LPXrKG8sC1ZLIuqyriN%2F%E5%9B%BE26.png?alt=media&token=d6b5e43b-dfef-47ab-a587-2b20b9d60e49"/>
</div>

- 然后你就可以看到服务器列表里出现了网站提供给我们的服务器啦。请先记得左滑删除Default服务器，那个是没有用的服务器。之后请选择一个（直接点击对应服务器）有效的服务器（可以通过点击服务器旁边的小闪电判断服务器的连通性及延迟）。**回到主界面后。在下方的路由设置里，点开并选择绕过局域网及中国大陆地址。** 其余的设置保持默认即可。

- 点击右上角小飞机图标启动代理。（ 如果是首次连接，则系统会弹出建立网络连接提示框，请点击「确定」。）

<div style="text-align: center">
<img src="https://blobscdn.gitbook.com/v0/b/gitbook-28427.appspot.com/o/assets%2F-LPX_CajWK57Uj2P1CNM%2F-LPXq-TjXuO0qScQJsQc%2F-LPXrXT5Gw-a7MN4UpD5%2F%E5%9B%BE28.png?alt=media&token=733ec11f-ac72-4322-836e-a86acc06b99b9"/>
</div>

- 之后就可以访问谷歌了。

#### 7. Windows的使用：
- 步骤和安卓大同小异，下载客户端并**解压**（一定要解压再用！），打开文件夹，里面有两个EXE程序，随便打开一个，在任务栏图标里会出现一个小飞机。右键点击小飞机图标，在「**服务器**」选项中选择「**SSR 服务器订阅设置**」

<div style="text-align: center">
<img src="https://blobscdn.gitbook.com/v0/b/gitbook-28427.appspot.com/o/assets%2F-LPX_CajWK57Uj2P1CNM%2F-LPXaXobO_yL-9O7kNs9%2F-LPXk3G64BcwSVJ0Imq7%2F%E5%9B%BE2.png?alt=media&token=810985ad-9b2b-42e5-a728-b41d81ce5053"/>
</div>

- 在弹出的窗口中，点击 **Add** 按钮，在右侧的输入框中**粘贴节点订阅地址**，然后勾选「**自动更新**」复选框，点击「**确定**」。

<div style="text-align: center">
<img src="https://blobscdn.gitbook.com/v0/b/gitbook-28427.appspot.com/o/assets%2F-LPX_CajWK57Uj2P1CNM%2F-LPXaXobO_yL-9O7kNs9%2F-LPXkB4mjso6_A-IjqJk%2F%E5%9B%BE3.png?alt=media&token=dfc6c72a-1679-4f58-9f1c-2d6971683732"/>
</div>

- 再次右键点击托盘栏纸飞机图标，在「**服务器订阅**」选项中选择「**更新 SSR 服务器订阅（不通过代理）**」（注意请根据不同情况灵活选择是否通过代理，实在不行两个都试下）

<div style="text-align: center">
<img src="https://blobscdn.gitbook.com/v0/b/gitbook-28427.appspot.com/o/assets%2F-LB-Vhfd-Yl2V02Ih98f%2F-LB9pRv3Cz7W8ygBwhMm%2F-LBA1mrluWBnG2ETutN5%2FSnipaste_2018-04-28_13-48-56.png?alt=media&token=38829aab-c0e9-4d49-81b6-ca3e70e92e63"/>
</div>

- 鼠标中键点击小飞机，在出现的服务器连接窗口里的 **"服务器列表"一列** 中，随便选择一个网站提供的正常有效的服务器，点击它就可以成功切换服务器。如果不需要多个服务器一起使用，就右键小飞机取消掉服务器负载均衡。

- 最后，更改系统代理模式， **小飞机右键菜单--系统代理模式--全局模式**。并且：**小飞机右键菜单--代理规则--绕过局域网和大陆**。

- 之后就可以访问谷歌了。
