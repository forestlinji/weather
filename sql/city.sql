/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : third

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 03/01/2020 12:10:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `city_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `adcode` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`city_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('上海市', 310000);
INSERT INTO `city` VALUES ('乌鲁木齐市', 650100);
INSERT INTO `city` VALUES ('兰州市', 620100);
INSERT INTO `city` VALUES ('北京市', 110000);
INSERT INTO `city` VALUES ('南京市', 320100);
INSERT INTO `city` VALUES ('南宁市', 450100);
INSERT INTO `city` VALUES ('南昌市', 360100);
INSERT INTO `city` VALUES ('合肥市', 340100);
INSERT INTO `city` VALUES ('呼和浩特市', 150100);
INSERT INTO `city` VALUES ('哈尔滨市', 230100);
INSERT INTO `city` VALUES ('天津市', 120000);
INSERT INTO `city` VALUES ('太原市', 140100);
INSERT INTO `city` VALUES ('广州市', 440100);
INSERT INTO `city` VALUES ('成都市', 510100);
INSERT INTO `city` VALUES ('拉萨市', 540100);
INSERT INTO `city` VALUES ('昆明市', 530100);
INSERT INTO `city` VALUES ('杭州市', 330100);
INSERT INTO `city` VALUES ('武汉市', 420100);
INSERT INTO `city` VALUES ('沈阳市', 210100);
INSERT INTO `city` VALUES ('济南市', 370100);
INSERT INTO `city` VALUES ('海口市', 460100);
INSERT INTO `city` VALUES ('石家庄市', 130100);
INSERT INTO `city` VALUES ('福州市', 350100);
INSERT INTO `city` VALUES ('西宁市', 630100);
INSERT INTO `city` VALUES ('西安市', 610100);
INSERT INTO `city` VALUES ('贵阳市', 520100);
INSERT INTO `city` VALUES ('郑州市', 410100);
INSERT INTO `city` VALUES ('重庆市', 500000);
INSERT INTO `city` VALUES ('银川市', 640100);
INSERT INTO `city` VALUES ('长春市', 220100);
INSERT INTO `city` VALUES ('长沙市', 430100);

SET FOREIGN_KEY_CHECKS = 1;
