/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50143
Source Host           : localhost:3306
Source Database       : zhn_db

Target Server Type    : MYSQL
Target Server Version : 50143
File Encoding         : 65001

Date: 2011-11-12 11:57:05
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `banner`
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `link` varchar(125) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(125) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(125) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO banner VALUES ('1', 'Banner 01', 'http://otoduc.vn/product/details/product_id/23', '313354493_thumbl_980x340_002.png', 'BMW X6 xDrive35d');
INSERT INTO banner VALUES ('2', 'Banner 02', 'http://otoduc.vn/product/details/product_id/22', '482757569_thumbl_980x340.png', 'BMW X6 xDrive35d');
INSERT INTO banner VALUES ('3', 'Banner 03', 'http://otoduc.vn/product/details/product_id/21', '855041504_thumbl_980x340_003.png', 'BMW X6 xDrive35d');
INSERT INTO banner VALUES ('4', 'Banner 04', 'http://otoduc.vn/product/details/product_id/21', '738006592_thumbl_980x340_004.png', 'BMW X3 28i 2011 ');
INSERT INTO banner VALUES ('5', 'Banner 05', 'http://otoduc.vn/product/details/product_id/20', '435119629_thumbl_980x340_005.png', 'BMW Z4 23i 2010');
INSERT INTO banner VALUES ('6', 'Banner 06', 'http://otoduc.vn/product/details/product_id/18', '910095215_thumbl_980x340_008.png', 'BMW 320i 2011 ');

-- ----------------------------
-- Table structure for `car_color`
-- ----------------------------
DROP TABLE IF EXISTS `car_color`;
CREATE TABLE `car_color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_paint_color` varchar(125) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of car_color
-- ----------------------------
INSERT INTO car_color VALUES ('2', 'Màu đỏ', '321929932_UntitledA82_4.jpg');
INSERT INTO car_color VALUES ('3', 'Màu đen', '133056641_Untitled475_2.jpg');
INSERT INTO car_color VALUES ('4', 'Màu xanh', '825714112_Untitleda51.jpg');
INSERT INTO car_color VALUES ('5', 'hjhj', '262176514_Untitled300_1.jpg');
INSERT INTO car_color VALUES ('6', 'jjjj', '725921631_BMW_535i_Gran_Turismo_3.0_AT_2011_TB.jpg');
INSERT INTO car_color VALUES ('7', 'hjjhhjj', '210876465_UntitledA82_4.jpg');
INSERT INTO car_color VALUES ('8', 'jjjjjj', '498107911_UntitledA84_4.jpg');

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

-- ----------------------------
-- Table structure for `content`
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content` (
  `content_id` int(11) NOT NULL AUTO_INCREMENT,
  `content_title` varchar(255) DEFAULT NULL,
  `title_plain` varchar(125) DEFAULT NULL,
  `content_detail` mediumtext,
  `content_summary` mediumtext,
  `created_date` datetime DEFAULT NULL,
  `viewed` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `seo_id` int(11) DEFAULT NULL,
  `locked` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`content_id`),
  KEY `fk_content_seo1` (`seo_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of content
-- ----------------------------
INSERT INTO content VALUES ('1', 'Giới thiệu chung về công ty', null, '\r\n<p><strong><em>Otoduc.vn</em></strong></p>\r\n<p><strong><em>&nbsp;</em></strong></p>\r\n<p>Xin tr&acirc;n trọng c&aacute;m ơn Qu&yacute; Kh&aacute;ch đ&atilde; đến với trang BMWnhậpkhẩu.vn, với ti&ecirc;u ch&iacute; cung cấp những th&ocirc;ng tin ch&iacute;nh &nbsp;x&aacute;c  về th&ocirc;ng số kỹ thuật, h&igrave;nh ảnh v&agrave; ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng của tập đo&agrave;n BMW  tại thị trường Việt Nam. BMWnhậpkhẩu.vn xin đưa tới Qu&yacute; Kh&aacute;ch những  th&ocirc;ng số kỹ thuật quan trọng nhất m&agrave; BMW d&agrave;nh ri&ecirc;ng cho điều kiện sử  dụng xe tại Việt Nam, gi&uacute;p cho xe đạt c&ocirc;ng suất cao nhất v&agrave; chi ph&iacute; &nbsp;sửa chữa bảo dưỡng thấp nhất. Với phương thức thanh to&aacute;n linh hoạt , như &nbsp;mua trả g&oacute;p , thu&ecirc; &nbsp;mua t&agrave;i &nbsp;ch&iacute;nh &nbsp;mua gi&aacute; CIF , BMWnhậpkhẩu.vn sẵn &nbsp;s&agrave;ng gi&uacute;p &nbsp;Qu&yacute; Kh&aacute;ch &nbsp;trở &nbsp;th&agrave;nh &nbsp;chủ &nbsp;sở &nbsp;hữu &nbsp;của &nbsp;những chiếc &nbsp;xe BMW hiện đại , sang trọng , năng động &nbsp;m&agrave; tập &nbsp;đo&agrave;n BMW đang d&agrave;nh cho c&aacute;c Kh&aacute;ch H&agrave;ng tr&ecirc;n to&agrave;n Thế Giới . BMWnhậpkhẩu.vn sẵn s&agrave;ng gi&uacute;p Qu&yacute; Kh&aacute;ch đặt h&agrave;ng cho xe BMW 320i, 325i ,&nbsp;523i, 528i&nbsp;, 730Li, 740Li, 750Li ,760Li , Z4 23i, X1 18i, X1 28i , X3 28i, X5 35i,&nbsp;X6 35i ,&nbsp; &hellip; với c&aacute;c ưu điểm nổi bật :</p>\r\n<ul>\r\n<li><strong>Xe mới 100%, nhập khẩu nguy&ecirc;n chiếc từ Đức.</strong><strong>&nbsp;</strong></li>\r\n<li><strong>Series xe mới nhất .</strong></li>\r\n<li><strong>Phi&ecirc;n bản nhiệt đới .</strong></li>\r\n<li><strong>Lựa&nbsp; chọn phụ kiện theo y&ecirc;u cầu . </strong></li>\r\n<li><strong>Bảo h&agrave;nh 2 năm kh&ocirc;ng giới hạn km ,</strong> \r\n<ul>\r\n<li><strong>Dịch vụ giao xe tận nơi.</strong></li>\r\n<li>&nbsp;<strong>Dịch vụ tr&ocirc;ng xe trong trung t&acirc;m H&agrave; Nội</strong></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<p><strong>&nbsp;</strong></p>\r\n<p>Để được tư vấn về sản phẩm BMW v&agrave; đăng k&yacute; l&aacute;i thử c&aacute;c d&ograve;ng xe sang trọng BMW, vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i theo địa chỉ:</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Phạm L&ecirc; Thắng</strong></p>\r\n<p>Tel: <strong>&nbsp;0913002615, 0932235678</strong></p>\r\n', '<iframe height=\"390\" frameborder=\"0\" width=\"550\" allowfullscreen=\"\" src=\"http://www.youtube.com/embed/S-DiWJ9TzNw\">\r\n</iframe>', '2011-11-09 22:39:10', null, null, null, '0');
INSERT INTO content VALUES ('20', 'Thủ tục mua xe dành cho cá nhân', null, '\r\n<p style=\"text-align: left;\"><strong>﻿﻿﻿</strong></p>\r\n<p style=\"text-align: center;\"><span id=\"ctl00_cntRightNavBar_NewsContent1\"><span style=\"font-family: Arial; font-size: x-small;\"><span style=\"font-family: Arial; font-size: 13.5pt;\">HƯỚNG DẪN THỦ TỤC MUA XE&nbsp;BMW TRẢ G&Oacute;P</span></span></span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #ff0000;\"><strong>C&Aacute; NH&Acirc;N MUA </strong></span></p>\r\n<p>Sao y hộ khẩu tại TP H&agrave; Nội.<br />Sao y CMND.<br />Giấy chứng nhận độc th&acirc;n hoặc giấy kết h&ocirc;n.<br />Chứng minh thu nhập bằng: hợp đồng lao động, bảng lương, sổ tiết kiệm, t&agrave;i khoản c&aacute; nh&acirc;n.<br />C&aacute; nh&acirc;n sở hữu t&agrave;i sản c&oacute; gi&aacute; trị: nh&agrave; cửa, đất đai, c&aacute;c loại &ocirc; t&ocirc; , m&aacute;y m&oacute;c, d&acirc;y chuyền nh&agrave; m&aacute;y, nh&agrave; xưởng,..</p>\r\n<p>Hợp đồng cho thu&ecirc; xe, thu&ecirc; nh&agrave;, cho thu&ecirc; xưởng, giấy g&oacute;p vốn, cổ phần, cổ phiếu, tr&aacute;i phiếu.</p>\r\n<p>Nếu  c&aacute; nh&acirc;n c&oacute; c&ocirc;ng ty ri&ecirc;ng m&agrave; thu nhập chủ yếu từ c&ocirc;ng ty th&igrave; th&ecirc;m: b&aacute;o  c&aacute;o thuế, b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh, bảng lương, bảng chia lợi nhuận từ c&ocirc;ng ty.  Giấy ph&eacute;p đăng k&yacute; kinh doanh.</p>\r\n<p>Ho&aacute; đơn chi ph&iacute; c&aacute; nh&acirc;n c&aacute;c th&aacute;ng gần nhất: điện thoại, chi ph&iacute; giao dịch l&agrave;m ăn.</p>\r\n<p>Trong  trường hợp c&aacute; nh&acirc;n mua kh&ocirc;ng đủ điều kiện, c&oacute; thể nhờ người th&acirc;n c&oacute; khả  năng thu nhập tốt l&agrave;m giấy bảo l&atilde;nh cho Ng&acirc;n h&agrave;ng thẩm định.<br />Đơn xin vay vốn Ng&acirc;n h&agrave;ng v&agrave; phương &aacute;n trả l&atilde;i ( theo mẫu của Ng&acirc;n h&agrave;ng ).</p>\r\n<p style=\"text-align: center;\"><span style=\"color: #ff0000;\"><strong>NG&Acirc;N H&Agrave;NG HOẶC C&Ocirc;NG TY CHO THU&Ecirc; T&Agrave;I CH&Iacute;NH SẼ T&Agrave;I TRỢ</strong></span></p>\r\n<p>Ng&acirc;n h&agrave;ng<br />Mức t&agrave;i trợ th&ocirc;ng thường 75% tr&ecirc;n t&agrave;i sản thế chấp.<br />Thời gian tối đa 5 năm.<br />L&atilde;i suất th&ocirc;ng thường của NHTMCP : 1,0625%/th&aacute;ng.<br />Thời gian thẩm định hồ sơ sau khi nhận đầy đủ 24 giờ.<br />Chi ph&iacute; : ph&iacute; thủ tục h&agrave;nh ch&aacute;nh .<br />Thủ  tục h&agrave;nh ch&aacute;nh tại ng&acirc;n h&agrave;ng gồm: ph&iacute; đảm bảo t&agrave;i sản, ph&iacute; mở t&agrave;i  khoản, ph&iacute; c&ocirc;ng chứng sao y, c&agrave; vẹt xe, mua bảo hiểm th&acirc;n xe 1,5% trị  gi&aacute; xe trong thời gian vay.<br />C&ocirc;ng ty cho thu&ecirc; t&agrave;i ch&iacute;nh<br />Mức t&agrave;i trợ tối đa 75% tr&ecirc;n t&agrave;i sản thế chấp.<br />Thời gian tối đa 05 năm.<br />L&atilde;i suất ưu đ&atilde;i : 1% - 1,1% th&aacute;ng.<br />Thời gian thẩm định hồ sơ sau khi nhận đầy đủ: 05 ng&agrave;y.<br />C&ocirc;ng ty cho thu&ecirc; t&agrave;i ch&iacute;nh đứng t&ecirc;n chủ xe, sau khi kh&aacute;ch trả hết nợ, c&ocirc;ng ty sẽ sang t&ecirc;n lại cho kh&aacute;ch.<br />Chi ph&iacute; : ph&iacute; thủ tục h&agrave;nh ch&iacute;nh<br />Thủ  tục h&agrave;nh ch&iacute;nh tại Ng&acirc;n h&agrave;ng gồm: ph&iacute; đảm bảo t&agrave;i sản, ph&iacute; mở t&agrave;i  khỏan, ph&iacute; c&ocirc;ng chứng sao y, c&agrave; vẹt xe, mua bảo hiểm th&acirc;n xe trong thời  gian vay.<br />Đơn xin vay vốn ng&acirc;n h&agrave;ng v&agrave; phương &aacute;n trả l&atilde;i (theo mẫu của c&ocirc;ng ty cho thu&ecirc; t&agrave;i ch&iacute;nh)</p>\r\n<p style=\"margin: 3.75pt 3.75pt 5pt 3pt; text-align: center;\"><strong><span style=\"font-family: Arial; color: #f01b24; font-size: 10pt;\">QUY TR&Igrave;NH MUA XE TRẢ G&Oacute;P</span></strong><span style=\"font-family: Arial;\"> </span></p>\r\n<p><span style=\"font-family: Arial; font-size: 10pt;\">Kh&aacute;ch h&agrave;ng chuẩn bị đầy đủ hồ sơ theo hướng dẫn của nh&acirc;n vi&ecirc;n t&iacute;n dụng.<br />Nh&acirc;n vi&ecirc;n thẩm định đến tận nh&agrave; để thẩm định v&agrave; lấy hồ sơ.<br />Sau khi c&oacute; giấy t&agrave;i trợ t&iacute;n dụng v&agrave; hồ sơ xe.<br />Kh&aacute;ch h&agrave;ng phải tiến h&agrave;nh đ&oacute;ng tiền xe v&agrave; chi ph&iacute; l&agrave;m thủ tục đăng k&yacute; xe.<br />Khi  c&oacute; biển số xe v&agrave; c&oacute; giấy hẹn, kh&aacute;ch h&agrave;ng l&ecirc;n ng&acirc;n h&agrave;ng k&yacute; hợp đồng t&iacute;n  dụng, đ&oacute;ng ph&iacute; h&agrave;nh ch&iacute;nh v&agrave; giấy nhận nợ của ng&acirc;n h&agrave;ng.<br />Khi  tiền chuyển khoản của ng&acirc;n h&agrave;ng v&agrave;o t&agrave;i khoản của BMW, th&igrave; kh&aacute;ch h&agrave;ng  mang theo CMND v&agrave; giấy giới thiệu l&ecirc;n nhận xe, k&yacute; bi&ecirc;n bản b&agrave;n giao xe  với giấy tờ xe hợp lệ theo ph&aacute;p luật.<br />Khi c&oacute; giấy đăng k&yacute; xe, Ng&acirc;n h&agrave;ng sẽ đi đăng k&yacute; v&agrave; sao y cho kh&aacute;ch h&agrave;ng một bản để sử dụng.<br />Trường  hợp kh&aacute;ch mua qua C&ocirc;ng ty cho thu&ecirc; t&agrave;i ch&iacute;nh th&igrave; kh&aacute;ch h&agrave;ng đ&oacute;ng tiền  xe tại C&ocirc;ng ty cho thu&ecirc; t&agrave;i ch&iacute;nh. Chi ph&iacute; đăng k&yacute; xe kh&aacute;ch h&agrave;ng phải  chịu, Bi&ecirc;n bản b&agrave;n giao xe 03 b&ecirc;n c&ugrave;ng k&yacute; để c&ocirc;ng ty cho thu&ecirc; t&agrave;i ch&iacute;nh  giải ng&acirc;n cho h&atilde;ng xe.<br />Trường  hợp kh&aacute;ch h&agrave;ng ở tỉnh mua xe trả g&oacute;p th&igrave; chi ph&iacute; Dịch vụ đi đăng k&yacute; xe  do kh&aacute;ch h&agrave;ng chịu, t&ugrave;y theo tỉnh xa hay gần m&agrave; thỏa thuận.</span></p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 95%;\"><span id=\"dnn_ctr525_dnnTITLE_lblTitle\" class=\"Text3\">C<span style=\"font-size: small;\"><strong>&ocirc;ng ty v&agrave; tổ chức</strong></span></span></td>\r\n<td><br /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n&nbsp;\r\n<p style=\"margin: 3.75pt 3.75pt 12pt 3pt;\"><strong><span style=\"color: #0000ff;\"><span style=\"font-family: Arial; font-size: 10pt;\"><span id=\"ctl00_cntRightNavBar_NewsContent1\" style=\"color: #274c88;\"><span style=\"font-size: small;\">Thủ tục mua xe d&agrave;nh cho c&ocirc;ng ty v&agrave; tổ chức </span></span><br /></span></span></strong><span style=\"font-family: Arial; font-size: 10pt;\"><br />Bằng việc li&ecirc;n kết với nhiều ng&acirc;n h&agrave;ng lớn,&nbsp;BMW lu&ocirc;n sẵn s&agrave;ng hỗ trợ kh&aacute;ch h&agrave;ng về vốn khi mua xe th&ocirc;ng qua h&igrave;nh thức trả g&oacute;p<span style=\"font-size: medium;\"><strong>.</strong></span></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: medium;\"><strong>HƯỚNG DẪN THỦ TỤC MUA XE&nbsp;BMW TRẢ G&Oacute;P</strong></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: Times New Roman; color: #ff0000;\">&nbsp;</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #ff0000;\"><strong>C&Ocirc;NG TY HOẶC DOANH NGHIỆP MUA XE</strong></span></p>\r\n<p>Giấy ph&eacute;p kinh doanh.<br />Giấy bổ nhiệm Gi&aacute;m đốc, bổ nhiệm kế to&aacute;n trưởng.<br />Giấy đăng k&yacute; sử dụng mẫu dấu (bản copy)<br />M&atilde; số thuế<br />B&aacute;o c&aacute;o thuế 01 năm gần nhất.<br />B&aacute;o c&aacute;o ho&aacute; đơn VAT 01 năm gần nhất.<br />B&aacute;o c&aacute;o t&agrave;i ch&iacute;nh 01 năm gần nhất.<br />Điều lệ c&ocirc;ng ty.<br />Bi&ecirc;n bản họp của hội đồng quản trị.<br />Hợp đồng kinh tế đầu ra, đầu v&agrave;o.<br />Giấy sở hữu cơ sở vật chất: nh&agrave; m&aacute;y, d&acirc;y chuyền, m&aacute;y m&oacute;c, thiết bị, nh&agrave; xưởng, &ocirc;t&ocirc; kh&aacute;c<br />Đơn xin vay vốn ng&acirc;n h&agrave;ng v&agrave; phương &aacute;n trả l&atilde;i ( theo mẫu của Ng&acirc;n h&agrave;ng ).</p>\r\n<p style=\"text-align: center;\"><span style=\"color: #ff0000;\"><strong>NG&Acirc;N H&Agrave;NG HOẶC C&Ocirc;NG TY CHO THU&Ecirc; T&Agrave;I CH&Iacute;NH SẼ T&Agrave;I TRỢ</strong></span></p>\r\n<p>Ng&acirc;n h&agrave;ng<br />Mức t&agrave;i trợ th&ocirc;ng thường 75% tr&ecirc;n t&agrave;i sản thế chấp.<br />Thời gian tối đa 5 năm.<br />L&atilde;i suất th&ocirc;ng thường của NHTMCP : 1,0625%/th&aacute;ng.<br />Thời gian thẩm định hồ sơ sau khi nhận đầy đủ 24 giờ.<br />Chi ph&iacute; : ph&iacute; thủ tục h&agrave;nh ch&aacute;nh .<br />Thủ  tục h&agrave;nh ch&aacute;nh tại ng&acirc;n h&agrave;ng gồm: ph&iacute; đảm bảo t&agrave;i sản, ph&iacute; mở t&agrave;i  khoản, ph&iacute; c&ocirc;ng chứng sao y, c&agrave; vẹt xe, mua bảo hiểm th&acirc;n xe 1,5% trị  gi&aacute; xe trong thời gian vay.<br />C&ocirc;ng ty cho thu&ecirc; t&agrave;i ch&iacute;nh<br />Mức t&agrave;i trợ tối đa 75% tr&ecirc;n t&agrave;i sản thế chấp.<br />Thời gian tối đa 05 năm.<br />L&atilde;i suất ưu đ&atilde;i : 1% - 1,1 th&aacute;ng.<br />Thời gian thẩm định hồ sơ sau khi nhận đầy đủ: 05 ng&agrave;y.<br />C&ocirc;ng ty cho thu&ecirc; t&agrave;i ch&iacute;nh đứng t&ecirc;n chủ xe, sau khi kh&aacute;ch trả hết nợ, c&ocirc;ng ty sẽ sang t&ecirc;n lại cho kh&aacute;ch.<br />Chi ph&iacute; : ph&iacute; thủ tục h&agrave;nh ch&iacute;nh<br />Thủ  tục h&agrave;nh ch&iacute;nh tại Ng&acirc;n h&agrave;ng gồm: ph&iacute; đảm bảo t&agrave;i sản, ph&iacute; mở t&agrave;i  khỏan, ph&iacute; c&ocirc;ng chứng sao y, c&agrave; vẹt xe, mua bảo hiểm th&acirc;n xe trong thời  gian vay.<br />Đơn xin vay vốn ng&acirc;n h&agrave;ng v&agrave; phương &aacute;n trả l&atilde;i (theo mẫu của c&ocirc;ng ty cho thu&ecirc; t&agrave;i ch&iacute;nh)</p>\r\n<p style=\"margin: 3.75pt 3.75pt 5pt 3pt; text-align: center;\"><strong><span style=\"font-family: Arial; color: #f01b24; font-size: 10pt;\">QUY TR&Igrave;NH MUA XE TRẢ G&Oacute;P</span></strong><span style=\"font-family: Times New Roman;\"> </span></p>\r\n<p style=\"margin: 3.75pt 3.75pt 5pt 3pt;\"><span style=\"font-family: Arial; font-size: 10pt;\">Kh&aacute;ch h&agrave;ng chuẩn bị đầy đủ hồ sơ theo hướng dẫn của nh&acirc;n vi&ecirc;n t&iacute;n dụng.<br />Nh&acirc;n vi&ecirc;n thẩm định đến tận nh&agrave; để thẩm định v&agrave; lấy hồ sơ.<br />Sau khi c&oacute; giấy t&agrave;i trợ t&iacute;n dụng v&agrave; hồ sơ xe.<br />Kh&aacute;ch h&agrave;ng phải tiến h&agrave;nh đ&oacute;ng tiền xe v&agrave; chi ph&iacute; l&agrave;m thủ tục đăng k&yacute; xe.<br />Khi  c&oacute; biển số xe v&agrave; c&oacute; giấy hẹn, kh&aacute;ch h&agrave;ng l&ecirc;n ng&acirc;n h&agrave;ng k&yacute; hợp đồng t&iacute;n  dụng, đ&oacute;ng ph&iacute; h&agrave;nh ch&iacute;nh v&agrave; giấy nhận nợ của ng&acirc;n h&agrave;ng.<br />Khi  tiền chuyển khoản của ng&acirc;n h&agrave;ng v&agrave;o t&agrave;i khoản của BMW, th&igrave; kh&aacute;ch h&agrave;ng  mang theo CMND v&agrave; giấy giới thiệu l&ecirc;n nhận xe, k&yacute; bi&ecirc;n bản b&agrave;n giao xe  với giấy tờ xe hợp lệ theo ph&aacute;p luật.<br />Khi c&oacute; giấy đăng k&yacute; xe, Ng&acirc;n h&agrave;ng sẽ đi đăng k&yacute; v&agrave; sao y cho kh&aacute;ch h&agrave;ng một bản để sử dụng.<br />Trường  hợp kh&aacute;ch mua qua C&ocirc;ng ty cho thu&ecirc; t&agrave;i ch&iacute;nh th&igrave; kh&aacute;ch h&agrave;ng đ&oacute;ng tiền  xe tại C&ocirc;ng ty cho thu&ecirc; t&agrave;i ch&iacute;nh. Chi ph&iacute; đăng k&yacute; xe kh&aacute;ch h&agrave;ng phải  chịu, Bi&ecirc;n bản b&agrave;n giao xe 03 b&ecirc;n c&ugrave;ng k&yacute; để c&ocirc;ng ty cho thu&ecirc; t&agrave;i ch&iacute;nh  giải ng&acirc;n cho h&atilde;ng xe.<br />Trường  hợp kh&aacute;ch h&agrave;ng ở tỉnh mua xe trả g&oacute;p th&igrave; chi ph&iacute; Dịch vụ đi đăng k&yacute; xe  do kh&aacute;ch h&agrave;ng chịu, t&ugrave;y theo tỉnh xa hay gần m&agrave; thỏa thuận.</span></p>\r\n', 'Bằng việc liên kết với nhiều ngân hàng lớn, BMW luôn sẵn sàng hỗ trợ khách hàng về vốn khi mua xe thông qua hình thức trả góp.', null, null, null, null, '0');

