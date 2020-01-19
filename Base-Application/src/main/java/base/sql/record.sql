/*
 Navicat Premium Data Transfer

 Source Server         : 本地连接
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : 127.0.0.1:3306
 Source Schema         : record

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 19/01/2020 17:47:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '回答Id',
  `question_id` bigint(20) NULL DEFAULT NULL COMMENT '疑问Id',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '回答内容',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '回答人员昵称',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '回答日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES (1, 1, '没有为什么', 'You Happy Just Ok', '2019-12-02 14:58:39');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '评论Id',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '评论内容',
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品表名',
  `good_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品id',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `star` int(5) NULL DEFAULT 5 COMMENT '星星数',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '评论日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, '物美价廉', 'buoumao', '1', 'You Happy Just Ok', 5, '2019-12-02 15:54:17');

-- ----------------------------
-- Table structure for financial
-- ----------------------------
DROP TABLE IF EXISTS `financial`;
CREATE TABLE `financial`  (
  `id` bigint(255) NOT NULL AUTO_INCREMENT COMMENT '订单财务单',
  `order_id` bigint(255) NULL DEFAULT NULL COMMENT '订单Id',
  `outcome` decimal(20, 0) NULL DEFAULT NULL COMMENT '实退金额',
  `income` decimal(20, 0) NOT NULL COMMENT '进账',
  `status` int(255) NOT NULL COMMENT '状态 1-已创建 2-已退还 3-已完成',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `creator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of financial
-- ----------------------------
INSERT INTO `financial` VALUES (17, 125, NULL, 53, 1, '2020-01-19 09:39:46', '未登录');
INSERT INTO `financial` VALUES (18, 126, NULL, 53, 1, '2020-01-19 09:44:33', '未登录');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `tablename` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品表名',
  `good_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品Id',
  `content` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '提问内容',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '提问人昵称',
  `status` int(2) NULL DEFAULT 0 COMMENT '回答状态0: 未回答 1: 已回答',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (1, 'buoumao', '1', '为什么', 'You Happy Just Ok', 1, '2019-12-02 14:40:22');
INSERT INTO `question` VALUES (2, 'kouhong', '2', '为什么', 'You Happy Just Ok', 0, '2019-12-02 14:40:22');
INSERT INTO `question` VALUES (3, 'buoumao', '3', '为什么', 'You Happy Just Ok', 0, '2019-12-02 14:40:22');
INSERT INTO `question` VALUES (11, 'buoumao', '4', '为什么', 'You Happy Just Ok', 0, '2019-12-02 14:40:22');
INSERT INTO `question` VALUES (15, 'buoumao', '5', '为什么', 'You Happy Just Ok', 0, '2019-12-02 14:40:22');
INSERT INTO `question` VALUES (16, 'buoumao', '6', '为什么', 'You Happy Just Ok', 0, '2019-12-02 14:40:22');

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '回复Id',
  `comment_id` bigint(20) NULL DEFAULT NULL COMMENT '评论Id',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '回复内容',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '回复人昵称',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '回复日期',
  `available` int(2) NULL DEFAULT 1 COMMENT '0: 已屏蔽 1:未屏蔽',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES (1, 1, '左梦柯傻逼', 'Driver King', '2019-12-02 15:55:12', 1);
INSERT INTO `reply` VALUES (2, 1, '左梦柯傻逼', 'Driver King', '2019-12-03 10:35:25', 1);

SET FOREIGN_KEY_CHECKS = 1;
