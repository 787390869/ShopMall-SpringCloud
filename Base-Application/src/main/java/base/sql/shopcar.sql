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

 Date: 19/01/2020 17:48:07
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
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `creator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `updator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shopcars
-- ----------------------------
INSERT INTO `shopcars` VALUES (34, 'You happy just Ok', '布偶猫', 17, 'TJDH天精地华布偶猫活体纯种宠物幼猫咪活体蓝眼长毛猫视频挑选爱宠高品质公', 'images/布偶猫/bb8cc77e85659877.jpg', '7500.00', 5);
INSERT INTO `shopcars` VALUES (35, 'pink pink ', '仙女', 1, '黛苇连衣裙女雪纺2019夏装新品时尚修身显瘦短袖印花性感蕾丝连衣裙女假两件套装裙夏季女装沙滩裙子天蓝色M（85-100斤）', 'images/仙女/86126cac6c8e0701.jpg', '99.00', 3);
INSERT INTO `shopcars` VALUES (36, 'pink pink ', '仙女', 30, '2019新款新品泰国普吉岛三亚沙滩裙春夏秋季系带波西米亚长裙碎花雪纺海边海滩度假收腰显瘦女装连衣裙子图片色L', 'images/仙女/57a5eb58Na6bc032b.jpg', '99.00', 1);
INSERT INTO `shopcars` VALUES (37, 'You happy just Ok', '仙女', 1, '黛苇连衣裙女雪纺2019夏装新品时尚修身显瘦短袖印花性感蕾丝连衣裙女假两件套装裙夏季女装沙滩裙子天蓝色M（85-100斤）', 'images/仙女/86126cac6c8e0701.jpg', '99.00', 4);
INSERT INTO `shopcars` VALUES (41, 'You happy just Ok', 'springboot', 2, 'SpringBoot编程思想（核心篇）（限量版亲笔签名书签随机发售）', 'images/springboot/114c8b9389a9cca8.jpg', '108.60', 4);
INSERT INTO `shopcars` VALUES (42, 'You happy just Ok', 'springboot', 11, 'SpringBoot2企业应用实战', 'images/springboot/5b0df55eN35642750.jpg', '53.40', 1);

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` bigint(255) NOT NULL AUTO_INCREMENT COMMENT '订单Id',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订单编号',
  `status` int(2) NOT NULL COMMENT '0-待支付 1-已支付 2-已取消 3-支付超时 8-异常',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `creator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  `prepaid` decimal(20, 0) NOT NULL COMMENT '订单预付价',
  `paid` decimal(20, 0) NULL DEFAULT NULL COMMENT '订单已支付价',
  `platform` int(2) NULL DEFAULT 3 COMMENT '支付平台: 1-支付宝 2-微信 3-debug',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '订单备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES (111, '3c7f3778CCC99B5BC1B9BEC12C3D0A229447ad7b', 3, '2020-01-15 03:55:53', '张自强', 69, NULL, 0, NULL);
INSERT INTO `t_order` VALUES (112, '40c428C935E98A82EC99B136A3E210F4116C5a5d', 3, '2020-01-15 04:26:48', '张自强', 69, NULL, 0, NULL);
INSERT INTO `t_order` VALUES (113, '521bD66F476E1D0E250E383AA524BC541EB81356', 8, '2020-01-19 08:57:15', '张自强', 261, 261, 1, NULL);
INSERT INTO `t_order` VALUES (114, '34ac4452E72340E1E21F3416AD9DE3E8ECFE3f16', 3, '2020-01-19 09:03:19', '张自强', 152, NULL, 0, NULL);
INSERT INTO `t_order` VALUES (115, 'f03dB7AD40DB0D0681D26F36F56C4093B853b8e3', 1, '2020-01-19 09:15:13', '张自强', 152, 152, 1, NULL);
INSERT INTO `t_order` VALUES (116, '37b290E327820E041F860C2A828F741B917Cea8b', 1, '2020-01-19 09:16:40', '张自强', 53, 53, 1, NULL);
INSERT INTO `t_order` VALUES (117, 'ab6fFE6D30B44C9939B4F961C84AE1269EFD023d', 3, '2020-01-19 09:26:14', '张自强', 53, NULL, 0, NULL);
INSERT INTO `t_order` VALUES (118, '31638E258959E2CAAAE8C9953DF27A3EE2AE8729', 3, '2020-01-19 09:27:32', '张自强', 53, NULL, 0, NULL);
INSERT INTO `t_order` VALUES (119, '2118FE422B488514B01F71F9B539E2C631E8c5eb', 2, '2020-01-19 09:28:27', '张自强', 53, NULL, 0, NULL);
INSERT INTO `t_order` VALUES (120, '1610CA1AEA3D0BEB2516B13CC26E55F3E33De838', 2, '2020-01-19 09:30:18', '张自强', 53, NULL, 0, NULL);
INSERT INTO `t_order` VALUES (121, '13dd9533531193FC6DE08C9103EA45073B051581', 2, '2020-01-19 09:31:19', '张自强', 53, NULL, 0, NULL);
INSERT INTO `t_order` VALUES (122, '4b01061A5E6B20185C13B0DD1B965CD73FB3cba9', 8, '2020-01-19 09:32:23', '张自强', 53, 53, 1, NULL);
INSERT INTO `t_order` VALUES (123, '4e15DDF0CA1348E5812C0C9B79A099F38283087b', 2, '2020-01-19 09:34:40', '张自强', 7599, NULL, 0, NULL);
INSERT INTO `t_order` VALUES (124, 'c03189ACD1EC4F356C5CC2C58BFA04FDCE631019', 8, '2020-01-19 09:37:51', '张自强', 53, 53, 1, NULL);
INSERT INTO `t_order` VALUES (125, '0f9eCF319329197F206CD62EE5BC562BC289c2aa', 8, '2020-01-19 09:39:33', '张自强', 53, 53, 1, NULL);
INSERT INTO `t_order` VALUES (126, '9ad4D4E85F968FAEA1E800BBC72FBBD5D2D6aed1', 1, '2020-01-19 09:44:18', '张自强', 53, 53, 1, NULL);
INSERT INTO `t_order` VALUES (127, '1a97CE7EA44327EEB8F30C505EA80CA203B26da8', 0, '2020-01-19 09:45:42', '张自强', 53, NULL, 0, NULL);

