/*
 Navicat Premium Data Transfer

 Source Server         : demo01
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : calculatedanongzhu

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 30/04/2021 16:17:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for plantings
-- ----------------------------
DROP TABLE IF EXISTS `plantings`;
CREATE TABLE `plantings`  (
  `ID` int(11) NULL DEFAULT NULL COMMENT '种植id',
  `PLANT_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '植株名称',
  `PER_PLANT_PRICE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单株价格/元',
  `CALLBACK_PRICE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回收价格/KG',
  `YIELD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单株预计产量/KG',
  `TOTAL_LESS_YIELD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '总计减产量/KG',
  `ESTIMATE_ALL_CALLBACK_INCOME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预计总回收收入/元',
  `PLANT_NUMBER` int(11) NULL DEFAULT NULL COMMENT '种植数量/棵',
  `PLANT_DATE` date NULL DEFAULT NULL COMMENT '种下日期',
  `GROW_DATE` datetime NULL DEFAULT NULL COMMENT '生长期',
  `FRUIT_DATE` datetime NULL DEFAULT NULL COMMENT '结果期',
  `ESTIMATE_PULL_OUT_DATE` datetime NULL DEFAULT NULL COMMENT '预计拔苗日期'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of plantings
-- ----------------------------

-- ----------------------------
-- Table structure for recharge
-- ----------------------------
DROP TABLE IF EXISTS `recharge`;
CREATE TABLE `recharge`  (
  `ID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '充值id',
  `RECHARGE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '充值金额',
  `RECHARGE_DATE` datetime NULL DEFAULT NULL COMMENT '充值日期'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recharge
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
