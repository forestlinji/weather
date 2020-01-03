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

 Date: 03/01/2020 12:10:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for weather
-- ----------------------------
DROP TABLE IF EXISTS `weather`;
CREATE TABLE `weather`  (
  `city_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date` date NOT NULL,
  `dayweather` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `daytemp` int(3) NULL DEFAULT NULL,
  `daywind` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `daypower` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nightweather` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nighttemp` int(3) NULL DEFAULT NULL,
  `nightwind` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nightpower` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`city_name`, `date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of weather
-- ----------------------------
INSERT INTO `weather` VALUES ('上海市', '2020-01-03', '小雨', 12, '西北', '≤3', '小雨', 9, '西北', '≤3');
INSERT INTO `weather` VALUES ('上海市', '2020-01-04', '阴', 12, '东北', '≤3', '阴', 9, '东北', '≤3');
INSERT INTO `weather` VALUES ('上海市', '2020-01-05', '阴', 15, '东南', '4', '多云', 10, '东南', '4');
INSERT INTO `weather` VALUES ('上海市', '2020-01-06', '多云', 18, '南', '4', '多云', 15, '南', '4');
INSERT INTO `weather` VALUES ('乌鲁木齐市', '2020-01-03', '雾', -8, '无风向', '≤3', '多云', -14, '无风向', '≤3');
INSERT INTO `weather` VALUES ('乌鲁木齐市', '2020-01-04', '多云', -5, '无风向', '≤3', '多云', -13, '无风向', '≤3');
INSERT INTO `weather` VALUES ('乌鲁木齐市', '2020-01-05', '多云', -5, '无风向', '≤3', '晴', -13, '无风向', '≤3');
INSERT INTO `weather` VALUES ('乌鲁木齐市', '2020-01-06', '晴', -3, '无风向', '≤3', '晴', -12, '无风向', '≤3');
INSERT INTO `weather` VALUES ('兰州市', '2020-01-03', '多云', 7, '东', '≤3', '多云', -6, '东', '≤3');
INSERT INTO `weather` VALUES ('兰州市', '2020-01-04', '多云', 6, '东南', '≤3', '多云', -3, '东南', '≤3');
INSERT INTO `weather` VALUES ('兰州市', '2020-01-05', '阴', 3, '东北', '≤3', '阴', -3, '东北', '≤3');
INSERT INTO `weather` VALUES ('兰州市', '2020-01-06', '阴', -2, '北', '≤3', '阴', -7, '北', '≤3');
INSERT INTO `weather` VALUES ('北京市', '2020-01-03', '晴', 6, '西南', '≤3', '晴', -5, '西南', '≤3');
INSERT INTO `weather` VALUES ('北京市', '2020-01-04', '晴', 8, '北', '≤3', '多云', -5, '北', '≤3');
INSERT INTO `weather` VALUES ('北京市', '2020-01-05', '多云', 2, '东北', '≤3', '小雪', -4, '东北', '≤3');
INSERT INTO `weather` VALUES ('北京市', '2020-01-06', '多云', 4, '西北', '≤3', '多云', -3, '西北', '≤3');
INSERT INTO `weather` VALUES ('南京市', '2020-01-03', '小雨', 8, '东北', '≤3', '阴', 7, '东北', '≤3');
INSERT INTO `weather` VALUES ('南京市', '2020-01-04', '多云', 12, '东', '≤3', '多云', 7, '东', '≤3');
INSERT INTO `weather` VALUES ('南京市', '2020-01-05', '小雨', 11, '东南', '4', '小雨', 8, '东南', '4');
INSERT INTO `weather` VALUES ('南京市', '2020-01-06', '小雨', 14, '西北', '≤3', '阴', 11, '西北', '≤3');
INSERT INTO `weather` VALUES ('南宁市', '2020-01-03', '多云', 24, '东南', '≤3', '多云', 17, '东南', '≤3');
INSERT INTO `weather` VALUES ('南宁市', '2020-01-04', '多云', 25, '东南', '≤3', '多云', 16, '东南', '≤3');
INSERT INTO `weather` VALUES ('南宁市', '2020-01-05', '多云', 24, '东南', '≤3', '多云', 16, '东南', '≤3');
INSERT INTO `weather` VALUES ('南宁市', '2020-01-06', '多云', 26, '东南', '≤3', '多云', 18, '东南', '≤3');
INSERT INTO `weather` VALUES ('南昌市', '2020-01-03', '阴', 12, '东北', '4', '小雨', 7, '东北', '4');
INSERT INTO `weather` VALUES ('南昌市', '2020-01-04', '阴', 13, '东北', '≤3', '阴', 9, '东北', '≤3');
INSERT INTO `weather` VALUES ('南昌市', '2020-01-05', '多云', 18, '北', '≤3', '多云', 11, '北', '≤3');
INSERT INTO `weather` VALUES ('南昌市', '2020-01-06', '多云', 24, '西南', '4', '多云', 9, '西南', '4');
INSERT INTO `weather` VALUES ('合肥市', '2020-01-03', '小雨', 9, '北', '≤3', '多云', 5, '北', '≤3');
INSERT INTO `weather` VALUES ('合肥市', '2020-01-04', '阴', 10, '东', '4', '小雨', 6, '东', '4');
INSERT INTO `weather` VALUES ('合肥市', '2020-01-05', '小雨', 12, '南', '4', '小雨', 8, '南', '4');
INSERT INTO `weather` VALUES ('合肥市', '2020-01-06', '小雨', 16, '西北', '4', '小雨', 9, '西北', '4');
INSERT INTO `weather` VALUES ('呼和浩特市', '2020-01-03', '晴', -1, '西', '≤3', '晴', -14, '西', '≤3');
INSERT INTO `weather` VALUES ('呼和浩特市', '2020-01-04', '晴', 0, '西', '≤3', '多云', -11, '西', '≤3');
INSERT INTO `weather` VALUES ('呼和浩特市', '2020-01-05', '小雪', -1, '东南', '≤3', '小雪', -6, '东南', '≤3');
INSERT INTO `weather` VALUES ('呼和浩特市', '2020-01-06', '晴', -1, '西', '≤3', '晴', -11, '西', '≤3');
INSERT INTO `weather` VALUES ('哈尔滨市', '2020-01-03', '晴', -13, '西南', '≤3', '多云', -24, '西南', '≤3');
INSERT INTO `weather` VALUES ('哈尔滨市', '2020-01-04', '晴', -12, '西北', '≤3', '晴', -21, '西北', '≤3');
INSERT INTO `weather` VALUES ('哈尔滨市', '2020-01-05', '晴', -8, '南', '≤3', '多云', -19, '南', '≤3');
INSERT INTO `weather` VALUES ('哈尔滨市', '2020-01-06', '小雪', -7, '东南', '≤3', '小雪', -16, '东南', '≤3');
INSERT INTO `weather` VALUES ('天津市', '2020-01-03', '晴', 5, '西', '≤3', '晴', -2, '西', '≤3');
INSERT INTO `weather` VALUES ('天津市', '2020-01-04', '晴', 6, '东南', '≤3', '晴', -2, '东南', '≤3');
INSERT INTO `weather` VALUES ('天津市', '2020-01-05', '阴', 5, '东北', '≤3', '小雪', -2, '东北', '≤3');
INSERT INTO `weather` VALUES ('天津市', '2020-01-06', '小雪', 4, '北', '≤3', '阴', -3, '北', '≤3');
INSERT INTO `weather` VALUES ('太原市', '2020-01-03', '多云', 7, '西', '≤3', '晴', -9, '西', '≤3');
INSERT INTO `weather` VALUES ('太原市', '2020-01-04', '多云', 8, '东', '4', '小雪', -7, '东', '4');
INSERT INTO `weather` VALUES ('太原市', '2020-01-05', '小雪', 1, '东', '4', '小雪', -6, '东', '4');
INSERT INTO `weather` VALUES ('太原市', '2020-01-06', '多云', 4, '东', '≤3', '中雪', -6, '东', '≤3');
INSERT INTO `weather` VALUES ('广州市', '2020-01-03', '多云', 23, '无风向', '≤3', '多云', 14, '无风向', '≤3');
INSERT INTO `weather` VALUES ('广州市', '2020-01-04', '多云', 25, '无风向', '≤3', '多云', 15, '无风向', '≤3');
INSERT INTO `weather` VALUES ('广州市', '2020-01-05', '多云', 24, '无风向', '≤3', '多云', 16, '无风向', '≤3');
INSERT INTO `weather` VALUES ('广州市', '2020-01-06', '多云', 25, '无风向', '≤3', '多云', 19, '无风向', '≤3');
INSERT INTO `weather` VALUES ('成都市', '2020-01-03', '多云', 13, '无风向', '≤3', '多云', 7, '无风向', '≤3');
INSERT INTO `weather` VALUES ('成都市', '2020-01-04', '小雨', 11, '无风向', '≤3', '阴', 7, '无风向', '≤3');
INSERT INTO `weather` VALUES ('成都市', '2020-01-05', '阴', 12, '无风向', '≤3', '小雨', 7, '无风向', '≤3');
INSERT INTO `weather` VALUES ('成都市', '2020-01-06', '小雨', 12, '无风向', '≤3', '多云', 6, '无风向', '≤3');
INSERT INTO `weather` VALUES ('拉萨市', '2020-01-03', '阴', 4, '无风向', '≤3', '阴', -4, '无风向', '≤3');
INSERT INTO `weather` VALUES ('拉萨市', '2020-01-04', '多云', 2, '南', '5', '多云', -4, '南', '5');
INSERT INTO `weather` VALUES ('拉萨市', '2020-01-05', '阴', 0, '南', '4', '多云', -5, '南', '4');
INSERT INTO `weather` VALUES ('拉萨市', '2020-01-06', '晴', 4, '无风向', '≤3', '晴', -9, '无风向', '≤3');
INSERT INTO `weather` VALUES ('昆明市', '2020-01-03', '多云', 19, '无风向', '≤3', '多云', 5, '无风向', '≤3');
INSERT INTO `weather` VALUES ('昆明市', '2020-01-04', '阵雨', 16, '南', '4', '阵雨', 7, '南', '4');
INSERT INTO `weather` VALUES ('昆明市', '2020-01-05', '中雨', 15, '西南', '4', '阵雨', 7, '西南', '4');
INSERT INTO `weather` VALUES ('昆明市', '2020-01-06', '阵雨', 16, '西南', '5', '阵雨', 6, '西南', '5');
INSERT INTO `weather` VALUES ('杭州市', '2020-01-03', '小雨', 10, '无风向', '≤3', '小雨', 8, '无风向', '≤3');
INSERT INTO `weather` VALUES ('杭州市', '2020-01-04', '阴', 11, '无风向', '≤3', '阴', 8, '无风向', '≤3');
INSERT INTO `weather` VALUES ('杭州市', '2020-01-05', '阴', 16, '西', '4', '多云', 9, '西', '4');
INSERT INTO `weather` VALUES ('杭州市', '2020-01-06', '多云', 22, '西', '4', '晴', 12, '西', '4');
INSERT INTO `weather` VALUES ('武汉市', '2020-01-03', '小雨', 6, '北', '≤3', '小雨', 4, '北', '≤3');
INSERT INTO `weather` VALUES ('武汉市', '2020-01-04', '小雨', 10, '东', '≤3', '小雨', 6, '东', '≤3');
INSERT INTO `weather` VALUES ('武汉市', '2020-01-05', '小雨', 10, '东', '≤3', '小雨', 8, '东', '≤3');
INSERT INTO `weather` VALUES ('武汉市', '2020-01-06', '小雨', 13, '北', '4', '中雨', 3, '北', '4');
INSERT INTO `weather` VALUES ('沈阳市', '2020-01-03', '重度霾', -1, '西南', '≤3', '重度霾', -16, '西南', '≤3');
INSERT INTO `weather` VALUES ('沈阳市', '2020-01-04', '重度霾', -3, '西北', '≤3', '晴', -15, '西北', '≤3');
INSERT INTO `weather` VALUES ('沈阳市', '2020-01-05', '晴', 1, '东南', '≤3', '多云', -7, '东南', '≤3');
INSERT INTO `weather` VALUES ('沈阳市', '2020-01-06', '多云', 2, '东南', '≤3', '多云', -13, '东南', '≤3');
INSERT INTO `weather` VALUES ('济南市', '2020-01-03', '晴', 7, '南', '≤3', '晴', -1, '南', '≤3');
INSERT INTO `weather` VALUES ('济南市', '2020-01-04', '晴', 9, '北', '≤3', '多云', 1, '北', '≤3');
INSERT INTO `weather` VALUES ('济南市', '2020-01-05', '小雨', 4, '东北', '≤3', '小雨', 1, '东北', '≤3');
INSERT INTO `weather` VALUES ('济南市', '2020-01-06', '小雨', 4, '东北', '5', '中雨', 1, '东北', '5');
INSERT INTO `weather` VALUES ('海口市', '2020-01-03', '多云', 24, '东北', '4', '多云', 19, '东北', '4');
INSERT INTO `weather` VALUES ('海口市', '2020-01-04', '多云', 25, '东', '4', '多云', 20, '东', '4');
INSERT INTO `weather` VALUES ('海口市', '2020-01-05', '小雨', 25, '东北', '4', '小雨', 20, '东北', '4');
INSERT INTO `weather` VALUES ('海口市', '2020-01-06', '小雨', 27, '无风向', '≤3', '多云', 20, '无风向', '≤3');
INSERT INTO `weather` VALUES ('石家庄市', '2020-01-03', '晴', 6, '南', '≤3', '晴', -4, '南', '≤3');
INSERT INTO `weather` VALUES ('石家庄市', '2020-01-04', '晴', 7, '北', '≤3', '多云', -3, '北', '≤3');
INSERT INTO `weather` VALUES ('石家庄市', '2020-01-05', '小雪', 1, '南', '≤3', '小雪', -3, '南', '≤3');
INSERT INTO `weather` VALUES ('石家庄市', '2020-01-06', '阴', 3, '北', '≤3', '小雪', -2, '北', '≤3');
INSERT INTO `weather` VALUES ('福州市', '2020-01-03', '多云', 23, '无风向', '≤3', '多云', 13, '无风向', '≤3');
INSERT INTO `weather` VALUES ('福州市', '2020-01-04', '阴', 22, '无风向', '≤3', '阴', 15, '无风向', '≤3');
INSERT INTO `weather` VALUES ('福州市', '2020-01-05', '阴', 19, '无风向', '≤3', '阴', 15, '无风向', '≤3');
INSERT INTO `weather` VALUES ('福州市', '2020-01-06', '阴', 24, '无风向', '≤3', '阴', 15, '无风向', '≤3');
INSERT INTO `weather` VALUES ('西宁市', '2020-01-03', '晴', 4, '西南', '≤3', '阴', -6, '西南', '≤3');
INSERT INTO `weather` VALUES ('西宁市', '2020-01-04', '阴', 2, '东', '≤3', '中雪', -3, '东', '≤3');
INSERT INTO `weather` VALUES ('西宁市', '2020-01-05', '阴', 1, '东南', '≤3', '阴', -5, '东南', '≤3');
INSERT INTO `weather` VALUES ('西宁市', '2020-01-06', '阴', -1, '东', '≤3', '阴', -9, '东', '≤3');
INSERT INTO `weather` VALUES ('西安市', '2020-01-03', '多云', 8, '东北', '≤3', '多云', -3, '东北', '≤3');
INSERT INTO `weather` VALUES ('西安市', '2020-01-04', '小雨', 7, '西北', '≤3', '小雨', 1, '西北', '≤3');
INSERT INTO `weather` VALUES ('西安市', '2020-01-05', '小雨', 4, '东北', '≤3', '雨夹雪', 0, '东北', '≤3');
INSERT INTO `weather` VALUES ('西安市', '2020-01-06', '小雨', 5, '南', '≤3', '中雨', 0, '南', '≤3');
INSERT INTO `weather` VALUES ('贵阳市', '2020-01-03', '小雨', 9, '北', '≤3', '小雨', 6, '北', '≤3');
INSERT INTO `weather` VALUES ('贵阳市', '2020-01-04', '小雨', 15, '南', '≤3', '阴', 9, '南', '≤3');
INSERT INTO `weather` VALUES ('贵阳市', '2020-01-05', '多云', 17, '南', '5', '阴', 13, '南', '5');
INSERT INTO `weather` VALUES ('贵阳市', '2020-01-06', '多云', 16, '南', '4', '阵雨', 6, '南', '4');
INSERT INTO `weather` VALUES ('郑州市', '2020-01-03', '多云', 9, '东南', '≤3', '多云', -2, '东南', '≤3');
INSERT INTO `weather` VALUES ('郑州市', '2020-01-04', '多云', 11, '东', '≤3', '中雨', 0, '东', '≤3');
INSERT INTO `weather` VALUES ('郑州市', '2020-01-05', '小雨', 3, '东北', '4', '中雨', 1, '东北', '4');
INSERT INTO `weather` VALUES ('郑州市', '2020-01-06', '中雨', 1, '北', '4', '中雨', 0, '北', '4');
INSERT INTO `weather` VALUES ('重庆市', '2020-01-03', '阴', 13, '西北', '≤3', '小雨', 10, '西北', '≤3');
INSERT INTO `weather` VALUES ('重庆市', '2020-01-04', '小雨', 12, '西南', '≤3', '小雨', 10, '西南', '≤3');
INSERT INTO `weather` VALUES ('重庆市', '2020-01-05', '小雨', 12, '东南', '≤3', '小雨', 10, '东南', '≤3');
INSERT INTO `weather` VALUES ('重庆市', '2020-01-06', '小雨', 15, '东', '≤3', '小雨', 13, '东', '≤3');
INSERT INTO `weather` VALUES ('银川市', '2020-01-03', '多云', 4, '无风向', '≤3', '多云', -8, '无风向', '≤3');
INSERT INTO `weather` VALUES ('银川市', '2020-01-04', '多云', 4, '无风向', '≤3', '小雪', -3, '无风向', '≤3');
INSERT INTO `weather` VALUES ('银川市', '2020-01-05', '小雪', 2, '无风向', '≤3', '阴', -3, '无风向', '≤3');
INSERT INTO `weather` VALUES ('银川市', '2020-01-06', '阴', 1, '无风向', '≤3', '阴', -3, '无风向', '≤3');
INSERT INTO `weather` VALUES ('长春市', '2020-01-03', '多云', -8, '西', '≤3', '多云', -16, '西', '≤3');
INSERT INTO `weather` VALUES ('长春市', '2020-01-04', '晴', -8, '西', '≤3', '晴', -15, '西', '≤3');
INSERT INTO `weather` VALUES ('长春市', '2020-01-05', '晴', -3, '西南', '≤3', '多云', -10, '西南', '≤3');
INSERT INTO `weather` VALUES ('长春市', '2020-01-06', '小雪', -2, '西南', '≤3', '多云', -14, '西南', '≤3');
INSERT INTO `weather` VALUES ('长沙市', '2020-01-03', '小雨', 8, '西北', '≤3', '小雨', 6, '西北', '≤3');
INSERT INTO `weather` VALUES ('长沙市', '2020-01-04', '阴', 11, '北', '≤3', '阴', 6, '北', '≤3');
INSERT INTO `weather` VALUES ('长沙市', '2020-01-05', '多云', 19, '南', '≤3', '多云', 8, '南', '≤3');
INSERT INTO `weather` VALUES ('长沙市', '2020-01-06', '多云', 20, '南', '≤3', '小雨', 7, '南', '≤3');

SET FOREIGN_KEY_CHECKS = 1;
