/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : transaction

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-08-13 15:36:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES ('1');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `num` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('5', '5');
INSERT INTO `order` VALUES ('6', '888');

-- ----------------------------
-- Table structure for stu
-- ----------------------------
DROP TABLE IF EXISTS `stu`;
CREATE TABLE `stu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `score` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu
-- ----------------------------
INSERT INTO `stu` VALUES ('9', '5');
INSERT INTO `stu` VALUES ('11', '888');

-- ----------------------------
-- Table structure for t_logger
-- ----------------------------
DROP TABLE IF EXISTS `t_logger`;
CREATE TABLE `t_logger` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(64) NOT NULL,
  `unit_id` varchar(32) NOT NULL,
  `tag` varchar(50) NOT NULL,
  `content` varchar(1024) NOT NULL,
  `create_time` varchar(30) NOT NULL,
  `app_name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_logger
-- ----------------------------
INSERT INTO `t_logger` VALUES ('1', '3e2a42d869537', 'a17817c63e5b9d0ac9f5bfb95dd9eeed', 'Transaction', 'business code error', '2019-08-13 15:08:52 804', 'order-service:9001');
INSERT INTO `t_logger` VALUES ('2', '3e2a42d869537', '91c01549b0114f6d600ab5c1405643b5', 'Transaction', 'business code error', '2019-08-13 15:08:52 851', 'user-service:9000');
INSERT INTO `t_logger` VALUES ('3', '3e2a61bc29537', 'a17817c63e5b9d0ac9f5bfb95dd9eeed', 'Transaction', 'business code error', '2019-08-13 15:11:17 232', 'order-service:9001');
INSERT INTO `t_logger` VALUES ('4', '3e2a61bc29537', '91c01549b0114f6d600ab5c1405643b5', 'Transaction', 'business code error', '2019-08-13 15:11:17 275', 'user-service:9000');
INSERT INTO `t_logger` VALUES ('5', '3e2ae6a4ed537', 'a17817c63e5b9d0ac9f5bfb95dd9eeed', 'Transaction', 'business code error', '2019-08-13 15:20:05 831', 'order-service:9001');
INSERT INTO `t_logger` VALUES ('6', '3e2ae6a4ed537', 'efb55eaa004e498390a78b244bf7b5f5', 'Transaction', 'business code error', '2019-08-13 15:20:05 869', 'stu-service:9002');
INSERT INTO `t_logger` VALUES ('7', '3e2ae6a4ed537', '91c01549b0114f6d600ab5c1405643b5', 'Transaction', 'business code error', '2019-08-13 15:20:05 962', 'user-service:9000');
INSERT INTO `t_logger` VALUES ('8', '3e2b00ba5d537', 'a17817c63e5b9d0ac9f5bfb95dd9eeed', 'Transaction', 'business code error', '2019-08-13 15:22:08 425', 'order-service:9001');
INSERT INTO `t_logger` VALUES ('9', '3e2b00ba5d537', 'efb55eaa004e498390a78b244bf7b5f5', 'Transaction', 'business code error', '2019-08-13 15:22:08 433', 'stu-service:9002');
INSERT INTO `t_logger` VALUES ('10', '3e2b00ba5d537', '91c01549b0114f6d600ab5c1405643b5', 'Transaction', 'business code error', '2019-08-13 15:22:08 590', 'user-service:9000');

-- ----------------------------
-- Table structure for t_tx_exception
-- ----------------------------
DROP TABLE IF EXISTS `t_tx_exception`;
CREATE TABLE `t_tx_exception` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `ex_state` smallint(6) NOT NULL,
  `group_id` varchar(60) DEFAULT NULL,
  `mod_id` varchar(100) DEFAULT NULL,
  `registrar` smallint(6) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `transaction_state` int(11) DEFAULT NULL,
  `unit_id` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_tx_exception
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `age` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('11', '5');
INSERT INTO `user` VALUES ('13', '888');