-- ----------------------------
-- Table structure for `feedback`
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(125) DEFAULT NULL,
  `email` varchar(125) DEFAULT NULL,
  `content` mediumtext,
  `category_id` tinyint(4) DEFAULT NULL,
  `readed` tinyint(4) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `groups`
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `role` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO groups VALUES ('1', 'Admin', '{\"news\":{\"index\":\"1\",\"create\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"video\":{\"index\":\"1\",\"create\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"banner\":{\"index\":\"1\",\"create\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"newgroup\":{\"index\":\"1\",\"create\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"color\":{\"index\":\"1\",\"create\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"setions\":{\"index\":\"1\",\"create\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"productgroup\":{\"index\":\"1\",\"create\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"product\":{\"index\":\"1\",\"create\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"content\":{\"index\":\"1\",\"create\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"contact\":{\"index\":\"1\",\"view\":\"1\",\"delete\":\"1\"},\"group\":{\"index\":\"1\",\"create\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"member\":{\"index\":\"1\",\"create\":\"1\",\"edit\":\"1\",\"history\":\"1\",\"delete\":\"1\",\"my\":\"1\",\"profile\":\"1\"},\"settings\":{\"index\":\"1\",\"home\":\"1\",\"footer\":\"1\"}}');

-- ----------------------------
-- Table structure for `group_news`
-- ----------------------------
DROP TABLE IF EXISTS `group_news`;
CREATE TABLE `group_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8_unicode_ci DEFAULT NULL,
  `setions_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of group_news
-- ----------------------------
INSERT INTO group_news VALUES ('1', 'ROLLS ROYCE', '5', '1');
INSERT INTO group_news VALUES ('2', 'MINI COOPE', '5', '1');
INSERT INTO group_news VALUES ('3', 'MOTO BMW', '5', '1');
INSERT INTO group_news VALUES ('4', 'lOGO BMW', '6', '1');
INSERT INTO group_news VALUES ('5', 'SERIES XE', '6', '1');
INSERT INTO group_news VALUES ('6', 'Kỹ Thuật Lái xe giỏi', '7', '1');
INSERT INTO group_news VALUES ('7', 'Kỹ Thuật lái xe đêm ', '7', '1');
INSERT INTO group_news VALUES ('8', 'Kỹ Thuật Lùi xe ', '7', '1');
INSERT INTO group_news VALUES ('9', 'Kỹ Thuật Lái xe khi trời mưa ', '7', '1');
INSERT INTO group_news VALUES ('10', 'Lời khuyên của chuyên gia', '7', '1');
INSERT INTO group_news VALUES ('11', 'KỸ THUẬT BMW', '8', '1');
INSERT INTO group_news VALUES ('12', 'BMW SẮP VỀ', '8', '1');
INSERT INTO group_news VALUES ('13', 'NGƯỜI ĐẸP VÀ XE', '8', '1');
INSERT INTO group_news VALUES ('14', 'BMW BẢN ĐỘ', '8', '1');
INSERT INTO group_news VALUES ('15', 'BMW và đối thủ', '8', '1');
INSERT INTO group_news VALUES ('16', 'Video BMW FILMS', '8', '1');
INSERT INTO group_news VALUES ('17', 'Đồ Dùng cá nhân ', '1', '1');
INSERT INTO group_news VALUES ('18', 'Đại sứ quán nước ngoài tại Việt Nam ', '1', '1');
INSERT INTO group_news VALUES ('19', 'Chọn màu xe theo phong thuỷ', '2', '1');
INSERT INTO group_news VALUES ('20', 'Khuyến mại của BMW', '9', '1');
INSERT INTO group_news VALUES ('21', 'Mua trả góp', '2', '1');
INSERT INTO group_news VALUES ('22', 'Mua xe giá CIF', '2', '1');
INSERT INTO group_news VALUES ('23', 'Thuế nhập khẩu ôtô ', '3', '1');
INSERT INTO group_news VALUES ('24', 'Ôtô BMW', '3', '1');
INSERT INTO group_news VALUES ('25', 'Miền Bắc ', '4', '1');
INSERT INTO group_news VALUES ('26', 'Miền Trung', '4', '1');
INSERT INTO group_news VALUES ('27', 'Miền Nam ', '4', '1');
INSERT INTO group_news VALUES ('28', 'Mua bán xe BMW cũ', '10', '1');

