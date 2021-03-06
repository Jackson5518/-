/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : 192.168.85.132:3306
 Source Schema         : wx_shop

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 07/03/2020 18:07:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '123456', '744621980@qq.com', '17805054444', 0);

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_id` int(10) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `1111`(`user_openid`) USING BTREE,
  INDEX `1112`(`goods_id`) USING BTREE,
  CONSTRAINT `1111` FOREIGN KEY (`user_openid`) REFERENCES `user` (`open_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `1112` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 'oFjV55Ikf-vSF-1iIiNkkgfY0geA', 1, '????????????', '2020-03-07 11:31:47');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `_id` int(10) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type_id` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`_id`) USING BTREE,
  INDEX `type`(`type_id`) USING BTREE,
  CONSTRAINT `type` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, 'http://localhost:8081/upload/imgs/20200306/1583493859933_151.jpg', '??????1', '90.99', 1);
INSERT INTO `goods` VALUES (2, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????2', '90.99', 1);
INSERT INTO `goods` VALUES (3, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????3', '90.99', 1);
INSERT INTO `goods` VALUES (4, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????4', '90.99', 1);
INSERT INTO `goods` VALUES (5, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????5', '90.99', 1);
INSERT INTO `goods` VALUES (6, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????6', '90.99', 1);
INSERT INTO `goods` VALUES (7, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????7', '90.99', 1);
INSERT INTO `goods` VALUES (8, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????8', '90.99', 1);
INSERT INTO `goods` VALUES (9, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????9', '90.99', 1);
INSERT INTO `goods` VALUES (10, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????10', '90.99', 1);
INSERT INTO `goods` VALUES (11, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????11', '90.99', 1);
INSERT INTO `goods` VALUES (12, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????12', '90.99', 1);
INSERT INTO `goods` VALUES (13, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????13', '90.99', 1);
INSERT INTO `goods` VALUES (14, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????14', '90.99', 1);
INSERT INTO `goods` VALUES (15, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????15', '90.99', 1);
INSERT INTO `goods` VALUES (16, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????16', '90.99', 1);
INSERT INTO `goods` VALUES (17, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????17', '90.99', 1);
INSERT INTO `goods` VALUES (18, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????18', '90.99', 1);
INSERT INTO `goods` VALUES (19, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????19', '90.99', 1);
INSERT INTO `goods` VALUES (20, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????20', '90.99', 1);
INSERT INTO `goods` VALUES (21, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????21', '90.99', 2);
INSERT INTO `goods` VALUES (22, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????22', '90.99', 2);
INSERT INTO `goods` VALUES (23, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????23', '90.99', 2);
INSERT INTO `goods` VALUES (24, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????24', '90.99', 2);
INSERT INTO `goods` VALUES (25, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????25', '90.99', 2);
INSERT INTO `goods` VALUES (26, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????26', '90.99', 2);
INSERT INTO `goods` VALUES (27, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????27', '90.99', 2);
INSERT INTO `goods` VALUES (28, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????28', '90.99', 2);
INSERT INTO `goods` VALUES (29, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????29', '90.99', 2);
INSERT INTO `goods` VALUES (30, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????30', '90.99', 2);
INSERT INTO `goods` VALUES (31, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????31', '90.99', 2);
INSERT INTO `goods` VALUES (32, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????32', '90.99', 2);
INSERT INTO `goods` VALUES (33, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????33', '90.99', 2);
INSERT INTO `goods` VALUES (34, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????34', '90.99', 2);
INSERT INTO `goods` VALUES (35, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????35', '90.99', 2);
INSERT INTO `goods` VALUES (36, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????36', '90.99', 2);
INSERT INTO `goods` VALUES (37, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????37', '90.99', 2);
INSERT INTO `goods` VALUES (38, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????38', '90.99', 2);
INSERT INTO `goods` VALUES (39, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????39', '90.99', 2);
INSERT INTO `goods` VALUES (40, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????40', '90.99', 2);
INSERT INTO `goods` VALUES (41, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????41', '90.99', 3);
INSERT INTO `goods` VALUES (42, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????42', '90.99', 3);
INSERT INTO `goods` VALUES (43, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????43', '90.99', 3);
INSERT INTO `goods` VALUES (44, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????44', '90.99', 3);
INSERT INTO `goods` VALUES (45, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????45', '90.99', 3);
INSERT INTO `goods` VALUES (46, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????46', '90.99', 3);
INSERT INTO `goods` VALUES (47, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????47', '90.99', 3);
INSERT INTO `goods` VALUES (48, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????48', '90.99', 3);
INSERT INTO `goods` VALUES (49, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????49', '90.99', 3);
INSERT INTO `goods` VALUES (50, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????50', '90.99', 3);
INSERT INTO `goods` VALUES (51, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????51', '90.99', 3);
INSERT INTO `goods` VALUES (52, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????52', '90.99', 3);
INSERT INTO `goods` VALUES (53, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????53', '90.99', 3);
INSERT INTO `goods` VALUES (54, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????54', '90.99', 3);
INSERT INTO `goods` VALUES (55, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????55', '90.99', 3);
INSERT INTO `goods` VALUES (56, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????56', '90.99', 3);
INSERT INTO `goods` VALUES (57, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????57', '90.99', 3);
INSERT INTO `goods` VALUES (58, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????58', '90.99', 3);
INSERT INTO `goods` VALUES (59, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????59', '90.99', 3);
INSERT INTO `goods` VALUES (60, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????60', '90.99', 3);
INSERT INTO `goods` VALUES (61, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????61', '90.99', 4);
INSERT INTO `goods` VALUES (62, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????62', '90.99', 4);
INSERT INTO `goods` VALUES (63, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????63', '90.99', 4);
INSERT INTO `goods` VALUES (64, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????64', '90.99', 4);
INSERT INTO `goods` VALUES (65, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????65', '90.99', 4);
INSERT INTO `goods` VALUES (66, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????66', '90.99', 4);
INSERT INTO `goods` VALUES (67, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????67', '90.99', 4);
INSERT INTO `goods` VALUES (68, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????68', '90.99', 4);
INSERT INTO `goods` VALUES (69, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????69', '90.99', 4);
INSERT INTO `goods` VALUES (70, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????70', '90.99', 4);
INSERT INTO `goods` VALUES (71, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????71', '90.99', 4);
INSERT INTO `goods` VALUES (72, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????72', '90.99', 4);
INSERT INTO `goods` VALUES (73, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????73', '90.99', 4);
INSERT INTO `goods` VALUES (74, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????74', '90.99', 4);
INSERT INTO `goods` VALUES (75, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????75', '90.99', 4);
INSERT INTO `goods` VALUES (76, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????76', '90.99', 4);
INSERT INTO `goods` VALUES (77, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????77', '90.99', 4);
INSERT INTO `goods` VALUES (78, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????78', '90.99', 4);
INSERT INTO `goods` VALUES (79, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????79', '90.99', 4);
INSERT INTO `goods` VALUES (80, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????80', '90.99', 4);
INSERT INTO `goods` VALUES (81, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????81', '90.99', 5);
INSERT INTO `goods` VALUES (82, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????82', '90.99', 5);
INSERT INTO `goods` VALUES (83, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????83', '90.99', 5);
INSERT INTO `goods` VALUES (84, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????84', '90.99', 5);
INSERT INTO `goods` VALUES (85, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????85', '90.99', 5);
INSERT INTO `goods` VALUES (86, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????86', '90.99', 5);
INSERT INTO `goods` VALUES (87, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????87', '90.99', 5);
INSERT INTO `goods` VALUES (88, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????88', '90.99', 5);
INSERT INTO `goods` VALUES (89, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????89', '90.99', 5);
INSERT INTO `goods` VALUES (90, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????90', '90.99', 5);
INSERT INTO `goods` VALUES (91, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????91', '90.99', 5);
INSERT INTO `goods` VALUES (92, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????92', '90.99', 5);
INSERT INTO `goods` VALUES (93, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????93', '90.99', 5);
INSERT INTO `goods` VALUES (94, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????94', '90.99', 5);
INSERT INTO `goods` VALUES (95, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????95', '90.99', 5);
INSERT INTO `goods` VALUES (96, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????96', '90.99', 5);
INSERT INTO `goods` VALUES (97, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????97', '90.99', 5);
INSERT INTO `goods` VALUES (98, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????98', '90.99', 5);
INSERT INTO `goods` VALUES (99, 'https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg', '??????99', '90.99', 5);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `goods_id` int(10) NOT NULL,
  `count` int(10) NOT NULL,
  `status` int(10) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `userid`(`user_openid`) USING BTREE,
  INDEX `goodsid`(`goods_id`) USING BTREE,
  CONSTRAINT `goodsid` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `userid` FOREIGN KEY (`user_openid`) REFERENCES `user` (`open_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (31, 'oFjV55Ikf-vSF-1iIiNkkgfY0geA', 7, 1, 1);
