CREATE DATABASE IF NOT EXISTS health DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE health;
SET NAMES utf8;

/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : health

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 20/05/2022 23:53:48
*/


SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_checkgroup
-- ----------------------------
DROP TABLE IF EXISTS `t_checkgroup`;
CREATE TABLE `t_checkgroup`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `help_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attention` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_checkgroup
-- ----------------------------
INSERT INTO `t_checkgroup` VALUES (5, '0001', '一般检查', 'YBJC', '0', '一般检查', '无');
INSERT INTO `t_checkgroup` VALUES (6, '0002', '视力色觉', 'SLSJ', '0', '视力色觉', NULL);
INSERT INTO `t_checkgroup` VALUES (7, '0003', '血常规', 'XCG', '0', '血常规', NULL);
INSERT INTO `t_checkgroup` VALUES (8, '0004', '尿常规', 'NCG', '0', '尿常规', NULL);
INSERT INTO `t_checkgroup` VALUES (9, '0005', '肝功三项', 'GGSX', '0', '肝功三项', NULL);
INSERT INTO `t_checkgroup` VALUES (10, '0006', '肾功三项', 'NGSX', '0', '肾功三项', NULL);
INSERT INTO `t_checkgroup` VALUES (11, '0007', '血脂四项', 'XZSX', '0', '血脂四项', NULL);
INSERT INTO `t_checkgroup` VALUES (12, '0008', '心肌酶三项', 'XJMSX', '0', '心肌酶三项', NULL);
INSERT INTO `t_checkgroup` VALUES (13, '0009', '甲功三项', 'JGSX', '0', '甲功三项', NULL);
INSERT INTO `t_checkgroup` VALUES (14, '0010', '子宫附件彩超', 'ZGFJCC', '2', '子宫附件彩超', NULL);
INSERT INTO `t_checkgroup` VALUES (15, '0011', '胆红素三项', 'DHSSX', '0', '胆红素三项', NULL);

