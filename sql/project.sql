/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50545
Source Host           : localhost:3306
Source Database       : project

Target Server Type    : MYSQL
Target Server Version : 50545
File Encoding         : 65001

Date: 2018-07-09 20:16:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_info
-- ----------------------------
DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info` (
  `Admin_PK` int(11) NOT NULL AUTO_INCREMENT,
  `Admin_Password` varchar(32) NOT NULL,
  `Admin_Name` varchar(10) NOT NULL,
  `Admin_Cell` varchar(11) NOT NULL COMMENT '必须为11位',
  `Admin_email` varchar(30) DEFAULT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Admin_PK`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COMMENT='管理员账户';

-- ----------------------------
-- Records of admin_info
-- ----------------------------
INSERT INTO `admin_info` VALUES ('100', '25d55ad283aa400af464c76d713c07ad', '林天真', '15918746467', '15918746467@139.com', null);
INSERT INTO `admin_info` VALUES ('101', '25d55ad283aa400af464c76d713c07ad', 'default', '1', '1', '');
INSERT INTO `admin_info` VALUES ('102', '0122101542565455442', '', '', '', null);

-- ----------------------------
-- Table structure for cart_info
-- ----------------------------
DROP TABLE IF EXISTS `cart_info`;
CREATE TABLE `cart_info` (
  `Cart_PK` int(11) NOT NULL,
  `Goods_List` varchar(5000) DEFAULT NULL COMMENT '记录商品的主键号，用特殊符号#分隔',
  `Goods_Num` varchar(5000) DEFAULT NULL COMMENT '记录和商品列表对应的商品的数量，用特殊符号分隔',
  `Cart_Reserve_1` char(10) DEFAULT NULL,
  `Cart_Reserve_2` char(10) DEFAULT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Cart_PK`),
  CONSTRAINT `FK_User_Cart2` FOREIGN KEY (`Cart_PK`) REFERENCES `user_info` (`User_PK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户的唯一购物车，主键与用户相同，唯一绑定。';

-- ----------------------------
-- Records of cart_info
-- ----------------------------
INSERT INTO `cart_info` VALUES ('100000', '', '', null, null, null);
INSERT INTO `cart_info` VALUES ('100003', '100006#', '1#', null, null, null);
INSERT INTO `cart_info` VALUES ('100006', '', '', null, null, null);
INSERT INTO `cart_info` VALUES ('100007', '', '', null, null, null);
INSERT INTO `cart_info` VALUES ('100011', '', '', null, null, null);
INSERT INTO `cart_info` VALUES ('100012', '', '', null, null, null);
INSERT INTO `cart_info` VALUES ('100014', '', '', null, null, null);
INSERT INTO `cart_info` VALUES ('100015', '', '', null, null, null);
INSERT INTO `cart_info` VALUES ('100016', '', '', null, null, null);
INSERT INTO `cart_info` VALUES ('100017', '', '', null, null, null);

-- ----------------------------
-- Table structure for delivery_address
-- ----------------------------
DROP TABLE IF EXISTS `delivery_address`;
CREATE TABLE `delivery_address` (
  `Deliv_PK` int(11) NOT NULL,
  `Deliv_Cell` varchar(11) NOT NULL COMMENT '必须为11位',
  `Deliv_Name` varchar(10) NOT NULL,
  `Deliv_Address` varchar(200) NOT NULL,
  `Deliv_Zipcode` varchar(6) NOT NULL COMMENT '必须为6位',
  `Remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Deliv_PK`),
  CONSTRAINT `FK_User_Delivery_Address2` FOREIGN KEY (`Deliv_PK`) REFERENCES `user_info` (`User_PK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户的唯一记录的收货地址，主键与用户相同，唯一绑定。';

-- ----------------------------
-- Records of delivery_address
-- ----------------------------
INSERT INTO `delivery_address` VALUES ('100000', '', '', '', '', null);
INSERT INTO `delivery_address` VALUES ('100003', '13421166393', '林先生', '广东省揭阳市某某区某某街道', '522000', null);
INSERT INTO `delivery_address` VALUES ('100006', '13416137000', 'ljh', '1', '202020', null);
INSERT INTO `delivery_address` VALUES ('100007', '', '', '', '', null);
INSERT INTO `delivery_address` VALUES ('100011', '', '', '', '', null);
INSERT INTO `delivery_address` VALUES ('100012', '', '', '', '', null);
INSERT INTO `delivery_address` VALUES ('100014', '', '', '', '', null);
INSERT INTO `delivery_address` VALUES ('100015', '', '', '', '', null);
INSERT INTO `delivery_address` VALUES ('100016', '', '', '', '', null);
INSERT INTO `delivery_address` VALUES ('100017', '', '', '', '', null);

-- ----------------------------
-- Table structure for goods_info
-- ----------------------------
DROP TABLE IF EXISTS `goods_info`;
CREATE TABLE `goods_info` (
  `Goods_PK` int(11) NOT NULL AUTO_INCREMENT,
  `Goods_Name` varchar(100) DEFAULT NULL,
  `Goods_Type` int(11) NOT NULL COMMENT '商品类别，1为水果，2为加工品，3为粮蔬，4为水产，5为禽畜。若有补充累加1。',
  `Goods_Num` int(11) NOT NULL,
  `Goods_Price` float NOT NULL COMMENT '保留2位小数',
  `Goods_Mark` varchar(1) DEFAULT NULL,
  `Goods_Show` varchar(1) DEFAULT NULL,
  `Goods_Picture` varchar(200) DEFAULT NULL,
  `Goods_Season` int(11) NOT NULL,
  `Goods_Blossom` varchar(50) NOT NULL,
  `Goods_Fruit` varchar(50) NOT NULL,
  `Goods_Mature` varchar(50) NOT NULL,
  `Goods_Expiration` varchar(50) NOT NULL,
  `Goods_Reserve_1` varchar(255) DEFAULT NULL,
  `Goods_Reserve_2` text,
  `Remark` text,
  PRIMARY KEY (`Goods_PK`)
) ENGINE=InnoDB AUTO_INCREMENT=100032 DEFAULT CHARSET=utf8 COMMENT='商品的相关信息';

-- ----------------------------
-- Records of goods_info
-- ----------------------------
INSERT INTO `goods_info` VALUES ('100000', '鹰嘴桃(省内)', '1', '11997', '88', '0', '1', 'timg.jpg', '1', '3月份', '4-6月份', '7月份', '5-7天', '每箱8斤', 'yingzuitao.jpg#yingzuitao.jpg', null);
INSERT INTO `goods_info` VALUES ('100001', '高山名茶半斤', '2', '11999', '240', '0', '2', 'guomiao.jpg', '2', '无', '无', '无', '10-20年', '每包半斤，批发100斤起380元。', null, null);
INSERT INTO `goods_info` VALUES ('100002', '板栗', '3', '11000', '18', '0', '2', 'banli.jpg', '1', '3月份', '8-9月份', '10月份', '一年', '无', null, null);
INSERT INTO `goods_info` VALUES ('100003', '蜂蜜', '2', '11002', '268', '0', '1', 'fengmi.jpg', '2', '无', '无', '无', '1年', '每瓶2斤，冬糖268元，春糖168元。', null, null);
INSERT INTO `goods_info` VALUES ('100004', '三华李', '1', '11997', '288', '0', '1', 'sanhuali.jpg', '1', '2-3月份', '4-5月份', '6月份', '10天左右', '每箱10斤', null, null);
INSERT INTO `goods_info` VALUES ('100005', '水鱼', '4', '11128', '500', '0', '0', 'shuiyu.jpg', '-1', '无', '无', '不定期', '鲜活类', '无', null, null);
INSERT INTO `goods_info` VALUES ('100006', '早李', '1', '11973', '2', '0', '0', 'zaoli.jpg', '1', '2-3月份', '3-4月份', '4-5月份', '10天左右', '无', null, null);
INSERT INTO `goods_info` VALUES ('100007', '茶枝柑', '1', '11002', '5', '0', '2', 'chazhigan.jpg', '1', '5，6月份', '7，8月份', '10月份', '7天左右', '无', null, null);
INSERT INTO `goods_info` VALUES ('100008', '贡柑', '1', '11000', '7', '0', '2', 'gonggan.jpg', '1', '5，6月份', '7，8月份', '10月份', '7天左右', '每箱10斤', null, null);
INSERT INTO `goods_info` VALUES ('100009', '生猪', '5', '11918', '2000', '0', '0', 'zhu.jpg', '-1', '-1', '无', '无', '无', '无', null, null);
INSERT INTO `goods_info` VALUES ('100010', '砂糖桔', '1', '11998', '5', '0', '1', 'shatangju.jpg', '1', '1', '5，6月份', '7，8月份', '10月份', '每箱10斤', null, null);
INSERT INTO `goods_info` VALUES ('100011', '番薯', '3', '11994', '10', '0', '0', 'fanshu.jpg', '2', '2', '无', '无', '6/10月份', '无', null, null);
INSERT INTO `goods_info` VALUES ('100012', '水稻', '3', '111000', '2', '0', '0', 'shuidao.jpg', '2', '2', '无', '无', '7/12月份', '无', null, null);
INSERT INTO `goods_info` VALUES ('100013', '玉米', '3', '111000', '5', '0', '0', 'yumi.jpg', '4', '4', '无', '无', '每年每季', '无', null, null);
INSERT INTO `goods_info` VALUES ('100014', '百香果', '1', '111000', '10', '0', '2', 'baixiangguo.jpg', '2', '2', '4，7月份', '6，8，10月份', '9，11，1月份', '每箱10斤', null, null);
INSERT INTO `goods_info` VALUES ('100015', '薯干', '2', '11500', '20', '0', '0', 'shugan.jpg', '4', '无', '无', '每年每季', '5天左右', '无', null, null);
INSERT INTO `goods_info` VALUES ('100016', '生羊', '5', '11200', '100', '0', '0', 'yangrou.jpg', '1', '4-5月份', '6-7月份', '9-10月份', '一年或以上', '无', null, null);
INSERT INTO `goods_info` VALUES ('100017', '山地鸡', '5', '11200', '20', '0', '0', 'shandiji.jpg', '4', '无', '无', '无', '无', '无', null, null);
INSERT INTO `goods_info` VALUES ('100018', '火蒜', '3', '11500', '20', '0', '0', 'huosuan.jpg', '4', '无', '无', '每年每季', '5天左右', '无', null, null);
INSERT INTO `goods_info` VALUES ('100019', '果苗', '6', '111000', '10', '0', '0', 'guomiao.jpg', '1', '无', '无', '无', '无', '无', null, null);
INSERT INTO `goods_info` VALUES ('100020', '山坑鱼', '4', '11995', '2', '0', '0', 'shankengyu.jpg', '4', '无', '无', '无', '无', '无', null, null);
INSERT INTO `goods_info` VALUES ('100021', '竹鼠', '5', '11993', '2.5', '0', '0', 'zhushu.jpg', '-1', '无', '无', '无', '鲜活类', '无', null, null);
INSERT INTO `goods_info` VALUES ('100022', '高山茶油二斤', '2', '11998', '8', '0', '2', 'chayou.jpg', '-1', '无', '无', '无', '一年或以上', '每瓶2斤', null, null);
INSERT INTO `goods_info` VALUES ('100023', '荔枝', '1', '11000', '5', '0', '1', 'lizhi.jpg', '1', '4-5月', '5-6月', '6-7月', '10天', '无', null, null);
INSERT INTO `goods_info` VALUES ('100024', '红薯粉丝', '2', '12000', '78', '0', '0', 'shusifen.jpg', '-1', '无', '无', '无', '无', '每箱5斤', null, null);
INSERT INTO `goods_info` VALUES ('100025', '米粉丝', '2', '11997', '48', '0', '0', 'mifensi.jpg', '-1', '无', '无', '无', '无', '每箱5斤', null, null);
INSERT INTO `goods_info` VALUES ('100026', '香菇', '2', '11000', '0.01', '0', '0', 'xianggu.jpg', '-1', '无', '无', '无', '无', '无', null, null);
INSERT INTO `goods_info` VALUES ('100027', '木耳', '2', '11000', '0.01', '0', '0', 'muer.jpg', '-1', '无', '无', '无', '无', '无', null, null);
INSERT INTO `goods_info` VALUES ('100028', '灵芝', '2', '11000', '0.01', '0', '0', 'lingzhi.jpg', '-1', '无', '无', '无', '无', '无', null, null);
INSERT INTO `goods_info` VALUES ('100029', '高山名茶一斤', '2', '11998', '480', '0', '0', 'chaye2.jpg', '2', '无', '无', '无', '10-20年', '每包1斤，批发100斤起380元。', null, null);
INSERT INTO `goods_info` VALUES ('100030', '高山茶油十斤', '2', '11998', '8', '0', '0', 'chayou2.jpg', '-1', '无', '无', '无', '一年或以上', '每瓶10斤', null, null);
INSERT INTO `goods_info` VALUES ('100031', '鹰嘴桃(省外)', '1', '11999', '168', '0', '1', 'yingzuitao.jpg', '1', '3月份', '4-6月份', '7月份', '5-7天', '每箱8斤。省外发货城市：哈尔滨、长春、沈阳、北京、天津、廊坊、大连、烟台、青岛、威海、潍坊、济南、石家庄、太原、西安、郑州、芜湖、合肥、江苏、上海、浙江、长沙、武汉、南昌、重庆、成都、绵阳、简阳、贵阳、南宁、三亚。', 'yingzuitao.jpg#yingzuitao.jpg', null);

-- ----------------------------
-- Table structure for goods_log
-- ----------------------------
DROP TABLE IF EXISTS `goods_log`;
CREATE TABLE `goods_log` (
  `GL_PK` int(11) NOT NULL AUTO_INCREMENT,
  `Goods_PK` int(11) NOT NULL,
  `Goods_In` int(11) DEFAULT NULL,
  `Goods_Out` int(11) DEFAULT NULL,
  `Goods_PriceChange` float DEFAULT NULL COMMENT '保留2位小数',
  `GL_Time` datetime NOT NULL COMMENT '格式为YYYY-MM-DD HH:MM:SS',
  `GL_Reserve_1` varchar(5) DEFAULT NULL,
  `GL_Reserve_2` varchar(5) DEFAULT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`GL_PK`),
  KEY `FK_Goods_NumLog` (`Goods_PK`),
  CONSTRAINT `FK_Goods_NumLog` FOREIGN KEY (`Goods_PK`) REFERENCES `goods_info` (`Goods_PK`)
) ENGINE=InnoDB AUTO_INCREMENT=100063 DEFAULT CHARSET=utf8 COMMENT='商品的进货，出售，存储量的记录。供管理员统计，记录。';

-- ----------------------------
-- Records of goods_log
-- ----------------------------
INSERT INTO `goods_log` VALUES ('100000', '100000', '100', '0', '0', '2017-03-29 16:03:54', null, null, null);
INSERT INTO `goods_log` VALUES ('100001', '100006', '0', '5', '0', '2018-05-30 17:05:41', null, null, null);
INSERT INTO `goods_log` VALUES ('100002', '100006', '0', '5', '0', '2018-05-30 17:05:09', null, null, null);
INSERT INTO `goods_log` VALUES ('100003', '100006', '0', '5', '0', '2018-05-30 17:05:36', null, null, null);
INSERT INTO `goods_log` VALUES ('100004', '100006', '0', '5', '0', '2018-05-30 17:05:43', null, null, null);
INSERT INTO `goods_log` VALUES ('100005', '100006', '0', '5', '0', '2018-05-30 18:05:31', null, null, null);
INSERT INTO `goods_log` VALUES ('100006', '100006', '0', '5', '0', '2018-05-30 18:05:52', null, null, null);
INSERT INTO `goods_log` VALUES ('100007', '100000', '0', '1', '0', '2018-06-05 00:06:55', null, null, null);
INSERT INTO `goods_log` VALUES ('100008', '100004', '0', '1', '0', '2018-06-05 01:06:20', null, null, null);
INSERT INTO `goods_log` VALUES ('100009', '100006', '0', '1', '0', '2018-06-05 01:06:52', null, null, null);
INSERT INTO `goods_log` VALUES ('100010', '100004', '0', '1', '0', '2018-06-05 01:06:13', null, null, null);
INSERT INTO `goods_log` VALUES ('100011', '100000', '0', '1', '0', '2018-06-05 02:06:34', null, null, null);
INSERT INTO `goods_log` VALUES ('100012', '100003', '0', '1', '0', '2018-06-05 02:06:22', null, null, null);
INSERT INTO `goods_log` VALUES ('100013', '100003', '1', '0', '0', '2018-06-05 02:06:34', null, null, null);
INSERT INTO `goods_log` VALUES ('100014', '100005', '0', '1', '0', '2018-06-05 02:06:17', null, null, null);
INSERT INTO `goods_log` VALUES ('100015', '100005', '0', '1', '0', '2018-06-05 02:06:33', null, null, null);
INSERT INTO `goods_log` VALUES ('100016', '100006', '0', '1', '0', '2018-06-05 14:06:48', null, null, null);
INSERT INTO `goods_log` VALUES ('100017', '100006', '0', '1', '0', '2018-06-05 14:06:26', null, null, null);
INSERT INTO `goods_log` VALUES ('100018', '100006', '0', '1', '0', '2018-06-05 15:06:27', null, null, null);
INSERT INTO `goods_log` VALUES ('100019', '100006', '0', '1', '0', '2018-06-05 15:06:03', null, null, null);
INSERT INTO `goods_log` VALUES ('100020', '100000', '1', '0', '0', '2018-06-05 15:06:32', null, null, null);
INSERT INTO `goods_log` VALUES ('100021', '100000', '1', '0', '0', '2018-06-05 15:06:42', null, null, null);
INSERT INTO `goods_log` VALUES ('100022', '100006', '1', '0', '0', '2018-06-05 16:06:50', null, null, null);
INSERT INTO `goods_log` VALUES ('100023', '100004', '1', '0', '0', '2018-06-05 16:06:24', null, null, null);
INSERT INTO `goods_log` VALUES ('100024', '100006', '5', '0', '0', '2018-06-05 16:06:17', null, null, null);
INSERT INTO `goods_log` VALUES ('100025', '100000', '1', '0', '0', '2018-06-05 16:06:24', null, null, null);
INSERT INTO `goods_log` VALUES ('100026', '100005', '1', '0', '0', '2018-06-05 16:06:27', null, null, null);
INSERT INTO `goods_log` VALUES ('100027', '100003', '1', '0', '0', '2018-06-05 16:06:48', null, null, null);
INSERT INTO `goods_log` VALUES ('100028', '100005', '1', '0', '0', '2018-06-05 16:06:38', null, null, null);
INSERT INTO `goods_log` VALUES ('100029', '100006', '1', '0', '0', '2018-06-05 16:06:09', null, null, null);
INSERT INTO `goods_log` VALUES ('100030', '100000', '0', '1', '0', '2018-06-05 17:06:30', null, null, null);
INSERT INTO `goods_log` VALUES ('100031', '100000', '0', '1', '0', '2018-06-06 10:06:27', null, null, null);
INSERT INTO `goods_log` VALUES ('100032', '100000', '0', '1', '0', '2018-06-06 10:06:59', null, null, null);
INSERT INTO `goods_log` VALUES ('100033', '100000', '0', '1', '0', '2018-06-06 10:06:06', null, null, null);
INSERT INTO `goods_log` VALUES ('100034', '100000', '0', '1', '0', '2018-06-06 10:06:05', null, null, null);
INSERT INTO `goods_log` VALUES ('100035', '100006', '2', '0', '0', '2018-06-06 16:06:30', null, null, null);
INSERT INTO `goods_log` VALUES ('100036', '100001', '1', '0', '0', '2018-06-06 16:06:34', null, null, null);
INSERT INTO `goods_log` VALUES ('100037', '100024', '0', '1', '0', '2018-06-07 19:06:34', null, null, null);
INSERT INTO `goods_log` VALUES ('100038', '100025', '0', '1', '0', '2018-06-07 20:06:49', null, null, null);
INSERT INTO `goods_log` VALUES ('100039', '100025', '0', '1', '0', '2018-06-07 20:06:50', null, null, null);
INSERT INTO `goods_log` VALUES ('100040', '100000', '0', '1', '0', '2018-06-07 20:06:28', null, null, null);
INSERT INTO `goods_log` VALUES ('100041', '100000', '0', '2', '0', '2018-06-07 21:06:09', null, null, null);
INSERT INTO `goods_log` VALUES ('100042', '100000', '2', '0', '0', '2018-06-07 21:06:50', null, null, null);
INSERT INTO `goods_log` VALUES ('100043', '100000', '0', '1', '0', '2018-06-07 21:06:56', null, null, null);
INSERT INTO `goods_log` VALUES ('100044', '100000', '1', '0', '0', '2018-06-07 21:06:10', null, null, null);
INSERT INTO `goods_log` VALUES ('100045', '100006', '0', '1', '0', '2018-06-11 15:06:37', null, null, null);
INSERT INTO `goods_log` VALUES ('100046', '100000', '0', '1', '0', '2018-06-11 16:06:46', null, null, null);
INSERT INTO `goods_log` VALUES ('100047', '100000', '0', '1', '0', '2018-06-11 16:06:38', null, null, null);
INSERT INTO `goods_log` VALUES ('100048', '100006', '0', '2', '0', '2018-06-11 16:06:56', null, null, null);
INSERT INTO `goods_log` VALUES ('100049', '100006', '2', '0', '0', '2018-06-11 16:06:55', null, null, null);
INSERT INTO `goods_log` VALUES ('100050', '100025', '0', '1', '0', '2018-06-11 17:06:38', null, null, null);
INSERT INTO `goods_log` VALUES ('100051', '100000', '1', '0', '0', '2018-06-13 15:06:32', null, null, null);
INSERT INTO `goods_log` VALUES ('100052', '100000', '1', '0', '0', '2018-06-13 15:06:58', null, null, null);
INSERT INTO `goods_log` VALUES ('100053', '100000', '1', '0', '0', '2018-06-13 16:06:49', null, null, null);
INSERT INTO `goods_log` VALUES ('100054', '100000', '1', '0', '0', '2018-06-13 16:06:34', null, null, null);
INSERT INTO `goods_log` VALUES ('100055', '100000', '1', '0', '0', '2018-06-13 16:06:18', null, null, null);
INSERT INTO `goods_log` VALUES ('100056', '100006', '5', '0', '0', '2018-06-13 16:06:11', null, null, null);
INSERT INTO `goods_log` VALUES ('100057', '100000', '1', '0', '0', '2018-06-13 16:06:10', null, null, null);
INSERT INTO `goods_log` VALUES ('100058', '100003', '1', '0', '0', '2018-06-13 16:06:22', null, null, null);
INSERT INTO `goods_log` VALUES ('100059', '100007', '1', '0', '0', '2018-06-13 19:06:24', null, null, null);
INSERT INTO `goods_log` VALUES ('100060', '100005', '1', '0', '0', '2018-06-13 20:06:11', null, null, null);
INSERT INTO `goods_log` VALUES ('100061', '100024', '1', '0', '0', '2018-06-13 20:06:32', null, null, null);
INSERT INTO `goods_log` VALUES ('100062', '100005', '1', '0', '0', '2018-06-14 13:06:18', null, null, null);

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `Order_PK` int(11) NOT NULL AUTO_INCREMENT,
  `User_PK` int(11) NOT NULL,
  `Order_ID` varchar(20) DEFAULT NULL,
  `Order_No` varchar(255) DEFAULT NULL,
  `Goods_List` varchar(5000) DEFAULT NULL,
  `Goods_Num` varchar(5000) DEFAULT NULL,
  `Goods_Prices` varchar(5000) DEFAULT NULL,
  `Order_Time` datetime NOT NULL COMMENT '格式为YYYY-MM-DD HH:MM:SS',
  `Order_IsPay` tinyint(1) NOT NULL,
  `Order_PayTime` datetime DEFAULT NULL COMMENT '格式为YYYY-MM-DD HH:MM:SS',
  `Order_PayPrice` float NOT NULL COMMENT '保留2位小数',
  `Order_State` int(11) DEFAULT NULL COMMENT '1，未完成。2，取消。3，用户已支付，快递正在路上。4，用户已签收。5，用户已确认收货，订单完成。\r\n            （待定）',
  `Order_TrackNum` varchar(50) DEFAULT NULL,
  `Order_Company` varchar(255) DEFAULT NULL,
  `Order_Website` varchar(255) DEFAULT NULL,
  `Order_Aftersale` int(11) DEFAULT NULL COMMENT '商品若出现问题，提供售后服务的状态。由对应数字表示状态。\r\n            如1为无售后记录。2为正在退货。3为退货成功，已退款，售后完成。\r\n            （待定）',
  `Order_Reserve_1` varchar(1000) DEFAULT NULL,
  `Order_Reserve_2` varchar(5) DEFAULT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Order_PK`),
  UNIQUE KEY `AK_Key_2` (`Order_ID`),
  KEY `FK_User_Order` (`User_PK`),
  CONSTRAINT `FK_User_Order` FOREIGN KEY (`User_PK`) REFERENCES `user_info` (`User_PK`)
) ENGINE=InnoDB AUTO_INCREMENT=100066 DEFAULT CHARSET=utf8 COMMENT='订单日志。供用户查询，管理员查询及管理，统计等。';

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES ('100000', '100003', '201703302003100003', '', '100000#', '2#', '12#', '2017-03-30 20:03:46', '1', '2017-03-30 20:03:46', '24', '5', '11111111111111', '', '', '0', '13421166393;林先生;广东省揭阳市某某区某某街道;522000;', '\0', null);
INSERT INTO `order_info` VALUES ('100001', '100003', '201704010904100003', '', '100000#', '4#', '8#', '2017-04-01 09:04:23', '0', '0001-01-01 01:01:01', '32', '2', '', '', '', '0', '13421166393;林先生;广东省揭阳市某某区某某街道;522000;', '\0', null);
INSERT INTO `order_info` VALUES ('100002', '100003', '201704011004100003', '', '100000#', '4#', '8#', '2017-04-01 10:04:41', '0', '0001-01-01 01:01:01', '32', '2', '', '', '', '0', '13421166393;林先生;广东省揭阳市某某区某某街道;522000;', '\0', null);
INSERT INTO `order_info` VALUES ('100003', '100003', '201705240305100003', '', '100006#100001#', '2#1#', '2#500#', '2017-05-24 03:05:37', '0', '0001-01-01 01:01:01', '504', '2', '', '', '', '0', '13421166393;林先生;广东省揭阳市某某区某某街道;522000;', null, null);
INSERT INTO `order_info` VALUES ('100005', '100003', '201705240305100004', '', '100007#', '1#', '5#', '2017-05-24 03:05:41', '0', '0001-01-01 01:01:01', '5', '2', '', '', '', '0', '13421166393;林先生;广东省揭阳市某某区某某街道;522000;', null, null);
INSERT INTO `order_info` VALUES ('100008', '100003', '201705240305100005', '', '100000#', '1#', '8#', '2017-05-24 03:05:46', '0', '0001-01-01 01:01:01', '8', '4', '', '', '', '0', '13421166393;林先生;广东省揭阳市某某区某某街道;522000;', null, null);
INSERT INTO `order_info` VALUES ('100012', '100003', '201705240305100006', '', '100000#', '1#', '8#', '2017-05-24 03:05:52', '0', '0001-01-01 01:01:01', '0.01', '1', '', '', '', '0', '13421166393;林先生;广东省揭阳市某某区某某街道;522000;', null, null);
INSERT INTO `order_info` VALUES ('100013', '100003', '201705240905100003', '', '100010#', '1#', '5#', '2017-05-24 09:05:29', '0', '0001-01-01 01:01:01', '5', '4', '', '', '', '0', '13421166393;林先生;广东省揭阳市某某区某某街道;522000;', null, null);
INSERT INTO `order_info` VALUES ('100014', '100003', '201705241705100003', '', '100011#', '2#', '10#', '2017-05-24 17:05:31', '0', '0001-01-01 01:01:01', '20', '1', '', '', '', '0', '13421166393;林先生;广东省揭阳市某某区某某街道;522000;', null, null);
INSERT INTO `order_info` VALUES ('100015', '100003', '201705241805100003', '', '100001#', '1#', '500#', '2017-05-24 18:05:51', '0', '0001-01-01 01:01:01', '500', '3', '', '', '', '0', '13421166393;林先生;广东省揭阳市某某区某某街道;522000;', null, null);
INSERT INTO `order_info` VALUES ('100017', '100003', '201705241805100004', '', '100005#', '1#', '500#', '2017-05-24 18:05:09', '0', '0001-01-01 01:01:01', '500', '2', '', '', '', '0', '13421166393;林先生;广东省揭阳市某某区某某街道;522000;', null, null);
INSERT INTO `order_info` VALUES ('100020', '100003', '201705241805100005', '', '100005#', '1#', '500#', '2017-05-24 18:05:32', '0', '0001-01-01 01:01:01', '500', '3', '', '', '', '0', '13421166393;林先生;广东省揭阳市某某区某某街道;522000;', null, null);
INSERT INTO `order_info` VALUES ('100024', '100003', '201705241805100006', '', '100005#', '1#', '500#', '2017-05-24 18:05:13', '0', '0001-01-01 01:01:01', '500', '1', '', '', '', '0', '13421166393;林先生;广东省揭阳市某某区某某街道;522000;', null, null);
INSERT INTO `order_info` VALUES ('100029', '100003', '201705241805100007', '', '100005#', '1#', '500#', '2017-05-24 18:05:02', '0', '0001-01-01 01:01:01', '500', '3', '111', '', '', '0', '13421166393;林先生;广东省揭阳市某某区某某街道;522000;', null, null);
INSERT INTO `order_info` VALUES ('100035', '100003', '201705241805100008', '', '100010#100004#', '1#2#', '5#2.5#', '2017-05-24 18:05:27', '0', '0001-01-01 01:01:01', '10', '1', '', '', '', '0', '13421166393;林先生;广东省揭阳市某某区某某街道;522000;', null, null);
INSERT INTO `order_info` VALUES ('100036', '100003', '201705251505100003', '', '100009#100006#', '2#2#', '2000#2#', '2017-05-25 15:05:17', '0', '0001-01-01 01:01:01', '4004', '3', '3101729271466', '韵达速递', 'http://www.yundaex.com/cn/index.php', '0', '13421166393;林先生;广东省揭阳市某某区某某街道;522000;', null, null);
INSERT INTO `order_info` VALUES ('100037', '100003', '201706020906100003', '', '100006#', '1#', '2#', '2017-06-02 09:06:01', '0', '0001-01-01 01:01:01', '2', '1', '', '', '', '0', '13421166393;林先生;广东省揭阳市某某区某某街道;522000;', null, null);
INSERT INTO `order_info` VALUES ('100038', '100006', '20180530170542100006', '', '100006#', '5#', '2#', '2018-05-30 17:05:47', '1', '2018-06-05 01:06:57', '10', '5', '123456', '', '', '0', '13416137226;11;22;50000;', null, null);
INSERT INTO `order_info` VALUES ('100039', '100006', '20180530180557100006', '', '100006#', '5#', '2#', '2018-05-30 18:05:57', '0', '0001-01-01 01:01:01', '10', '2', '', '', '', '0', '13416137226;65;55;200202;', null, null);
INSERT INTO `order_info` VALUES ('100040', '100006', '20180605000659100006', '', '100000#', '1#', '8#', '2018-06-05 00:06:59', '0', '0001-01-01 01:01:01', '8', '2', '', '', '', '0', '13416137226;kk;..;202020;', null, null);
INSERT INTO `order_info` VALUES ('100041', '100006', '20180605010623100006', '', '100004#', '1#', '2.5#', '2018-06-05 01:06:23', '1', '2018-06-05 01:06:59', '2.5', '6', '', '', '', '0', '13416137226;ljh;kj;505050;', null, null);
INSERT INTO `order_info` VALUES ('100042', '100006', '20180605010656100006', '', '100006#', '1#', '2#', '2018-06-05 01:06:56', '0', '0001-01-01 01:01:01', '2', '5', '', '', '', '0', '13416137226;j;5;500050;', null, null);
INSERT INTO `order_info` VALUES ('100043', '100006', '20180605010617100006', '', '100004#', '1#', '2.5#', '2018-06-05 01:06:17', '0', '0001-01-01 01:01:01', '2.5', '5', '', '', '', '0', '13416133333;ljh;1;505050;', null, null);
INSERT INTO `order_info` VALUES ('100044', '100006', '20180605020638100006', '', '100000#', '1#', '8#', '2018-06-05 02:06:38', '0', '0001-01-01 01:01:01', '8', '5', '', '', '', '0', '13316137226;f;1;505050;', null, null);
INSERT INTO `order_info` VALUES ('100045', '100006', '20180605020625100006', '', '100003#', '1#', '100#', '2018-06-05 02:06:25', '0', '0001-01-01 01:01:01', '100', '2', '', '', '', '0', '13416137226;65;65;656565;', null, null);
INSERT INTO `order_info` VALUES ('100046', '100006', '20180605020629100006', '', '100005#', '1#', '500#', '2018-06-05 02:06:29', '0', '0001-01-01 01:01:01', '500', '2', '', '', '', '0', '13416137226;5;5;505050;', null, null);
INSERT INTO `order_info` VALUES ('100047', '100006', '20180605020637100006', '', '100005#', '1#', '500#', '2018-06-05 02:06:37', '0', '0001-01-01 01:01:01', '500', '1', '', '', '', '0', '13416137226;5;5;505050;', null, null);
INSERT INTO `order_info` VALUES ('100048', '100006', '20180605140652100006', '', '100006#', '1#', '2#', '2018-06-05 14:06:52', '0', '0001-01-01 01:01:01', '2', '1', '', '', '', '0', '13416137226;q;f;202020;', null, null);
INSERT INTO `order_info` VALUES ('100049', '100006', '20180605140630100006', '', '100006#', '1#', '0.01#', '2018-06-05 14:06:30', '1', '0001-01-01 01:01:01', '0.01', '6', '', '', '', '0', '13400001234;ff;f;202002;', null, null);
INSERT INTO `order_info` VALUES ('100050', '100006', '20180605150630100006', '', '100006#', '1#', '0.01#', '2018-06-05 15:06:30', '1', '0001-01-01 01:01:01', '0.01', '6', '', '', '', '0', '13416137000;ljh;1;202020;', null, null);
INSERT INTO `order_info` VALUES ('100051', '100006', '20180605150607100006', '', '100006#', '1#', '0.01#', '2018-06-05 15:06:07', '1', '0001-01-01 01:01:01', '0.01', '6', '', '', '', '0', '13416137000;ljh;1;202020;', null, null);
INSERT INTO `order_info` VALUES ('100052', '100006', '20180605170634100006', '2018061121001004710554044621', '100000#', '1#', '0.01#', '2018-06-05 17:06:34', '1', '2018-06-11 17:06:19', '0.01', '3', '3101729271466', '韵达速递', 'http://www.yundaex.com/cn/index.php', '0', '13416137000;ljh;1;202020;', null, null);
INSERT INTO `order_info` VALUES ('100053', '100006', '20180606100630100006', '', '100000#', '1#', '0.01#', '2018-06-06 10:06:30', '0', '0001-01-01 01:01:01', '0.01', '5', '', '', '', '0', '13416137000;ljh;1;202020;', null, null);
INSERT INTO `order_info` VALUES ('100054', '100006', '20180606100602100006', '', '100000#', '1#', '0.01#', '2018-06-06 10:06:02', '0', '0001-01-01 01:01:01', '0.01', '2', '', '', '', '0', '13416137000;ljh;1;202020;', null, null);
INSERT INTO `order_info` VALUES ('100055', '100006', '20180606100609100006', '', '100000#', '1#', '0.01#', '2018-06-06 10:06:09', '0', '0001-01-01 01:01:01', '0.01', '2', '', '', '', '0', '13416137000;ljh;1;202020;', null, null);
INSERT INTO `order_info` VALUES ('100057', '100006', '20180606100609100007', '', '100000#', '1#', '0.01#', '2018-06-06 10:06:09', '0', '0001-01-01 01:01:01', '0.01', '2', '', '', '', '0', '13416137000;ljh;1;202020;', null, null);
INSERT INTO `order_info` VALUES ('100058', '100006', '20180607190637100006', '', '100024#', '1#', '0.01#', '2018-06-07 19:06:37', '1', '2018-06-11 16:06:07', '0.01', '2', '', '', '', '0', '13416137000;ljh;1;202020;', null, null);
INSERT INTO `order_info` VALUES ('100059', '100006', '20180607200653100006', '', '100025#', '1#', '0.01#', '2018-06-07 20:06:53', '1', '0001-01-01 01:01:01', '0.01', '1', '', '', '', '0', '13416137000;ljh;1;202020;', null, null);
INSERT INTO `order_info` VALUES ('100060', '100006', '20180607200654100006', '', '100025#', '1#', '0.01#', '2018-06-07 20:06:54', '0', '0001-01-01 01:01:01', '0.01', '5', '', '', '', '0', '13416137000;ljh;1;202020;', null, null);
INSERT INTO `order_info` VALUES ('100061', '100006', '20180607210613100006', '', '100000#', '2#', '0.01#', '2018-06-07 21:06:13', '0', '0001-01-01 01:01:01', '0.02', '1', '', '', '', '0', '13416137000;ljh;1;202020;', null, null);
INSERT INTO `order_info` VALUES ('100062', '100006', '20180607210600100006', '', '100000#', '1#', '0.01#', '2018-06-07 21:06:00', '0', '0001-01-01 01:01:01', '0.01', '1', '', '', '', '0', '13416137000;ljh;1;202020;', null, null);
INSERT INTO `order_info` VALUES ('100063', '100006', '20180611160640100006', '100058', '100000#', '1#', '0.01#', '2018-06-11 16:06:40', '1', '2018-06-11 16:06:32', '0.02', '1', '', '', '', '0', '13416137000;ljh;1;202020;', null, null);
INSERT INTO `order_info` VALUES ('100064', '100006', '20180611160600100006', '', '100006#', '2#', '2#', '2018-06-11 16:06:00', '0', '0001-01-01 01:01:01', '4', '1', '', '', '', '0', '13416137000;ljh;1;202020;', null, null);
INSERT INTO `order_info` VALUES ('100065', '100006', '20180611170642100006', '2018061121001004710554516040', '100025#', '1#', '0.01#', '2018-06-11 17:06:42', '1', '2018-06-11 17:06:39', '0.01', '6', '', '', '', '0', '13416137000;ljh;1;202020;', null, null);