-- ----------------------------
-- Table structure for `group_product`
-- ----------------------------
DROP TABLE IF EXISTS `group_product`;
CREATE TABLE `group_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of group_product
-- ----------------------------
INSERT INTO group_product VALUES ('1', 'BMW 3 Series ', '1');
INSERT INTO group_product VALUES ('2', 'BMW 5 Series', '1');
INSERT INTO group_product VALUES ('3', 'BMW 7 Series', '1');
INSERT INTO group_product VALUES ('4', 'BMW 6 Series', '1');
INSERT INTO group_product VALUES ('5', 'BMW X1 2011', '1');
INSERT INTO group_product VALUES ('6', 'BMW X3 2011', '1');
INSERT INTO group_product VALUES ('7', 'BMW X5 2011', '1');
INSERT INTO group_product VALUES ('8', 'BMW X6 2011', '1');
INSERT INTO group_product VALUES ('9', 'BMW Z4 23i 2010', '1');

-- ----------------------------
-- Table structure for `members`
-- ----------------------------
DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(125) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(125) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `member_type` tinyint(4) NOT NULL,
  `address` varchar(125) DEFAULT NULL,
  `passport_no` varchar(45) DEFAULT NULL,
  `passport_date` varchar(45) DEFAULT NULL,
  `passport_address` varchar(125) DEFAULT NULL,
  `dept` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of members
-- ----------------------------
INSERT INTO members VALUES ('1', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin@gmail.com', null, '2011-11-12 08:36:24', '1', '', '0978667966', '1', 'Ha Noi', '0123456789', '1253154', 'HN', 'N/A');

-- ----------------------------
-- Table structure for `members_group`
-- ----------------------------
DROP TABLE IF EXISTS `members_group`;
CREATE TABLE `members_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `members_id` int(11) DEFAULT NULL,
  `groups_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_members_to_group_members` (`members_id`) USING BTREE,
  KEY `fk_members_to_group_groups` (`groups_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of members_group
-- ----------------------------

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `title_plain` varchar(125) DEFAULT NULL,
  `description` mediumtext,
  `content` text,
  `created_date` datetime DEFAULT NULL,
  `viewed` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `members_id` int(11) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_content_members1` (`members_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO news VALUES ('14', 'Chương trình Khuyến mãi cuối năm 2011', null, 'CHƯƠNG TRÌNH KHUYẾN MÃI LỚN NHẤT TRONG NĂM VỚI TỔNG TRỊ GIÁ 2,2 TỶ ĐỒNG (15.09.2011 – 14.12.2011).', '\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://bmwnhapkhau.vn/Pictures/BMW-EURO-AUTO-khuyen-mai-khung-cuoi-nam.jpg\" alt=\"\" width=\"450\" height=\"298\" /></p>\r\n<p>TP HCM, H&agrave; Nội, Ng&agrave;y 14.09.2011. Nh&agrave; nhập khẩu ch&iacute;nh thức của BMW tại  Việt Nam &ndash; BMW Euro Auto đ&atilde; tổ chức buổi họp b&aacute;o tại kh&aacute;ch sạn Sheraton  TPHCM v&agrave; Sofitel Plaza H&agrave; Nội nhằm c&ocirc;ng bố Chương tr&igrave;nh khuyến m&atilde;i lớn  nhất trong năm mang t&ecirc;n &ldquo;Niềm Vui L&agrave;m Chủ BMW, Sở Hữu BMW V&agrave;ng&rdquo;, với  tổng gi&aacute; trị giải thưởng l&ecirc;n đến 2,2 tỷ đồng d&agrave;nh cho kh&aacute;ch h&agrave;ng mua xe  BMW từ 15.09 đến 14.12.2011 <br /><br />CHƯƠNG TR&Igrave;NH KHUYẾN M&Atilde;I CUỐI NĂM &ldquo;NIỀM VUI L&Agrave;M CHỦ BMW, SỞ HỮU BMW V&Agrave;NG&rdquo;.<br /><br />Thể lệ chương tr&igrave;nh: Tr&ecirc;n to&agrave;n quốc, từ ng&agrave;y 15.09.2011 đến 14.12.2011 kh&aacute;ch h&agrave;ng sẽ nhận được:<br /><br />. 01 Phiếu tham dự r&uacute;t thăm tr&uacute;ng thưởng khi mua bất kỳ 01 xe &ocirc; t&ocirc; BMW 3 Series hoặc BMW X1<br />. 02 Phiếu tham dự r&uacute;t thăm tr&uacute;ng thưởng khi mua mỗi xe 5 Series, GT, X5, X6, Z4, 3 Series cab.<br /><br />Chương  tr&igrave;nh khuyến m&atilde;i &ldquo;Niềm Vui L&agrave;m Chủ BMW, Sở Hữu BMW V&agrave;ng&rdquo; do BMW Euro  Auto tổ chức c&oacute; cơ cấu giải thưởng mang gi&aacute; trị cao nhất trong những năm  qua v&agrave; chia đều cơ hội tr&uacute;ng thưởng cho Kh&aacute;ch H&agrave;ng của 2 miền Nam &amp;  Bắc.<br /><br />Cơ cấu Giải thưởng:<br /><br />. Giải Đặc Biệt d&agrave;nh cho Kh&aacute;ch H&agrave;ng may mắn bao gồm: <br /><br />01 m&ocirc; h&igrave;nh ch&iacute;nh h&atilde;ng BMW Series 3 Cabrio mui trần, một sản phẩm đẳng cấp<br />của Tập đo&agrave;n BMW chế t&aacute;c thủ c&ocirc;ng dựa tr&ecirc;n nguy&ecirc;n bản ngo&agrave;i đời thực, với sự tinh xảo đến từng chi tiết theo tỷ lệ 1:18. <br />Mỗi  xe m&ocirc; h&igrave;nh BMW đều mang theo số lượng v&agrave;ng trị gi&aacute; tương đương 01 tỷ  đồng. Mỗi lượng v&agrave;ng SBJ (Thần T&agrave;i Sacombank) được chọn l&agrave;m giải thưởng  của chương tr&igrave;nh tiềm ẩn nguốn năng lượng mạnh mẽ, với h&igrave;nh ảnh Thần T&agrave;i  được dập nổi 3D tinh xảo, sắc n&eacute;t, c&oacute; độ s&aacute;ng b&oacute;ng cao nhằm mong muốn  mang lại cho kh&aacute;ch h&agrave;ng sự t&agrave;i lộc, may mắn, ấm no v&agrave; sung t&uacute;c.<br /><br />. Giải Khuyến Kh&iacute;ch cho Kh&aacute;ch H&agrave;ng may mắn l&agrave;: <br /><br />01 Bộ trang sức SBJ bao gồm nhẫn, mặt d&acirc;y, b&ocirc;ng tai, chất liệu v&agrave;ng 14k.<br />Sức  quyến rũ của bộ trang sức SBJ biểu hiện th&ocirc;ng qua những đường n&eacute;t, họa  tiết tinh tế, s&aacute;ng tạo trong kiểu d&aacute;ng v&agrave; &yacute; nghĩa chắc chắn sẽ mang lại  cho người sở hữu một phong c&aacute;ch sang trọng v&agrave; ấn tượng.<br /><br />Theo BMW.VN</p>\r\n', '2011-11-12 10:29:15', null, '1', '1', '429779053_khuyen_mai_khung_cuoi_nam_small.jpg', '20', '1');
INSERT INTO news VALUES ('15', 'Kết quả chương trình đi thử xe M5 tại Tây Ban Nha', null, 'BMW Euro Auto cũng đã tổ chức Lễ rút thăm trúng thưởng Chương trình “Niềm vui là những trải nghiệm vô giá” dành cho những khách hàng đáp ứng đầy đủ các thể lệ của chương trình từ 09.08 đến 09.09.2011. Lễ rút thăm đã diễn ra thành công cùng sự hào hứng và hồi hộp của những khách hàng tham dự thông qua hình thức cầu truyền hình trực tiếp hai miền Nam Bắc. ', '\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://bmwnhapkhau.vn/Pictures/bmw-m5-ascari.jpg\" alt=\"\" width=\"601\" height=\"393\" /></p>\r\n<div>\r\n<p><span style=\"font-family: Arial; font-size: x-small;\">V&agrave; cuối c&ugrave;ng ban tổ  chức BMW Euro Auto đ&atilde; trao giải thưởng l&agrave; chuyến đi tham gia sự kiện M  POWER EXPERIENCE 2011 tổ chức tại miền Nam T&acirc;y Ban Nha v&agrave;o m&ugrave;a đ&ocirc;ng năm  nay (11/2011) cho 04 kh&aacute;ch h&agrave;ng may mắn nhất sở hữu cơ hội đến trải  nghiệm chiếc sedan nhanh nhất thế giới BMW M5 F10, th&ocirc;ng qua sự kiện.  Danh s&aacute;ch 04 kh&aacute;ch h&agrave;ng tr&uacute;ng thưởng như sau: Nguyễn Thị Mỹ Chi - 220  Khu Phố Mỹ Ho&agrave;ng, đường Phạm Th&aacute;i Bường, P. T&acirc;n Phong, Quận 7, TPHCM;  Nguyễn Văn Kịch - 2/69A L&ecirc; Lai, Quận Ninh Kiều, TP. Cần Thơ; Phan Như  Minh - 525/ 174 Huỳnh Văn B&aacute;nh P14, Quận Ph&uacute; Nhuận, TPHCM; Trần Thị Diền  - 29/11 Nguyễn Văn Thủ, P Đa Kao, Quận 1, TPHCM</span></p>\r\n<p><span style=\"font-family: Arial; font-size: x-small;\">Giải thưởng bao gồm v&eacute; m&aacute;y bay 2 chiều từ  Việt Nam đến s&acirc;n bay Sevilla, T&acirc;y Ban Nha. Ở tại Kh&aacute;ch sạn - Ốc đảo 5  sao Waldorf Astori Sevill tại La Boticaria, miền Nam T&acirc;y Ban Nha. Trực  thăng đưa đ&oacute;n đến đường đua chuy&ecirc;n biệt Ascari Race Resort, thuộc thị  trấn Ronda, T&acirc;y Ban Nha. Thử xe BMW M5 v&agrave; c&aacute;c d&ograve;ng xe M kh&aacute;c của BMW  tr&ecirc;n đường đua Ascari. Kh&aacute;ch h&agrave;ng tham gia chương tr&igrave;nh c&ograve;n c&oacute; dịp gặp  gỡ, giao lưu kết bạn c&ugrave;ng 900 người h&acirc;m mộ BMW đến từ khắp nơi tr&ecirc;n thế  giới tụ họp trong sự kiện đ&aacute;ng nhớ n&agrave;y. </span></p>\r\n</div>\r\n', '2011-11-12 10:29:23', null, '1', '1', '662048340_bmw_m5_ascari_small.jpg', '20', '6');
INSERT INTO news VALUES ('16', '3 năm nhìn lại dịch vụ đậu xe miễn phí BMW', null, 'Từ những ngày đầu của năm 2008, thấu hiểu những khó khăn mà hầu hết các khách hàng luôn gặp phải khi đối mặt với việc tìm nơi đỗ xe trong khu vực trung tâm TP.HCM (hầu như không còn chỗ vào các giờ cao điểm). BMW Euro Auto đã triển khai ý tưởng và ra đời Dịch vụ đậu xe miễn phí 24/7 – dành riêng cho các khách hàng của mình.', '\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://bmwnhapkhau.vn/Pictures/3_5.jpg\" alt=\"\" width=\"480\" height=\"325\" /></p>\r\n<p>Từ những ng&agrave;y đầu của năm 2008, thấu hiểu những kh&oacute; khăn m&agrave; hầu hết  c&aacute;c kh&aacute;ch h&agrave;ng lu&ocirc;n gặp phải khi đối mặt với việc t&igrave;m nơi đỗ xe trong  khu vực trung t&acirc;m TP.HCM (hầu như kh&ocirc;ng c&ograve;n chỗ v&agrave;o c&aacute;c giờ cao điểm).  BMW Euro Auto đ&atilde; triển khai &yacute; tưởng v&agrave; ra đời Dịch vụ đậu xe miễn ph&iacute;  24/7 &ndash; d&agrave;nh ri&ecirc;ng cho c&aacute;c kh&aacute;ch h&agrave;ng của m&igrave;nh.</p>\r\n<p>Trải qua hơn 3 năm phục vụ kh&aacute;ch h&agrave;ng, với đội ngũ nh&acirc;n vi&ecirc;n lu&ocirc;n t&uacute;c  trực 24/24 v&agrave; 7 ng&agrave;y trong tuần (ngay cả ng&agrave;y lễ v&agrave; chủ nhật), Euro  Auto lu&ocirc;n đảm bảo cung cấp Dịch vụ đậu xe miễn ph&iacute; thiết thực v&agrave; hữu &iacute;ch  nhất cho kh&aacute;ch h&agrave;ng tại bất cứ thời điểm n&agrave;o. &ldquo;Dịch vụ đậu xe miễn ph&iacute;&rdquo;  của Euro Auto vẫn lu&ocirc;n được hưởng ứng l&agrave; một &yacute; tưởng tuyệt vời v&agrave; li&ecirc;n  tục nhận được những phản hồi t&iacute;ch cực từ kh&aacute;ch h&agrave;ng trong suốt 3 năm  qua:</p>\r\n<p>V&agrave;o bất cứ khi n&agrave;o c&oacute; nhu cầu sử dụng dịch vụ, mọi kh&aacute;ch h&agrave;ng đều c&oacute;  thể sử dụng Dịch vụ đậu xe miễn ph&iacute; của BMW Euro Auto theo 1 trong 2  c&aacute;ch tiện dụng sau:</p>\r\n<p>1/. Nhận v&agrave; giao xe tại nơi kh&aacute;ch h&agrave;ng y&ecirc;u cầu: gọi số điện thoại  đường d&acirc;y n&oacute;ng v&agrave; cung cấp th&ocirc;ng tin về địa điểm v&agrave; thời gian nhận xe.  Trong v&ograve;ng 10 ph&uacute;t, nh&acirc;n vi&ecirc;n Euro Auto (mặc đồng phục v&agrave; đeo thẻ) sẽ  đến ghi giấy tờ, nhận ch&igrave;a kh&oacute;a v&agrave; mang xe về b&atilde;i đậu ri&ecirc;ng của Euro  Auto cất giữ. V&agrave; chỉ cần gọi lần nữa cho đường d&acirc;y n&oacute;ng khi kh&aacute;ch h&agrave;ng  c&oacute; nhu cầu nhận lại xe, th&ocirc;ng b&aacute;o địa điểm trước 10 ph&uacute;t nhằm tiết kiệm  thời gian chờ đợi của kh&aacute;ch h&agrave;ng.</p>\r\n<p>2/. Dịch vụ tự đậu xe: B&atilde;i đậu xe chuy&ecirc;n biệt, c&oacute; m&aacute;i che của BMW  Euro Auto lu&ocirc;n t&uacute;c trực đội ngũ nh&acirc;n vi&ecirc;n bảo vệ 24/24 giờ, nh&acirc;n vi&ecirc;n  điều xe, rửa xe, tạp vụ.</p>\r\n<p>Tiếp nối th&agrave;nh c&ocirc;ng trong suốt qu&aacute; tr&igrave;nh hoạt động tại TPHCM, với  mong muốn mang đến sự tận hưởng trọn vẹn niềm vui sau tay l&aacute;i c&ugrave;ng BMW.  Dịch vụ đậu xe miễn ph&iacute; 24/7 đ&atilde; được triển khai tại nội th&agrave;nh H&agrave; Nội&nbsp; từ  th&aacute;ng 11/2010 v&agrave; ngay lập tức cũng nhận được sự hưởng ứng nhiệt liệt từ  những kh&aacute;ch h&agrave;ng muốn khẳng định một đẳng cấp kh&aacute;c biệt.</p>\r\n<p>Với phương ch&acirc;m &ldquo;Vượt l&ecirc;n tr&ecirc;n cả sự mong đợi của kh&aacute;ch h&agrave;ng&rdquo; th&ocirc;ng  qua những hoạt động chăm s&oacute;c đặc biệt trong hơn 3 năm qua, những kh&aacute;ch  h&agrave;ng của BMW Euro Auto đều cảm thấy rất h&agrave;i l&ograve;ng với dịch vụ được xem l&agrave;  độc đ&aacute;o v&agrave; duy nhất hiện nay tại Việt Nam.</p>\r\n<p>* Đường d&acirc;y n&oacute;ng Dịch vụ đậu xe miễn ph&iacute; 24/7 của BMW Euro Auto:<br />&bull; Miền Nam 0983 276 276&nbsp; <br />&bull; Miền Bắc 01234 336 888</p>\r\n<p>Hiện nay ngo&agrave;i việc hỗ trợ kh&aacute;ch h&agrave;ng qua Dịch vụ đậu xe miễn ph&iacute;,  BMW Euro Auto tiếp tục mang đến NIỀM VUI mỗi ng&agrave;y cho kh&aacute;ch h&agrave;ng th&ocirc;ng  qua những dịch vụ:</p>\r\n<p>&bull; Dịch vụ đến tận nh&agrave; l&agrave;m thủ tục bảo hiểm, nhận xe sửa chữa v&agrave; bảo dưỡng d&agrave;nh cho kh&aacute;ch h&agrave;ng qu&aacute; bận rộn<br />&bull; Dịch vụ hỗ trợ tư vấn thắc mắc về kỹ thuật &amp; dịch vụ.<br />&bull; Dịch vụ cứu hộ khi xe gặp kh&oacute; khăn dọc đường trong khu vực TPHCM, H&agrave; Nội v&agrave; c&aacute;c tỉnh l&acirc;n cận.<br />&bull; Hỗ trợ t&agrave;i xế l&aacute;i xe miễn ph&iacute; khi kh&aacute;ch h&agrave;ng c&oacute; nhu cầu</p>\r\n<p>Tưng bừng ch&agrave;o mừng sinh nhật 03 tuổi &ldquo;Dịch vụ đậu xe miễn ph&iacute; 24/7&rdquo;  v&agrave; nhằm hỗ trợ Qu&yacute; kh&aacute;ch h&agrave;ng trong việc quyết định nhanh ch&oacute;ng mua xe  trước thời gian bị ảnh hưởng bởi việc tăng lệ ph&iacute; trước bạ v&agrave;o th&aacute;ng  9/2011. BMW Euro Auto &aacute;p dụng mức hỗ trợ hấp dẫn d&agrave;nh cho c&aacute;c kh&aacute;ch h&agrave;ng  mua xe trong khoảng thời gian từ 01/07 đến 01/08/2011:</p>\r\n<p>&nbsp;</p>\r\n<table border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"310\" valign=\"top\"><span style=\"font-family: Arial; font-size: x-small;\">Loại xe</span></td>\r\n<td width=\"162\" valign=\"top\"><span style=\"font-family: Arial; font-size: x-small;\">Mức hỗ trợ </span></td>\r\n</tr>\r\n<tr>\r\n<td width=\"310\" valign=\"top\"><span style=\"font-family: Arial; font-size: x-small;\">320i/ 325i</span></td>\r\n<td width=\"162\" valign=\"top\"><span style=\"font-family: Arial; font-size: x-small;\">17 triệu đồng</span></td>\r\n</tr>\r\n<tr>\r\n<td width=\"310\" valign=\"top\"><span style=\"font-family: Arial; font-size: x-small;\">320i Cab/ 325i Cab</span></td>\r\n<td width=\"162\" valign=\"top\"><span style=\"font-family: Arial; font-size: x-small;\">13 triệu đồng</span></td>\r\n</tr>\r\n<tr>\r\n<td width=\"310\" valign=\"top\"><span style=\"font-family: Arial; font-size: x-small;\">523i/ 528i </span></td>\r\n<td width=\"162\" valign=\"top\"><span style=\"font-family: Arial; font-size: x-small;\">13 triệu đồng</span></td>\r\n</tr>\r\n<tr>\r\n<td width=\"310\" valign=\"top\"><span style=\"font-family: Arial; font-size: x-small;\">535i GT/ X5 xDrive35i/ X6 xDrive35i</span></td>\r\n<td width=\"162\" valign=\"top\"><span style=\"font-family: Arial; font-size: x-small;\">17 triệu đồng</span></td>\r\n</tr>\r\n<tr>\r\n<td width=\"310\" valign=\"top\"><span style=\"font-family: Arial; font-size: x-small;\">730Li/ 740Li/ 750Li</span></td>\r\n<td width=\"162\" valign=\"top\"><span style=\"font-family: Arial; font-size: x-small;\">25 triệu đồng</span></td>\r\n</tr>\r\n<tr>\r\n<td width=\"310\" valign=\"top\"><span style=\"font-family: Arial; font-size: x-small;\">X1 sdrive18i/ X1 xDrive28i</span></td>\r\n<td width=\"162\" valign=\"top\"><span style=\"font-family: Arial; font-size: x-small;\">27 triệu đồng</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Để c&oacute; th&ocirc;ng tin chi tiết hơn, xin h&atilde;y li&ecirc;n hệ: 0913002615, 09322235678</p>\r\n', '2011-11-11 16:04:41', null, '1', '1', '388702393_3_5_small.jpg', '20', null);
INSERT INTO news VALUES ('17', 'Bộ tài chính đề nghị tăng lệ phí trước bạ ôtô ', null, 'Nhằm hạn chế ô tô chở người dưới 9 chỗ và lưu hành phương tiện cá nhân, có thể lệ phí trước bạ ô tô sẽ tăng lên 20% ', '\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://bmwnhapkhau.vn/Pictures/tung-duong3.jpg\" alt=\"\" width=\"500\" height=\"412\" /></p>\r\n<div id=\"newscontent\">\r\n<p style=\"font-family: Times New Roman; color: #333333; font-size: 12pt;\">Tổng  cục Thuế (Bộ T&agrave;i ch&iacute;nh) đ&atilde; đồng t&igrave;nh với đề xuất của Bộ C&ocirc;ng Thương về  việc đề nghị 2 th&agrave;nh phố lớn l&agrave; H&agrave; Nội v&agrave; TP.HCM c&ugrave;ng một số tỉnh, th&agrave;nh  phố kh&aacute;c n&acirc;ng lệ ph&iacute; trước bạ &ocirc;t&ocirc; l&ecirc;n 20% nhằm hạn chế nhập khẩu &ocirc;t&ocirc;  chở người dưới 9 chỗ ngồi v&agrave; lưu h&agrave;nh phương tiện c&aacute; nh&acirc;n.</p>\r\n<p style=\"font-family: Times New Roman; color: #333333; font-size: 12pt;\">Trong  văn bản vừa gửi tới Tổng cục Hải quan sau khi cơ quan n&agrave;y c&oacute; đề nghị  cho &yacute; kiến về kiến nghị c&aacute;c biện ph&aacute;p hạn chế nhập khẩu &ocirc; t&ocirc; nguy&ecirc;n  chiếc từ 9 chỗ ngồi chở xuống tại c&ocirc;ng văn số 279/BCT-XNK ng&agrave;y  5/10/2011, Tổng cục Thuế nhất tr&iacute; với kiến nghị của Bộ C&ocirc;ng Thương về  việc đề nghị c&aacute;c th&agrave;nh phố H&agrave; Nội, TP.HCM v&agrave; một số tỉnh th&agrave;nh phố kh&aacute;c  tăng lệ ph&iacute; trước bạ &ocirc;t&ocirc; từ mức 10% v&agrave; 12% hiện nay l&ecirc;n kịch khung 20%  theo quy định tại Nghị định số 45/2011/NĐ-CP ng&agrave;y 17/6/2011 của Ch&iacute;nh  phủ.</p>\r\n<p style=\"font-family: Times New Roman; color: #333333; font-size: 12pt;\">Về  kiến nghị Quốc hội điều chỉnh thuế suất thuế ti&ecirc;u thụ đặc biệt với &ocirc;t&ocirc;  kể từ năm 2012, Tổng cục Thuế cho biết thuế TTĐB với &ocirc;t&ocirc; chở người từ 9  chỗ ngồi chở xuống hiện đang &aacute;p dụng theo quy định tại Luật thuế TTĐB  năm 2008, do đ&oacute; kiến nghị điều chỉnh thuế TTĐB chỉ được thực hiện theo  lộ tr&igrave;nh ban h&agrave;nh Luật của Quốc hội.</p>\r\n<p style=\"font-family: Times New Roman; color: #333333; font-size: 12pt;\">Được  biết trước đ&oacute;, Cục T&agrave;i ch&iacute;nh Doanh nghiệp (Bộ T&agrave;i ch&iacute;nh) cũng gửi văn  bản tới Tổng cục Hải quan thống nhất với đề nghị tăng lệ ph&iacute; trước bạ  &ocirc;t&ocirc; dưới 9 chỗ ngồi l&ecirc;n 20% tại H&agrave; Nội, TP.HCM v&agrave; một số tỉnh th&agrave;nh  kh&aacute;c.</p>\r\n<div style=\"font-family: Times New Roman; color: #333333; font-size: 12pt;\">Theo  Nghị định số 45/2011/NĐ-CP ng&agrave;y 17/6/2011 của Ch&iacute;nh phủ c&oacute; hiệu lực từ  15/10/2011, khung lệ ph&iacute; trước bạ &ocirc;t&ocirc; đ&atilde; ch&iacute;nh thức tăng từ khung 10-15%  l&ecirc;n khung 10-20% v&agrave; mức thu cụ thể sẽ do Hội đồng nh&acirc;n d&acirc;n c&aacute;c tỉnh,  th&agrave;nh phố trực thuộc trung ương quyết định t&ugrave;y theo điều kiện cụ thể của  từng địa phương. Hiện tại, mức lệ ph&iacute; trước bạ tại H&agrave; Nội l&agrave; 12%, c&aacute;c  tỉnh th&agrave;nh phố c&ograve;n lại, kể cả TP.HCM, l&agrave; 10%.</div>\r\n<div style=\"font-family: Times New Roman; color: #333333; font-size: 12pt;\">&nbsp;</div>\r\n<div style=\"font-family: Times New Roman; color: #333333; font-size: 12pt;\"><span style=\"font-style: italic; font-family: Times New Roman; color: #333333; font-size: 12pt;\"><span style=\"font-style: normal; font-family: Times New Roman; color: #333333; font-size: 12pt;\">Theo </span>VNmedia</span></div>\r\n</div>\r\n', '2011-11-11 16:05:21', null, '1', '1', '514984131_tung_duong3_small.jpg', '23', null);
INSERT INTO news VALUES ('18', 'Phí cấp biển ôtô có thể lên tới 20 triệu đồng', null, 'Các loại ôtô dưới 10 chỗ ngồi không hoạt động kinh doanh vận tải sẽ có mức trần mức phí cấp biển lên tới 20 triệu đồng, theo quy định mới của Bộ Tài chính, tăng gấp 10 lần so với quy định hiện hành.\r\n\r\nTheo biểu phí cấp biển số do Bộ Tài chính ban hành hôm 21/12, việc tính phí cấp biển số được chia thành 3 khu vực I, II và III. Ứng với mỗi khu vực là các mức phí khác nhau, áp dụng đối với các trường hợp cấp mới, lần đầu đăng ký xe và cấp lại.', '\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://vnexpress.net/Files/Subject/3B/A2/48/CA/xe1.jpg\" alt=\"\" width=\"420\" height=\"279\" /></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #3366ff;\">Giấc mộng xe hơi đang xa vời với đại bộ phận d&acirc;n ch&uacute;ng. Ảnh: <em>Ho&agrave;ng H&agrave;.</em></span></p>\r\n<p class=\"Normal\">Trong đ&oacute;, c&aacute;c loại &ocirc;t&ocirc; dưới 10 chỗ ngồi (kể cả l&aacute;i xe)  kh&ocirc;ng hoạt động kinh doanh vận tải h&agrave;nh kh&aacute;ch sẽ chịu ph&iacute; từ 2 triệu  đồng đến 20 triệu đồng cho việc cấp mới biển số. Mức ph&iacute; n&agrave;y &aacute;p dụng đối  với khu vực I, gồm H&agrave; Nội v&agrave; TP HCM. Mức ph&iacute; 1 triệu đồng, &aacute;p dụng đối  với c&aacute;c tỉnh th&agrave;nh phố, tỉnh, thị x&atilde; kh&aacute;c thuộc khu vực II, trừ H&agrave; Nội  v&agrave; TP HCM. C&ograve;n mức ph&iacute; 200.000 đồng &aacute;p dụng đối với khu vực III l&agrave; c&aacute;c  tỉnh, th&agrave;nh, huyện, x&atilde;... c&ograve;n lại.</p>\r\n<p class=\"Normal\">C&aacute;c loại xe sơ-mi rơ-m&oacute;c &aacute;p dụng mức ph&iacute; 100.000-200.000 đồng (khu vực I) v&agrave; 100.000 đồng &aacute;p dụng với khu vực II v&agrave; III.</p>\r\n<p class=\"Normal\">Cũng theo quy định của Bộ T&agrave;i ch&iacute;nh, việc cấp biển số  xe m&aacute;y được t&iacute;nh theo gi&aacute; t&iacute;nh lệ ph&iacute; trước bạ. Đối với xe c&oacute; gi&aacute; trị từ  15 triệu đồng trở xuống, mức ph&iacute; &aacute;p dụng đối với v&ugrave;ng I từ 500.000 đồng  đến 1 triệu đồng; khu vực II &aacute;p dụng mức ph&iacute; 200.000 đồng v&agrave; mức 50.000  đồng &aacute;p dụng với khu vực III.</p>\r\n<p class=\"Normal\">C&aacute;c loại xe m&aacute;y c&oacute; gi&aacute; trị từ tr&ecirc;n 15 triệu đồng đến  40 triệu đồng c&oacute; mức ph&iacute; phổ biến theo thứ tự 3 v&ugrave;ng l&agrave;: 1-2 triệu đồng;  400.000 đồng v&agrave; 50.000 đồng. C&ograve;n đối với c&aacute;c loại xe c&oacute; gi&aacute; trị tr&ecirc;n 40  triệu đồng, lần lượt l&agrave;: 2-4 triệu đồng, 800.000 đồng v&agrave; 50.000 đồng.</p>\r\n<p class=\"Normal\">Cũng theo quy định của Bộ T&agrave;i ch&iacute;nh, c&aacute;c loại &ocirc;t&ocirc; v&agrave;  xe m&aacute;y cấp lại biển số cũng thay đổi mức ph&iacute; căn cứ theo khu vực. Trong  đ&oacute;, mức phổ biến đối với c&aacute;c loại &ocirc;t&ocirc; cấp lại biển số l&agrave; 50.000 đồng,  100.000 đồng v&agrave; 150.000 đồng. Ri&ecirc;ng c&aacute;c loại xe m&aacute;y cấp lại biển số sẽ  c&oacute; mức ph&iacute; l&agrave; 30.000 đồng.</p>\r\n<p class=\"Normal\">Quyết định n&agrave;y c&oacute; hiệu lực từ ng&agrave;y 5/2 tới. Căn cứ v&agrave;o  mức ph&iacute; tr&ecirc;n, Hội đồng nh&acirc;n d&acirc;n TP HCM v&agrave; H&agrave; Nội được ban h&agrave;nh mức thu  cụ thể ph&ugrave; hợp với t&igrave;nh h&igrave;nh thực tế tại địa phương.</p>\r\n<p class=\"Normal\">Nhằm hạn chế xe c&aacute;c phương tiện giao th&ocirc;ng g&acirc;y &ugrave;n tắc  tại địa b&agrave;n th&agrave;nh phố, hồi th&aacute;ng 3/2010, TP HCM l&agrave; đơn vị đầu ti&ecirc;n đề  xuất tăng ph&iacute; cấp biển xe l&ecirc;n 10 lần, tức từ 2 triệu đồng l&ecirc;n 20 triệu  đồng. Ngo&agrave;ira, cơ quan n&agrave;y cũng đề xuất tăng ph&iacute; trước bạ &ocirc;t&ocirc;, để kiểm  so&aacute;t phương tiện c&aacute; nh&acirc;n. Đồng thời TP HCM một lần nữa kiến nghị Ch&iacute;nh  phủ cho địa phương n&agrave;y được thu ph&iacute; lưu h&agrave;nh phương tiện.</p>\r\n<p class=\"Normal\"><strong>Hồng Anh( VnExpress.net)</strong></p>\r\n', '2011-11-11 16:05:42', null, '1', '1', '892272950_xe1.jpg', '23', null);
INSERT INTO news VALUES ('19', 'Những con đường thú vị nhất hành tinh', null, 'Không chỉ là nơi đi lại từ khu vực này đến khu vực khác. Không chỉ có ý nghĩa về thương mại, kinh tế, truyền thông. Những con đường chính là sợi dây liên kết giữa các nền văn hóa, các dân tộc và mỗi con người. ', '\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://bmwnhapkhau.vn/Pictures/Heavenly-Road-655x304.jpg\" alt=\"\" width=\"655\" height=\"304\" /></p>\r\n<p>Lịch sử của những con đường bắt đầu từ những lối m&ograve;n đi bộ. N&oacute; kết nối  giữa v&ugrave;ng đất n&agrave;y với v&ugrave;ng đất kh&aacute;c, từ xa tới gần. Ng&agrave;y nay, đường bộ  đ&atilde; hiện đại hơn gấp nhiều lần, n&oacute; c&oacute; khả năng kết nối xuy&ecirc;n ch&acirc;u lục,  qua n&uacute;i, qua s&ocirc;ng thậm ch&iacute; l&agrave; qua đại dương. N&oacute; r&uacute;t ngắn khoảng c&aacute;ch  giữa c&aacute;c v&ugrave;ng địa l&iacute;, n&oacute; trở th&agrave;nh nơi l&iacute; tưởng cho c&aacute;c phương tiện lưu  th&ocirc;ng tr&ecirc;n đ&oacute;.</p>\r\n<p><img src=\"http://autonet.com.vn/dataimages/201103/original/images609963_3d.jpg\" alt=\"\" width=\"800\" height=\"507\" /></p>\r\n<p>Như bất cứ thứ g&igrave; được tạo ra bởi con người. Đường cũng c&oacute; đường xấu,  đường đẹp, đường nguy hiểm, đường th&ocirc;ng minh. Dưới đ&acirc;y, ch&uacute;ng t&ocirc;i đang  muốn đề cập đến những con đường đẹp nhất, những con đường m&agrave; đi tr&ecirc;n n&oacute;,  người ta cảm thấy th&uacute; vị.</p>\r\n<p><span style=\"font-weight: bold;\">1. Đường Đại T&acirc;y Dương (Na Uy)</span></p>\r\n<p><img src=\"http://autonet.com.vn/dataimages/201103/original/images609964_1.jpg\" alt=\"\" width=\"800\" height=\"533\" /></p>\r\n<p>Đường Đại T&acirc;y Dương (Atlantic Ocean Road) được x&acirc;y dựng bắt đầu v&agrave;o ng&agrave;y  01/08/1983, th&ocirc;ng đường v&agrave;o ng&agrave;y 07/07/1989. Atlantic Ocean Road c&oacute;  tổng chiều d&agrave;i đường bộ l&agrave; 8.274 m&eacute;t, l&agrave; con đường kết nối duy nhất giữa  hai đ&ocirc; thị Eide v&agrave; Averoy.</p>\r\n<p><img src=\"http://autonet.com.vn/dataimages/201103/original/images609965_1e.jpg\" alt=\"\" width=\"800\" height=\"679\" /></p>\r\n', '2011-11-11 16:02:59', null, '1', '1', '864471436_Heavenly_Road_655x304_small.jpg', '17', null);

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(125) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_description` mediumtext COLLATE utf8_unicode_ci,
  `product_option` mediumtext COLLATE utf8_unicode_ci,
  `product_details` mediumtext COLLATE utf8_unicode_ci,
  `product_engine` mediumtext COLLATE utf8_unicode_ci,
  `product_price` float(11,0) DEFAULT NULL,
  `manufacturer` varchar(125) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_status` tinyint(4) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `warranty` tinyint(4) DEFAULT NULL,
  `product_images` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_group_product` int(11) DEFAULT NULL,
  `sold_out` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `product_cylinder` varchar(125) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_of_car` varchar(125) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transmission` varchar(125) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_of_seats` varchar(125) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO product VALUES ('15', 'BMW X6 xDrive35i 2011 ', '\r\n<ul>\r\n<li>M&agrave;u sơn c&oacute; &aacute;nh kim (nhiều m&agrave;u t&ugrave;y chọn )</li>\r\n<li>M&acirc;m hợp kim nh&ocirc;m nhẹ, nan h&igrave;nh ng&ocirc;i sao kiểu 232</li>\r\n<li>Bọc da cao cấp Nevada</li>\r\n<li>Ốp Aluminium</li>\r\n<li>Hệ thống kiểm so&aacute;t cự ly đỗ xe (PDC)</li>\r\n<li>Gương trong v&agrave; ngo&agrave;i xe tự điều chỉnh chống ch&oacute;i</li>\r\n<li>Gương chiếu hậu trong xe tự điều chỉnh chống ch&oacute;i</li>\r\n<li>Cảm biến mưa v&agrave; tự động điều chỉnh &aacute;nh s&aacute;ng đ&egrave;n</li>\r\n<li>Hệ thống đ&egrave;n x&ecirc;-non</li>\r\n<li>Hệ thống đ&egrave;n nội &amp; ngoại thất</li>\r\n<li>Ghế trước chỉnh điện với chế độ nhớ</li>\r\n<li>Hệ thống điều h&ograve;a tự động 2 v&ugrave;ng ri&ecirc;ng biệt</li>\r\n<li>Cốp sau tự động đ&oacute;ng mở</li>\r\n<li>Thảm s&agrave;n (trang bị tại VN)</li>\r\n<li>Trang bị gạt t&agrave;n thuốc v&agrave; mồi lửa</li>\r\n<li>Chuẩn bị chức năng CD đa đĩa</li>\r\n<li>Đồng hồ hiển thị số km</li>\r\n<li>Hệ thống &acirc;m thanh hifi</li>\r\n</ul>\r\n', '\r\n<ul>\r\n<li>Hệ thống hỗ trợ đ&aacute;nh l&aacute;i th&ocirc;ng minh</li>\r\n<li>Tự điều chỉnh n&acirc;ng cao gầm xe</li>\r\n<li>Camera de</li>\r\n<li>Hệ thống khởi động m&aacute;y, đ&oacute;ng mở cửa kh&ocirc;ng cần ch&igrave;a kho&aacute;</li>\r\n<li>Cửa h&iacute;t</li>\r\n<li>Bộ trang thiết bị thể thao</li>\r\n<li>Baga mui</li>\r\n<li>R&egrave;m che nắng cửa h&ocirc;ng</li>\r\n<li>Cửa sổ trời</li>\r\n<li>Ghế t&agrave;i xế v&agrave; h&agrave;nh kh&aacute;ch ph&iacute;a trước kiểu thể thao</li>\r\n<li>Hỗ trợ tựa lưng cho ghế t&agrave;i xế v&agrave; ghế h&agrave;nh kh&aacute;ch ph&iacute;a trước</li>\r\n<li>Hệ thống điều h&ograve;a kh&ocirc;ng kh&iacute; 4 v&ugrave;ng</li>\r\n<li>Ốp gỗ cao cấp</li>\r\n<li>Ghế sau 3 chỗ</li>\r\n<li>Điều chỉnh &aacute;nh s&aacute;ng đ&egrave;n</li>\r\n<li>Hệ thống kiểm so&aacute;t h&agrave;nh tr&igrave;nh với chức năng phanh</li>\r\n<li>Hệ thống chờ kết nối Bluetooth</li>\r\n<li>M&agrave;n h&igrave;nh DVD ph&iacute;a sau</li>\r\n<li>M&agrave;n h&igrave;nh tr&ecirc;n t&aacute;p l&ocirc;</li>\r\n<li>Chức năng TV</li>\r\n<li>Hệ thống &acirc;m thanh hifi Professional</li>\r\n<li>Cổng kết nối USB</li>\r\n<li>Hiển thị th&ocirc;ng số tr&ecirc;n k&iacute;nh chắn gi&oacute;</li>\r\n<li>DVD 6 đĩa (k&egrave;m chung option M&agrave;n h&igrave;nh tr&ecirc;n t&aacute;p l&ocirc; &amp; Hệ thống &acirc;m thanh hifi Professional)</li>\r\n<li>CD 6 đĩa</li>\r\n<li>Chức năng giảm n&oacute;ng</li>\r\n<li>M&acirc;m hợp kim nan h&igrave;nh chữ Y kiểu 214, 20inch</li>\r\n</ul>\r\n', '\r\n<ul>\r\n</ul>\r\n<ul>\r\n<li>G&oacute;i thiết bị phanh</li>\r\n<li>Bộ phận rửa kiếng xe</li>\r\n<li>Chức năng đọc đĩa d&agrave;nh cho khu vực Ch&acirc;u &Aacute;</li>\r\n<li>Cảnh b&aacute;o mức nhi&ecirc;n liệu</li>\r\n<li>Phi&ecirc;n bản cho kh&iacute; hậu nhiệt đới</li>\r\n<li>Điều khiển s&oacute;ng &acirc;m thanh</li>\r\n<li>Thiết lập chế độ tăng tốc</li>\r\n<li>Phi&ecirc;n bản tiếng Anh</li>\r\n<li>Động cơ thiết kế ph&ugrave; hợp nhi&ecirc;n liệu chỉ số ốc-tan thấp</li>\r\n<li>Hệ thống m&atilde; h&oacute;a code dữ liệu c&oacute; sẵn theo xe</li>\r\n<li>Sổ tay hướng dẫn sử dụng</li>\r\n<li>Chức năng tự động lock cửa khi xe vận h&agrave;nh</li>\r\n<li>G&oacute;i bảo vệ trong vận chuyển đường biển</li>\r\n<li>Khay d&aacute;n biển số</li>\r\n<li>Lớp c&aacute;ch nhiệt b&ecirc;n trong</li>\r\n</ul>\r\n<ul>\r\n</ul>\r\n', '\r\n<ul>\r\n<li>Thiết kế động cơ thẳng h&agrave;ng: R6/4</li>\r\n<li>Dung t&iacute;ch động cơ: 2979 cm3</li>\r\n<li>C&ocirc;ng suất cực đại: 225(306)/5800 kw(hp)/rpm</li>\r\n<li>M&ocirc;men xoắn cực đại: 450/1500-4000 Nm</li>\r\n<li>Thời gian tăng tốc từ 0 - 100km:&nbsp; 6.3s</li>\r\n<li>Vận tốc tối đa: 240 km/h</li>\r\n<li>Ti&ecirc;u hao nhi&ecirc;n liệu: 11.6l</li>\r\n<li>Chiều d&agrave;i cơ sở: 2933 mm</li>\r\n<li>K&iacute;ch thước (d&agrave;i x rộng x cao):&nbsp; 4877 / 1983 / 1696&nbsp; (mm)</li>\r\n</ul>\r\n', '3423000064', 'BMW', '1', null, '2', '4150391_Untitled300_1.jpg', '3', '1', '1', '2979', 'SUV', '6 số tự động', '5');
INSERT INTO product VALUES ('16', 'BMW 535i Gran Turismo 3.0 2011 ', '\r\n<ul>\r\n<li>M&agrave;u sơn c&oacute; &aacute;nh kim</li>\r\n<li>M&acirc;m hợp kim nh&ocirc;m nhẹ, nan k&eacute;p kiểu 234 - 18 inch</li>\r\n<li>Nội thất bọc da Dakota</li>\r\n<li>Ốp gỗ cao cấp</li>\r\n<li>Hệ thống phanh t&aacute;i sinh năng lượng</li>\r\n<li>Hệ thống kiểm so&aacute;t cự ly đỗ xe (PDC)</li>\r\n<li>Gương trong v&agrave; ngo&agrave;i xe tự điều chỉnh chống ch&oacute;i</li>\r\n<li>Gương chiếu hậu trong xe tự điều chỉnh chống ch&oacute;i</li>\r\n<li>Đ&egrave;n x&ecirc;-non với chức năng chiếu gần v&agrave; chiếu xa</li>\r\n<li>Ghế trước chỉnh điện với chế độ nhớ</li>\r\n<li>Tay l&aacute;i bọc da kiểu thể thao</li>\r\n<li>R&egrave;m che nắng ph&iacute;a sau chỉnh điện</li>\r\n<li>Điều h&ograve;a kh&ocirc;ng kh&iacute; tự động với chức năng mở rộng</li>\r\n<li>Cửa h&iacute;t</li>\r\n<li>Trang bị gạt t&agrave;n thuốc v&agrave; mồi lửa</li>\r\n<li>Hệ thống đ&egrave;n dọc th&acirc;n xe</li>\r\n<li>Thảm s&agrave;n (trang bị tại VN)</li>\r\n<li>Đồng hồ hiển thị số km</li>\r\n<li>Chuẩn bị chức năng Bluetooth cho điện thoại</li>\r\n<li>Hệ thống &acirc;m thanh hifi (12 loa, c&ocirc;ng suất &acirc;m ly 205W)</li>\r\n<li>Hệ thống giải tr&iacute; cho h&agrave;ng ghế sau</li>\r\n</ul>\r\n', '\r\n<ul>\r\n<li>Cốp sau tự động đ&oacute;ng mở</li>\r\n<li>Hệ thống ch&igrave;a kh&oacute;a th&ocirc;ng minh</li>\r\n<li>Cửa sổ trời với chức năng trượt điện</li>\r\n<li>Điều h&ograve;a kh&ocirc;ng kh&iacute; bốn v&ugrave;ng tự động</li>\r\n<li>Hệ thống rửa đ&egrave;n pha tự động</li>\r\n<li>Hệ thống điều chỉnh &aacute;nh s&aacute;ng đ&egrave;n th&ocirc;ng minh</li>\r\n<li>Hệ thống hỗ trợ tầm nh&igrave;n ban đ&ecirc;m </li>\r\n<li>Chức năng TV </li>\r\n<li>Hệ thống định vị to&agrave;n cầu</li>\r\n<li>Chức năng chuẩn bị DVD cho CD 6 đĩa</li>\r\n<li>Hệ thống giải tr&iacute; chuy&ecirc;n biệt</li>\r\n</ul>\r\n', '\r\n<ul class=\"jwts_tabbernav\">\r\n<li><a title=\" OPTIONS LỰA CHỌN\"> OPTIONS LỰA CHỌN</a></li>\r\n</ul>\r\n<ul>\r\n<li>Bộ phận rửa kiếng xe</li>\r\n<li>Hỗ trợ cung cấp điện</li>\r\n<li>Chức năng đọc đĩa d&agrave;nh cho khu vực Ch&acirc;u &Aacute;</li>\r\n<li>Hộp điều khiển chức năng hiển thị m&agrave;n h&igrave;nh Idrive</li>\r\n<li>Điều khiển s&oacute;ng &acirc;m thanh</li>\r\n<li>Phi&ecirc;n bản tiếng Anh</li>\r\n<li>Động cơ thiết kế ph&ugrave; hợp nhi&ecirc;n liệu chỉ số ốc-tan thấp</li>\r\n<li>Hệ thống m&atilde; h&oacute;a code dữ liệu c&oacute; sẵn theo xe</li>\r\n<li>Sổ tay hướng dẫn sử dụng</li>\r\n<li>Cảnh b&aacute;o bảo dưỡng dầu - 24 th&aacute;ng/30.000km</li>\r\n<li>Chức năng tự động lock cửa khi xe vận h&agrave;nh</li>\r\n<li>Chức năng điều chỉnh &aacute;nh s&aacute;ng đ&egrave;n ban ng&agrave;y</li>\r\n<li>Chức năng điều chỉnh &aacute;nh s&aacute;ng đ&egrave;n ban ng&agrave;y c&oacute; thể tự điều chỉnh</li>\r\n<li>G&oacute;i bảo vệ trong vận chuyển đường biển</li>\r\n<li>Khay d&aacute;n biển số</li>\r\n<li>Lớp c&aacute;ch nhiệt b&ecirc;n trong</li>\r\n</ul>\r\n', '\r\n<ul>\r\n<li>Thiết kế động cơ thẳng h&agrave;ng: In line/6/4</li>\r\n<li>Dung t&iacute;ch động cơ: 2979 cm3</li>\r\n<li>C&ocirc;ng suất cực đại: 225/5800 kw(hp)/rpm</li>\r\n<li>M&ocirc;men xoắn cực đại: 400/1.200-5.000 Nm</li>\r\n<li>Thời gian tăng tốc từ 0 - 100km:&nbsp; 6.6s</li>\r\n<li>Vận tốc tối đa: 250 km/h</li>\r\n<li>Ti&ecirc;u hao nhi&ecirc;n liệu: 8.9l</li>\r\n<li>Chiều d&agrave;i cơ sở: 3070 mm</li>\r\n<li>K&iacute;ch thước (d&agrave;i x rộng x cao):&nbsp; 4998 / 1901 / 1559&nbsp; (mm)</li>\r\n</ul>\r\n', '3379000064', 'BMW', '1', null, '2', '712890626_BMW_535i_Gran_Turismo_3.0_AT_2011_TB.jpg', '2', '1', '1', '', '', '', '');
INSERT INTO product VALUES ('17', 'BMW X6 xDrive35d', '\r\n<ul>\r\n<li><strong>Dung t&iacute;ch xi lanh (cc) :</strong>2993cc</li>\r\n<li><strong>Loại xe :</strong>SUV</li>\r\n<li><strong>Hộp số :</strong>6 số tự động</li>\r\n<li><strong>Số chỗ ngồi :</strong>5chỗ</li>\r\n</ul>\r\n', '\r\n<ul>\r\n<li><strong>Dung t&iacute;ch xi lanh (cc) :</strong>2993cc</li>\r\n<li><strong>Loại xe :</strong>SUV</li>\r\n<li><strong>Hộp số :</strong>6 số tự động</li>\r\n<li><strong>Số chỗ ngồi :</strong>5chỗ</li>\r\n</ul>\r\n', '\r\n<ul>\r\n<li><strong>Dung t&iacute;ch xi lanh (cc) :</strong>2993cc</li>\r\n<li><strong>Loại xe :</strong>SUV</li>\r\n<li><strong>Hộp số :</strong>6 số tự động</li>\r\n<li><strong>Số chỗ ngồi :</strong>5chỗ</li>\r\n</ul>\r\n', '\r\n<ul>\r\n<li><strong>Dung t&iacute;ch xi lanh (cc) :</strong>2993cc</li>\r\n<li><strong>Loại xe :</strong>SUV</li>\r\n<li><strong>Hộp số :</strong>6 số tự động</li>\r\n<li><strong>Số chỗ ngồi :</strong>5chỗ</li>\r\n</ul>\r\n', '40000000', 'BMW - X6', '1', null, '10', '469879151_3_5_small.jpg', '8', '1', '1', '', '', '', '');
INSERT INTO product VALUES ('18', 'BMW 320i 2011 ', '\r\n<div id=\"tab1\" class=\"tab_content\" style=\"display: block;\">\r\n<ul>\r\n<li>Thiết kế động cơ thẳng h&agrave;ng: R6/4</li>\r\n<li>Dung t&iacute;ch động cơ: 2979 cm3</li>\r\n<li>C&ocirc;ng suất cực đại: 225(306)/5800 kw(hp)/rpm</li>\r\n<li>M&ocirc;men xoắn cực đại: 450/1500-4000 Nm</li>\r\n<li>Thời gian tăng tốc từ 0 - 100km:&nbsp; 6.3s</li>\r\n<li>Vận tốc tối đa: 240 km/h</li>\r\n<li>Ti&ecirc;u hao nhi&ecirc;n liệu: 11.6l</li>\r\n<li>Chiều d&agrave;i cơ sở: 2933 mm</li>\r\n<li>K&iacute;ch thước (d&agrave;i x rộng x cao):&nbsp; 4877 / 1983 / 1696&nbsp; (mm)</li>\r\n</ul>\r\n</div>\r\n', '\r\n<div id=\"tab1\" class=\"tab_content\" style=\"display: block;\">\r\n<ul>\r\n<li>Thiết kế động cơ thẳng h&agrave;ng: R6/4</li>\r\n<li>Dung t&iacute;ch động cơ: 2979 cm3</li>\r\n<li>C&ocirc;ng suất cực đại: 225(306)/5800 kw(hp)/rpm</li>\r\n<li>M&ocirc;men xoắn cực đại: 450/1500-4000 Nm</li>\r\n<li>Thời gian tăng tốc từ 0 - 100km:&nbsp; 6.3s</li>\r\n<li>Vận tốc tối đa: 240 km/h</li>\r\n<li>Ti&ecirc;u hao nhi&ecirc;n liệu: 11.6l</li>\r\n<li>Chiều d&agrave;i cơ sở: 2933 mm</li>\r\n<li>K&iacute;ch thước (d&agrave;i x rộng x cao):&nbsp; 4877 / 1983 / 1696&nbsp; (mm)</li>\r\n</ul>\r\n</div>\r\n', '\r\n<div id=\"tab1\" class=\"tab_content\" style=\"display: block;\">\r\n<ul>\r\n<li>Thiết kế động cơ thẳng h&agrave;ng: R6/4</li>\r\n<li>Dung t&iacute;ch động cơ: 2979 cm3</li>\r\n<li>C&ocirc;ng suất cực đại: 225(306)/5800 kw(hp)/rpm</li>\r\n<li>M&ocirc;men xoắn cực đại: 450/1500-4000 Nm</li>\r\n<li>Thời gian tăng tốc từ 0 - 100km:&nbsp; 6.3s</li>\r\n<li>Vận tốc tối đa: 240 km/h</li>\r\n<li>Ti&ecirc;u hao nhi&ecirc;n liệu: 11.6l</li>\r\n<li>Chiều d&agrave;i cơ sở: 2933 mm</li>\r\n<li>K&iacute;ch thước (d&agrave;i x rộng x cao):&nbsp; 4877 / 1983 / 1696&nbsp; (mm)</li>\r\n</ul>\r\n</div>\r\n', '\r\n<div id=\"tab1\" class=\"tab_content\" style=\"display: block;\">\r\n<ul>\r\n<li>Thiết kế động cơ thẳng h&agrave;ng: R6/4</li>\r\n<li>Dung t&iacute;ch động cơ: 2979 cm3</li>\r\n<li>C&ocirc;ng suất cực đại: 225(306)/5800 kw(hp)/rpm</li>\r\n<li>M&ocirc;men xoắn cực đại: 450/1500-4000 Nm</li>\r\n<li>Thời gian tăng tốc từ 0 - 100km:&nbsp; 6.3s</li>\r\n<li>Vận tốc tối đa: 240 km/h</li>\r\n<li>Ti&ecirc;u hao nhi&ecirc;n liệu: 11.6l</li>\r\n<li>Chiều d&agrave;i cơ sở: 2933 mm</li>\r\n<li>K&iacute;ch thước (d&agrave;i x rộng x cao):&nbsp; 4877 / 1983 / 1696&nbsp; (mm)</li>\r\n</ul>\r\n</div>\r\n', '40000000', 'BMW', '1', null, '10', '637878418_BMW_X6_xdrive35i.png', '1', '1', '1', '2979', 'SVU', '6 số tự động', '5');
INSERT INTO product VALUES ('19', 'BMW X1 1.8i sDrive ', '\r\n<ul>\r\n<li>G&oacute;i thiết bị phanh</li>\r\n<li>Bộ phận rửa kiếng xe</li>\r\n<li>Chức năng đọc đĩa d&agrave;nh cho khu vực Ch&acirc;u &Aacute;</li>\r\n<li>Cảnh b&aacute;o mức nhi&ecirc;n liệu</li>\r\n<li>Phi&ecirc;n bản cho kh&iacute; hậu nhiệt đới</li>\r\n<li>Điều khiển s&oacute;ng &acirc;m thanh</li>\r\n<li>Thiết lập chế độ tăng tốc</li>\r\n<li>Phi&ecirc;n bản tiếng Anh</li>\r\n<li>Động cơ thiết kế ph&ugrave; hợp nhi&ecirc;n liệu chỉ số ốc-tan thấp</li>\r\n<li>Hệ thống m&atilde; h&oacute;a code dữ liệu c&oacute; sẵn theo xe</li>\r\n<li>Sổ tay hướng dẫn sử dụng</li>\r\n<li>Chức năng tự động lock cửa khi xe vận h&agrave;nh</li>\r\n<li>G&oacute;i bảo vệ trong vận chuyển đường biển</li>\r\n<li>Khay d&aacute;n biển số</li>\r\n<li>Lớp c&aacute;ch nhiệt b&ecirc;n trong</li>\r\n</ul>\r\n', '\r\n<ul>\r\n<li>G&oacute;i thiết bị phanh</li>\r\n<li>Bộ phận rửa kiếng xe</li>\r\n<li>Chức năng đọc đĩa d&agrave;nh cho khu vực Ch&acirc;u &Aacute;</li>\r\n<li>Cảnh b&aacute;o mức nhi&ecirc;n liệu</li>\r\n<li>Phi&ecirc;n bản cho kh&iacute; hậu nhiệt đới</li>\r\n<li>Điều khiển s&oacute;ng &acirc;m thanh</li>\r\n<li>Thiết lập chế độ tăng tốc</li>\r\n<li>Phi&ecirc;n bản tiếng Anh</li>\r\n<li>Động cơ thiết kế ph&ugrave; hợp nhi&ecirc;n liệu chỉ số ốc-tan thấp</li>\r\n<li>Hệ thống m&atilde; h&oacute;a code dữ liệu c&oacute; sẵn theo xe</li>\r\n<li>Sổ tay hướng dẫn sử dụng</li>\r\n<li>Chức năng tự động lock cửa khi xe vận h&agrave;nh</li>\r\n<li>G&oacute;i bảo vệ trong vận chuyển đường biển</li>\r\n<li>Khay d&aacute;n biển số</li>\r\n<li>Lớp c&aacute;ch nhiệt b&ecirc;n trong</li>\r\n</ul>\r\n', '\r\n<ul>\r\n<li>G&oacute;i thiết bị phanh</li>\r\n<li>Bộ phận rửa kiếng xe</li>\r\n<li>Chức năng đọc đĩa d&agrave;nh cho khu vực Ch&acirc;u &Aacute;</li>\r\n<li>Cảnh b&aacute;o mức nhi&ecirc;n liệu</li>\r\n<li>Phi&ecirc;n bản cho kh&iacute; hậu nhiệt đới</li>\r\n<li>Điều khiển s&oacute;ng &acirc;m thanh</li>\r\n<li>Thiết lập chế độ tăng tốc</li>\r\n<li>Phi&ecirc;n bản tiếng Anh</li>\r\n<li>Động cơ thiết kế ph&ugrave; hợp nhi&ecirc;n liệu chỉ số ốc-tan thấp</li>\r\n<li>Hệ thống m&atilde; h&oacute;a code dữ liệu c&oacute; sẵn theo xe</li>\r\n<li>Sổ tay hướng dẫn sử dụng</li>\r\n<li>Chức năng tự động lock cửa khi xe vận h&agrave;nh</li>\r\n<li>G&oacute;i bảo vệ trong vận chuyển đường biển</li>\r\n<li>Khay d&aacute;n biển số</li>\r\n<li>Lớp c&aacute;ch nhiệt b&ecirc;n trong</li>\r\n</ul>\r\n', '\r\n<ul>\r\n<li>G&oacute;i thiết bị phanh</li>\r\n<li>Bộ phận rửa kiếng xe</li>\r\n<li>Chức năng đọc đĩa d&agrave;nh cho khu vực Ch&acirc;u &Aacute;</li>\r\n<li>Cảnh b&aacute;o mức nhi&ecirc;n liệu</li>\r\n<li>Phi&ecirc;n bản cho kh&iacute; hậu nhiệt đới</li>\r\n<li>Điều khiển s&oacute;ng &acirc;m thanh</li>\r\n<li>Thiết lập chế độ tăng tốc</li>\r\n<li>Phi&ecirc;n bản tiếng Anh</li>\r\n<li>Động cơ thiết kế ph&ugrave; hợp nhi&ecirc;n liệu chỉ số ốc-tan thấp</li>\r\n<li>Hệ thống m&atilde; h&oacute;a code dữ liệu c&oacute; sẵn theo xe</li>\r\n<li>Sổ tay hướng dẫn sử dụng</li>\r\n<li>Chức năng tự động lock cửa khi xe vận h&agrave;nh</li>\r\n<li>G&oacute;i bảo vệ trong vận chuyển đường biển</li>\r\n<li>Khay d&aacute;n biển số</li>\r\n<li>Lớp c&aacute;ch nhiệt b&ecirc;n trong</li>\r\n</ul>\r\n', '5000000000', 'BMW', '1', null, '5', '509155274_Untitled300_1.jpg', '5', '1', '1', '2697', 'SNV', '6 số tự động', '5');
INSERT INTO product VALUES ('20', 'BMW 523i 2011', '\r\n<div id=\"tab3\" class=\"tab_content\" style=\"display: block;\">\r\n<ul>\r\n<li>M&agrave;u sơn c&oacute; &aacute;nh kim (nhiều m&agrave;u t&ugrave;y chọn )</li>\r\n<li>M&acirc;m hợp kim nh&ocirc;m nhẹ, nan h&igrave;nh ng&ocirc;i sao kiểu 232</li>\r\n<li>Bọc da cao cấp Nevada</li>\r\n<li>Ốp Aluminium</li>\r\n<li>Hệ thống kiểm so&aacute;t cự ly đỗ xe (PDC)</li>\r\n<li>Gương trong v&agrave; ngo&agrave;i xe tự điều chỉnh chống ch&oacute;i</li>\r\n<li>Gương chiếu hậu trong xe tự điều chỉnh chống ch&oacute;i</li>\r\n<li>Cảm biến mưa v&agrave; tự động điều chỉnh &aacute;nh s&aacute;ng đ&egrave;n</li>\r\n<li>Hệ thống đ&egrave;n x&ecirc;-non</li>\r\n<li>Hệ thống đ&egrave;n nội &amp; ngoại thất</li>\r\n<li>Ghế trước chỉnh điện với chế độ nhớ</li>\r\n<li>Hệ thống điều h&ograve;a tự động 2 v&ugrave;ng ri&ecirc;ng biệt</li>\r\n<li>Cốp sau tự động đ&oacute;ng mở</li>\r\n<li>Thảm s&agrave;n (trang bị tại VN)</li>\r\n<li>Trang bị gạt t&agrave;n thuốc v&agrave; mồi lửa</li>\r\n<li>Chuẩn bị chức năng CD đa đĩa</li>\r\n<li>Đồng hồ hiển thị số km</li>\r\n<li>Hệ thống &acirc;m thanh hifi</li>\r\n</ul>\r\n</div>\r\n', '\r\n<div id=\"tab3\" class=\"tab_content\" style=\"display: block;\">\r\n<ul>\r\n<li>M&agrave;u sơn c&oacute; &aacute;nh kim (nhiều m&agrave;u t&ugrave;y chọn )</li>\r\n<li>M&acirc;m hợp kim nh&ocirc;m nhẹ, nan h&igrave;nh ng&ocirc;i sao kiểu 232</li>\r\n<li>Bọc da cao cấp Nevada</li>\r\n<li>Ốp Aluminium</li>\r\n<li>Hệ thống kiểm so&aacute;t cự ly đỗ xe (PDC)</li>\r\n<li>Gương trong v&agrave; ngo&agrave;i xe tự điều chỉnh chống ch&oacute;i</li>\r\n<li>Gương chiếu hậu trong xe tự điều chỉnh chống ch&oacute;i</li>\r\n<li>Cảm biến mưa v&agrave; tự động điều chỉnh &aacute;nh s&aacute;ng đ&egrave;n</li>\r\n<li>Hệ thống đ&egrave;n x&ecirc;-non</li>\r\n<li>Hệ thống đ&egrave;n nội &amp; ngoại thất</li>\r\n<li>Ghế trước chỉnh điện với chế độ nhớ</li>\r\n<li>Hệ thống điều h&ograve;a tự động 2 v&ugrave;ng ri&ecirc;ng biệt</li>\r\n<li>Cốp sau tự động đ&oacute;ng mở</li>\r\n<li>Thảm s&agrave;n (trang bị tại VN)</li>\r\n<li>Trang bị gạt t&agrave;n thuốc v&agrave; mồi lửa</li>\r\n<li>Chuẩn bị chức năng CD đa đĩa</li>\r\n<li>Đồng hồ hiển thị số km</li>\r\n<li>Hệ thống &acirc;m thanh hifi</li>\r\n</ul>\r\n</div>\r\n', '\r\n<div id=\"tab3\" class=\"tab_content\" style=\"display: block;\">\r\n<ul>\r\n<li>M&agrave;u sơn c&oacute; &aacute;nh kim (nhiều m&agrave;u t&ugrave;y chọn )</li>\r\n<li>M&acirc;m hợp kim nh&ocirc;m nhẹ, nan h&igrave;nh ng&ocirc;i sao kiểu 232</li>\r\n<li>Bọc da cao cấp Nevada</li>\r\n<li>Ốp Aluminium</li>\r\n<li>Hệ thống kiểm so&aacute;t cự ly đỗ xe (PDC)</li>\r\n<li>Gương trong v&agrave; ngo&agrave;i xe tự điều chỉnh chống ch&oacute;i</li>\r\n<li>Gương chiếu hậu trong xe tự điều chỉnh chống ch&oacute;i</li>\r\n<li>Cảm biến mưa v&agrave; tự động điều chỉnh &aacute;nh s&aacute;ng đ&egrave;n</li>\r\n<li>Hệ thống đ&egrave;n x&ecirc;-non</li>\r\n<li>Hệ thống đ&egrave;n nội &amp; ngoại thất</li>\r\n<li>Ghế trước chỉnh điện với chế độ nhớ</li>\r\n<li>Hệ thống điều h&ograve;a tự động 2 v&ugrave;ng ri&ecirc;ng biệt</li>\r\n<li>Cốp sau tự động đ&oacute;ng mở</li>\r\n<li>Thảm s&agrave;n (trang bị tại VN)</li>\r\n<li>Trang bị gạt t&agrave;n thuốc v&agrave; mồi lửa</li>\r\n<li>Chuẩn bị chức năng CD đa đĩa</li>\r\n<li>Đồng hồ hiển thị số km</li>\r\n<li>Hệ thống &acirc;m thanh hifi</li>\r\n</ul>\r\n</div>\r\n', '\r\n<div id=\"tab3\" class=\"tab_content\" style=\"display: block;\">\r\n<ul>\r\n<li>M&agrave;u sơn c&oacute; &aacute;nh kim (nhiều m&agrave;u t&ugrave;y chọn )</li>\r\n<li>M&acirc;m hợp kim nh&ocirc;m nhẹ, nan h&igrave;nh ng&ocirc;i sao kiểu 232</li>\r\n<li>Bọc da cao cấp Nevada</li>\r\n<li>Ốp Aluminium</li>\r\n<li>Hệ thống kiểm so&aacute;t cự ly đỗ xe (PDC)</li>\r\n<li>Gương trong v&agrave; ngo&agrave;i xe tự điều chỉnh chống ch&oacute;i</li>\r\n<li>Gương chiếu hậu trong xe tự điều chỉnh chống ch&oacute;i</li>\r\n<li>Cảm biến mưa v&agrave; tự động điều chỉnh &aacute;nh s&aacute;ng đ&egrave;n</li>\r\n<li>Hệ thống đ&egrave;n x&ecirc;-non</li>\r\n<li>Hệ thống đ&egrave;n nội &amp; ngoại thất</li>\r\n<li>Ghế trước chỉnh điện với chế độ nhớ</li>\r\n<li>Hệ thống điều h&ograve;a tự động 2 v&ugrave;ng ri&ecirc;ng biệt</li>\r\n<li>Cốp sau tự động đ&oacute;ng mở</li>\r\n<li>Thảm s&agrave;n (trang bị tại VN)</li>\r\n<li>Trang bị gạt t&agrave;n thuốc v&agrave; mồi lửa</li>\r\n<li>Chuẩn bị chức năng CD đa đĩa</li>\r\n<li>Đồng hồ hiển thị số km</li>\r\n<li>Hệ thống &acirc;m thanh hifi</li>\r\n</ul>\r\n</div>\r\n', '6000000000', 'BMW', '1', null, '6', '467132569_Untitleda51.jpg', '4', '1', '1', '299', 'SUV', '6 số tự động', '5');
INSERT INTO product VALUES ('21', 'BMW X3 28i 2011 ', '\r\n<div id=\"tab4\" class=\"tab_content\" style=\"display: block;\">\r\n<ul>\r\n<li>Hệ thống hỗ trợ đ&aacute;nh l&aacute;i th&ocirc;ng minh</li>\r\n<li>Tự điều chỉnh n&acirc;ng cao gầm xe</li>\r\n<li>Camera de</li>\r\n<li>Hệ thống khởi động m&aacute;y, đ&oacute;ng mở cửa kh&ocirc;ng cần ch&igrave;a kho&aacute;</li>\r\n<li>Cửa h&iacute;t</li>\r\n<li>Bộ trang thiết bị thể thao</li>\r\n<li>Baga mui</li>\r\n<li>R&egrave;m che nắng cửa h&ocirc;ng</li>\r\n<li>Cửa sổ trời</li>\r\n<li>Ghế t&agrave;i xế v&agrave; h&agrave;nh kh&aacute;ch ph&iacute;a trước kiểu thể thao</li>\r\n<li>Hỗ trợ tựa lưng cho ghế t&agrave;i xế v&agrave; ghế h&agrave;nh kh&aacute;ch ph&iacute;a trước</li>\r\n<li>Hệ thống điều h&ograve;a kh&ocirc;ng kh&iacute; 4 v&ugrave;ng</li>\r\n<li>Ốp gỗ cao cấp</li>\r\n<li>Ghế sau 3 chỗ</li>\r\n<li>Điều chỉnh &aacute;nh s&aacute;ng đ&egrave;n</li>\r\n<li>Hệ thống kiểm so&aacute;t h&agrave;nh tr&igrave;nh với chức năng phanh</li>\r\n<li>Hệ thống chờ kết nối Bluetooth</li>\r\n<li>M&agrave;n h&igrave;nh DVD ph&iacute;a sau</li>\r\n<li>M&agrave;n h&igrave;nh tr&ecirc;n t&aacute;p l&ocirc;</li>\r\n<li>Chức năng TV</li>\r\n<li>Hệ thống &acirc;m thanh hifi Professional</li>\r\n<li>Cổng kết nối USB</li>\r\n<li>Hiển thị th&ocirc;ng số tr&ecirc;n k&iacute;nh chắn gi&oacute;</li>\r\n<li>DVD 6 đĩa (k&egrave;m chung option M&agrave;n h&igrave;nh tr&ecirc;n t&aacute;p l&ocirc; &amp; Hệ thống &acirc;m thanh hifi Professional)</li>\r\n<li>CD 6 đĩa</li>\r\n<li>Chức năng giảm n&oacute;ng</li>\r\n<li>M&acirc;m hợp kim nan h&igrave;nh chữ Y kiểu 214, 20inch</li>\r\n</ul>\r\n</div>\r\n<p>&nbsp;</p>\r\n', '\r\n<div id=\"tab4\" class=\"tab_content\" style=\"display: block;\">\r\n<ul>\r\n<li>Hệ thống hỗ trợ đ&aacute;nh l&aacute;i th&ocirc;ng minh</li>\r\n<li>Tự điều chỉnh n&acirc;ng cao gầm xe</li>\r\n<li>Camera de</li>\r\n<li>Hệ thống khởi động m&aacute;y, đ&oacute;ng mở cửa kh&ocirc;ng cần ch&igrave;a kho&aacute;</li>\r\n<li>Cửa h&iacute;t</li>\r\n<li>Bộ trang thiết bị thể thao</li>\r\n<li>Baga mui</li>\r\n<li>R&egrave;m che nắng cửa h&ocirc;ng</li>\r\n<li>Cửa sổ trời</li>\r\n<li>Ghế t&agrave;i xế v&agrave; h&agrave;nh kh&aacute;ch ph&iacute;a trước kiểu thể thao</li>\r\n<li>Hỗ trợ tựa lưng cho ghế t&agrave;i xế v&agrave; ghế h&agrave;nh kh&aacute;ch ph&iacute;a trước</li>\r\n<li>Hệ thống điều h&ograve;a kh&ocirc;ng kh&iacute; 4 v&ugrave;ng</li>\r\n<li>Ốp gỗ cao cấp</li>\r\n<li>Ghế sau 3 chỗ</li>\r\n<li>Điều chỉnh &aacute;nh s&aacute;ng đ&egrave;n</li>\r\n<li>Hệ thống kiểm so&aacute;t h&agrave;nh tr&igrave;nh với chức năng phanh</li>\r\n<li>Hệ thống chờ kết nối Bluetooth</li>\r\n<li>M&agrave;n h&igrave;nh DVD ph&iacute;a sau</li>\r\n<li>M&agrave;n h&igrave;nh tr&ecirc;n t&aacute;p l&ocirc;</li>\r\n<li>Chức năng TV</li>\r\n<li>Hệ thống &acirc;m thanh hifi Professional</li>\r\n<li>Cổng kết nối USB</li>\r\n<li>Hiển thị th&ocirc;ng số tr&ecirc;n k&iacute;nh chắn gi&oacute;</li>\r\n<li>DVD 6 đĩa (k&egrave;m chung option M&agrave;n h&igrave;nh tr&ecirc;n t&aacute;p l&ocirc; &amp; Hệ thống &acirc;m thanh hifi Professional)</li>\r\n<li>CD 6 đĩa</li>\r\n<li>Chức năng giảm n&oacute;ng</li>\r\n<li>M&acirc;m hợp kim nan h&igrave;nh chữ Y kiểu 214, 20inch</li>\r\n</ul>\r\n</div>\r\n<p>&nbsp;</p>\r\n', '\r\n<div id=\"tab4\" class=\"tab_content\" style=\"display: block;\">\r\n<ul>\r\n<li>Hệ thống hỗ trợ đ&aacute;nh l&aacute;i th&ocirc;ng minh</li>\r\n<li>Tự điều chỉnh n&acirc;ng cao gầm xe</li>\r\n<li>Camera de</li>\r\n<li>Hệ thống khởi động m&aacute;y, đ&oacute;ng mở cửa kh&ocirc;ng cần ch&igrave;a kho&aacute;</li>\r\n<li>Cửa h&iacute;t</li>\r\n<li>Bộ trang thiết bị thể thao</li>\r\n<li>Baga mui</li>\r\n<li>R&egrave;m che nắng cửa h&ocirc;ng</li>\r\n<li>Cửa sổ trời</li>\r\n<li>Ghế t&agrave;i xế v&agrave; h&agrave;nh kh&aacute;ch ph&iacute;a trước kiểu thể thao</li>\r\n<li>Hỗ trợ tựa lưng cho ghế t&agrave;i xế v&agrave; ghế h&agrave;nh kh&aacute;ch ph&iacute;a trước</li>\r\n<li>Hệ thống điều h&ograve;a kh&ocirc;ng kh&iacute; 4 v&ugrave;ng</li>\r\n<li>Ốp gỗ cao cấp</li>\r\n<li>Ghế sau 3 chỗ</li>\r\n<li>Điều chỉnh &aacute;nh s&aacute;ng đ&egrave;n</li>\r\n<li>Hệ thống kiểm so&aacute;t h&agrave;nh tr&igrave;nh với chức năng phanh</li>\r\n<li>Hệ thống chờ kết nối Bluetooth</li>\r\n<li>M&agrave;n h&igrave;nh DVD ph&iacute;a sau</li>\r\n<li>M&agrave;n h&igrave;nh tr&ecirc;n t&aacute;p l&ocirc;</li>\r\n<li>Chức năng TV</li>\r\n<li>Hệ thống &acirc;m thanh hifi Professional</li>\r\n<li>Cổng kết nối USB</li>\r\n<li>Hiển thị th&ocirc;ng số tr&ecirc;n k&iacute;nh chắn gi&oacute;</li>\r\n<li>DVD 6 đĩa (k&egrave;m chung option M&agrave;n h&igrave;nh tr&ecirc;n t&aacute;p l&ocirc; &amp; Hệ thống &acirc;m thanh hifi Professional)</li>\r\n<li>CD 6 đĩa</li>\r\n<li>Chức năng giảm n&oacute;ng</li>\r\n<li>M&acirc;m hợp kim nan h&igrave;nh chữ Y kiểu 214, 20inch</li>\r\n</ul>\r\n</div>\r\n<p>&nbsp;</p>\r\n', '\r\n<div id=\"tab4\" class=\"tab_content\" style=\"display: block;\">\r\n<ul>\r\n<li>Hệ thống hỗ trợ đ&aacute;nh l&aacute;i th&ocirc;ng minh</li>\r\n<li>Tự điều chỉnh n&acirc;ng cao gầm xe</li>\r\n<li>Camera de</li>\r\n<li>Hệ thống khởi động m&aacute;y, đ&oacute;ng mở cửa kh&ocirc;ng cần ch&igrave;a kho&aacute;</li>\r\n<li>Cửa h&iacute;t</li>\r\n<li>Bộ trang thiết bị thể thao</li>\r\n<li>Baga mui</li>\r\n<li>R&egrave;m che nắng cửa h&ocirc;ng</li>\r\n<li>Cửa sổ trời</li>\r\n<li>Ghế t&agrave;i xế v&agrave; h&agrave;nh kh&aacute;ch ph&iacute;a trước kiểu thể thao</li>\r\n<li>Hỗ trợ tựa lưng cho ghế t&agrave;i xế v&agrave; ghế h&agrave;nh kh&aacute;ch ph&iacute;a trước</li>\r\n<li>Hệ thống điều h&ograve;a kh&ocirc;ng kh&iacute; 4 v&ugrave;ng</li>\r\n<li>Ốp gỗ cao cấp</li>\r\n<li>Ghế sau 3 chỗ</li>\r\n<li>Điều chỉnh &aacute;nh s&aacute;ng đ&egrave;n</li>\r\n<li>Hệ thống kiểm so&aacute;t h&agrave;nh tr&igrave;nh với chức năng phanh</li>\r\n<li>Hệ thống chờ kết nối Bluetooth</li>\r\n<li>M&agrave;n h&igrave;nh DVD ph&iacute;a sau</li>\r\n<li>M&agrave;n h&igrave;nh tr&ecirc;n t&aacute;p l&ocirc;</li>\r\n<li>Chức năng TV</li>\r\n<li>Hệ thống &acirc;m thanh hifi Professional</li>\r\n<li>Cổng kết nối USB</li>\r\n<li>Hiển thị th&ocirc;ng số tr&ecirc;n k&iacute;nh chắn gi&oacute;</li>\r\n<li>DVD 6 đĩa (k&egrave;m chung option M&agrave;n h&igrave;nh tr&ecirc;n t&aacute;p l&ocirc; &amp; Hệ thống &acirc;m thanh hifi Professional)</li>\r\n<li>CD 6 đĩa</li>\r\n<li>Chức năng giảm n&oacute;ng</li>\r\n<li>M&acirc;m hợp kim nan h&igrave;nh chữ Y kiểu 214, 20inch</li>\r\n</ul>\r\n</div>\r\n<p>&nbsp;</p>\r\n', '520000000', 'BMW', '1', null, '4', '215087891_3_5_small.jpg', '6', '1', '1', '2345', 'SUV', '6 số tự động', '5');
INSERT INTO product VALUES ('22', 'BMW X5 35i 2011', '\r\n<div id=\"tab1\" class=\"tab_content\" style=\"display: block;\">\r\n<ul>\r\n<li>Thiết kế động cơ thẳng h&agrave;ng: R6/4</li>\r\n<li>Dung t&iacute;ch động cơ: 2979 cm3</li>\r\n<li>C&ocirc;ng suất cực đại: 225(306)/5800 kw(hp)/rpm</li>\r\n<li>M&ocirc;men xoắn cực đại: 450/1500-4000 Nm</li>\r\n<li>Thời gian tăng tốc từ 0 - 100km:&nbsp; 6.3s</li>\r\n<li>Vận tốc tối đa: 240 km/h</li>\r\n<li>Ti&ecirc;u hao nhi&ecirc;n liệu: 11.6l</li>\r\n<li>Chiều d&agrave;i cơ sở: 2933 mm</li>\r\n<li>K&iacute;ch thước (d&agrave;i x rộng x cao):&nbsp; 4877 / 1983 / 1696&nbsp; (mm)</li>\r\n</ul>\r\n</div>\r\n', '\r\n<div id=\"tab1\" class=\"tab_content\" style=\"display: block;\">\r\n<ul>\r\n<li>Thiết kế động cơ thẳng h&agrave;ng: R6/4</li>\r\n<li>Dung t&iacute;ch động cơ: 2979 cm3</li>\r\n<li>C&ocirc;ng suất cực đại: 225(306)/5800 kw(hp)/rpm</li>\r\n<li>M&ocirc;men xoắn cực đại: 450/1500-4000 Nm</li>\r\n<li>Thời gian tăng tốc từ 0 - 100km:&nbsp; 6.3s</li>\r\n<li>Vận tốc tối đa: 240 km/h</li>\r\n<li>Ti&ecirc;u hao nhi&ecirc;n liệu: 11.6l</li>\r\n<li>Chiều d&agrave;i cơ sở: 2933 mm</li>\r\n<li>K&iacute;ch thước (d&agrave;i x rộng x cao):&nbsp; 4877 / 1983 / 1696&nbsp; (mm)</li>\r\n</ul>\r\n</div>\r\n', '\r\n<div id=\"tab1\" class=\"tab_content\" style=\"display: block;\">\r\n<ul>\r\n<li>Thiết kế động cơ thẳng h&agrave;ng: R6/4</li>\r\n<li>Dung t&iacute;ch động cơ: 2979 cm3</li>\r\n<li>C&ocirc;ng suất cực đại: 225(306)/5800 kw(hp)/rpm</li>\r\n<li>M&ocirc;men xoắn cực đại: 450/1500-4000 Nm</li>\r\n<li>Thời gian tăng tốc từ 0 - 100km:&nbsp; 6.3s</li>\r\n<li>Vận tốc tối đa: 240 km/h</li>\r\n<li>Ti&ecirc;u hao nhi&ecirc;n liệu: 11.6l</li>\r\n<li>Chiều d&agrave;i cơ sở: 2933 mm</li>\r\n<li>K&iacute;ch thước (d&agrave;i x rộng x cao):&nbsp; 4877 / 1983 / 1696&nbsp; (mm)</li>\r\n</ul>\r\n</div>\r\n', '\r\n<div id=\"tab1\" class=\"tab_content\" style=\"display: block;\">\r\n<ul>\r\n<li>Thiết kế động cơ thẳng h&agrave;ng: R6/4</li>\r\n<li>Dung t&iacute;ch động cơ: 2979 cm3</li>\r\n<li>C&ocirc;ng suất cực đại: 225(306)/5800 kw(hp)/rpm</li>\r\n<li>M&ocirc;men xoắn cực đại: 450/1500-4000 Nm</li>\r\n<li>Thời gian tăng tốc từ 0 - 100km:&nbsp; 6.3s</li>\r\n<li>Vận tốc tối đa: 240 km/h</li>\r\n<li>Ti&ecirc;u hao nhi&ecirc;n liệu: 11.6l</li>\r\n<li>Chiều d&agrave;i cơ sở: 2933 mm</li>\r\n<li>K&iacute;ch thước (d&agrave;i x rộng x cao):&nbsp; 4877 / 1983 / 1696&nbsp; (mm)</li>\r\n</ul>\r\n</div>\r\n', '4600000000', 'BMW', '1', null, '6', '57189942_UntitledA52_8.jpg', '7', '1', '1', '1234', 'SVU', '6 số tự động', '5');
INSERT INTO product VALUES ('23', 'BMW Z4 23i 2010', '\r\n<p><strong>Thiết kế động cơ 6 xi lanh thẳng h&agrave;ng</strong></p>\r\n<p><strong>Dung t&iacute;ch động cơ 2497 cm3</strong></p>\r\n<p>C&ocirc;ng suất cực đại 150(204)/6400 kw(hp)/rpm</p>\r\n<p>M&ocirc;men xoắn cực đại 250/2750 Nm</p>\r\n<p>Thời gian tăng tốc từ 0 - 100k : 7.3 gi&acirc;y</p>\r\n<p>Vận tốc tối đa : 239km/h</p>\r\n<p>Ti&ecirc;u hao nhi&ecirc;n liệu : 8.2l/km</p>\r\n<p>Chiều d&agrave;i cơ sở 2496 mm</p>\r\n<p>K&iacute;ch thước (d&agrave;i x rộng x cao) : 4239 / 1961/ 1291</p>\r\n', '\r\n<p><strong>Thiết kế động cơ 6 xi lanh thẳng h&agrave;ng</strong></p>\r\n<p><strong>Dung t&iacute;ch động cơ 2497 cm3</strong></p>\r\n<p>C&ocirc;ng suất cực đại 150(204)/6400 kw(hp)/rpm</p>\r\n<p>M&ocirc;men xoắn cực đại 250/2750 Nm</p>\r\n<p>Thời gian tăng tốc từ 0 - 100k : 7.3 gi&acirc;y</p>\r\n<p>Vận tốc tối đa : 239km/h</p>\r\n<p>Ti&ecirc;u hao nhi&ecirc;n liệu : 8.2l/km</p>\r\n<p>Chiều d&agrave;i cơ sở 2496 mm</p>\r\n<p>K&iacute;ch thước (d&agrave;i x rộng x cao) : 4239 / 1961/ 1291</p>\r\n', '\r\n<p><strong>Thiết kế động cơ 6 xi lanh thẳng h&agrave;ng</strong></p>\r\n<p><strong>Dung t&iacute;ch động cơ 2497 cm3</strong></p>\r\n<p>C&ocirc;ng suất cực đại 150(204)/6400 kw(hp)/rpm</p>\r\n<p>M&ocirc;men xoắn cực đại 250/2750 Nm</p>\r\n<p>Thời gian tăng tốc từ 0 - 100k : 7.3 gi&acirc;y</p>\r\n<p>Vận tốc tối đa : 239km/h</p>\r\n<p>Ti&ecirc;u hao nhi&ecirc;n liệu : 8.2l/km</p>\r\n<p>Chiều d&agrave;i cơ sở 2496 mm</p>\r\n<p>K&iacute;ch thước (d&agrave;i x rộng x cao) : 4239 / 1961/ 1291</p>\r\n', '\r\n<p><strong>Thiết kế động cơ 6 xi lanh thẳng h&agrave;ng</strong></p>\r\n<p><strong>Dung t&iacute;ch động cơ 2497 cm3</strong></p>\r\n<p>C&ocirc;ng suất cực đại 150(204)/6400 kw(hp)/rpm</p>\r\n<p>M&ocirc;men xoắn cực đại 250/2750 Nm</p>\r\n<p>Thời gian tăng tốc từ 0 - 100k : 7.3 gi&acirc;y</p>\r\n<p>Vận tốc tối đa : 239km/h</p>\r\n<p>Ti&ecirc;u hao nhi&ecirc;n liệu : 8.2l/km</p>\r\n<p>Chiều d&agrave;i cơ sở 2496 mm</p>\r\n<p>K&iacute;ch thước (d&agrave;i x rộng x cao) : 4239 / 1961/ 1291</p>\r\n', '6499999744', 'BMW', '1', null, '6', '544708252_bmw_m5_ascari_small.jpg', '9', '1', '1', '1234', 'SVU', '6 số tự động', '5');

-- ----------------------------
-- Table structure for `seo`
-- ----------------------------
DROP TABLE IF EXISTS `seo`;
CREATE TABLE `seo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seo_title` varchar(125) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `seo_keyword` varchar(255) DEFAULT NULL,
  `seo_meta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of seo
-- ----------------------------
INSERT INTO seo VALUES ('8', '', '', '', '');
INSERT INTO seo VALUES ('9', '', '', '', '');
INSERT INTO seo VALUES ('7', 'ok men', 'qsoft viet nam', 'itlsvn', 'hello');
INSERT INTO seo VALUES ('10', 'title', 'description', 'keysword', 'meta');
INSERT INTO seo VALUES ('11', 'title', 'description', 'keysword', 'meta');
INSERT INTO seo VALUES ('12', '', '', '', '');
INSERT INTO seo VALUES ('13', '', '', '', '');
INSERT INTO seo VALUES ('14', '', '', '', '');
INSERT INTO seo VALUES ('15', '', '', '', '');
INSERT INTO seo VALUES ('16', '', '', '', '');
INSERT INTO seo VALUES ('17', '', '', '', '');
INSERT INTO seo VALUES ('18', '', '', '', '');
INSERT INTO seo VALUES ('19', '', '', '', '');
INSERT INTO seo VALUES ('20', '', '', '', '');
INSERT INTO seo VALUES ('21', '', '', '', '');
INSERT INTO seo VALUES ('22', '', '', '', '');
INSERT INTO seo VALUES ('23', '', '', '', '');
INSERT INTO seo VALUES ('24', '', '', '', '');
INSERT INTO seo VALUES ('25', '', '', '', '');
INSERT INTO seo VALUES ('26', '', '', '', '');
INSERT INTO seo VALUES ('27', '', '', '', '');
INSERT INTO seo VALUES ('28', 'Title', 'Description', 'Keyword', 'Meta tag');
INSERT INTO seo VALUES ('29', '', '', '', '');
INSERT INTO seo VALUES ('30', '', '', '', '');
INSERT INTO seo VALUES ('31', '', '', '', '');
INSERT INTO seo VALUES ('32', '', '', '', '');
INSERT INTO seo VALUES ('33', '', '', '', '');
INSERT INTO seo VALUES ('34', '', '', '', '');
INSERT INTO seo VALUES ('35', '', '', '', '');
INSERT INTO seo VALUES ('36', '', '', '', '');
INSERT INTO seo VALUES ('37', '', '', '', '');
INSERT INTO seo VALUES ('38', '', '', '', '');

-- ----------------------------
-- Table structure for `setions`
-- ----------------------------
DROP TABLE IF EXISTS `setions`;
CREATE TABLE `setions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of setions
-- ----------------------------
INSERT INTO setions VALUES ('1', 'NHỮNG THỨ CẦN MANG THEO KHI ĐI DÃ NGOẠI');
INSERT INTO setions VALUES ('2', 'HỖ TRỢ MUA XE BMW');
INSERT INTO setions VALUES ('3', 'TIN TỨC Ô TÔ BMW');
INSERT INTO setions VALUES ('4', 'ĐIỂM ĐẾN DU LỊCH');
INSERT INTO setions VALUES ('5', 'ANH EM BMW ');
INSERT INTO setions VALUES ('6', 'LỊCH SỬ BMW');
INSERT INTO setions VALUES ('7', 'KỸ THUẬT LÁI XE AN TOÀN ');
INSERT INTO setions VALUES ('8', 'BMW THƯ GIÃN');
INSERT INTO setions VALUES ('10', 'KHUYẾN MẠI BMW');
INSERT INTO setions VALUES ('11', 'MUA BÁN XE');

-- ----------------------------
-- Table structure for `tags`
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `tag` varchar(45) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `members_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tags_members1` (`members_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tags
-- ----------------------------

-- ----------------------------
-- Table structure for `testimonials`
-- ----------------------------
DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(125) DEFAULT NULL,
  `detail` text,
  `created_date` datetime DEFAULT NULL,
  `score` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `customer_countries_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_reviews_customers` (`customers_id`) USING BTREE,
  KEY `fk_testimonials_customer_countries1` (`customer_countries_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testimonials
-- ----------------------------

-- ----------------------------
-- Table structure for `video`
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` mediumtext COLLATE utf8_unicode_ci,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO video VALUES ('1', 'BMW Films - The Hire - Chosen ', '<iframe width=\"560\" height=\"315\" src=\"http://www.youtube.com/embed/s9QCX606Aw8\" frameborder=\"0\" allowfullscreen></iframe>', null);
INSERT INTO video VALUES ('5', 'BMW Films - The Hire - The Follow ', '<iframe width=\"560\" height=\"315\" src=\"http://www.youtube.com/embed/rIHGT8vWleQ\" frameborder=\"0\" allowfullscreen></iframe>', null);
INSERT INTO video VALUES ('6', '\"Star\" Madonna Guy Ritchie BMW Films ', '<iframe width=\"560\" height=\"315\" src=\"http://www.youtube.com/embed/29k1NHcmkMQ\" frameborder=\"0\" allowfullscreen></iframe>', null);