-- ----------------------------
-- Table structure for t_checkgroup_checkitem
-- ----------------------------
DROP TABLE IF EXISTS `t_checkgroup_checkitem`;
CREATE TABLE `t_checkgroup_checkitem`  (
  `checkgroup_id` int(11) NOT NULL DEFAULT 0,
  `checkitem_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`checkgroup_id`, `checkitem_id`) USING BTREE,
  INDEX `item_id`(`checkitem_id`) USING BTREE,
  CONSTRAINT `group_id` FOREIGN KEY (`checkgroup_id`) REFERENCES `t_checkgroup` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `item_id` FOREIGN KEY (`checkitem_id`) REFERENCES `t_checkitem` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_checkgroup_checkitem
-- ----------------------------
INSERT INTO `t_checkgroup_checkitem` VALUES (5, 28);
INSERT INTO `t_checkgroup_checkitem` VALUES (5, 29);
INSERT INTO `t_checkgroup_checkitem` VALUES (5, 30);
INSERT INTO `t_checkgroup_checkitem` VALUES (5, 31);
INSERT INTO `t_checkgroup_checkitem` VALUES (5, 32);
INSERT INTO `t_checkgroup_checkitem` VALUES (6, 33);
INSERT INTO `t_checkgroup_checkitem` VALUES (6, 34);
INSERT INTO `t_checkgroup_checkitem` VALUES (6, 35);
INSERT INTO `t_checkgroup_checkitem` VALUES (6, 36);
INSERT INTO `t_checkgroup_checkitem` VALUES (6, 37);
INSERT INTO `t_checkgroup_checkitem` VALUES (7, 38);
INSERT INTO `t_checkgroup_checkitem` VALUES (7, 39);
INSERT INTO `t_checkgroup_checkitem` VALUES (7, 40);
INSERT INTO `t_checkgroup_checkitem` VALUES (7, 41);
INSERT INTO `t_checkgroup_checkitem` VALUES (7, 42);
INSERT INTO `t_checkgroup_checkitem` VALUES (7, 43);
INSERT INTO `t_checkgroup_checkitem` VALUES (7, 44);
INSERT INTO `t_checkgroup_checkitem` VALUES (7, 45);
INSERT INTO `t_checkgroup_checkitem` VALUES (7, 46);
INSERT INTO `t_checkgroup_checkitem` VALUES (7, 47);
INSERT INTO `t_checkgroup_checkitem` VALUES (7, 48);
INSERT INTO `t_checkgroup_checkitem` VALUES (7, 49);
INSERT INTO `t_checkgroup_checkitem` VALUES (7, 50);
INSERT INTO `t_checkgroup_checkitem` VALUES (7, 51);
INSERT INTO `t_checkgroup_checkitem` VALUES (7, 52);
INSERT INTO `t_checkgroup_checkitem` VALUES (7, 53);
INSERT INTO `t_checkgroup_checkitem` VALUES (7, 54);
INSERT INTO `t_checkgroup_checkitem` VALUES (7, 55);
INSERT INTO `t_checkgroup_checkitem` VALUES (7, 56);
INSERT INTO `t_checkgroup_checkitem` VALUES (8, 57);
INSERT INTO `t_checkgroup_checkitem` VALUES (8, 58);
INSERT INTO `t_checkgroup_checkitem` VALUES (8, 59);
INSERT INTO `t_checkgroup_checkitem` VALUES (8, 60);
INSERT INTO `t_checkgroup_checkitem` VALUES (8, 61);
INSERT INTO `t_checkgroup_checkitem` VALUES (8, 62);
INSERT INTO `t_checkgroup_checkitem` VALUES (8, 63);
INSERT INTO `t_checkgroup_checkitem` VALUES (8, 64);
INSERT INTO `t_checkgroup_checkitem` VALUES (8, 65);
INSERT INTO `t_checkgroup_checkitem` VALUES (8, 66);
INSERT INTO `t_checkgroup_checkitem` VALUES (8, 67);
INSERT INTO `t_checkgroup_checkitem` VALUES (8, 68);
INSERT INTO `t_checkgroup_checkitem` VALUES (8, 69);
INSERT INTO `t_checkgroup_checkitem` VALUES (8, 70);
INSERT INTO `t_checkgroup_checkitem` VALUES (8, 71);
INSERT INTO `t_checkgroup_checkitem` VALUES (9, 72);
INSERT INTO `t_checkgroup_checkitem` VALUES (9, 73);
INSERT INTO `t_checkgroup_checkitem` VALUES (9, 74);
INSERT INTO `t_checkgroup_checkitem` VALUES (10, 75);
INSERT INTO `t_checkgroup_checkitem` VALUES (10, 76);
INSERT INTO `t_checkgroup_checkitem` VALUES (10, 77);
INSERT INTO `t_checkgroup_checkitem` VALUES (11, 78);
INSERT INTO `t_checkgroup_checkitem` VALUES (11, 79);
INSERT INTO `t_checkgroup_checkitem` VALUES (11, 80);
INSERT INTO `t_checkgroup_checkitem` VALUES (11, 81);
INSERT INTO `t_checkgroup_checkitem` VALUES (12, 82);
INSERT INTO `t_checkgroup_checkitem` VALUES (12, 83);
INSERT INTO `t_checkgroup_checkitem` VALUES (12, 84);
INSERT INTO `t_checkgroup_checkitem` VALUES (13, 85);
INSERT INTO `t_checkgroup_checkitem` VALUES (13, 86);
INSERT INTO `t_checkgroup_checkitem` VALUES (13, 87);
INSERT INTO `t_checkgroup_checkitem` VALUES (14, 88);
INSERT INTO `t_checkgroup_checkitem` VALUES (14, 89);
INSERT INTO `t_checkgroup_checkitem` VALUES (15, 90);
INSERT INTO `t_checkgroup_checkitem` VALUES (15, 91);
INSERT INTO `t_checkgroup_checkitem` VALUES (15, 92);

-- ----------------------------
-- Table structure for t_checkitem
-- ----------------------------
DROP TABLE IF EXISTS `t_checkitem`;
CREATE TABLE `t_checkitem`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` float NULL DEFAULT NULL,
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '查检项类型,分为检查和检验两种',
  `attention` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 93 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_checkitem
-- ----------------------------
INSERT INTO `t_checkitem` VALUES (28, '0001', '身高高', '0', '0-100', 5, '1', '无', '身高');
INSERT INTO `t_checkitem` VALUES (29, '0002', '体重', '0', '0-100', 5, '1', '无', '体重');
INSERT INTO `t_checkitem` VALUES (30, '0003', '体重指数', '0', '0-100', 5, '1', '无', '体重指数');
INSERT INTO `t_checkitem` VALUES (31, '0004', '收缩压', '0', '0-100', 5, '1', '无', '收缩压');
INSERT INTO `t_checkitem` VALUES (32, '0005', '舒张压', '0', '0-100', 5, '1', '无', '舒张压');
INSERT INTO `t_checkitem` VALUES (33, '0006', '裸视力（右）', '0', '0-100', 5, '1', '无', '裸视力（右）');
INSERT INTO `t_checkitem` VALUES (34, '0007', '裸视力（左）', '0', '0-100', 5, '1', '无', '裸视力（左）');
INSERT INTO `t_checkitem` VALUES (35, '0008', '矫正视力（右）', '0', '0-100', 5, '1', '无', '矫正视力（右）');
INSERT INTO `t_checkitem` VALUES (36, '0009', '矫正视力（左）', '0', '0-100', 5, '1', '无', '矫正视力（左）');
INSERT INTO `t_checkitem` VALUES (37, '0010', '色觉', '0', '0-100', 5, '1', '无', '色觉');
INSERT INTO `t_checkitem` VALUES (38, '0011', '白细胞计数', '0', '0-100', 10, '2', '无', '白细胞计数');
INSERT INTO `t_checkitem` VALUES (39, '0012', '红细胞计数', '0', '0-100', 10, '2', NULL, '红细胞计数');
INSERT INTO `t_checkitem` VALUES (40, '0013', '血红蛋白', '0', '0-100', 10, '2', NULL, '血红蛋白');
INSERT INTO `t_checkitem` VALUES (41, '0014', '红细胞压积', '0', '0-100', 10, '2', NULL, '红细胞压积');
INSERT INTO `t_checkitem` VALUES (42, '0015', '平均红细胞体积', '0', '0-100', 10, '2', NULL, '平均红细胞体积');
INSERT INTO `t_checkitem` VALUES (43, '0016', '平均红细胞血红蛋白含量', '0', '0-100', 10, '2', NULL, '平均红细胞血红蛋白含量');
INSERT INTO `t_checkitem` VALUES (44, '0017', '平均红细胞血红蛋白浓度', '0', '0-100', 10, '2', NULL, '平均红细胞血红蛋白浓度');
INSERT INTO `t_checkitem` VALUES (45, '0018', '红细胞分布宽度-变异系数', '0', '0-100', 10, '2', NULL, '红细胞分布宽度-变异系数');
INSERT INTO `t_checkitem` VALUES (46, '0019', '血小板计数', '0', '0-100', 10, '2', NULL, '血小板计数');
INSERT INTO `t_checkitem` VALUES (47, '0020', '平均血小板体积', '0', '0-100', 10, '2', NULL, '平均血小板体积');
INSERT INTO `t_checkitem` VALUES (48, '0021', '血小板分布宽度', '0', '0-100', 10, '2', NULL, '血小板分布宽度');
INSERT INTO `t_checkitem` VALUES (49, '0022', '淋巴细胞百分比', '0', '0-100', 10, '2', NULL, '淋巴细胞百分比');
INSERT INTO `t_checkitem` VALUES (50, '0023', '中间细胞百分比', '0', '0-100', 10, '2', NULL, '中间细胞百分比');
INSERT INTO `t_checkitem` VALUES (51, '0024', '中性粒细胞百分比', '0', '0-100', 10, '2', NULL, '中性粒细胞百分比');
INSERT INTO `t_checkitem` VALUES (52, '0025', '淋巴细胞绝对值', '0', '0-100', 10, '2', NULL, '淋巴细胞绝对值');
INSERT INTO `t_checkitem` VALUES (53, '0026', '中间细胞绝对值', '0', '0-100', 10, '2', NULL, '中间细胞绝对值');
INSERT INTO `t_checkitem` VALUES (54, '0027', '中性粒细胞绝对值', '0', '0-100', 10, '2', NULL, '中性粒细胞绝对值');
INSERT INTO `t_checkitem` VALUES (55, '0028', '红细胞分布宽度-标准差', '0', '0-100', 10, '2', NULL, '红细胞分布宽度-标准差');
INSERT INTO `t_checkitem` VALUES (56, '0029', '血小板压积', '0', '0-100', 10, '2', NULL, '血小板压积');
INSERT INTO `t_checkitem` VALUES (57, '0030', '尿比重', '0', '0-100', 10, '2', NULL, '尿比重');
INSERT INTO `t_checkitem` VALUES (58, '0031', '尿酸碱度', '0', '0-100', 10, '2', NULL, '尿酸碱度');
INSERT INTO `t_checkitem` VALUES (59, '0032', '尿白细胞', '0', '0-100', 10, '2', NULL, '尿白细胞');
INSERT INTO `t_checkitem` VALUES (60, '0033', '尿亚硝酸盐', '0', '0-100', 10, '2', NULL, '尿亚硝酸盐');
INSERT INTO `t_checkitem` VALUES (61, '0034', '尿蛋白质', '0', '0-100', 10, '2', NULL, '尿蛋白质');
INSERT INTO `t_checkitem` VALUES (62, '0035', '尿糖', '0', '0-100', 10, '2', NULL, '尿糖');
INSERT INTO `t_checkitem` VALUES (63, '0036', '尿酮体', '0', '0-100', 10, '2', NULL, '尿酮体');
INSERT INTO `t_checkitem` VALUES (64, '0037', '尿胆原', '0', '0-100', 10, '2', NULL, '尿胆原');
INSERT INTO `t_checkitem` VALUES (65, '0038', '尿胆红素', '0', '0-100', 10, '2', NULL, '尿胆红素');
INSERT INTO `t_checkitem` VALUES (66, '0039', '尿隐血', '0', '0-100', 10, '2', NULL, '尿隐血');
INSERT INTO `t_checkitem` VALUES (67, '0040', '尿镜检红细胞', '0', '0-100', 10, '2', NULL, '尿镜检红细胞');
INSERT INTO `t_checkitem` VALUES (68, '0041', '尿镜检白细胞', '0', '0-100', 10, '2', NULL, '尿镜检白细胞');
INSERT INTO `t_checkitem` VALUES (69, '0042', '上皮细胞', '0', '0-100', 10, '2', NULL, '上皮细胞');
INSERT INTO `t_checkitem` VALUES (70, '0043', '无机盐类', '0', '0-100', 10, '2', NULL, '无机盐类');
INSERT INTO `t_checkitem` VALUES (71, '0044', '尿镜检蛋白定性', '0', '0-100', 10, '2', NULL, '尿镜检蛋白定性');
INSERT INTO `t_checkitem` VALUES (72, '0045', '丙氨酸氨基转移酶', '0', '0-100', 10, '2', NULL, '丙氨酸氨基转移酶');
INSERT INTO `t_checkitem` VALUES (73, '0046', '天门冬氨酸氨基转移酶', '0', '0-100', 10, '2', NULL, '天门冬氨酸氨基转移酶');
INSERT INTO `t_checkitem` VALUES (74, '0047', 'Y-谷氨酰转移酶', '0', '0-100', 10, '2', NULL, 'Y-谷氨酰转移酶');
INSERT INTO `t_checkitem` VALUES (75, '0048', '尿素', '0', '0-100', 10, '2', NULL, '尿素');
INSERT INTO `t_checkitem` VALUES (76, '0049', '肌酐', '0', '0-100', 10, '2', NULL, '肌酐');
INSERT INTO `t_checkitem` VALUES (77, '0050', '尿酸', '0', '0-100', 10, '2', NULL, '尿酸');
INSERT INTO `t_checkitem` VALUES (78, '0051', '总胆固醇', '0', '0-100', 10, '2', NULL, '总胆固醇');
INSERT INTO `t_checkitem` VALUES (79, '0052', '甘油三酯', '0', '0-100', 10, '2', NULL, '甘油三酯');
INSERT INTO `t_checkitem` VALUES (80, '0053', '高密度脂蛋白胆固醇', '0', '0-100', 10, '2', NULL, '高密度脂蛋白胆固醇');
INSERT INTO `t_checkitem` VALUES (81, '0054', '低密度脂蛋白胆固醇', '0', '0-100', 10, '2', NULL, '低密度脂蛋白胆固醇');
INSERT INTO `t_checkitem` VALUES (82, '0055', '磷酸肌酸激酶', '0', '0-100', 10, '2', NULL, '磷酸肌酸激酶');
INSERT INTO `t_checkitem` VALUES (83, '0056', '磷酸肌酸激酶同工酶', '0', '0-100', 10, '2', NULL, '磷酸肌酸激酶同工酶');
INSERT INTO `t_checkitem` VALUES (84, '0057', '乳酸脱氢酶', '0', '0-100', 10, '2', NULL, '乳酸脱氢酶');
INSERT INTO `t_checkitem` VALUES (85, '0058', '三碘甲状腺原氨酸', '0', '0-100', 10, '2', NULL, '三碘甲状腺原氨酸');
INSERT INTO `t_checkitem` VALUES (86, '0059', '甲状腺素', '0', '0-100', 10, '2', NULL, '甲状腺素');
INSERT INTO `t_checkitem` VALUES (87, '0060', '促甲状腺激素', '0', '0-100', 10, '2', NULL, '促甲状腺激素');
INSERT INTO `t_checkitem` VALUES (88, '0061', '子宫', '2', '0-100', 10, '2', NULL, '子宫');
INSERT INTO `t_checkitem` VALUES (89, '0062', '附件', '2', '0-100', 10, '2', NULL, '附件');
INSERT INTO `t_checkitem` VALUES (90, '0063', '总胆红素', '0', '0-100', 10, '2', NULL, '总胆红素');
INSERT INTO `t_checkitem` VALUES (91, '0064', '直接胆红素', '0', '0-100', 10, '2', NULL, '直接胆红素');
INSERT INTO `t_checkitem` VALUES (92, '0065', '间接胆红素', '0', '0-100', 10, '2', NULL, '间接胆红素');

-- ----------------------------
-- Table structure for t_member
-- ----------------------------
DROP TABLE IF EXISTS `t_member`;
CREATE TABLE `t_member`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_number` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_card` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone_number` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reg_time` date NULL DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_member
-- ----------------------------
INSERT INTO `t_member` VALUES (82, NULL, '张三', '1', '123456543221234', '13223459876', '2019-11-08', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (83, NULL, '王美丽', '1', '132333333333333', '13412345678', '2019-12-11', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (85, NULL, NULL, NULL, NULL, NULL, '2019-12-06', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (86, NULL, NULL, NULL, NULL, NULL, '2019-11-04', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (87, NULL, NULL, NULL, NULL, NULL, '2020-01-06', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (88, NULL, NULL, NULL, NULL, NULL, '2020-02-10', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (89, NULL, NULL, NULL, NULL, NULL, '2020-02-01', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (90, NULL, NULL, NULL, NULL, NULL, '2020-03-02', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (91, NULL, NULL, NULL, NULL, NULL, '2020-02-01', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (92, NULL, '1', '1', '123456543221234', '13312345678', '2020-04-07', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (93, NULL, NULL, NULL, NULL, '18439360102', '2020-05-08', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (94, NULL, '1', '1', '123456123456123', '18439360101', '2020-10-08', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (95, NULL, '1', '1', '123456789123457', '15512345679', '2020-10-08', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (96, NULL, '1', '1', '123456789123567', '13512345678', '2020-10-08', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (97, NULL, NULL, NULL, NULL, '18439360103', '2020-10-08', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (98, NULL, '1', '1', '123456789123456', '13823431567', '2020-10-08', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (99, NULL, '1', '1', '123456789012345', '18412345678', '2020-10-13', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (100, NULL, '1', '1', '123456789123456', '13412345768', '2020-10-13', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (101, NULL, '1', '1', '123456789012345', '18012345678', '2020-10-13', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (102, NULL, '1', '1', '123456789054321', '18712345678', '2020-10-13', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (103, NULL, '1', '1', '123456789012345', '18387654322', '2020-10-13', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (104, NULL, '2', '2', '123456789012345', '18321345678', '2020-10-13', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (105, NULL, '2', '2', '123456789012345', '18432145678', '2020-10-13', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (106, NULL, '1', '1', '123456789012345', '18212345678', '2020-10-13', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (107, NULL, '1', '1', '123456789901234', '18312345678', '2020-10-14', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (108, NULL, '1', '1', '123456789012345', '13212345678', '2020-10-14', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link_url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `path` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `priority` int(11) NULL DEFAULT NULL,
  `icon` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_menu_id` int(11) NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_13`(`parent_menu_id`) USING BTREE,
  CONSTRAINT `FK_Reference_13` FOREIGN KEY (`parent_menu_id`) REFERENCES `t_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES (1, '会员管理', NULL, '2', 1, 'fa-user-md', NULL, NULL, 1);
INSERT INTO `t_menu` VALUES (2, '会员档案', 'member.html', '/2-1', 1, NULL, NULL, 1, 2);
INSERT INTO `t_menu` VALUES (3, '体检上传', NULL, '/2-2', 2, NULL, NULL, 1, 2);
INSERT INTO `t_menu` VALUES (4, '会员统计', NULL, '/2-3', 3, NULL, NULL, 1, 2);
INSERT INTO `t_menu` VALUES (5, '预约管理', NULL, '3', 2, 'fa-tty', NULL, NULL, 1);
INSERT INTO `t_menu` VALUES (6, '预约列表', 'ordersettinglist.html', '/3-1', 1, NULL, NULL, 5, 2);
INSERT INTO `t_menu` VALUES (7, '预约设置', 'ordersetting.html', '/3-2', 2, NULL, NULL, 5, 2);
INSERT INTO `t_menu` VALUES (8, '套餐管理', 'setmeal.html', '/3-3', 3, NULL, NULL, 5, 2);
INSERT INTO `t_menu` VALUES (9, '检查组管理', 'checkgroup.html', '/3-4', 4, NULL, NULL, 5, 2);
INSERT INTO `t_menu` VALUES (10, '检查项管理', 'checkitem.html', '/3-5', 5, NULL, NULL, 5, 2);
INSERT INTO `t_menu` VALUES (11, '健康评估', NULL, '4', 3, 'fa-stethoscope', NULL, NULL, 1);
INSERT INTO `t_menu` VALUES (12, '中医体质辨识', NULL, '/4-1', 1, NULL, NULL, 11, 2);
INSERT INTO `t_menu` VALUES (13, '统计分析', NULL, '5', 4, 'fa-heartbeat', NULL, NULL, 1);
INSERT INTO `t_menu` VALUES (14, '会员数量', 'report_member.html', '/5-1', 1, NULL, NULL, 13, 2);
INSERT INTO `t_menu` VALUES (15, '系统设置', NULL, '6', 5, 'fa-users', NULL, NULL, 1);
INSERT INTO `t_menu` VALUES (16, '菜单管理', 'menu.html', '/6-1', 1, NULL, NULL, 15, 2);
INSERT INTO `t_menu` VALUES (17, '权限管理', 'permission.html', '/6-2', 2, NULL, NULL, 15, 2);
INSERT INTO `t_menu` VALUES (18, '角色管理', 'role.html', '/6-3', 3, NULL, NULL, 15, 2);
INSERT INTO `t_menu` VALUES (19, '用户管理', 'user.html', '/6-4', 4, NULL, NULL, 15, 2);
INSERT INTO `t_menu` VALUES (20, '套餐占比', 'report_setmeal.html', '/5-2', 2, NULL, NULL, 13, 2);
INSERT INTO `t_menu` VALUES (21, '运营数据', 'report_business.html', '/5-3', 3, NULL, NULL, 13, 2);

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NULL DEFAULT NULL COMMENT '员会id',
  `order_date` date NULL DEFAULT NULL COMMENT '约预日期',
  `order_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '约预类型 电话预约/微信预约',
  `order_status` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预约状态（是否到诊）',
  `setmeal_id` int(11) NULL DEFAULT NULL COMMENT '餐套id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `key_member_id`(`member_id`) USING BTREE,
  INDEX `key_setmeal_id`(`setmeal_id`) USING BTREE,
  CONSTRAINT `key_member_id` FOREIGN KEY (`member_id`) REFERENCES `t_member` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `key_setmeal_id` FOREIGN KEY (`setmeal_id`) REFERENCES `t_setmeal` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES (2, 82, '2019-03-08', '微信预约', '未到诊', 6);
INSERT INTO `t_order` VALUES (3, 82, '2019-03-11', '微信预约', '未到诊', 11);
INSERT INTO `t_order` VALUES (4, 82, '2019-03-11', '微信预约', '未到诊', 7);
INSERT INTO `t_order` VALUES (5, 83, '2019-03-11', '微信预约', '未到诊', 7);
INSERT INTO `t_order` VALUES (6, 82, '2019-03-13', '微信预约', '未到诊', 6);
INSERT INTO `t_order` VALUES (7, 82, '2019-03-15', '微信预约', '未到诊', 6);
INSERT INTO `t_order` VALUES (8, 82, '2019-03-19', '微信预约', '未到诊', 5);
INSERT INTO `t_order` VALUES (9, 84, '2019-03-20', '微信预约', '未到诊', 6);
INSERT INTO `t_order` VALUES (10, 84, '2019-03-28', '微信预约', '未到诊', 11);
INSERT INTO `t_order` VALUES (12, NULL, '2020-10-08', '微信预约', NULL, 9);
INSERT INTO `t_order` VALUES (13, NULL, '2020-10-08', '微信预约', NULL, 12);
INSERT INTO `t_order` VALUES (14, NULL, '2020-10-08', '微信预约', NULL, 12);
INSERT INTO `t_order` VALUES (15, NULL, '2020-10-08', '微信预约', NULL, 12);
INSERT INTO `t_order` VALUES (16, NULL, '2020-10-08', '微信预约', NULL, 9);
INSERT INTO `t_order` VALUES (17, NULL, '2020-10-09', '微信预约', NULL, 6);
INSERT INTO `t_order` VALUES (18, NULL, '2020-10-09', '微信预约', NULL, 12);
INSERT INTO `t_order` VALUES (19, NULL, '2020-10-09', '微信预约', NULL, 7);
INSERT INTO `t_order` VALUES (20, NULL, '2020-10-10', '微信预约', NULL, 7);
INSERT INTO `t_order` VALUES (21, NULL, '2020-10-10', '微信预约', NULL, 7);
INSERT INTO `t_order` VALUES (22, NULL, '2020-10-10', '微信预约', NULL, 7);
INSERT INTO `t_order` VALUES (23, NULL, '2020-10-10', '微信预约', NULL, 7);
INSERT INTO `t_order` VALUES (24, NULL, '2020-10-10', '微信预约', NULL, 7);
INSERT INTO `t_order` VALUES (25, NULL, '2020-10-10', '微信预约', NULL, 7);
INSERT INTO `t_order` VALUES (26, 96, '2020-10-10', '微信预约', NULL, 7);
INSERT INTO `t_order` VALUES (27, 98, '2020-10-09', '微信预约', NULL, 17);
INSERT INTO `t_order` VALUES (28, 99, '2020-10-14', '微信预约', NULL, 6);
INSERT INTO `t_order` VALUES (29, 100, '2020-10-14', '微信预约', NULL, 11);
INSERT INTO `t_order` VALUES (30, 101, '2020-10-14', '微信预约', NULL, 11);
INSERT INTO `t_order` VALUES (31, 102, '2020-10-14', '微信预约', NULL, 9);
INSERT INTO `t_order` VALUES (32, 103, '2020-10-14', '微信预约', NULL, 9);
INSERT INTO `t_order` VALUES (33, 101, '2020-10-14', '微信预约', NULL, 9);
INSERT INTO `t_order` VALUES (34, 104, '2020-10-14', '微信预约', NULL, 5);
INSERT INTO `t_order` VALUES (35, 105, '2020-10-14', '微信预约', NULL, 9);
INSERT INTO `t_order` VALUES (36, 102, '2020-10-14', '微信预约', NULL, 7);
INSERT INTO `t_order` VALUES (37, 106, '2020-10-14', '微信预约', NULL, 12);
INSERT INTO `t_order` VALUES (38, 107, '2020-10-15', '微信预约', NULL, 6);
INSERT INTO `t_order` VALUES (39, 108, '2020-10-15', '微信预约', NULL, 7);
INSERT INTO `t_order` VALUES (40, 82, '2022-05-21', '微信预约', '未到诊', 5);
INSERT INTO `t_order` VALUES (41, 82, '2022-05-21', '微信预约', '未到诊', 5);
INSERT INTO `t_order` VALUES (42, 82, '2022-05-22', '微信预约', '未到诊', 5);

-- ----------------------------
-- Table structure for t_orderlist
-- ----------------------------
DROP TABLE IF EXISTS `t_orderlist`;
CREATE TABLE `t_orderlist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_date` date NULL DEFAULT NULL,
  `setmeal_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_orderlist
-- ----------------------------
INSERT INTO `t_orderlist` VALUES (1, '户书恺', '2020-10-13', '粉红真爱');
INSERT INTO `t_orderlist` VALUES (2, '蔡徐坤', '2020-10-14', '孕前检查套餐（女）-精英版');
INSERT INTO `t_orderlist` VALUES (3, 张老师', '2020-10-14', '入职无忧体检套餐（男女通用）');
INSERT INTO `t_orderlist` VALUES (4, '野老师衣', '2020-10-14', '孕前检查套餐（女）-精英版');
INSERT INTO `t_orderlist` VALUES (5, '石老师', '2020-10-14', '阳光爸妈升级肿瘤12项筛查（男女单人）体检套餐');
INSERT INTO `t_orderlist` VALUES (6, '鸡你太美', '2020-10-14', '啥的活动');
INSERT INTO `t_orderlist` VALUES (7, '户书恺', '2020-10-15', '粉红珍爱(女)升级TM12项筛查体检套餐');
INSERT INTO `t_orderlist` VALUES (8, '王机搏', '2020-10-15', '阳光爸妈升级肿瘤12项筛查（男女单人）体检套餐');
INSERT INTO `t_orderlist` VALUES (9, '哈哈哈', '2021-05-07', '入职无忧体检套餐（男女通用）');

-- ----------------------------
-- Table structure for t_orderlist_setmeal
-- ----------------------------
DROP TABLE IF EXISTS `t_orderlist_setmeal`;
CREATE TABLE `t_orderlist_setmeal`  (
  `orderlist_id` int(11) NULL DEFAULT NULL,
  `setmeal_id` int(11) NULL DEFAULT NULL,
  INDEX `os_fk1`(`orderlist_id`) USING BTREE,
  INDEX `os_fk2`(`setmeal_id`) USING BTREE,
  CONSTRAINT `os_fk1` FOREIGN KEY (`orderlist_id`) REFERENCES `t_orderlist` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `os_fk2` FOREIGN KEY (`setmeal_id`) REFERENCES `t_setmeal` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_orderlist_setmeal
-- ----------------------------
INSERT INTO `t_orderlist_setmeal` VALUES (1, 5);

-- ----------------------------
-- Table structure for t_ordersetting
-- ----------------------------
DROP TABLE IF EXISTS `t_ordersetting`;
CREATE TABLE `t_ordersetting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_date` date NULL DEFAULT NULL COMMENT '约预日期',
  `number` int(11) NULL DEFAULT NULL COMMENT '可预约人数',
  `reservations` int(11) NULL DEFAULT NULL COMMENT '已预约人数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ordersetting
-- ----------------------------
INSERT INTO `t_ordersetting` VALUES (13, '2019-03-04', 100, 100);
INSERT INTO `t_ordersetting` VALUES (14, '2019-03-05', 200, 0);
INSERT INTO `t_ordersetting` VALUES (15, '2019-03-06', 300, 0);
INSERT INTO `t_ordersetting` VALUES (16, '2019-03-07', 200, 0);
INSERT INTO `t_ordersetting` VALUES (17, '2019-03-08', 200, 1);
INSERT INTO `t_ordersetting` VALUES (18, '2019-03-09', 200, 0);
INSERT INTO `t_ordersetting` VALUES (19, '2019-03-10', 200, 0);
INSERT INTO `t_ordersetting` VALUES (20, '2019-03-11', 200, 3);
INSERT INTO `t_ordersetting` VALUES (21, '2019-03-13', 300, 1);
INSERT INTO `t_ordersetting` VALUES (22, '2019-03-14', 600, 0);
INSERT INTO `t_ordersetting` VALUES (23, '2019-03-15', 500, 1);
INSERT INTO `t_ordersetting` VALUES (24, '2019-03-16', 500, 0);
INSERT INTO `t_ordersetting` VALUES (25, '2019-03-17', 400, 0);
INSERT INTO `t_ordersetting` VALUES (26, '2019-03-19', 300, 1);
INSERT INTO `t_ordersetting` VALUES (27, '2019-04-01', 300, 0);
INSERT INTO `t_ordersetting` VALUES (28, '2019-04-02', 300, 0);
INSERT INTO `t_ordersetting` VALUES (29, '2019-04-19', 300, 0);
INSERT INTO `t_ordersetting` VALUES (30, '2019-03-20', 200, 1);
INSERT INTO `t_ordersetting` VALUES (31, '2019-05-01', 400, 0);
INSERT INTO `t_ordersetting` VALUES (32, '2019-03-28', 200, 1);
INSERT INTO `t_ordersetting` VALUES (33, '2019-04-03', 400, 0);
INSERT INTO `t_ordersetting` VALUES (34, '2019-09-30', 800, 0);
INSERT INTO `t_ordersetting` VALUES (35, '2019-04-04', 400, 0);
INSERT INTO `t_ordersetting` VALUES (36, '2019-04-05', 300, 0);
INSERT INTO `t_ordersetting` VALUES (37, '2020-09-23', 300, 0);
INSERT INTO `t_ordersetting` VALUES (38, '2020-09-24', 300, 0);
INSERT INTO `t_ordersetting` VALUES (39, '2020-09-25', 301, 0);
INSERT INTO `t_ordersetting` VALUES (40, '2020-09-26', 302, 0);
INSERT INTO `t_ordersetting` VALUES (41, '2020-09-27', 303, 0);
INSERT INTO `t_ordersetting` VALUES (42, '2020-09-28', 304, 0);
INSERT INTO `t_ordersetting` VALUES (43, '2020-09-29', 305, 0);
INSERT INTO `t_ordersetting` VALUES (44, '2020-09-30', 306, 0);
INSERT INTO `t_ordersetting` VALUES (45, '2020-10-01', 307, 0);
INSERT INTO `t_ordersetting` VALUES (46, '2020-10-02', 308, 0);
INSERT INTO `t_ordersetting` VALUES (47, '2020-10-03', 309, 0);
INSERT INTO `t_ordersetting` VALUES (48, '2020-10-04', 310, 0);
INSERT INTO `t_ordersetting` VALUES (49, '2020-10-05', 311, 0);
INSERT INTO `t_ordersetting` VALUES (50, '2020-10-06', 312, 0);
INSERT INTO `t_ordersetting` VALUES (51, '2020-10-07', 313, 0);
INSERT INTO `t_ordersetting` VALUES (52, '2020-10-08', 300, 5);
INSERT INTO `t_ordersetting` VALUES (53, '2020-10-09', 300, 4);
INSERT INTO `t_ordersetting` VALUES (54, '2020-10-10', 316, 7);
INSERT INTO `t_ordersetting` VALUES (55, '2020-10-11', 317, 0);
INSERT INTO `t_ordersetting` VALUES (56, '2020-10-12', 318, 0);
INSERT INTO `t_ordersetting` VALUES (57, '2020-10-13', 319, 0);
INSERT INTO `t_ordersetting` VALUES (58, '2020-10-14', 320, 10);
INSERT INTO `t_ordersetting` VALUES (59, '2020-10-15', 321, 2);
INSERT INTO `t_ordersetting` VALUES (60, '2020-10-16', 322, 0);
INSERT INTO `t_ordersetting` VALUES (61, '2020-10-17', 323, 0);
INSERT INTO `t_ordersetting` VALUES (62, '2020-10-18', 324, 0);
INSERT INTO `t_ordersetting` VALUES (63, '2020-10-19', 325, 0);
INSERT INTO `t_ordersetting` VALUES (64, '2020-10-20', 326, 0);
INSERT INTO `t_ordersetting` VALUES (65, '2020-10-21', 327, 0);
INSERT INTO `t_ordersetting` VALUES (66, '2020-10-22', 328, 0);
INSERT INTO `t_ordersetting` VALUES (67, '2020-10-23', 329, 0);
INSERT INTO `t_ordersetting` VALUES (68, '2020-10-24', 330, 0);
INSERT INTO `t_ordersetting` VALUES (69, '2020-10-25', 331, 0);
INSERT INTO `t_ordersetting` VALUES (70, '2020-10-26', 332, 0);
INSERT INTO `t_ordersetting` VALUES (71, '2020-10-27', 300, 0);
INSERT INTO `t_ordersetting` VALUES (72, '2020-10-28', 300, 0);
INSERT INTO `t_ordersetting` VALUES (73, '2020-10-29', 300, 0);
INSERT INTO `t_ordersetting` VALUES (74, '2020-10-30', 300, 0);
INSERT INTO `t_ordersetting` VALUES (75, '2020-10-31', 300, 0);
INSERT INTO `t_ordersetting` VALUES (76, '2021-05-07', 400, 0);
INSERT INTO `t_ordersetting` VALUES (77, '2022-05-21', 200, 200);
INSERT INTO `t_ordersetting` VALUES (78, '2022-05-22', 200, 1);
INSERT INTO `t_ordersetting` VALUES (79, '2022-05-23', 200, 0);
INSERT INTO `t_ordersetting` VALUES (80, '2022-05-24', 200, 0);
INSERT INTO `t_ordersetting` VALUES (81, '2022-05-25', 200, 0);
INSERT INTO `t_ordersetting` VALUES (82, '2022-05-26', 30, 0);
INSERT INTO `t_ordersetting` VALUES (83, '2022-05-27', 200, 0);
INSERT INTO `t_ordersetting` VALUES (84, '2022-05-28', 200, 0);
INSERT INTO `t_ordersetting` VALUES (85, '2022-05-29', 200, 0);
INSERT INTO `t_ordersetting` VALUES (86, '2022-05-30', 200, 0);
INSERT INTO `t_ordersetting` VALUES (94, '2022-06-03', 20, 0);
INSERT INTO `t_ordersetting` VALUES (95, '2022-06-01', 50, 0);
INSERT INTO `t_ordersetting` VALUES (96, '2022-06-02', 100, 0);

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `keyword` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES (1, '新增检查项', 'CHECKITEM_ADD', NULL);
INSERT INTO `t_permission` VALUES (2, '删除检查项', 'CHECKITEM_DELETE', NULL);
INSERT INTO `t_permission` VALUES (3, '编辑检查项', 'CHECKITEM_EDIT', NULL);
INSERT INTO `t_permission` VALUES (4, '查询检查项', 'CHECKITEM_QUERY', NULL);
INSERT INTO `t_permission` VALUES (5, '新增检查组', 'CHECKGROUP_ADD', NULL);
INSERT INTO `t_permission` VALUES (6, '删除检查组', 'CHECKGROUP_DELETE', NULL);
INSERT INTO `t_permission` VALUES (7, '编辑检查组', 'CHECKGROUP_EDIT', NULL);
INSERT INTO `t_permission` VALUES (8, '查询检查组', 'CHECKGROUP_QUERY', NULL);
INSERT INTO `t_permission` VALUES (9, '新增套餐', 'SETMEAL_ADD', NULL);
INSERT INTO `t_permission` VALUES (10, '删除套餐', 'SETMEAL_DELETE', NULL);
INSERT INTO `t_permission` VALUES (11, '编辑套餐', 'SETMEAL_EDIT', NULL);
INSERT INTO `t_permission` VALUES (12, '查询套餐', 'SETMEAL_QUERY', NULL);
INSERT INTO `t_permission` VALUES (13, '预约设置', 'ORDERSETTING', NULL);
INSERT INTO `t_permission` VALUES (14, '查看统计报表', 'REPORT_VIEW', NULL);
INSERT INTO `t_permission` VALUES (15, '新增菜单', 'MENU_ADD', NULL);
INSERT INTO `t_permission` VALUES (16, '删除菜单', 'MENU_DELETE', NULL);
INSERT INTO `t_permission` VALUES (17, '编辑菜单', 'MENU_EDIT', NULL);
INSERT INTO `t_permission` VALUES (18, '查询菜单', 'MENU_QUERY', NULL);
INSERT INTO `t_permission` VALUES (19, '新增角色', 'ROLE_ADD', NULL);
INSERT INTO `t_permission` VALUES (20, '删除角色', 'ROLE_DELETE', NULL);
INSERT INTO `t_permission` VALUES (21, '编辑角色', 'ROLE_EDIT', NULL);
INSERT INTO `t_permission` VALUES (22, '查询角色', 'ROLE_QUERY', NULL);
INSERT INTO `t_permission` VALUES (23, '新增用户', 'USER_ADD', NULL);
INSERT INTO `t_permission` VALUES (24, '删除用户', 'USER_DELETE', NULL);
INSERT INTO `t_permission` VALUES (25, '编辑用户', 'USER_EDIT', NULL);
INSERT INTO `t_permission` VALUES (26, '查询用户', 'USER_QUERY', NULL);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `keyword` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, '系统管理员', 'ROLE_ADMIN', NULL);
INSERT INTO `t_role` VALUES (2, '健康管理师', 'ROLE_HEALTH_MANAGER', NULL);

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE,
  INDEX `FK_Reference_10`(`menu_id`) USING BTREE,
  CONSTRAINT `FK_Reference_10` FOREIGN KEY (`menu_id`) REFERENCES `t_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_9` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
INSERT INTO `t_role_menu` VALUES (1, 1);
INSERT INTO `t_role_menu` VALUES (2, 1);
INSERT INTO `t_role_menu` VALUES (1, 2);
INSERT INTO `t_role_menu` VALUES (2, 2);
INSERT INTO `t_role_menu` VALUES (1, 3);
INSERT INTO `t_role_menu` VALUES (2, 3);
INSERT INTO `t_role_menu` VALUES (1, 4);
INSERT INTO `t_role_menu` VALUES (2, 4);
INSERT INTO `t_role_menu` VALUES (1, 5);
INSERT INTO `t_role_menu` VALUES (1, 6);
INSERT INTO `t_role_menu` VALUES (1, 7);
INSERT INTO `t_role_menu` VALUES (1, 8);
INSERT INTO `t_role_menu` VALUES (1, 9);
INSERT INTO `t_role_menu` VALUES (1, 10);
INSERT INTO `t_role_menu` VALUES (1, 11);
INSERT INTO `t_role_menu` VALUES (1, 12);
INSERT INTO `t_role_menu` VALUES (1, 13);
INSERT INTO `t_role_menu` VALUES (1, 14);
INSERT INTO `t_role_menu` VALUES (1, 15);
INSERT INTO `t_role_menu` VALUES (1, 16);
INSERT INTO `t_role_menu` VALUES (1, 17);
INSERT INTO `t_role_menu` VALUES (1, 18);
INSERT INTO `t_role_menu` VALUES (1, 19);
INSERT INTO `t_role_menu` VALUES (1, 20);
INSERT INTO `t_role_menu` VALUES (1, 21);

-- ----------------------------
-- Table structure for t_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`, `permission_id`) USING BTREE,
  INDEX `FK_Reference_12`(`permission_id`) USING BTREE,
  CONSTRAINT `FK_Reference_11` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_12` FOREIGN KEY (`permission_id`) REFERENCES `t_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------
INSERT INTO `t_role_permission` VALUES (1, 1);
INSERT INTO `t_role_permission` VALUES (2, 1);
INSERT INTO `t_role_permission` VALUES (1, 2);
INSERT INTO `t_role_permission` VALUES (1, 3);
INSERT INTO `t_role_permission` VALUES (2, 3);
INSERT INTO `t_role_permission` VALUES (1, 4);
INSERT INTO `t_role_permission` VALUES (2, 4);
INSERT INTO `t_role_permission` VALUES (1, 5);
INSERT INTO `t_role_permission` VALUES (2, 5);
INSERT INTO `t_role_permission` VALUES (1, 6);
INSERT INTO `t_role_permission` VALUES (2, 6);
INSERT INTO `t_role_permission` VALUES (1, 7);
INSERT INTO `t_role_permission` VALUES (2, 7);
INSERT INTO `t_role_permission` VALUES (1, 8);
INSERT INTO `t_role_permission` VALUES (2, 8);
INSERT INTO `t_role_permission` VALUES (1, 9);
INSERT INTO `t_role_permission` VALUES (2, 9);
INSERT INTO `t_role_permission` VALUES (1, 10);
INSERT INTO `t_role_permission` VALUES (2, 10);
INSERT INTO `t_role_permission` VALUES (1, 11);
INSERT INTO `t_role_permission` VALUES (2, 11);
INSERT INTO `t_role_permission` VALUES (1, 12);
INSERT INTO `t_role_permission` VALUES (2, 12);
INSERT INTO `t_role_permission` VALUES (1, 13);
INSERT INTO `t_role_permission` VALUES (2, 13);
INSERT INTO `t_role_permission` VALUES (1, 14);
INSERT INTO `t_role_permission` VALUES (2, 14);
INSERT INTO `t_role_permission` VALUES (1, 15);
INSERT INTO `t_role_permission` VALUES (1, 16);
INSERT INTO `t_role_permission` VALUES (1, 17);
INSERT INTO `t_role_permission` VALUES (1, 18);
INSERT INTO `t_role_permission` VALUES (1, 19);
INSERT INTO `t_role_permission` VALUES (1, 20);
INSERT INTO `t_role_permission` VALUES (1, 21);
INSERT INTO `t_role_permission` VALUES (1, 22);
INSERT INTO `t_role_permission` VALUES (1, 23);
INSERT INTO `t_role_permission` VALUES (1, 24);
INSERT INTO `t_role_permission` VALUES (1, 25);
INSERT INTO `t_role_permission` VALUES (1, 26);

-- ----------------------------
-- Table structure for t_setmeal
-- ----------------------------
DROP TABLE IF EXISTS `t_setmeal`;
CREATE TABLE `t_setmeal`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `help_code` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` float NULL DEFAULT NULL,
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attention` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_setmeal
-- ----------------------------
INSERT INTO `t_setmeal` VALUES (5, '入职无忧体检套餐（男女通用）', '0001', 'RZTJ', '0', '18-60', 300, '入职体检套餐', NULL, '1624c428-8389-4681-93e6-e01205fc57ab.jpg');
INSERT INTO `t_setmeal` VALUES (6, '粉红珍爱(女)升级TM12项筛查体检套餐', '0002', 'FHZA', '2', '18-60', 1200, '本套餐针对宫颈(TCT检查、HPV乳头瘤病毒筛查）、乳腺（彩超，癌抗125），甲状腺（彩超，甲功验血）以及胸片，血常规肝功等有全面检查，非常适合女性全面疾病筛查使用。', NULL, 'd5750737-80c8-49dc-8c23-1803b173070a.jpg');
INSERT INTO `t_setmeal` VALUES (7, '阳光爸妈升级肿瘤12项筛查（男女单人）体检套餐', '0003', 'YGBM', '0', '55-100', 1400, '本套餐主要针对常见肿瘤筛查，肝肾、颈动脉、脑血栓、颅内血流筛查，以及风湿、颈椎、骨密度检查。', NULL, '2772fd76-a9c2-4411-92a4-014ad9bdd46d.jpg');
INSERT INTO `t_setmeal` VALUES (9, '孕前检查套餐（女）-精英版', '0005', 'YQJCNV', '2', '18-50', 1500, '孕前检查套餐（女）-精英版', NULL, 'a00a48b4-b5ef-4867-8e3e-723a7fc61fcd.jpg');
INSERT INTO `t_setmeal` VALUES (11, '珍爱高端升级肿瘤12项筛查（男女单人）', '0006', 'ZAGD', '0', '14-20', 2400, '本套餐是一款针对生化五项检查，心，肝，胆，胃，甲状腺，颈椎，肺功能，脑部检查（经颅多普勒）以及癌症筛查，适合大众人群体检的套餐。', NULL, 'a00a48b4-b5ef-4867-8e3e-723a7fc61fcd.jpg');
INSERT INTO `t_setmeal` VALUES (12, '啥的活动', '0007', '433', '1', '121', 112, 'u和非官方非官方非官方苟富贵发广告广告肌肤恢复计划计划尽快附件恢复健康和尽快发货就会尽快恢复健康发', '121', 'a00a48b4-b5ef-4867-8e3e-723a7fc61fcd.jpg');
INSERT INTO `t_setmeal` VALUES (13, '的高度和梵蒂冈', '0008', 'frg', '0', '44', 343, '2334', '3434', 'a00a48b4-b5ef-4867-8e3e-723a7fc61fcd.jpg');
INSERT INTO `t_setmeal` VALUES (14, '王五发', '0009', 'RTT', '1', '43', 2334, '如同一条语句攻击皇家空军的窘境本地破坏国家机关i哦热叫我哥加热过来看我今儿个我给客人金额高颎温热结果', '3233', 'a00a48b4-b5ef-4867-8e3e-723a7fc61fcd.jpg');
INSERT INTO `t_setmeal` VALUES (15, '232', '0004', '23', '1', '23', 232, '22', '22', '2772fd76-a9c2-4411-92a4-014ad9bdd46d.jpg');
INSERT INTO `t_setmeal` VALUES (16, '分开发给', '0010', '规范', '2', '12', 3434, '舒适度说的是飞机和非结构化给客户客户跟进和管理计划骨结核嘎嘎哈哈', '为u一月份', '2772fd76-a9c2-4411-92a4-014ad9bdd46d.jpg');
INSERT INTO `t_setmeal` VALUES (17, '并设定', '0011', 'HHH', '0', '232', 1223, '豆腐干大概估计哦结果哦更加发达国家法定根据阿苏哦i发', '大师风范', '2772fd76-a9c2-4411-92a4-014ad9bdd46d.jpg');
INSERT INTO `t_setmeal` VALUES (18, '的广泛阅读', '0012', 'HGHGH', '1', '44', 234, '文43瑞风格化法国解放立刻股票fig破解hi i大概', '嘀咕嘀咕', '2772fd76-a9c2-4411-92a4-014ad9bdd46d.jpg');
INSERT INTO `t_setmeal` VALUES (19, '的后方根据地', '0013', 'FGFHJ', '1', '34', 3455, '的分配房间格局和客户感到恐惧给大家哦i都会觉得回家看了阶级固化经济hi上帝送机票囧会降低房价hi就', '风格和', '2772fd76-a9c2-4411-92a4-014ad9bdd46d.jpg');
INSERT INTO `t_setmeal` VALUES (20, 'i疯狂的公开j', '0014`j', '的发货尽快给', '0', '223', 345, 'fuu\'iutoieruonjrlty', 'fuuiu 噢批哟普ltoieruonjrlty', '2772fd76-a9c2-4411-92a4-014ad9bdd46d.jpg');
INSERT INTO `t_setmeal` VALUES (21, '喝点咖啡酒吧', '0015', '返回和', '1', '77', 455, 'egghjkshgk.sjgl;建立国家级科技', '与i', '2772fd76-a9c2-4411-92a4-014ad9bdd46d.jpg');
INSERT INTO `t_setmeal` VALUES (22, '不会v和', '0016', 'khuihjgh', '1', '56', 342, '朝鲜官方v就几哦加哦加哦就加哦就恐怕[uo炯炯及ihi IP有一天日日日i哦炯炯篇i哦加哦加哦ioioioi噢批io[', '拉开了距离', 'd5750737-80c8-49dc-8c23-1803b173070a.jpg');
INSERT INTO `t_setmeal` VALUES (23, '给你九年', '0017', 'ggfghh', '1', '23', 2344, '儿童突然卡了老铁;了 来了联合老婆 ', '二日 个人  ', 'd5750737-80c8-49dc-8c23-1803b173070a.jpg');
INSERT INTO `t_setmeal` VALUES (24, '额发  ', '0018', '的', '1', '43', 3434, '434434传统让他他 给给给给给给 给给给 给  ', '秃然 给', 'd5750737-80c8-49dc-8c23-1803b173070a.jpg');
INSERT INTO `t_setmeal` VALUES (25, '肺结核', '0019', 'fjh', '0', '23', 3444, '放骨灰盒急急急急急急急急急急急急急急急 就甲方根据 返回看看看看看  计划开工发规范符集根据给结果  ', '会更好 ', 'd5750737-80c8-49dc-8c23-1803b173070a.jpg');
INSERT INTO `t_setmeal` VALUES (26, '的发挥', '0020', 'JJJ', '1', '34', 2344, '2发官方鬼鬼鬼鬼鬼鬼鬼鬼鬼鬼鬼鬼鬼鬼', '官方公告', 'd5750737-80c8-49dc-8c23-1803b173070a.jpg');
INSERT INTO `t_setmeal` VALUES (27, '大哥哥', '0021', 'HGG', '0', '34', 324, '232vghjkbjknkjx;nvklzmxvv能尽快女款Cv该妇女健康持续健康v ', '的方式的', 'd5750737-80c8-49dc-8c23-1803b173070a.jpg');
INSERT INTO `t_setmeal` VALUES (28, '互改,发', '0022', '而', '0', '34', 34, '帆帆发', '人', '1624c428-8389-4681-93e6-e01205fc57ab.jpg');
INSERT INTO `t_setmeal` VALUES (29, '代表一个', '0022', '我愤怒愤怒', '1', '55', 123, '恢复健康和', '的地方空间 ', '1624c428-8389-4681-93e6-e01205fc57ab.jpg');
INSERT INTO `t_setmeal` VALUES (30, '和豆腐', '0023', 'FDJF', '1', '34', 2344, '五规划人口分几块腹肌黑凤凰和覅', '妇女看覅', '1624c428-8389-4681-93e6-e01205fc57ab.jpg');
INSERT INTO `t_setmeal` VALUES (31, '订婚风', '0024', 'ddd', '1', '23', 2321, '妇女接口函数和和飞沙回复 很快恢复哈哈hi发返回方法好快和  好伐好伐发if发僾` ', '看了会返回', '1624c428-8389-4681-93e6-e01205fc57ab.jpg');
INSERT INTO `t_setmeal` VALUES (32, '女方家', '0025', 'GGGG', '1', '34', 1223, '广泛的国际高级军官及国际', '哦根据', '1624c428-8389-4681-93e6-e01205fc57ab.jpg');
INSERT INTO `t_setmeal` VALUES (33, '夫hi发', '0026', '大佛及', '1', '33', 33333, '二万人热热人人', '热热  ', '1624c428-8389-4681-93e6-e01205fc57ab.jpg');
INSERT INTO `t_setmeal` VALUES (34, '22', '0010', '22', '1', '22', 200, '22', '22', '1624c428-8389-4681-93e6-e01205fc57ab.jpg');

-- ----------------------------
-- Table structure for t_setmeal_checkgroup
-- ----------------------------
DROP TABLE IF EXISTS `t_setmeal_checkgroup`;
CREATE TABLE `t_setmeal_checkgroup`  (
  `setmeal_id` int(11) NOT NULL DEFAULT 0,
  `checkgroup_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`setmeal_id`, `checkgroup_id`) USING BTREE,
  INDEX `checkgroup_key`(`checkgroup_id`) USING BTREE,
  CONSTRAINT `checkgroup_key` FOREIGN KEY (`checkgroup_id`) REFERENCES `t_checkgroup` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `setmeal_key` FOREIGN KEY (`setmeal_id`) REFERENCES `t_setmeal` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_setmeal_checkgroup
-- ----------------------------
INSERT INTO `t_setmeal_checkgroup` VALUES (5, 5);
INSERT INTO `t_setmeal_checkgroup` VALUES (6, 5);
INSERT INTO `t_setmeal_checkgroup` VALUES (7, 5);
INSERT INTO `t_setmeal_checkgroup` VALUES (9, 5);
INSERT INTO `t_setmeal_checkgroup` VALUES (11, 5);
INSERT INTO `t_setmeal_checkgroup` VALUES (12, 5);
INSERT INTO `t_setmeal_checkgroup` VALUES (13, 5);
INSERT INTO `t_setmeal_checkgroup` VALUES (14, 5);
INSERT INTO `t_setmeal_checkgroup` VALUES (15, 5);
INSERT INTO `t_setmeal_checkgroup` VALUES (16, 5);
INSERT INTO `t_setmeal_checkgroup` VALUES (17, 5);
INSERT INTO `t_setmeal_checkgroup` VALUES (18, 5);
INSERT INTO `t_setmeal_checkgroup` VALUES (19, 5);
INSERT INTO `t_setmeal_checkgroup` VALUES (20, 5);
INSERT INTO `t_setmeal_checkgroup` VALUES (21, 5);
INSERT INTO `t_setmeal_checkgroup` VALUES (22, 5);
INSERT INTO `t_setmeal_checkgroup` VALUES (23, 5);
INSERT INTO `t_setmeal_checkgroup` VALUES (24, 5);
INSERT INTO `t_setmeal_checkgroup` VALUES (25, 5);
INSERT INTO `t_setmeal_checkgroup` VALUES (26, 5);
INSERT INTO `t_setmeal_checkgroup` VALUES (27, 5);
INSERT INTO `t_setmeal_checkgroup` VALUES (28, 5);
INSERT INTO `t_setmeal_checkgroup` VALUES (29, 5);
INSERT INTO `t_setmeal_checkgroup` VALUES (30, 5);
INSERT INTO `t_setmeal_checkgroup` VALUES (31, 5);
INSERT INTO `t_setmeal_checkgroup` VALUES (32, 5);
INSERT INTO `t_setmeal_checkgroup` VALUES (33, 5);
INSERT INTO `t_setmeal_checkgroup` VALUES (12, 6);
INSERT INTO `t_setmeal_checkgroup` VALUES (13, 6);
INSERT INTO `t_setmeal_checkgroup` VALUES (14, 6);
INSERT INTO `t_setmeal_checkgroup` VALUES (15, 6);
INSERT INTO `t_setmeal_checkgroup` VALUES (17, 6);
INSERT INTO `t_setmeal_checkgroup` VALUES (22, 6);
INSERT INTO `t_setmeal_checkgroup` VALUES (23, 6);
INSERT INTO `t_setmeal_checkgroup` VALUES (24, 6);
INSERT INTO `t_setmeal_checkgroup` VALUES (25, 6);
INSERT INTO `t_setmeal_checkgroup` VALUES (26, 6);
INSERT INTO `t_setmeal_checkgroup` VALUES (27, 6);
INSERT INTO `t_setmeal_checkgroup` VALUES (28, 6);
INSERT INTO `t_setmeal_checkgroup` VALUES (29, 6);
INSERT INTO `t_setmeal_checkgroup` VALUES (30, 6);
INSERT INTO `t_setmeal_checkgroup` VALUES (31, 6);
INSERT INTO `t_setmeal_checkgroup` VALUES (32, 6);
INSERT INTO `t_setmeal_checkgroup` VALUES (33, 6);
INSERT INTO `t_setmeal_checkgroup` VALUES (12, 7);
INSERT INTO `t_setmeal_checkgroup` VALUES (14, 7);
INSERT INTO `t_setmeal_checkgroup` VALUES (15, 7);
INSERT INTO `t_setmeal_checkgroup` VALUES (17, 7);
INSERT INTO `t_setmeal_checkgroup` VALUES (22, 7);
INSERT INTO `t_setmeal_checkgroup` VALUES (23, 7);
INSERT INTO `t_setmeal_checkgroup` VALUES (24, 7);
INSERT INTO `t_setmeal_checkgroup` VALUES (25, 7);
INSERT INTO `t_setmeal_checkgroup` VALUES (27, 7);
INSERT INTO `t_setmeal_checkgroup` VALUES (31, 7);
INSERT INTO `t_setmeal_checkgroup` VALUES (33, 7);
INSERT INTO `t_setmeal_checkgroup` VALUES (12, 8);
INSERT INTO `t_setmeal_checkgroup` VALUES (14, 8);
INSERT INTO `t_setmeal_checkgroup` VALUES (17, 8);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `birthday` date NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `station` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, NULL, NULL, 'admin', '21232f297a57a5a743894a0e4a801fc3', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (2, NULL, NULL, 'xiaoming', '$2a$10$3xW2nBjwBM3rx1LoYprVsemNri5bvxeOd/QfmO7UDFQhW2HRHLi.C', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `FK_Reference_8`(`role_id`) USING BTREE,
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_8` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES (1, 1);
INSERT INTO `t_user_role` VALUES (2, 2);

SET FOREIGN_KEY_CHECKS = 1;