-- ----------------------------
-- Table structure for t_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_order_goods`;
CREATE TABLE `t_order_goods`  (
  `id` bigint(255) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_id` bigint(255) NOT NULL COMMENT '主订单Id',
  `tb_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品表名',
  `goods_id` int(255) NOT NULL COMMENT '商品Id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order_goods
-- ----------------------------
INSERT INTO `t_order_goods` VALUES (18, 111, 'fushi', 4);
INSERT INTO `t_order_goods` VALUES (19, 112, 'erji', 3);
INSERT INTO `t_order_goods` VALUES (20, 113, 'xiannu', 1);
INSERT INTO `t_order_goods` VALUES (21, 113, 'springboot', 2);
INSERT INTO `t_order_goods` VALUES (22, 113, 'springboot', 11);
INSERT INTO `t_order_goods` VALUES (23, 114, 'xiannu', 1);
INSERT INTO `t_order_goods` VALUES (24, 114, 'springboot', 11);
INSERT INTO `t_order_goods` VALUES (25, 115, 'xiannu', 1);
INSERT INTO `t_order_goods` VALUES (26, 115, 'springboot', 11);
INSERT INTO `t_order_goods` VALUES (27, 116, 'springboot', 11);
INSERT INTO `t_order_goods` VALUES (28, 117, 'springboot', 11);
INSERT INTO `t_order_goods` VALUES (29, 118, 'springboot', 11);
INSERT INTO `t_order_goods` VALUES (30, 119, 'springboot', 11);
INSERT INTO `t_order_goods` VALUES (31, 120, 'springboot', 11);
INSERT INTO `t_order_goods` VALUES (32, 121, 'springboot', 11);
INSERT INTO `t_order_goods` VALUES (33, 122, 'springboot', 11);
INSERT INTO `t_order_goods` VALUES (34, 123, 'buoumao', 17);
INSERT INTO `t_order_goods` VALUES (35, 123, 'xiannu', 1);
INSERT INTO `t_order_goods` VALUES (36, 124, 'springboot', 11);
INSERT INTO `t_order_goods` VALUES (37, 125, 'springboot', 11);
INSERT INTO `t_order_goods` VALUES (38, 126, 'springboot', 11);
INSERT INTO `t_order_goods` VALUES (39, 127, 'springboot', 11);

-- ----------------------------
-- Table structure for t_order_param
-- ----------------------------
DROP TABLE IF EXISTS `t_order_param`;
CREATE TABLE `t_order_param`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '参数Id',
  `expiration_time` int(10) NOT NULL COMMENT '订单支付时间',
  `max_audit_price` decimal(10, 2) NOT NULL COMMENT '不需要审核最大值',
  `redis_order_key_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订单rediskey名称',
  `unsub_percent` decimal(10, 2) NOT NULL COMMENT '退订百分比',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order_param
-- ----------------------------
INSERT INTO `t_order_param` VALUES (1, 180, 5000.00, 'order:create:', 0.90);

SET FOREIGN_KEY_CHECKS = 1;
