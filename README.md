# The mising Wake-On-LAN support for Ranga

为 NSWA Ranga 带来 Wake-One-LAN 支持

本项目的最初可运行代码由 montee 贡献

## 提供的 Lua API

```lua
ranga.luaload("com.montee.wol/lib/wol.lua")
```

```
wol.sendMagicPacket(IP广播地址, 目标MAC地址)
```

例如

```lua
wol.sendMagicPacket("192.168.1.255", "AA:BB:CC:DD:EE:FF")
```

广播地址用于让 NSWA Ranga 知道向哪个网络发送 WOL 魔法包。例如，如果你将 LAN 地址改为了 `10.0.0.1/16`，则广播地址为 `10.0.255.255`

## 提供的 Ranga API

可以通过 ranga-cli 和各种兼容 Ranga 协议的客户端程序中调用，如

```
$ ranga-cli addon invoke com.montee.wol wol IP广播地址 目标MAC地址
```

例如

```
$ ranga-cli addon invoke com.montee.wol wol 192.168.1.255 AA:BB:CC:DD:EE:FF
```

IP广播地址, 目标MAC地址 同上解释

## 提供的计划任务程序

使用命令行工具 ranga-cli 或者或者在 Web 控制台“计划任务”选项卡中创建计划任务，在“你想在此计划任务中做什么？”中做如下设定

```
唤醒的扩展程序：com.montee.wol
唤醒的计划任务程序：wol
参数：IP广播地址,目标MAC地址 （例如：192.168.1.255,AA:BB:CC:DD:EE:FF）
```

IP广播地址, 目标MAC地址 同上解释

## 外部代码

https://gist.github.com/vincascm/7fa72a8c27933736d802

https://gist.github.com/jaredallard/ddb152179831dd23b230

## Copyright

Copyright (C) 2019 montee.

Copyright (C) 2019 Ranga Open-Source Technology Center.

License: MIT
