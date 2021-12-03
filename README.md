# freeswitch-all-in-one
freeswitch容器构建

docker pull long12310225/freeswitch-all-in-one:v1

## 使用方式：
+ 修改odbc文件夹的ini文件，改成自己需要的
+ 修改mysql/conf下的配置文件，改成自己需要的
+ 修改freeswitch/conf/vars.xml，把里面的IP改成要部署FS的服务器的IP
+ 执行docker-compose -f docker-compose-mysql.yml up -d
+ 执行docker-compose up -d
+ 容器启动就自动起来的

## 开发计划
+ 整合mysql
+ 整合中文语音包
+ 支持H264
+ 支持视频通话
+ 支持录音录像
+ 支持多人会议
+ 支持会议外呼
+ 支持G729转码
+ 支持主备切换
+ 支持NAT穿透
+ 支持黑名单
+ 整合防火墙策略
+ 支持动态认证
+ 支持监听监视
+ 支持集群
+ 支持级联
+ 整合OpenSIPS
+ 支持TTS
+ 支持计费统计
+ 整合WebRTC
+ 支持事件通知

## 已完成功能

+ 整合mysql
+ 整合中文语音包
+ 支持H264
+ 支持视频通话
+ 支持录音录像
+ 整合防火墙策略
+ 支持黑名单
+ 支持多人会议

## 已改进
+ 画面秒出
+ 支持CDR
+ 优化Mysql查询

## 自定义数据表

CREATE TABLE `freeswitch`.`cdr_table_a`  (
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `caller_id_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `call_uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `caller_id_number` int(11) NULL DEFAULT NULL,
  `destination_number` int(11) NULL DEFAULT NULL,
  `start_stamp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `answer_stamp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `end_stamp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `uduration` int(255) NULL DEFAULT NULL,
  `billsec` int(255) NULL DEFAULT NULL,
  `hangup_cause` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

CREATE TABLE `freeswitch`.`cdr_table_b`  (
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `caller_id_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `call_uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `caller_id_number` int(11) NULL DEFAULT NULL,
  `destination_number` int(11) NULL DEFAULT NULL,
  `start_stamp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `answer_stamp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `end_stamp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `uduration` int(255) NULL DEFAULT NULL,
  `billsec` int(255) NULL DEFAULT NULL,
  `hangup_cause` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

CREATE TABLE `freeswitch`.`cdr_table_ab`  (
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `caller_id_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `call_uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `caller_id_number` int(11) NULL DEFAULT NULL,
  `destination_number` int(11) NULL DEFAULT NULL,
  `start_stamp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `answer_stamp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `end_stamp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `uduration` int(255) NULL DEFAULT NULL,
  `billsec` int(255) NULL DEFAULT NULL,
  `hangup_cause` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;


CREATE TABLE `freeswitch`.`users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '用户密码',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_UNIQUE`(`user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;
