/*
Navicat MySQL Data Transfer

Source Server         : MYSQL
Source Server Version : 50543
Source Host           : 127.0.0.1:3306
Source Database       : shiro

Target Server Type    : MYSQL
Target Server Version : 50543
File Encoding         : 65001

Date: 2017-04-03 16:33:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_resource
-- ----------------------------
DROP TABLE IF EXISTS `tb_resource`;
CREATE TABLE `tb_resource` (
  `resource_id` int(11) NOT NULL,
  `resource_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `resource_url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tb_resource
-- ----------------------------
INSERT INTO `tb_resource` VALUES ('1', 'xxx', 'xxx');

-- ----------------------------
-- Table structure for tb_resource_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_resource_role`;
CREATE TABLE `tb_resource_role` (
  `resource_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_role_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `res_role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`resource_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tb_resource_role
-- ----------------------------
INSERT INTO `tb_resource_role` VALUES ('1', 'fff', '1');

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES ('1', 'www');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_pwd` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'qqq', '123');
INSERT INTO `tb_user` VALUES ('2', 'gail', 'zheshiyijigail');
INSERT INTO `tb_user` VALUES ('4', 'eee', '123');
INSERT INTO `tb_user` VALUES ('5', 'eee', '123');
INSERT INTO `tb_user` VALUES ('6', null, null);
INSERT INTO `tb_user` VALUES ('7', null, null);
INSERT INTO `tb_user` VALUES ('8', null, null);
INSERT INTO `tb_user` VALUES ('9', null, null);
INSERT INTO `tb_user` VALUES ('10', null, null);
INSERT INTO `tb_user` VALUES ('11', null, null);
INSERT INTO `tb_user` VALUES ('12', null, null);
INSERT INTO `tb_user` VALUES ('13', null, null);
INSERT INTO `tb_user` VALUES ('14', null, null);
INSERT INTO `tb_user` VALUES ('15', null, null);
INSERT INTO `tb_user` VALUES ('16', null, null);
INSERT INTO `tb_user` VALUES ('17', null, null);
INSERT INTO `tb_user` VALUES ('18', null, null);
INSERT INTO `tb_user` VALUES ('19', null, null);

-- ----------------------------
-- Table structure for tb_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_role`;
CREATE TABLE `tb_user_role` (
  `ur_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_role_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tb_user_role
-- ----------------------------
INSERT INTO `tb_user_role` VALUES ('1', 'ddd', '1');
