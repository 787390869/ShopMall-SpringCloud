/*
 Navicat Premium Data Transfer

 Source Server         : 本地连接
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : 127.0.0.1:3306
 Source Schema         : shopcar

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 09/01/2020 10:53:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cancel_order
-- ----------------------------
DROP TABLE IF EXISTS `cancel_order`;
CREATE TABLE `cancel_order`  (
  `id` bigint(255) NOT NULL AUTO_INCREMENT COMMENT '退订单Id',
  `order_id` bigint(255) NOT NULL COMMENT '主订单id',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '1-已创建 2-审核中 3-已退订',
  `create_time` date NOT NULL COMMENT '创建时间',
  `creator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  `update_time` date NULL DEFAULT NULL COMMENT '修改时间',
  `updator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cancel_order
-- ----------------------------
INSERT INTO `cancel_order` VALUES (2, 10, '2', '2020-01-07', '张自强', NULL, NULL);
INSERT INTO `cancel_order` VALUES (4, 11, '3', '2020-01-07', '张自强', NULL, NULL);
INSERT INTO `cancel_order` VALUES (5, 12, '3', '2020-01-07', '张自强', NULL, NULL);
INSERT INTO `cancel_order` VALUES (6, 13, '3', '2020-01-07', '张自强', NULL, NULL);

-- ----------------------------
-- Table structure for shopcars
-- ----------------------------
DROP TABLE IF EXISTS `shopcars`;
CREATE TABLE `shopcars`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tablename` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goodid` int(11) NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `imageUrl` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `shopcount` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shopcars
-- ----------------------------
INSERT INTO `shopcars` VALUES (34, 'You happy just Ok', '布偶猫', 17, 'TJDH天精地华布偶猫活体纯种宠物幼猫咪活体蓝眼长毛猫视频挑选爱宠高品质公', 'images/布偶猫/bb8cc77e85659877.jpg', '7500.00', 5);
INSERT INTO `shopcars` VALUES (35, 'pink pink ', '仙女', 1, '黛苇连衣裙女雪纺2019夏装新品时尚修身显瘦短袖印花性感蕾丝连衣裙女假两件套装裙夏季女装沙滩裙子天蓝色M（85-100斤）', 'images/仙女/86126cac6c8e0701.jpg', '99.00', 3);
INSERT INTO `shopcars` VALUES (36, 'pink pink ', '仙女', 30, '2019新款新品泰国普吉岛三亚沙滩裙春夏秋季系带波西米亚长裙碎花雪纺海边海滩度假收腰显瘦女装连衣裙子图片色L', 'images/仙女/57a5eb58Na6bc032b.jpg', '99.00', 1);
INSERT INTO `shopcars` VALUES (37, 'You happy just Ok', '仙女', 1, '黛苇连衣裙女雪纺2019夏装新品时尚修身显瘦短袖印花性感蕾丝连衣裙女假两件套装裙夏季女装沙滩裙子天蓝色M（85-100斤）', 'images/仙女/86126cac6c8e0701.jpg', '99.00', 3);

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` bigint(255) NOT NULL AUTO_INCREMENT COMMENT '订单Id',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订单编号',
  `tb_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品表名',
  `goods_id` int(11) NOT NULL COMMENT '商品Id',
  `status` int(2) NOT NULL COMMENT '0-待支付 1-已支付 2-已取消 3-支付超时 8-异常',
  `create_time` date NOT NULL COMMENT '创建时间',
  `creator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  `prepaid` decimal(20, 0) NOT NULL COMMENT '订单预付价',
  `paid` decimal(20, 0) NULL DEFAULT NULL COMMENT '订单已支付价',
  `platform` int(2) NULL DEFAULT 3 COMMENT '支付平台: 1-支付宝 2-微信 3-debug',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '订单备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES (10, 'af2201071520435b1f', 'buoumao', 1, 2, '2020-01-07', '张自强', 35000, 35000, 0, NULL);
INSERT INTO `t_order` VALUES (11, '4f530107154537e5b8', 'tushu', 1, 2, '2020-01-07', '张自强', 49, 48, 0, NULL);
INSERT INTO `t_order` VALUES (12, 'f86301071741529216', 'tushu', 2, 2, '2020-01-07', '张自强', 37, 48, 0, NULL);
INSERT INTO `t_order` VALUES (13, '1c1401071744278bb3', 'tushu', 2, 2, '2020-01-07', '张自强', 37, 48, 0, NULL);

SET FOREIGN_KEY_CHECKS = 1;
