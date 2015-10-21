/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50512
Source Host           : localhost:3306
Source Database       : zhn_db

Target Server Type    : MYSQL
Target Server Version : 50512
File Encoding         : 65001

Date: 2011-11-12 17:11:55
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `contact`
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_product` varchar(125) DEFAULT NULL,
  `full_name` varchar(125) DEFAULT NULL,
  `email` varchar(125) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `mesage` mediumtext,
  `created_date` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO contact VALUES ('22', 'BMW 320i 2011 ', 'Hoài Nam Trần', 'itlsvn@gmail.com', '0978667966', 'dsdsdsdsds', '2011-11-12 01:37:04', 'Chi lăng - Lạng sơn');
INSERT INTO contact VALUES ('21', 'BMW 320i 2011 ', 'Hoài Nam Trần', 'itlsvn@gmail.com', '0978667966', '', '2011-11-12 01:31:00', 'Ngọc thụy - Hà nội');
