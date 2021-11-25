# freeswitch-all-in-one
freeswitch容器构建

docker pull long12310225/freeswitch-all-in-one

使用方式：
执行上面的指令后，会创建一个容器，开启了端口为36000的SSH，root密码kunlun2020
进到/usr/local/freeswitch/bin
执行 ./freeswitch -nonat
因为在增加功能阶段，暂时这样启动，完成后是容器启动就自动起来的。

已完成功能

整合mysql，中文语音包，H264，视频通话，录音录像