-- ----------------------------
-- Table structure for sign_in_log
-- ----------------------------
DROP TABLE IF EXISTS `sign_in_log`;
CREATE TABLE `sign_in_log` (
  `SignIn_PK` int(11) NOT NULL AUTO_INCREMENT,
  `SignIn_IsAdmin` tinyint(1) NOT NULL,
  `User_Pk` int(11) DEFAULT NULL,
  `Admin_Pk` int(11) DEFAULT NULL,
  `SignIn_Time` datetime NOT NULL COMMENT '格式为YYYY-MM-DD HH:MM:SS',
  `SignIn_Reserve_1` varchar(5) DEFAULT NULL,
  `SignIn_Reserve_2` varchar(5) DEFAULT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`SignIn_PK`),
  KEY `FK_User_login` (`User_Pk`),
  KEY `FK_admin_login` (`Admin_Pk`),
  CONSTRAINT `FK_admin_login` FOREIGN KEY (`Admin_Pk`) REFERENCES `admin_info` (`Admin_PK`),
  CONSTRAINT `FK_User_login` FOREIGN KEY (`User_Pk`) REFERENCES `user_info` (`User_PK`)
) ENGINE=InnoDB AUTO_INCREMENT=100055 DEFAULT CHARSET=utf8 COMMENT='系统的用户登录日志。';

