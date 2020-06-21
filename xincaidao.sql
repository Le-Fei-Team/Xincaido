/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : xincaidao

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 21/06/2020 19:05:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cphone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, '朱丹丹', '15623452536', 'img/c1.jpg');
INSERT INTO `customer` VALUES (2, '宋宇航', '12165347654', 'img/c2.jpg');
INSERT INTO `customer` VALUES (3, '张迪', '18656347235', 'img/c3.jpg');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL,
  `pname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pnum` int(20) NOT NULL,
  `pchange` float(255, 4) NOT NULL,
  `pbili` float(255, 4) NOT NULL,
  `pmoney` float(255, 4) NOT NULL,
  `ptime` datetime(0) NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lid`(`lid`) USING BTREE,
  CONSTRAINT `lid` FOREIGN KEY (`lid`) REFERENCES `product_list` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 1, '富国文体健康股票', 12432, 1.5340, 12.7640, 2332242.2500, '2020-05-14 22:58:00');
INSERT INTO `product` VALUES (2, 1, '汇安基金', 5463, 0.0030, 21.1210, 542173.3125, '2020-06-13 21:59:49');
INSERT INTO `product` VALUES (3, 1, '红土创新基金', 45354, 0.6990, 10.1300, 453236.6875, '2020-06-17 22:02:44');
INSERT INTO `product` VALUES (4, 1, '安信基金', 6564, -0.2300, 22.5200, 2048074.7500, '2020-06-17 22:03:53');
INSERT INTO `product` VALUES (5, 1, '安信基金', 43455, 1.4500, 33.6000, 34875.6016, '2020-06-17 22:05:15');
INSERT INTO `product` VALUES (6, 2, '长江证券', 24214, 2.4300, 22.1000, 2343212.2500, '2020-06-17 22:08:19');
INSERT INTO `product` VALUES (7, 2, '华融证券', 43224, 4.5000, 44.1000, 14362435.0000, '2020-06-17 22:09:52');
INSERT INTO `product` VALUES (8, 2, '国都证券', 564242, 2.1000, 30.6500, 34265248.0000, '2020-06-17 22:10:33');
INSERT INTO `product` VALUES (9, 2, '华泰证券', 346523, -0.1200, 34.8000, 4532425.5000, '2020-06-17 22:11:11');
INSERT INTO `product` VALUES (10, 3, '国泰君安资产管理', 56423, -0.2200, 21.7000, 46753244.0000, '2020-06-17 22:12:14');
INSERT INTO `product` VALUES (11, 3, '上海光大证券资产管理', 464775, 3.4000, 12.0000, 5643437.5000, '2020-06-17 22:16:02');
INSERT INTO `product` VALUES (12, 3, '中泰证券(上海)资管', 545474, 2.4000, 34.0000, 7656345.0000, '2020-06-17 22:17:24');
INSERT INTO `product` VALUES (13, 3, '浙商证券资管', 65688, 2.1000, 23.0000, 4567677.0000, '2020-06-17 22:18:04');
INSERT INTO `product` VALUES (14, 4, '人寿保险', 5327563, 2.1000, 12.0000, 5345664.0000, '2020-06-17 22:19:32');

-- ----------------------------
-- Table structure for product_list
-- ----------------------------
DROP TABLE IF EXISTS `product_list`;
CREATE TABLE `product_list`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ltime` datetime(0) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_list
-- ----------------------------
INSERT INTO `product_list` VALUES (1, '基金', '2020-06-17 21:55:18');
INSERT INTO `product_list` VALUES (2, '信托', '2020-06-16 21:55:41');
INSERT INTO `product_list` VALUES (3, '现金管理', '2020-06-15 21:55:58');
INSERT INTO `product_list` VALUES (4, '保险', '2020-06-17 21:56:11');
INSERT INTO `product_list` VALUES (5, '其他', '2020-06-17 20:56:23');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '用户');
INSERT INTO `role` VALUES (2, '管理员');

-- ----------------------------
-- Table structure for uc
-- ----------------------------
DROP TABLE IF EXISTS `uc`;
CREATE TABLE `uc`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `cid`(`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of uc
-- ----------------------------
INSERT INTO `uc` VALUES (1, 1, 1);
INSERT INTO `uc` VALUES (2, 1, 2);
INSERT INTO `uc` VALUES (3, 1, 3);
INSERT INTO `uc` VALUES (4, 2, 1);
INSERT INTO `uc` VALUES (5, 2, 2);
INSERT INTO `uc` VALUES (6, 2, 3);

-- ----------------------------
-- Table structure for up
-- ----------------------------
DROP TABLE IF EXISTS `up`;
CREATE TABLE `up`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of up
-- ----------------------------
INSERT INTO `up` VALUES (1, 1, 1);
INSERT INTO `up` VALUES (2, 2, 1);
INSERT INTO `up` VALUES (3, 3, 1);
INSERT INTO `up` VALUES (4, 4, 1);

-- ----------------------------
-- Table structure for ur
-- ----------------------------
DROP TABLE IF EXISTS `ur`;
CREATE TABLE `ur`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `upassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uphone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '小明', '123456', 'img/u1.jpg', '15621765657');
INSERT INTO `user` VALUES (2, '红孩儿', '123456', 'img/u2.jpg', '13145267648');

SET FOREIGN_KEY_CHECKS = 1;