INSERT INTO `order` VALUES (32, 'oFjV55Ikf-vSF-1iIiNkkgfY0geA', 1, 3, 1);
INSERT INTO `order` VALUES (33, 'oFjV55Ikf-vSF-1iIiNkkgfY0geA', 2, 2, 1);
INSERT INTO `order` VALUES (34, 'oFjV55Ikf-vSF-1iIiNkkgfY0geA', 6, 2, 1);
INSERT INTO `order` VALUES (35, 'oFjV55Ikf-vSF-1iIiNkkgfY0geA', 1, 1, 1);
INSERT INTO `order` VALUES (36, 'oFjV55Ikf-vSF-1iIiNkkgfY0geA', 1, 1, 1);
INSERT INTO `order` VALUES (37, 'oFjV55Ikf-vSF-1iIiNkkgfY0geA', 6, 1, 1);
INSERT INTO `order` VALUES (38, 'oFjV55Ikf-vSF-1iIiNkkgfY0geA', 1, 2, 1);
INSERT INTO `order` VALUES (39, 'oFjV55Ikf-vSF-1iIiNkkgfY0geA', 2, 1, 1);
INSERT INTO `order` VALUES (40, 'oFjV55Ikf-vSF-1iIiNkkgfY0geA', 1, 1, 1);
INSERT INTO `order` VALUES (41, 'oFjV55Ikf-vSF-1iIiNkkgfY0geA', 5, 1, 1);

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (1, '????????????');
INSERT INTO `type` VALUES (2, '????????????');
INSERT INTO `type` VALUES (3, '????????????');
INSERT INTO `type` VALUES (4, '????????????');
INSERT INTO `type` VALUES (5, '????????????');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '????????????',
  `last_visit_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '??????????????????',
  `session_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'session_key',
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `avatar_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `gender` tinyint(11) NULL DEFAULT NULL COMMENT '??????',
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`open_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '??????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('oFjV55Ikf-vSF-1iIiNkkgfY0geA', '2020-03-06 04:14:12', '2020-03-07 05:25:24', 'MBtagRx0S5iK0aCWx6uNEA==', 'Nantong', 'Jiangsu', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/SBM3xSGBhsSx6cPIBWia5mjypaKkiauVIcYwKVcDoD5wXWDooRMBZBBovKvCeCUcicc3VMME7mQjJealr0VaEmo2w/132', 1, '??????');

-- ----------------------------
-- Procedure structure for add_gu_memory
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_gu_memory`;
delimiter ;;
CREATE DEFINER=`root`@`%` PROCEDURE `add_gu_memory`()
BEGIN  
  DECLARE i INT DEFAULT 81;
	SET i = 81;
    WHILE (i <= 99 ) DO
			INSERT into `goods`(`image`,`name`,`price`,`type_id` ) VALUEs ('https://yanxuan.nosdn.127.net/cae820a8e9ff3b2a79965e2d00ea44b0.jpeg',CONCAT('??????',i),90.99,5);
			set i=i+1;
    END WHILE;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