-- ----------------------------
-- Records of sign_in_log
-- ----------------------------
INSERT INTO `sign_in_log` VALUES ('100001', '1', '100003', '0', '2017-03-30 14:54:39', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100002', '1', '100000', '0', '2017-03-30 16:06:11', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100003', '1', '100003', '0', '2017-03-30 19:36:43', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100004', '1', '100003', '0', '2017-03-31 00:24:16', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100005', '1', '100003', '0', '2017-03-31 09:59:03', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100006', '1', '100003', '0', '2017-03-31 15:44:44', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100007', '1', '100003', '0', '2017-04-01 09:07:48', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100008', '1', '100003', '0', '2017-04-01 10:24:06', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100009', '1', '100003', '0', '2017-05-22 23:13:16', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100010', '1', '100003', '0', '2017-05-23 10:18:31', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100011', '1', '100003', '0', '2017-05-23 13:09:08', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100012', '1', '100003', '0', '2017-05-24 03:02:02', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100013', '1', '100003', '0', '2017-05-24 09:46:56', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100014', '1', '100003', '0', '2017-05-24 10:51:19', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100015', '1', '100003', '0', '2017-05-24 17:35:11', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100016', '1', '100003', '0', '2017-05-24 17:47:39', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100017', '1', '100003', '0', '2017-05-24 17:50:17', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100018', '1', '100003', '0', '2017-05-24 18:02:13', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100019', '1', '100003', '0', '2017-05-24 20:18:02', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100020', '1', '100003', '0', '2017-05-25 00:47:59', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100021', '1', '100003', '0', '2017-05-25 15:50:13', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100022', '1', '100003', '0', '2017-06-02 09:13:47', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100026', '0', '100006', '0', '2018-06-07 19:39:48', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100027', '1', '0', '101', '2018-06-07 19:41:34', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100028', '0', '100006', '0', '2018-06-07 19:47:48', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100029', '0', '100006', '0', '2018-06-07 21:21:44', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100030', '0', '100006', '0', '2018-06-07 21:21:53', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100031', '0', '100006', '0', '2018-06-08 22:45:26', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100032', '0', '100006', '0', '2018-06-11 14:08:59', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100033', '0', '100006', '0', '2018-06-11 14:27:25', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100034', '0', '100006', '0', '2018-06-11 15:53:58', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100035', '0', '100006', '0', '2018-06-11 16:12:53', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100036', '0', '100006', '0', '2018-06-11 16:35:07', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100037', '0', '100006', '0', '2018-06-11 17:05:13', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100038', '0', '100006', '0', '2018-06-11 17:24:26', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100039', '0', '100006', '0', '2018-06-13 15:50:11', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100040', '0', '100006', '0', '2018-06-13 16:50:16', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100041', '0', '100006', '0', '2018-06-13 17:04:26', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100042', '1', '0', '101', '2018-06-13 17:20:16', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100043', '1', '0', '101', '2018-06-13 19:02:16', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100044', '1', '0', '101', '2018-06-13 19:05:49', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100045', '1', '0', '101', '2018-06-13 19:14:59', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100046', '1', '0', '101', '2018-06-13 19:42:30', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100047', '0', '100006', '0', '2018-06-13 20:04:40', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100048', '1', '0', '101', '2018-06-14 13:08:29', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100049', '1', '0', '101', '2018-06-14 13:35:28', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100050', '0', '100006', '0', '2018-06-14 15:51:59', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100051', '1', '0', '101', '2018-06-14 15:53:33', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100052', '0', '100006', '0', '2018-06-14 16:02:35', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100053', '0', '100006', '0', '2018-06-23 16:42:19', null, null, null);
INSERT INTO `sign_in_log` VALUES ('100054', '0', '100006', '0', '2018-06-23 16:45:26', null, null, null);

-- ----------------------------
-- Table structure for union_goods_info
-- ----------------------------
DROP TABLE IF EXISTS `union_goods_info`;
CREATE TABLE `union_goods_info` (
  `Union_PK` int(11) NOT NULL,
  `Goods_PK` int(11) NOT NULL,
  `Have_Area` int(11) NOT NULL,
  `Have_Num` int(11) NOT NULL,
  `Have_Yield` varchar(50) NOT NULL,
  `Have_Time` varchar(50) NOT NULL,
  `Have_Price` varchar(50) NOT NULL,
  `Union_Goods_Mark` varchar(1) DEFAULT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Union_PK`,`Goods_PK`),
  KEY `FK_Goods_Union_Relation_1` (`Goods_PK`) USING BTREE,
  CONSTRAINT `union_goods_info_ibfk_1` FOREIGN KEY (`Union_PK`) REFERENCES `union_info` (`Union_PK`),
  CONSTRAINT `union_goods_info_ibfk_2` FOREIGN KEY (`Goods_PK`) REFERENCES `goods_info` (`Goods_PK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录每家合作社所生产的农产品信息';

-- ----------------------------
-- Records of union_goods_info
-- ----------------------------
INSERT INTO `union_goods_info` VALUES ('100000', '100000', '100', '2000', '按丰欠年产量不等', '7月', '7-12元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100000', '100001', '5', '-1', '按丰欠年产量不等', '3/10月', '300-900元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100000', '100002', '20', '100', '按丰欠年产量不等', '9月', '5-10元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100001', '100000', '500', '10000', '依丰欠收年产量不定', '7月', '7-12元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100002', '100017', '-1', '3000', '3000', '一年四季', '15-25元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100002', '100020', '15', '10000', '10000', '无', '12-20元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100003', '100022', '100', '100', '1000公斤', '不定', '150-250元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100004', '100022', '50', '1500', '丰欠年产量不定', '10月份', '70-100元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100005', '100000', '50', '1000', '丰欠年产量不定', '7月份', '7-12元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100005', '100004', '20', '400', '丰欠年产量不定', '6月份', '7-10元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100006', '100000', '30', '600', '丰欠收年产量不定', '7月份', '7-12元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100007', '100005', '50', '30000', '60000公斤', '不定期', '9-15元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100008', '100021', '10', '-1', '10000只', '常年供应', '70-100元/500g', '0', null);
INSERT INTO `union_goods_info` VALUES ('100009', '100022', '300', '12000', '丰欠年产量不定', '10月份', '70-100元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100010', '100006', '200', '-1', '600-1200kg', '每年每月', '2-20元（品种不同价格不同）', '0', '1');
INSERT INTO `union_goods_info` VALUES ('100010', '100017', '8000', '15000', '15000', '到达出栏标准即可', '15-25元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100011', '100000', '100', '2000', '依丰欠收年不定', '7月份', '7-12元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100011', '100004', '100', '2000', '依丰欠收年不定', '6月份', '7-10元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100012', '100000', '200', '4000', '丰欠收年产量不定', '7月份', '7-12元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100013', '100001', '200', '-1', '2000公斤', '3/10月份', '300-900元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100014', '100009', '10', '100', '100头', '无', '8-15元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100014', '100010', '60', '1800', '丰欠收年产量不定', '10月份', '7-10元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100015', '100004', '30', '600', '丰欠收年不定', '6月份', '7-12元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100015', '100011', '100', '-1', '5000公斤', '6/10月份', '5-10元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100015', '100012', '100', '-1', '2500公斤', '7/12月份', '3-6元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100016', '100001', '150', '-1', '1500公斤', '3/10月', '300-900元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100017', '100022', '50', '1500', '依丰欠收产量不定', '11月份', '70-100元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100018', '100010', '1000', '50000', '3000000公斤', '12月份', '5-10元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100019', '100014', '200', '6000', '丰欠收年不定', '10,11,12,1,2月份', '12-20元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100020', '100019', '500', '-1', '无', '2/3/4月份', '果苗品种不同价格不同', '0', null);
INSERT INTO `union_goods_info` VALUES ('100021', '100004', '50', '1000', '丰欠收年产量不定', '6月份', '7-10元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100022', '100000', '30', '600', '丰欠年产量不定', '7月份', '7-12元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100023', '100000', '25', '500', '丰欠收年产量不定', '7月份', '7-12元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100024', '100000', '70', '1400', '丰欠年产量不定', '7月份', '7-12元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100025', '100000', '150', '3000', '丰欠收年产量不定', '7月份', '7-12元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100026', '100000', '100', '2000', '丰欠收年产量不定', '7月份', '7-12元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100027', '100000', '50', '1000', '丰欠年产量不定', '7月份', '7-12元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100028', '100000', '500', '10000', '丰欠年产量不定', '7月份', '7-12元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100029', '100000', '150', '3000', '丰欠收年不定', '7月份', '7-12元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100029', '100011', '50', '-1', '丰欠收年不定', '5/11月份', '4-8元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100030', '100000', '50', '1000', '丰欠收年不定', '7月份', '7-12元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100031', '100000', '20', '400', '丰欠收年产量不定', '7月份', '7-12元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100032', '100000', '20', '400', '依丰欠收年不等', '7月份', '7-12元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100032', '100004', '20', '600', '依丰欠收年不等', '6月份', '7-12元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100032', '100006', '10', '300', '依丰欠收年不等', '3-4月份', '5-10元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100033', '100000', '50', '1000', '丰欠收年产量不定', '7月份', '7-12元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100034', '100000', '80', '1600', '丰欠收年产量不定', '7月份', '7-12元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100035', '100001', '30', '-1', '300', '3/10月份', '300-900元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100036', '100000', '100', '2000', '丰欠收年产量不定', '7月份', '7-12元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100037', '100000', '50', '1000', '丰欠收年产量不定', '7月份', '7-12元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100038', '100000', '80', '1600', '丰欠年产量不定', '7月份', '7-12元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100038', '100004', '50', '1000', '丰欠年产量不定', '6月份', '7-12元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100038', '100022', '100', '5000', '丰欠年产量不定', '10月份', '70-100元', '0', null);
INSERT INTO `union_goods_info` VALUES ('100039', '100017', '20', '3000', '按重量计', '按季度出货', '20-40元', '0', null);

-- ----------------------------
-- Table structure for union_info
-- ----------------------------
DROP TABLE IF EXISTS `union_info`;
CREATE TABLE `union_info` (
  `Union_PK` int(11) NOT NULL AUTO_INCREMENT,
  `Union_Name` varchar(200) NOT NULL,
  `Union_Master` varchar(10) NOT NULL,
  `Union_License` varchar(30) NOT NULL,
  `Union_Address` varchar(200) NOT NULL,
  `Union_Establish` date NOT NULL COMMENT '格式为YYYY-MM-DD',
  `Union_Asset` int(11) NOT NULL,
  `Union_Tele` varchar(20) NOT NULL,
  `Union_Cell` varchar(11) NOT NULL COMMENT '必须为11位',
  `Union_Email` varchar(30) NOT NULL,
  `Union_Mark` varchar(1) DEFAULT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Union_PK`)
) ENGINE=InnoDB AUTO_INCREMENT=100040 DEFAULT CHARSET=utf8 COMMENT='记录合作社的相关信息';

-- ----------------------------
-- Records of union_info
-- ----------------------------
INSERT INTO `union_info` VALUES ('100000', '连平县丰隆种植专业合作社', '谢衍生', '441623NA000448X', '连平县陂头镇官岭村水背小姐1号', '2014-09-05', '1000000', '13553227856', '13553227856', '2401108883@qq.com', '0', null);
INSERT INTO `union_info` VALUES ('100001', '连平县连兴种植专业合作社', '谢海根', '93441623MA4UHY0B7D', '连平县上坪镇旗石村委太阳升42号', '2015-10-15', '1000000', '13435513908', '13435513908', '1817100012@qq.com', '0', null);
INSERT INTO `union_info` VALUES ('100002', '连平县金生种养专业合作社', '谢金坚', '93441623594067754W', '连平县溪山镇谢屋禾坑山', '2012-04-23', '500000', '13750237498', '13750237498', '无', '0', null);
INSERT INTO `union_info` VALUES ('100003', '连平县连宏达种养专业合作社', '周志平', '93441623MA4UHR2T87', '连平县内莞镇九连桃坪村河唇屋', '2015-09-30', '1000000', '13650668213', '13650668213', '无', '0', null);
INSERT INTO `union_info` VALUES ('100004', '连平县连生态种养专业合作社', '周文达', '93441623MA4UHT230X', '连平县内莞镇桃坪村河唇屋', '2015-09-30', '1000000', '13435514020', '13435514020', '703291134@qq.com', '0', null);
INSERT INTO `union_info` VALUES ('100005', '连平县炜森种养专业合作社', '谢房栋', '93441623MA4UJ1MY6B', '连平县上坪镇古坑村良田3号', '2015-10-14', '1000000', '13553287443', '13553287443', '无', '0', null);
INSERT INTO `union_info` VALUES ('100006', '连平县陂头塔下种植专业合作社', '廖彩坤', '93441623MA4UHYN460', '连平县陂头镇腊溪村委会塔下', '2015-10-14', '500000', '13690926063', '13690926063', '无', '0', null);
INSERT INTO `union_info` VALUES ('100007', '连平县陂头跃丰种养专业合作社', '曾超和', '93441623MA4UJ0XN30', '连平县陂头镇官岭村委会上屋', '2015-10-15', '500000', '13435328821', '13435328821', '无', '0', null);
INSERT INTO `union_info` VALUES ('100008', '连平县隆街镇龙埔竹鼠养殖专业合作社', '李国雄', '93441623MA4UURGY9B', '连平县隆街镇龙浦村埔前屋', '2016-09-20', '1500000', '13829325433', '13829325433', '无', '0', null);
INSERT INTO `union_info` VALUES ('100009', '连平县众联兴种植专业合作社', '邱志增', '93441623MA4UHQ2X83', '连平县上坪镇新陂村元背11号', '2015-09-25', '1000000', '13827804970', '13827804970', '1742433248@qq.com', '0', null);
INSERT INTO `union_info` VALUES ('100010', '连平县绿强种养专业合作社', '谢冠强', '93441623MA4UQFM71P', '连平县陂头镇新东街一巷7号', '2016-06-08', '500000', '0762-4772567', '13509271567', '无', '0', null);
INSERT INTO `union_info` VALUES ('100011', '连平县丰盛种植专业合作社', '谢碧华', '441623NA000322X', '连平县陂头镇官岭管理区黄梅村围背生产队', '2013-08-07', '500000', '13827855268', '13827855268', '无', '0', null);
INSERT INTO `union_info` VALUES ('100012', '连平县嘉嘉种养专业合作社', '谢明杯', '93441623MA4UHU2J41', '连平县上坪镇中村村水尾屋15号', '2015-09-30', '1200000', '15907627378', '15907627378', '无', '0', null);
INSERT INTO `union_info` VALUES ('100013', '连平县内莞镇七星墩种植专业合作社', '余妙俊', '441623NA000356X', '连平县内莞镇蓝州村七星墩', '2013-12-10', '1000000', '13570143182', '13570143182', '308839011@qq.com', '0', null);
INSERT INTO `union_info` VALUES ('100014', '连平县水口种养专业合作社', '何新学', '441623NA000517X', '连平县油溪镇九潭水口屋', '2015-05-08', '600000', '13536773468', '13536773468', '无', '0', null);
INSERT INTO `union_info` VALUES ('100015', '连平县陂头镇正方粮油专业合作社', '谢小军', '441623NA000255X', '连平县陂头镇连光村社头围15号', '2012-12-04', '800000', '13435349346', '13435349346', '497223903@qq.com', '0', null);
INSERT INTO `union_info` VALUES ('100016', '连平县彩安堂种养专业合作社', '廖彩安', '93441623MA4UHWHA1U', '连平县陂头镇三水村岩仔4号', '2015-10-09', '1000000', '15216927655', '15216927655', '无', '0', null);
INSERT INTO `union_info` VALUES ('100017', '连平县辉远种植专业合作社', '韦远新', '93441623MA4UJ81034', '连平县高莞镇二联村川龙屋66屋', '2015-10-23', '1000000', '13502322277', '13502322277', 'lpcool@qq.com', '0', null);
INSERT INTO `union_info` VALUES ('100018', '连平县上坪镇腾飞沙糖桔种植专业合作社', '谢房兴', '93441623315146856K', '连平县上坪镇布联村坑口屋25号', '2014-09-22', '-1', '13690956137', '13690956137', 'xiehuidang@126.com', '0', null);
INSERT INTO `union_info` VALUES ('100019', '连平县家兴种植专业合作社', '刘娘生', '93441623623MA4UJA1H8K', '连平县高莞镇高村村光头层1号', '2015-10-23', '1000000', '18707621205', '18707621205', '无', '0', null);
INSERT INTO `union_info` VALUES ('100020', '连平县森木花木苗圃场', '陈镜辉', '91441623073526329C', '连平县内莞中村', '2013-07-19', '-1', '13553226527', '13553226527', '无', '0', null);
INSERT INTO `union_info` VALUES ('100021', '连平县邱美灵种养专业合作社', '邱美灵', '93441623MA4UHQX130', '连平县元善镇警雄村委会内莞径6号', '2015-09-30', '1000000', '13119270383', '13119270383', '无', '0', null);
INSERT INTO `union_info` VALUES ('100022', '连平县旭旺种养专业合作社', '谢仁旭', '93441623MA4UJ0XH4X', '连平县上坪镇旗石村太阳升28号', '2015-10-15', '1000000', '13750208189', '13750208189', '105962447@qq.com', '0', null);
INSERT INTO `union_info` VALUES ('100023', '连平县水文种养专业合作社', '谢文水', '93441623MA4UHRK64N', '连平县上坪镇中村村委会水尾屋12号', '2015-10-09', '1000000', '13690905526', '13690905526', '无', '0', null);
INSERT INTO `union_info` VALUES ('100024', '连平县上坪惠联种植专业合作社', '谢文礼', '93441623MA4UJ1L95W', '连平县上坪镇布联村下新屋', '2015-10-14', '800000', '15019385285', '15019385285', '812725563@qq.com', '0', null);
INSERT INTO `union_info` VALUES ('100025', '连平县骏发种养专业合作社', '谢佛房', '93441623MA4UJ1390W', '连平县上坪镇新镇村塘头4号', '2015-10-16', '1000000', '15876232523', '15876232523', '无', '0', null);
INSERT INTO `union_info` VALUES ('100026', '连平县展望种植专业合作社', '谢振望', '93441623MA4UHYLE5U', '连平县上坪镇新镇村满池堂18号', '2015-10-14', '1000000', '13435513218', '13435513218', '1186358340@qq.com', '0', null);
INSERT INTO `union_info` VALUES ('100027', '连平县美晋园种养专业合作社', '谢晋营', '93441623MA4UHP4757', '连平县上坪镇旗石村委会19号', '2015-09-25', '800000', '13690970647', '13690970647', '652443409@qq.com', '0', null);
INSERT INTO `union_info` VALUES ('100028', '连平县峰金种植专业合作社', '谢丽青', '93441623MA4UHU2F1L', '连平县上坪镇旗石村石子角屋6号', '2015-09-30', '1000000', '13650660890', '13650660890', '无', '0', null);
INSERT INTO `union_info` VALUES ('100029', '连平县文钦种植专业合作社', '谢文钦', '93441623MA4UJ13747', '连平县上坪镇新镇村大古陂屋塘头3号', '2015-10-16', '1000000', '13553225861', '13553225861', '无', '0', null);
INSERT INTO `union_info` VALUES ('100030', '连平县国太种养专业合作社', '谢国太', '93441623MA4UHM530T', '连平县上坪镇古坑村105国道边', '2015-09-25', '1200000', '15986037676', '15986037676', '无', '0', null);
INSERT INTO `union_info` VALUES ('100031', '连平县太阳升种植专业合作社', '谢景增', '93441623068523131A', '连平县上坪镇旗石村太阳升28号', '2013-05-07', '3000000', '13690977586', '13690977586', '无', '0', null);
INSERT INTO `union_info` VALUES ('100032', '连平县正源果蔬种植专业合作社', '叶秋媛', '93441623MA4UHMF0XA', '连平县陂头连光村社头围14号', '2015-09-28', '1000000', '15819258161', '15819258161', '1053663096@qq.com', '0', null);
INSERT INTO `union_info` VALUES ('100033', '连平县福旺种养专业合作社', '谢幸福', '93441623MA4UHYXY5F', '连平县上坪镇古坑村105国道边', '2015-10-15', '1000000', '13827845478', '13827845478', '无', '0', null);
INSERT INTO `union_info` VALUES ('100034', '连平县胜辉种养专业合作社', '谢文胜', '93441623MA4UJ0MEXT', '连平县上平镇古坑村古坑围5号', '2015-10-14', '1200000', '13725655839', '13725655839', '无', '0', null);
INSERT INTO `union_info` VALUES ('100035', '连平县信利源种植专业合作社', '余碧然', '93441623MA4UJ0XEX8', '连平县内莞镇蓝州余屋七星墩', '2015-10-15', '1200000', '13825397368', '13825397368', '3069178105@qq.com', '0', null);
INSERT INTO `union_info` VALUES ('100036', '连平县文朗种植专业合作社', '谢文朗', '93441623MA4UJ1Y049', '连平县上坪镇下楼村水楼屋16号', '2015-10-15', '1000000', '13553227950', '13553227950', '无', '0', null);
INSERT INTO `union_info` VALUES ('100037', '连平县碣石下种植专业合作社', '谢房浅', '441623NA000410X', '连平县上坪镇古坑村上新7号', '2014-06-06', '1000000', '13553227958', '13553227958', '无', '0', null);
INSERT INTO `union_info` VALUES ('100038', '连平县绿佳种植专业合作社', '丘春伟', '441623NA000515X', '连平县上坪镇下洞村委会下余坑4号', '2015-05-14', '1000000', '18316920629', '18316920629', '33129681747@qq.com', '0', null);
INSERT INTO `union_info` VALUES ('100039', '连平县新龙绿野康种养专业合作社', '余房淦', '93441623MA4UJ4209F', '连平县元善镇新龙村东门路东23号', '2015-10-21', '1000000', '13380941939', '13380941939', '13376788278@189.cn', '0', null);

-- ----------------------------
-- Table structure for union_news
-- ----------------------------
DROP TABLE IF EXISTS `union_news`;
CREATE TABLE `union_news` (
  `News_PK` int(11) NOT NULL AUTO_INCREMENT,
  `News_Title` varchar(200) DEFAULT NULL,
  `News_Text` text,
  `News_Time` datetime DEFAULT NULL,
  `News_Mark` int(11) DEFAULT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`News_PK`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of union_news
-- ----------------------------
INSERT INTO `union_news` VALUES ('1', '第一条公告', '<p>\r\n	logo是\r\n</p>\r\n<p>\r\n	<img src=\"/agencyOfFarmers/attached/image/20170627/20170627182148_321.png\" alt=\"\" />\r\n</p>\r\n<p>\r\n	经营商品有\r\n</p>\r\n<p>\r\n	<img src=\"/agencyOfFarmers/attached/image/20170627/20170627182300_941.jpg\" alt=\"\" /><img src=\"/agencyOfFarmers/attached/image/20170627/20170627182300_770.jpg\" alt=\"\" /><img src=\"/agencyOfFarmers/attached/image/20170627/20170627182300_180.jpg\" alt=\"\" /><img src=\"/agencyOfFarmers/attached/image/20170627/20170627182300_760.jpg\" alt=\"\" /><img src=\"/agencyOfFarmers/attached/image/20170627/20170627182301_892.jpg\" alt=\"\" /><img src=\"/agencyOfFarmers/attached/image/20170627/20170627182301_108.jpg\" alt=\"\" /><img src=\"/agencyOfFarmers/attached/image/20170627/20170627182301_211.jpg\" alt=\"\" /><img src=\"/agencyOfFarmers/attached/image/20170627/20170627182301_399.jpg\" alt=\"\" /><img src=\"/agencyOfFarmers/attached/image/20170627/20170627182301_80.jpg\" alt=\"\" /><img src=\"/agencyOfFarmers/attached/image/20170627/20170627182301_71.jpg\" alt=\"\" /><img src=\"/agencyOfFarmers/attached/image/20170627/20170627182301_360.jpg\" alt=\"\" />\r\n</p>', '2017-06-27 18:06:18', '1', null);
INSERT INTO `union_news` VALUES ('2', '第二条公告', '<h2>\r\n	第二条公告\r\n</h2>\r\n<p>\r\n	纯文字好吗？好吧！必须得好。<span style=\"font-family:KaiTi_GB2312;\"><span style=\"font-family:KaiTi_GB2312;\">我</span><span style=\"background-color:#E53333;font-family:KaiTi_GB2312;\">没</span></span><span style=\"font-family:KaiTi_GB2312;\"><span style=\"background-color:#E53333;font-family:KaiTi_GB2312;\">图</span><span style=\"font-size:10px;background-color:#E53333;font-family:KaiTi_GB2312;\"></span><span style=\"background-color:#E53333;font-family:KaiTi_GB2312;\">了</span></span><span style=\"background-color:#E53333;font-family:KaiTi_GB2312;\">。</span><span style=\"background-color:#E56600;\"></span>\r\n</p>', '2017-06-27 18:06:24', '1', null);

-- ----------------------------
-- Table structure for union_staff
-- ----------------------------
DROP TABLE IF EXISTS `union_staff`;
CREATE TABLE `union_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Union_PK` int(11) DEFAULT NULL,
  `Staff_Name` varchar(10) NOT NULL,
  `Staff_Sex` int(11) NOT NULL COMMENT '1为男，2为女，3为保密',
  `Staff_Birthday` date NOT NULL COMMENT '格式为YYYY-MM-DD',
  `Staff_Address` varchar(200) NOT NULL,
  `Staff_Phone` varchar(11) NOT NULL COMMENT '必须为11位',
  `Staff_ID` varchar(18) NOT NULL COMMENT '必须为18位',
  `Staff_Email` varchar(30) NOT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Union_Staff_Relationship` (`Union_PK`),
  CONSTRAINT `FK_Union_Staff_Relationship` FOREIGN KEY (`Union_PK`) REFERENCES `union_info` (`Union_PK`)
) ENGINE=InnoDB AUTO_INCREMENT=100040 DEFAULT CHARSET=utf8 COMMENT='记录各合作社员工个人信息';

-- ----------------------------
-- Records of union_staff
-- ----------------------------
INSERT INTO `union_staff` VALUES ('100000', '100000', '谢衍生', '1', '1965-07-01', '连平县陂头镇官岭村水背小姐1号', '13553227856', '441623196507012017', '2401108883@qq.com', null);
INSERT INTO `union_staff` VALUES ('100001', '100001', '谢海根', '1', '1981-11-18', '连平县上坪镇旗石村委太阳升42号', '13435513908', '441623198111180654', '1817100012@qq.com', null);
INSERT INTO `union_staff` VALUES ('100002', '100002', '谢金坚', '1', '1967-08-18', '广东省连平县溪山镇百高村委会田心屋1号', '13750237498', '44252419670818241X', '无', null);
INSERT INTO `union_staff` VALUES ('100003', '100003', '周志平', '1', '1972-11-15', '连平县内莞镇九连桃坪村河唇屋', '13650668213', '441623197211154918', '无', null);
INSERT INTO `union_staff` VALUES ('100004', '100004', '周文达', '1', '1980-04-21', '连平县内莞镇桃坪村河唇屋', '13435514020', '441623198004214919', '703291134@qq.com', null);
INSERT INTO `union_staff` VALUES ('100005', '100005', '谢房栋', '1', '1979-03-26', '连平县上坪镇古坑村良田3号', '13553287443', '441623197903260631', '无', null);
INSERT INTO `union_staff` VALUES ('100006', '100006', '廖彩坤', '1', '1942-07-15', '连平县陂头镇腊溪村委会塔下', '13690926063', '442524194207152010', '无', null);
INSERT INTO `union_staff` VALUES ('100007', '100007', '曾超和', '1', '1959-02-24', '连平县陂头镇', '13435328821', '442524195902242012', '无', null);
INSERT INTO `union_staff` VALUES ('100008', '100008', '李国雄', '1', '1970-01-06', '连平县隆街镇龙浦村埔前屋', '13829325433', '442524197001062718', '无', null);
INSERT INTO `union_staff` VALUES ('100009', '100009', '邱志增', '1', '1975-05-07', '连平县上坪镇新陂村元背11号', '13827804970', '441623197505070613', '1742433248@qq.com', null);
INSERT INTO `union_staff` VALUES ('100010', '100010', '谢冠强', '1', '1966-09-14', '广东省连平县陂头镇街镇居委会老街', '13509271567', '442524196609142017', '无', null);
INSERT INTO `union_staff` VALUES ('100011', '100011', '谢碧华', '1', '1979-07-24', '连平县陂头镇官岭管理区黄梅村围背生产队', '13827855268', '441623197907242019', '无', null);
INSERT INTO `union_staff` VALUES ('100012', '100012', '谢明杯', '1', '1980-09-18', '连平县上坪镇中村村水尾屋15号', '15907627378', '441623198009180631', '无', null);
INSERT INTO `union_staff` VALUES ('100013', '100013', '余妙俊', '1', '1980-07-18', '连平县内莞镇蓝州村七星墩', '13570143182', '441623198007181016', '308839011@qq.com', null);
INSERT INTO `union_staff` VALUES ('100014', '100014', '何新学', '1', '1968-08-19', '连平县油溪镇九潭水口屋', '13536773468', '442524196808193773', '无', null);
INSERT INTO `union_staff` VALUES ('100015', '100015', '谢小军', '1', '1985-05-17', '连平县陂头镇连光村社头围15号', '13435349346', '441623198505172016', '497223903@qq.com', null);
INSERT INTO `union_staff` VALUES ('100016', '100016', '廖彩安', '1', '1959-01-06', '连平县陂头镇三水村岩仔4号', '15216927655', '441623195901062018', '无', null);
INSERT INTO `union_staff` VALUES ('100017', '100017', '韦远新', '1', '1976-07-18', '连平县高莞镇二联村川龙屋66屋', '13502322277', '441623197607184611', 'lpcool@qq.com', null);
INSERT INTO `union_staff` VALUES ('100018', '100018', '谢房兴', '1', '2014-09-22', '连平县上坪镇布联村坑口屋25号', '13690956137', '441623196505100611', 'xiehuidang@126.com', null);
INSERT INTO `union_staff` VALUES ('100019', '100019', '刘娘生', '1', '1962-03-07', '连平县高莞镇高村村光头层1号', '18707621205', '441623196203074614', '无', null);
INSERT INTO `union_staff` VALUES ('100020', '100020', '陈镜辉', '1', '1953-11-02', '连平县内莞中村', '13553226527', '442524195311020012', '无', null);
INSERT INTO `union_staff` VALUES ('100021', '100021', '邱美灵', '1', '1966-11-10', '连平县元善镇警雄村委会内莞径6号', '13119270383', '442524196611101310', '无', null);
INSERT INTO `union_staff` VALUES ('100022', '100022', '谢仁旭', '1', '1986-11-07', '连平县上坪镇旗石村太阳升28号', '13750208189', '441623198611070611', '105962447@qq.com', null);
INSERT INTO `union_staff` VALUES ('100023', '100023', '谢文水', '1', '1977-01-01', '连平县上坪镇', '13690905526', '441623197701010031', '无', null);
INSERT INTO `union_staff` VALUES ('100024', '100024', '谢文礼', '1', '1979-09-04', '连平县上坪镇布联村下新屋', '15019385285', '441623197909040613', '812725563@qq.com', null);
INSERT INTO `union_staff` VALUES ('100025', '100025', '谢佛房', '1', '1969-10-08', '连平县上坪镇新镇村塘头4号', '15876232523', '442524196910080652', '无', null);
INSERT INTO `union_staff` VALUES ('100026', '100026', '谢振望', '1', '1981-07-01', '连平县上坪镇新镇村满池堂18号', '13435513218', '44162319810701061X', '1186358340@qq.com', null);
INSERT INTO `union_staff` VALUES ('100027', '100027', '谢晋营', '1', '1978-11-30', '连平县上坪镇旗石村委会19号', '13690970647', '441623197811300659', '652443409@qq.com', null);
INSERT INTO `union_staff` VALUES ('100028', '100028', '谢丽青', '2', '1970-05-19', '连平县上坪镇旗石村石子角屋6号', '13650660890', '441623197005190643', '无', null);
INSERT INTO `union_staff` VALUES ('100029', '100029', '谢文钦', '1', '1964-09-29', '连平县上坪镇新镇村大古陂屋塘头3号', '13553225861', '441623196409290654', '无', null);
INSERT INTO `union_staff` VALUES ('100030', '100030', '谢国太', '1', '1970-02-04', '连平县上坪镇古坑村105国道边', '15986037676', '441623197002040615', '无', null);
INSERT INTO `union_staff` VALUES ('100031', '100031', '谢景增', '1', '1988-02-02', '连平县上坪镇旗石村太阳升28号', '13690977586', '441623198802020022', '无', null);
INSERT INTO `union_staff` VALUES ('100032', '100032', '叶秋媛', '2', '1985-06-08', '连平县陂头镇连光村社头围14号', '15819258161', '452122198506080964', '1053663096@qq.com', null);
INSERT INTO `union_staff` VALUES ('100033', '100033', '谢幸福', '2', '1958-08-09', '广东省连平县上坪镇古坑村委会大屋19号', '13827845478', '442524195808090622', '无', null);
INSERT INTO `union_staff` VALUES ('100034', '100034', '谢文胜', '1', '1988-03-03', '', '13725655839', '441623198803030033', '无', null);
INSERT INTO `union_staff` VALUES ('100035', '100035', '余碧然', '1', '1975-10-02', '连平县内莞镇蓝州村余屋七星墩', '13825397368', '441623197510021015', '3069178105@qq.com', null);
INSERT INTO `union_staff` VALUES ('100036', '100036', '谢文朗', '1', '1988-04-04', '连平县上坪镇下楼村水楼屋16号', '13553227950', '441623198804040014', '无', null);
INSERT INTO `union_staff` VALUES ('100037', '100037', '谢房浅', '1', '1966-06-06', '连平县上坪镇古坑村上新7号', '13553227958', '442524196606060055', '无', null);
INSERT INTO `union_staff` VALUES ('100038', '100038', '丘春伟', '1', '1969-04-02', '连平县上坪镇下洞村委会下余坑4号', '18316920629', '442524196904020610', '3312981747@qq.com', null);
INSERT INTO `union_staff` VALUES ('100039', '100039', '余房淦', '1', '1979-10-10', '连平县元善镇新龙村东门路东23号', '13380941939', '441623197910101313', '13376788278@189.cn', null);

-- ----------------------------
-- Table structure for user_collection
-- ----------------------------
DROP TABLE IF EXISTS `user_collection`;
CREATE TABLE `user_collection` (
  `Collect_PK` int(11) NOT NULL AUTO_INCREMENT,
  `User_PK` int(11) NOT NULL,
  `Goods_PK` int(11) NOT NULL,
  `Collect_Time` datetime NOT NULL COMMENT '格式为YYYY-MM-DD HH:MM:SS',
  `Collect_Reserve_1` varchar(5) DEFAULT NULL,
  `Collect_Reserve_2` varchar(5) DEFAULT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Collect_PK`),
  KEY `FK_Collection_Goods` (`Goods_PK`),
  KEY `FK_User_Collection` (`User_PK`),
  CONSTRAINT `FK_Collection_Goods` FOREIGN KEY (`Goods_PK`) REFERENCES `goods_info` (`Goods_PK`),
  CONSTRAINT `FK_User_Collection` FOREIGN KEY (`User_PK`) REFERENCES `user_info` (`User_PK`)
) ENGINE=InnoDB AUTO_INCREMENT=100007 DEFAULT CHARSET=utf8 COMMENT='用户对商品的收藏';

-- ----------------------------
-- Records of user_collection
-- ----------------------------
INSERT INTO `user_collection` VALUES ('100000', '100003', '100000', '2017-03-30 14:03:31', null, null, null);
INSERT INTO `user_collection` VALUES ('100002', '100003', '100006', '2017-05-22 08:05:57', null, null, null);
INSERT INTO `user_collection` VALUES ('100003', '100003', '100008', '2017-05-25 16:05:44', null, null, null);
INSERT INTO `user_collection` VALUES ('100005', '100006', '100007', '2018-05-27 17:05:54', null, null, null);
INSERT INTO `user_collection` VALUES ('100006', '100000', '100000', '2018-06-28 20:06:22', null, null, null);

-- ----------------------------
-- Table structure for user_comments
-- ----------------------------
DROP TABLE IF EXISTS `user_comments`;
CREATE TABLE `user_comments` (
  `Comm_PK` int(11) NOT NULL AUTO_INCREMENT,
  `User_PK` int(11) NOT NULL,
  `Goods_PK` int(11) NOT NULL,
  `Comm_Rank` int(11) NOT NULL COMMENT '1到5',
  `Comm_Text` text NOT NULL,
  `Comm_Time` datetime NOT NULL COMMENT '格式为YYYY-MM-DD HH:MM:SS',
  `Comm_Reserve_1` varchar(5) DEFAULT NULL,
  `Comm_Reserve_2` varchar(5) DEFAULT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Comm_PK`),
  KEY `FK_Goods_Comment` (`Goods_PK`),
  KEY `FK_User_Comment` (`User_PK`),
  CONSTRAINT `FK_Goods_Comment` FOREIGN KEY (`Goods_PK`) REFERENCES `goods_info` (`Goods_PK`),
  CONSTRAINT `FK_User_Comment` FOREIGN KEY (`User_PK`) REFERENCES `user_info` (`User_PK`)
) ENGINE=InnoDB AUTO_INCREMENT=100003 DEFAULT CHARSET=utf8 COMMENT='用户对某一商品的评价。';

-- ----------------------------
-- Records of user_comments
-- ----------------------------
INSERT INTO `user_comments` VALUES ('100002', '100003', '100000', '4', '123', '2017-05-25 01:05:35', null, null, null);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `User_PK` int(11) NOT NULL AUTO_INCREMENT,
  `User_Password` varchar(32) NOT NULL COMMENT '密码应不低于8位，不高于16位。',
  `User_Name` varchar(20) DEFAULT NULL,
  `User_Cell` varchar(11) DEFAULT NULL COMMENT '必须为11位',
  `User_Email` varchar(30) DEFAULT NULL,
  `User_Sex` int(11) NOT NULL COMMENT '1为男，2为女，3为保密',
  `User_RegTime` datetime NOT NULL COMMENT '格式为YYYY-MM-DD HH:MM:SS',
  `User_Realname` varchar(10) DEFAULT NULL,
  `User_ID` varchar(18) DEFAULT NULL COMMENT '必须为18位',
  `User_Mark` varchar(1) DEFAULT NULL,
  `User_Reserve_1` varchar(5) DEFAULT NULL,
  `User_Reserve_2` varchar(5) DEFAULT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`User_PK`),
  UNIQUE KEY `UNQ_User_user_name` (`User_Name`),
  UNIQUE KEY `UNQ_User_user_cell` (`User_Cell`),
  UNIQUE KEY `UNQ_User_user_email` (`User_Email`),
  UNIQUE KEY `UNQ_User_user_ID` (`User_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=100019 DEFAULT CHARSET=utf8 COMMENT='注册用户信息';

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('100000', '25d55ad283aa400af464c76d713c07ad', '林莹莹', '18814167467', '1624471560@qq.com', '2', '2017-03-28 15:03:15', '林莹莹', '445202199412018022', '1', null, null, null);
INSERT INTO `user_info` VALUES ('100003', '25d55ad283aa400af464c76d713c07ad', '林天真', '13421166393', '123@qq.com', '2', '2017-03-30 14:03:03', '林天真', '445202199412019022', '0', null, null, null);
INSERT INTO `user_info` VALUES ('100004', '25d55ad283aa400af464c76d713c07ad', 'default', '1', '1', '2', '2017-03-28 15:03:15', 'default', '1', '0', '', '', '');
INSERT INTO `user_info` VALUES ('100006', 'e10adc3949ba59abbe56e057f20f883e', 'jiah', '13416137226', '931319960@qq.com', '2', '2018-05-27 15:05:34', '林佳佳', '44512119970204488X', '\0', null, null, null);
INSERT INTO `user_info` VALUES ('100007', '099b3b060154898840f0ebdfb46ec78f', 'qq', '13416133333', 'qq@qq.com', '3', '2018-05-28 23:05:40', 'qq', '445121199702044999', '\0', null, null, null);
INSERT INTO `user_info` VALUES ('100011', '25d55ad283aa400af464c76d713c07ad', 'kjj', '13416133331', '931196698@qq.com', '3', '2018-06-14 10:06:27', 'lkj', '445121199704054815', '\0', null, null, null);
INSERT INTO `user_info` VALUES ('100012', '25d55ad283aa400af464c76d713c07ad', 'dd', '13416137335', '96@qq.com', '3', '2018-06-14 10:06:30', 'jj', '445121199805064994', '\0', null, null, null);
INSERT INTO `user_info` VALUES ('100014', '25d55ad283aa400af464c76d713c07ad', 'dw', '13416135698', '55@qq.com', '3', '2018-06-14 10:06:31', 'ff', '445126655978588966', '\0', null, null, null);
INSERT INTO `user_info` VALUES ('100015', '25d55ad283aa400af464c76d713c07ad', 'de', '13416135699', '65@qq.com', '3', '2018-06-14 10:06:45', 'f', '445126655978588967', '\0', null, null, null);
INSERT INTO `user_info` VALUES ('100016', '25d55ad283aa400af464c76d713c07ad', '1', '13416159448', '6@qq.com', '3', '2018-06-14 10:06:03', '6', '445121199568456223', '\0', null, null, null);
INSERT INTO `user_info` VALUES ('100017', '1bbd886460827015e5d605ed44252251', 'w', '15687456235', 'q@qq.com', '3', '2018-06-14 11:06:49', 'q', '445125699874512556', '\0', null, null, null);
INSERT INTO `user_info` VALUES ('100018', '5416521448713535359541', '', '', '', '3', '2018-06-07 19:44:39', '', '', '', '', '', '');

-- ----------------------------
-- Procedure structure for Procedure_1
-- ----------------------------
DROP PROCEDURE IF EXISTS `Procedure_1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Procedure_1`()
update Order_Info set Order_State=5 where TO_DAYS(now())-TO_DAYS(Order_PayTime)>=15 AND Order_IsPay=true AND Order_State<>2
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for Procedure_2
-- ----------------------------
DROP PROCEDURE IF EXISTS `Procedure_2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Procedure_2`()
update Order_Info set Order_State=2 where TO_DAYS(now())-TO_DAYS(Order_Time)>=1 AND Order_State=1
;;
DELIMITER ;

-- ----------------------------
-- Event structure for Procedure_1
-- ----------------------------
DROP EVENT IF EXISTS `Procedure_1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `Procedure_1` ON SCHEDULE EVERY 60 SECOND STARTS '2017-05-22 22:11:44' ON COMPLETION PRESERVE ENABLE DO CALL Procedure_1
;;
DELIMITER ;

-- ----------------------------
-- Event structure for Procedure_2
-- ----------------------------
DROP EVENT IF EXISTS `Procedure_2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `Procedure_2` ON SCHEDULE EVERY 60 SECOND STARTS '2017-05-22 22:12:23' ON COMPLETION PRESERVE ENABLE DO CALL Procedure_2
;;
DELIMITER ;
