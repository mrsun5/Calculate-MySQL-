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

 Date: 11/05/2021 08:57:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for plantings
-- ----------------------------
DROP TABLE IF EXISTS `plantings`;
CREATE TABLE `plantings`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '种植id',
  `PLANT_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '植株名称',
  `TOTAL_LESS_YIELD` decimal(65, 5) NULL DEFAULT NULL COMMENT '总计减产量/KG',
  `ESTIMATE_ALL_CALLBACK_INCOME` decimal(65, 5) NULL DEFAULT NULL COMMENT '预计总回收收入/元',
  `PLANT_NUMBER` int(11) NULL DEFAULT NULL COMMENT '种植数量/棵',
  `PLANT_DATE` date NULL DEFAULT NULL COMMENT '种下日期',
  `ESTIMATE_PULLOUT_DATE` date NULL DEFAULT NULL COMMENT '算上维护的 预计拔苗日期',
  `MAINTAIN_DATE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '维护日期统计',
  `IS_PULLOUT` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否已拔苗，ispulledout为已拔苗，isnotpulledout为未拔苗',
  `MAINTENANCE_DAYCOUNT` int(200) NULL DEFAULT NULL COMMENT '维护天数统计',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of plantings
-- ----------------------------
INSERT INTO `plantings` VALUES (4, '大樱桃', NULL, 3750.00000, 50, '2021-04-05', '2021-04-20', NULL, 'ispulledout', NULL);

-- ----------------------------
-- Table structure for recharge
-- ----------------------------
DROP TABLE IF EXISTS `recharge`;
CREATE TABLE `recharge`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '充值id',
  `RECHARGE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '充值金额',
  `RECHARGE_DATE` date NULL DEFAULT NULL COMMENT '充值日期',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of recharge
-- ----------------------------
INSERT INTO `recharge` VALUES (1, '500.21', '2021-10-10');

-- ----------------------------
-- Table structure for seeds
-- ----------------------------
DROP TABLE IF EXISTS `seeds`;
CREATE TABLE `seeds`  (
  `SEEDS_ID` int(11) NULL DEFAULT NULL COMMENT '作物ID',
  `PLANT_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作物名称',
  `PER_PLANT_PRICE` decimal(65, 5) NULL DEFAULT NULL COMMENT '单株购买价格/颗',
  `CALL_BACK_PRICE` decimal(65, 5) NULL DEFAULT NULL COMMENT '回收价格 元/KG',
  `YIELD` decimal(65, 5) NULL DEFAULT NULL COMMENT '单株预计产量',
  `GROW_DATE` int(200) NULL DEFAULT NULL COMMENT '生长天数',
  `FRUIT_DATE` int(200) NULL DEFAULT NULL COMMENT '结果天数',
  `ESTIMATE_PULLOUT_DATE` int(200) NULL DEFAULT NULL COMMENT '正常的预计拔苗天数',
  `PER_ESTIMATE_CALLBACK_INCOME` decimal(65, 5) NULL DEFAULT NULL COMMENT '预计单株去水肥种植毛收入'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seeds
-- ----------------------------
INSERT INTO `seeds` VALUES (1, '大樱桃', 50.00000, 75.00000, 1.00000, 5, 10, 15, 25.00000);

-- ----------------------------
-- Table structure for total_points
-- ----------------------------
DROP TABLE IF EXISTS `total_points`;
CREATE TABLE `total_points`  (
  `TOTAL_POINTS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当前总积分余量'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of total_points
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
