/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.4.177
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : 192.168.4.177:23306
 Source Schema         : freeswitch

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 01/12/2021 17:48:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aliases
-- ----------------------------
DROP TABLE IF EXISTS `aliases`;
CREATE TABLE `aliases`  (
  `sticky` int(11) NULL DEFAULT NULL,
  `alias` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `command` varchar(4096) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hostname` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  INDEX `alias1`(`alias`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for calls
-- ----------------------------
DROP TABLE IF EXISTS `calls`;
CREATE TABLE `calls`  (
  `call_uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `call_created` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `call_created_epoch` int(11) NULL DEFAULT NULL,
  `caller_uuid` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `callee_uuid` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hostname` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  INDEX `callsidx1`(`hostname`) USING BTREE,
  INDEX `eruuindex`(`caller_uuid`, `hostname`) USING BTREE,
  INDEX `eeuuindex`(`callee_uuid`) USING BTREE,
  INDEX `eeuuindex2`(`call_uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cdr_table_a
-- ----------------------------
DROP TABLE IF EXISTS `cdr_table_a`;
CREATE TABLE `cdr_table_a`  (
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

-- ----------------------------
-- Table structure for cdr_table_ab
-- ----------------------------
DROP TABLE IF EXISTS `cdr_table_ab`;
CREATE TABLE `cdr_table_ab`  (
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

-- ----------------------------
-- Table structure for cdr_table_b
-- ----------------------------
DROP TABLE IF EXISTS `cdr_table_b`;
CREATE TABLE `cdr_table_b`  (
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

-- ----------------------------
-- Table structure for channels
-- ----------------------------
DROP TABLE IF EXISTS `channels`;
CREATE TABLE `channels`  (
  `uuid` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `direction` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_epoch` int(11) NULL DEFAULT NULL,
  `name` varchar(1024) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `state` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `cid_name` varchar(1024) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `cid_num` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ip_addr` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dest` varchar(1024) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `application` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `application_data` varchar(4096) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dialplan` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `context` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `read_codec` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `read_rate` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `read_bit_rate` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `write_codec` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `write_rate` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `write_bit_rate` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `secure` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hostname` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `presence_id` varchar(4096) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `presence_data` varchar(4096) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `accountcode` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `callstate` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `callee_name` varchar(1024) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `callee_num` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `callee_direction` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `call_uuid` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sent_callee_name` varchar(1024) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sent_callee_num` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `initial_cid_name` varchar(1024) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `initial_cid_num` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `initial_ip_addr` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `initial_dest` varchar(1024) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `initial_dialplan` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `initial_context` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  INDEX `chidx1`(`hostname`) USING BTREE,
  INDEX `uuindex`(`uuid`, `hostname`) USING BTREE,
  INDEX `uuindex2`(`call_uuid`) USING BTREE,
  INDEX `uuid1`(`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for complete
-- ----------------------------
DROP TABLE IF EXISTS `complete`;
CREATE TABLE `complete`  (
  `sticky` int(11) NULL DEFAULT NULL,
  `a1` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `a2` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `a3` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `a4` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `a5` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `a6` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `a7` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `a8` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `a9` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `a10` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hostname` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  INDEX `complete1`(`a1`, `hostname`) USING BTREE,
  INDEX `complete2`(`a2`, `hostname`) USING BTREE,
  INDEX `complete3`(`a3`, `hostname`) USING BTREE,
  INDEX `complete4`(`a4`, `hostname`) USING BTREE,
  INDEX `complete5`(`a5`, `hostname`) USING BTREE,
  INDEX `complete6`(`a6`, `hostname`) USING BTREE,
  INDEX `complete7`(`a7`, `hostname`) USING BTREE,
  INDEX `complete8`(`a8`, `hostname`) USING BTREE,
  INDEX `complete9`(`a9`, `hostname`) USING BTREE,
  INDEX `complete10`(`a10`, `hostname`) USING BTREE,
  INDEX `complete11`(`a1`, `a2`, `a3`, `a4`, `a5`, `a6`, `a7`, `a8`, `a9`, `a10`, `hostname`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for conference_number
-- ----------------------------
DROP TABLE IF EXISTS `conference_number`;
CREATE TABLE `conference_number`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_caller` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone_callee_1` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone_callee_2` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone_callee_3` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone_callee_4` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone_callee_5` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone_callee_6` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone_callee_7` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone_callee_8` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone_callee_9` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone_callee_10` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `timestamp` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for db_data
-- ----------------------------
DROP TABLE IF EXISTS `db_data`;
CREATE TABLE `db_data`  (
  `hostname` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `realm` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `data_key` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `data` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  UNIQUE INDEX `dd_data_key_realm`(`data_key`, `realm`) USING BTREE,
  INDEX `dd_realm`(`realm`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for group_data
-- ----------------------------
DROP TABLE IF EXISTS `group_data`;
CREATE TABLE `group_data`  (
  `hostname` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `groupname` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  INDEX `gd_groupname`(`groupname`) USING BTREE,
  INDEX `gd_url`(`url`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for interfaces
-- ----------------------------
DROP TABLE IF EXISTS `interfaces`;
CREATE TABLE `interfaces`  (
  `type` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(1024) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `description` varchar(4096) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ikey` varchar(1024) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `filename` varchar(4096) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `syntax` varchar(4096) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hostname` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for json_store
-- ----------------------------
DROP TABLE IF EXISTS `json_store`;
CREATE TABLE `json_store`  (
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `data` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for limit_data
-- ----------------------------
DROP TABLE IF EXISTS `limit_data`;
CREATE TABLE `limit_data`  (
  `hostname` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `realm` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  INDEX `ld_hostname`(`hostname`) USING BTREE,
  INDEX `ld_uuid`(`uuid`) USING BTREE,
  INDEX `ld_realm`(`realm`) USING BTREE,
  INDEX `ld_id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for nat
-- ----------------------------
DROP TABLE IF EXISTS `nat`;
CREATE TABLE `nat`  (
  `sticky` int(11) NULL DEFAULT NULL,
  `port` int(11) NULL DEFAULT NULL,
  `proto` int(11) NULL DEFAULT NULL,
  `hostname` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  INDEX `nat_map_port_proto`(`port`, `proto`, `hostname`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for recovery
-- ----------------------------
DROP TABLE IF EXISTS `recovery`;
CREATE TABLE `recovery`  (
  `runtime_uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `technology` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `profile_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hostname` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `metadata` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  INDEX `recovery1`(`technology`) USING BTREE,
  INDEX `recovery2`(`profile_name`) USING BTREE,
  INDEX `recovery3`(`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for registrations
-- ----------------------------
DROP TABLE IF EXISTS `registrations`;
CREATE TABLE `registrations`  (
  `reg_user` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `realm` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `token` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `url` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `expires` int(11) NULL DEFAULT NULL,
  `network_ip` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `network_port` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `network_proto` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hostname` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `metadata` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  INDEX `regindex1`(`reg_user`, `realm`, `hostname`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sip_registrations
-- ----------------------------
DROP TABLE IF EXISTS `sip_registrations`;
CREATE TABLE `sip_registrations`  (
  `call_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sip_user` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sip_host` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `presence_hosts` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `contact` varchar(1024) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ping_status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ping_count` int(11) NULL DEFAULT NULL,
  `ping_time` bigint(20) NULL DEFAULT NULL,
  `force_ping` int(11) NULL DEFAULT NULL,
  `rpid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `expires` bigint(20) NULL DEFAULT NULL,
  `ping_expires` int(11) NOT NULL DEFAULT 0,
  `user_agent` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `server_user` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `server_host` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `profile_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hostname` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `network_ip` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `network_port` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sip_username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sip_realm` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mwi_user` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mwi_host` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `orig_server_host` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `orig_hostname` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sub_host` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tasks
-- ----------------------------
DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks`  (
  `task_id` int(11) NULL DEFAULT NULL,
  `task_desc` varchar(4096) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `task_group` varchar(1024) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `task_runtime` bigint(20) NULL DEFAULT NULL,
  `task_sql_manager` int(11) NULL DEFAULT NULL,
  `hostname` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  INDEX `tasks1`(`hostname`, `task_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '用户密码',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_UNIQUE`(`user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for voicemail_msgs
-- ----------------------------
DROP TABLE IF EXISTS `voicemail_msgs`;
CREATE TABLE `voicemail_msgs`  (
  `created_epoch` int(11) NULL DEFAULT NULL,
  `read_epoch` int(11) NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `domain` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `cid_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `cid_number` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `in_folder` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `message_len` int(11) NULL DEFAULT NULL,
  `flags` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `read_flags` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `forwarded_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  INDEX `voicemail_msgs_idx1`(`created_epoch`) USING BTREE,
  INDEX `voicemail_msgs_idx2`(`username`) USING BTREE,
  INDEX `voicemail_msgs_idx3`(`domain`) USING BTREE,
  INDEX `voicemail_msgs_idx4`(`uuid`) USING BTREE,
  INDEX `voicemail_msgs_idx5`(`in_folder`) USING BTREE,
  INDEX `voicemail_msgs_idx6`(`read_flags`) USING BTREE,
  INDEX `voicemail_msgs_idx7`(`forwarded_by`) USING BTREE,
  INDEX `voicemail_msgs_idx8`(`read_epoch`) USING BTREE,
  INDEX `voicemail_msgs_idx9`(`flags`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for voicemail_prefs
-- ----------------------------
DROP TABLE IF EXISTS `voicemail_prefs`;
CREATE TABLE `voicemail_prefs`  (
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `domain` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name_path` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `greeting_path` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  INDEX `voicemail_prefs_idx1`(`username`) USING BTREE,
  INDEX `voicemail_prefs_idx2`(`domain`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- View structure for basic_calls
-- ----------------------------
DROP VIEW IF EXISTS `basic_calls`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `basic_calls` AS select `a`.`uuid` AS `uuid`,`a`.`direction` AS `direction`,`a`.`created` AS `created`,`a`.`created_epoch` AS `created_epoch`,`a`.`name` AS `name`,`a`.`state` AS `state`,`a`.`cid_name` AS `cid_name`,`a`.`cid_num` AS `cid_num`,`a`.`ip_addr` AS `ip_addr`,`a`.`dest` AS `dest`,`a`.`presence_id` AS `presence_id`,`a`.`presence_data` AS `presence_data`,`a`.`accountcode` AS `accountcode`,`a`.`callstate` AS `callstate`,`a`.`callee_name` AS `callee_name`,`a`.`callee_num` AS `callee_num`,`a`.`callee_direction` AS `callee_direction`,`a`.`call_uuid` AS `call_uuid`,`a`.`hostname` AS `hostname`,`a`.`sent_callee_name` AS `sent_callee_name`,`a`.`sent_callee_num` AS `sent_callee_num`,`b`.`uuid` AS `b_uuid`,`b`.`direction` AS `b_direction`,`b`.`created` AS `b_created`,`b`.`created_epoch` AS `b_created_epoch`,`b`.`name` AS `b_name`,`b`.`state` AS `b_state`,`b`.`cid_name` AS `b_cid_name`,`b`.`cid_num` AS `b_cid_num`,`b`.`ip_addr` AS `b_ip_addr`,`b`.`dest` AS `b_dest`,`b`.`presence_id` AS `b_presence_id`,`b`.`presence_data` AS `b_presence_data`,`b`.`accountcode` AS `b_accountcode`,`b`.`callstate` AS `b_callstate`,`b`.`callee_name` AS `b_callee_name`,`b`.`callee_num` AS `b_callee_num`,`b`.`callee_direction` AS `b_callee_direction`,`b`.`sent_callee_name` AS `b_sent_callee_name`,`b`.`sent_callee_num` AS `b_sent_callee_num`,`c`.`call_created_epoch` AS `call_created_epoch` from ((`channels` `a` left join `calls` `c` on(((`a`.`uuid` = `c`.`caller_uuid`) and (`a`.`hostname` = `c`.`hostname`)))) left join `channels` `b` on(((`b`.`uuid` = `c`.`callee_uuid`) and (`b`.`hostname` = `c`.`hostname`)))) where ((`a`.`uuid` = `c`.`caller_uuid`) or (not(`a`.`uuid` in (select `calls`.`callee_uuid` from `calls`))));

-- ----------------------------
-- View structure for detailed_calls
-- ----------------------------
DROP VIEW IF EXISTS `detailed_calls`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `detailed_calls` AS select `a`.`uuid` AS `uuid`,`a`.`direction` AS `direction`,`a`.`created` AS `created`,`a`.`created_epoch` AS `created_epoch`,`a`.`name` AS `name`,`a`.`state` AS `state`,`a`.`cid_name` AS `cid_name`,`a`.`cid_num` AS `cid_num`,`a`.`ip_addr` AS `ip_addr`,`a`.`dest` AS `dest`,`a`.`application` AS `application`,`a`.`application_data` AS `application_data`,`a`.`dialplan` AS `dialplan`,`a`.`context` AS `context`,`a`.`read_codec` AS `read_codec`,`a`.`read_rate` AS `read_rate`,`a`.`read_bit_rate` AS `read_bit_rate`,`a`.`write_codec` AS `write_codec`,`a`.`write_rate` AS `write_rate`,`a`.`write_bit_rate` AS `write_bit_rate`,`a`.`secure` AS `secure`,`a`.`hostname` AS `hostname`,`a`.`presence_id` AS `presence_id`,`a`.`presence_data` AS `presence_data`,`a`.`accountcode` AS `accountcode`,`a`.`callstate` AS `callstate`,`a`.`callee_name` AS `callee_name`,`a`.`callee_num` AS `callee_num`,`a`.`callee_direction` AS `callee_direction`,`a`.`call_uuid` AS `call_uuid`,`a`.`sent_callee_name` AS `sent_callee_name`,`a`.`sent_callee_num` AS `sent_callee_num`,`b`.`uuid` AS `b_uuid`,`b`.`direction` AS `b_direction`,`b`.`created` AS `b_created`,`b`.`created_epoch` AS `b_created_epoch`,`b`.`name` AS `b_name`,`b`.`state` AS `b_state`,`b`.`cid_name` AS `b_cid_name`,`b`.`cid_num` AS `b_cid_num`,`b`.`ip_addr` AS `b_ip_addr`,`b`.`dest` AS `b_dest`,`b`.`application` AS `b_application`,`b`.`application_data` AS `b_application_data`,`b`.`dialplan` AS `b_dialplan`,`b`.`context` AS `b_context`,`b`.`read_codec` AS `b_read_codec`,`b`.`read_rate` AS `b_read_rate`,`b`.`read_bit_rate` AS `b_read_bit_rate`,`b`.`write_codec` AS `b_write_codec`,`b`.`write_rate` AS `b_write_rate`,`b`.`write_bit_rate` AS `b_write_bit_rate`,`b`.`secure` AS `b_secure`,`b`.`hostname` AS `b_hostname`,`b`.`presence_id` AS `b_presence_id`,`b`.`presence_data` AS `b_presence_data`,`b`.`accountcode` AS `b_accountcode`,`b`.`callstate` AS `b_callstate`,`b`.`callee_name` AS `b_callee_name`,`b`.`callee_num` AS `b_callee_num`,`b`.`callee_direction` AS `b_callee_direction`,`b`.`call_uuid` AS `b_call_uuid`,`b`.`sent_callee_name` AS `b_sent_callee_name`,`b`.`sent_callee_num` AS `b_sent_callee_num`,`c`.`call_created_epoch` AS `call_created_epoch` from ((`channels` `a` left join `calls` `c` on(((`a`.`uuid` = `c`.`caller_uuid`) and (`a`.`hostname` = `c`.`hostname`)))) left join `channels` `b` on(((`b`.`uuid` = `c`.`callee_uuid`) and (`b`.`hostname` = `c`.`hostname`)))) where ((`a`.`uuid` = `c`.`caller_uuid`) or (not(`a`.`uuid` in (select `calls`.`callee_uuid` from `calls`))));

SET FOREIGN_KEY_CHECKS = 1;
