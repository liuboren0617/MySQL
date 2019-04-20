/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : mysql

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 20/04/2019 14:44:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `age` int(3) NULL DEFAULT NULL COMMENT '年龄',
  `sex` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '0是男人1是女人',
  `s_id` int(11) NULL DEFAULT NULL COMMENT '学号',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `s_id_index`(`s_id`, `name`, `age`) USING BTREE COMMENT '学号的唯一索引'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('小明', '1', 17, '0', 1);
INSERT INTO `student` VALUES ('小雅', '10', 18, '0', 10);
INSERT INTO `student` VALUES ('小李', '2', 17, '0', 2);
INSERT INTO `student` VALUES ('小小', '3', 17, '0', 3);
INSERT INTO `student` VALUES ('小啊', '4', 17, '0', 4);
INSERT INTO `student` VALUES ('小哈', '5', 18, '0', 5);
INSERT INTO `student` VALUES ('小哈', '6', 18, '0', 6);
INSERT INTO `student` VALUES ('小哈', '7', 18, '0', 7);
INSERT INTO `student` VALUES ('小哈', '8', 18, '0', 8);
INSERT INTO `student` VALUES ('小哈', '9', 18, '0', 9);

SET FOREIGN_KEY_CHECKS = 1;
