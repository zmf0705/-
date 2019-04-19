/*
 Navicat Premium Data Transfer

 Source Server         : waimai
 Source Server Type    : MySQL
 Source Server Version : 50540
 Source Host           : localhost:3306
 Source Schema         : maven

 Target Server Type    : MySQL
 Target Server Version : 50540
 File Encoding         : 65001

 Date: 17/04/2019 14:09:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for audit
-- ----------------------------
DROP TABLE IF EXISTS `audit`;
CREATE TABLE `audit`  (
  `p_id` int(11) NOT NULL,
  `audit_advice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `audit_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`p_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of audit
-- ----------------------------
INSERT INTO `audit` VALUES (14, '1', '2019-04-17 14:07:19');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `projects_id`(`p_id`) USING BTREE,
  INDEX `users_id`(`u_id`) USING BTREE,
  CONSTRAINT `projects_id` FOREIGN KEY (`p_id`) REFERENCES `project` (`p_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `project_id` FOREIGN KEY (`p_id`) REFERENCES `project` (`p_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_id` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_id` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 1, 15);
INSERT INTO `orders` VALUES (2, 2, 15);
INSERT INTO `orders` VALUES (3, 6, 15);
INSERT INTO `orders` VALUES (4, 6, 15);
INSERT INTO `orders` VALUES (5, 7, 15);

-- ----------------------------
-- Table structure for paytype
-- ----------------------------
DROP TABLE IF EXISTS `paytype`;
CREATE TABLE `paytype`  (
  `payId` int(11) NOT NULL AUTO_INCREMENT,
  `payName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`payId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of paytype
-- ----------------------------
INSERT INTO `paytype` VALUES (0, '现金');
INSERT INTO `paytype` VALUES (1, '支付宝');
INSERT INTO `paytype` VALUES (2, '微信');
INSERT INTO `paytype` VALUES (3, '刷卡');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`  (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `area` int(255) DEFAULT NULL,
  `is_cad` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `serviceId` int(11) DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` double(10, 2) DEFAULT NULL,
  `payId` int(11) DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_audit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_pay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`p_id`) USING BTREE,
  INDEX `u_id`(`u_id`) USING BTREE,
  INDEX `serviceId`(`serviceId`) USING BTREE,
  INDEX `payId`(`payId`) USING BTREE,
  CONSTRAINT `payId` FOREIGN KEY (`payId`) REFERENCES `paytype` (`payId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `serviceId` FOREIGN KEY (`serviceId`) REFERENCES `service` (`serviceId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `u_id` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES (1, '建造大楼', 100, '是', 100, 0, '', '18888888888', 100000.00, 0, '建造大楼', '通过', '已支付', '已完工', 12);
INSERT INTO `project` VALUES (2, '1', 1, '1', 1, 1, '1', '', 1.00, 0, '1', '通过', '已支付', '已完工', 12);
INSERT INTO `project` VALUES (6, '1', 1, '11', 1, 2, '1', '1', 1.00, 2, '1', '通过', '已支付', '已完工', 12);
INSERT INTO `project` VALUES (7, '2', 2, '2', 2, 3, '2', '2', 2.00, 0, '2', '通过', '已支付', '未完工', 12);
INSERT INTO `project` VALUES (8, '3', 3, '3', 3, 0, '3', '3', 3.00, 1, '3', '通过', '未支付', '未完工', 15);
INSERT INTO `project` VALUES (11, '2', 3123, '2', 231, 1, '42', '123', 123.00, 0, '3', '通过', '未支付', '未完工', 15);
INSERT INTO `project` VALUES (13, '11', 1, '111', 100, 2, '11', '1', 1.00, 1, '1', '通过', '未支付', '未完工', 15);
INSERT INTO `project` VALUES (14, '1', 1, '1', 1, 3, '1', '1', 1.00, 0, '1', '通过', '未支付', '未完工', 12);
INSERT INTO `project` VALUES (15, '1', 1, '1', 11, 0, '11', '1', 1.00, 1, '111', '0', '未支付', '未完工', 17);
INSERT INTO `project` VALUES (16, '2', 2, '2', 200, 0, '2', '2', 2.00, 0, '2', '0', '未支付', '未完工', 17);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (0, '管理员');
INSERT INTO `role` VALUES (1, '甲方');
INSERT INTO `role` VALUES (2, '乙方');

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service`  (
  `serviceId` int(11) NOT NULL AUTO_INCREMENT,
  `serviceName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`serviceId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of service
-- ----------------------------
INSERT INTO `service` VALUES (0, '学校');
INSERT INTO `service` VALUES (1, '商场');
INSERT INTO `service` VALUES (2, '写字楼');
INSERT INTO `service` VALUES (3, '医院');
INSERT INTO `service` VALUES (4, '酒店');
INSERT INTO `service` VALUES (5, '其他');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `status` int(255) DEFAULT NULL,
  PRIMARY KEY (`u_id`) USING BTREE,
  UNIQUE INDEX `user_name`(`user_name`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  CONSTRAINT `role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (12, 'zz', 'zz', 'zz', 'zz', 1, 1);
INSERT INTO `user` VALUES (15, '1', '1', '1', '1', 2, 1);
INSERT INTO `user` VALUES (17, 'wangrunsjob@qq.com', '123456', '18688888888', '1', 1, 1);
INSERT INTO `user` VALUES (18, 'admin', 'admin', '18688888888', '1', 0, 1);
INSERT INTO `user` VALUES (19, 'z', 'z', 'z', 'z', 2, 1);

-- ----------------------------
-- Table structure for user_status
-- ----------------------------
DROP TABLE IF EXISTS `user_status`;
CREATE TABLE `user_status`  (
  `statusId` int(11) NOT NULL,
  `statusName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`statusId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_status
-- ----------------------------
INSERT INTO `user_status` VALUES (1, '接单');
INSERT INTO `user_status` VALUES (2, '不接单');

SET FOREIGN_KEY_CHECKS = 1;
