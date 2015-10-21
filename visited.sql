/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50512
Source Host           : localhost:3306
Source Database       : zhn_db

Target Server Type    : MYSQL
Target Server Version : 50512
File Encoding         : 65001

Date: 2011-11-14 11:36:22
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `visited`
-- ----------------------------
DROP TABLE IF EXISTS `visited`;
CREATE TABLE `visited` (
  `id` int(11) NOT NULL,
  `visited_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of visited
-- ----------------------------
