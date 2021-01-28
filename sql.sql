/*
 Navicat Premium Data Transfer

 Source Server         : project report
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : us-cdbr-east-02.cleardb.com:3306
 Source Schema         : heroku_153a134926ffb6d

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 22/01/2021 22:20:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for action
-- ----------------------------
DROP TABLE IF EXISTS `action`;
CREATE TABLE `action`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of action
-- ----------------------------
INSERT INTO `action` VALUES (2, 'INSERT', 'Thêm mới', 'Hành động thêm mới', '2020-10-03 23:58:59', 1);
INSERT INTO `action` VALUES (3, 'UPDATE', 'Cập nhật', 'Hành động cập nhật', '2020-09-29 23:33:57', 1);
INSERT INTO `action` VALUES (4, 'DELETE', 'Xóa', 'Hành động xóa', '2020-10-04 00:03:57', 1);
INSERT INTO `action` VALUES (5, 'SEARCH', 'Tìm kiếm', 'Hành động tìm kiếm', '2020-09-29 23:34:22', 1);
INSERT INTO `action` VALUES (7, 'ROLE', 'Gán quyền - chức năng', 'Ahihi đồ ngốc', '2020-10-04 17:16:48', 1);
INSERT INTO `action` VALUES (8, 'VIEW', 'Xem', NULL, '2020-11-04 01:59:41', 1);

-- ----------------------------
-- Table structure for app_param
-- ----------------------------
DROP TABLE IF EXISTS `app_param`;
CREATE TABLE `app_param`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `value` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status` bigint(20) NULL DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ord` bigint(20) NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of app_param
-- ----------------------------
INSERT INTO `app_param` VALUES (2, 'ACTIVE', 'TYPE_STATUS', 'Khởi động dự án', 1, NULL, 1, '2020-11-07 17:38:42');
INSERT INTO `app_param` VALUES (4, 'DEACTIVE', 'TYPE_STATUS', 'Đóng dự án', 1, NULL, 5, '2020-11-07 17:39:19');
INSERT INTO `app_param` VALUES (5, 'PENDING', 'TYPE_STATUS', 'Đang chờ xử lý', 1, NULL, 7, '2020-11-07 17:39:31');
INSERT INTO `app_param` VALUES (6, 'UNFULFILLED', 'TYPE_STATUS', 'Chưa thực hiện', 1, NULL, 6, '2020-11-07 17:39:25');
INSERT INTO `app_param` VALUES (7, 'PLAN', 'TYPE_STATUS', 'Lên kế hoạch', 1, NULL, 2, '2020-11-07 17:38:47');
INSERT INTO `app_param` VALUES (8, 'DOING', 'TYPE_STATUS', 'Tiến hành dự án', 1, NULL, 3, '2020-11-07 17:39:04');
INSERT INTO `app_param` VALUES (9, 'REPORT', 'TYPE_STATUS', 'Báo cáo kết quả', 1, NULL, 4, '2020-11-07 17:39:12');
INSERT INTO `app_param` VALUES (11, 'SOFTWARE_DEVELOPER', 'TYPE_WORK', 'Lập trình viên phần mềm ứng dụng', 1, NULL, 1, '2020-11-07 17:58:55');
INSERT INTO `app_param` VALUES (12, 'COMPUTER_PROGRAMMER', 'TYPE_WORK', 'Lập trình viên máy tính', 1, NULL, 2, '2020-11-07 17:59:41');
INSERT INTO `app_param` VALUES (13, 'COMPUTER_SYSTEM_ANALYSIST', 'TYPE_WORK', 'Nhà phân tích hệ thống máy tính', 1, NULL, 3, '2020-11-07 18:01:54');
INSERT INTO `app_param` VALUES (14, 'IT_SUPPORT', 'TYPE_WORK', 'Chuyên viên hỗ trợ máy tính', 1, NULL, 4, '2020-11-07 18:04:47');
INSERT INTO `app_param` VALUES (15, 'WEB_DEVELOPER', 'TYPE_WORK', 'Kỹ sư phát triển website', 1, NULL, 5, '2020-11-07 18:03:15');
INSERT INTO `app_param` VALUES (16, 'TESTER', 'TYPE_WORK', 'Tester', 1, NULL, 6, '2020-11-07 18:03:56');
INSERT INTO `app_param` VALUES (17, 'BA', 'TYPE_WORK', 'Chuyên viên phân tích nghiệp vụ', 1, NULL, 7, '2020-11-07 18:04:31');

-- ----------------------------
-- Table structure for bug
-- ----------------------------
DROP TABLE IF EXISTS `bug`;
CREATE TABLE `bug`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `job_id` bigint(20) NULL DEFAULT NULL,
  `content_bug` blob NULL,
  `step_to_bug` blob NULL,
  `result_bug` blob NULL,
  `hope_result` blob NULL,
  `image_bug` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status` bigint(20) NULL DEFAULT NULL,
  `feedback` blob NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bug
-- ----------------------------

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `description` varbinary(500) NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  `create_by` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (17, 'RHUST', 'Đại học Bách Khoa Hà Nội', NULL, NULL, NULL, '2020-10-04 00:10:03', 1, 1);
INSERT INTO `company` VALUES (18, 'NGOCNV', 'Nguyễn Văn Ngọc', NULL, NULL, NULL, '2020-11-05 04:29:51', 1, 1);
INSERT INTO `company` VALUES (23, 'NGOC', 'Ahihi đồ ngốc', NULL, NULL, NULL, '2020-11-12 07:26:10', 1, 72);

-- ----------------------------
-- Table structure for company_role
-- ----------------------------
DROP TABLE IF EXISTS `company_role`;
CREATE TABLE `company_role`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `company_id` bigint(20) NULL DEFAULT NULL,
  `role_id` bigint(20) NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of company_role
-- ----------------------------
INSERT INTO `company_role` VALUES (4, 17, 2, '2020-10-05 11:17:12');
INSERT INTO `company_role` VALUES (6, 18, 3, '2020-11-05 04:30:35');
INSERT INTO `company_role` VALUES (7, 17, 5, '2020-11-07 12:47:43');
INSERT INTO `company_role` VALUES (8, 17, 6, '2020-11-09 08:07:24');
INSERT INTO `company_role` VALUES (9, 20, 3, '2020-11-12 10:51:03');
INSERT INTO `company_role` VALUES (10, 17, 3, '2020-11-12 03:59:15');
INSERT INTO `company_role` VALUES (11, 21, 3, '2020-11-12 04:21:36');
INSERT INTO `company_role` VALUES (12, 22, 3, '2020-11-12 07:22:37');
INSERT INTO `company_role` VALUES (13, 23, 3, '2020-11-12 07:26:10');
INSERT INTO `company_role` VALUES (14, 23, 7, '2020-11-13 03:40:05');
INSERT INTO `company_role` VALUES (15, 24, 3, '2020-11-13 07:13:42');

-- ----------------------------
-- Table structure for company_user
-- ----------------------------
DROP TABLE IF EXISTS `company_user`;
CREATE TABLE `company_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `company_id` bigint(20) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of company_user
-- ----------------------------
INSERT INTO `company_user` VALUES (3, 1, 17, 1, '2020-10-05 11:06:59');
INSERT INTO `company_user` VALUES (12, 1, 18, 1, '2020-11-05 11:31:34');
INSERT INTO `company_user` VALUES (15, 73, 17, 1, '2020-11-09 08:18:30');
INSERT INTO `company_user` VALUES (16, 73, 17, 1, '2020-11-09 08:18:35');
INSERT INTO `company_user` VALUES (17, 72, 20, 1, '2020-11-12 03:47:22');
INSERT INTO `company_user` VALUES (18, 72, 21, 1, '2020-11-12 04:21:36');
INSERT INTO `company_user` VALUES (19, 72, 22, 1, '2020-11-12 07:22:37');
INSERT INTO `company_user` VALUES (20, 72, 23, 1, '2020-11-12 07:26:10');
INSERT INTO `company_user` VALUES (21, 1, 24, 1, '2020-11-13 07:13:42');

-- ----------------------------
-- Table structure for job_in_stage
-- ----------------------------
DROP TABLE IF EXISTS `job_in_stage`;
CREATE TABLE `job_in_stage`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `project_stage_id` bigint(20) NULL DEFAULT NULL,
  `team_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of job_in_stage
-- ----------------------------

-- ----------------------------
-- Table structure for job_user
-- ----------------------------
DROP TABLE IF EXISTS `job_user`;
CREATE TABLE `job_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `job_in_stage_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of job_user
-- ----------------------------

-- ----------------------------
-- Table structure for module
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT 0,
  `path_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `access_user` int(11) NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `parent_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES (13, 'SETTING', 'Cài đặt', NULL, 1, NULL, 'settings-2-outline', 0, '2020-10-03 00:34:22', NULL);
INSERT INTO `module` VALUES (14, 'USER', 'Quản lý tài khoản', NULL, 1, '/pages/user', 'person-outline', 1, '2020-11-09 03:19:56', 13);
INSERT INTO `module` VALUES (15, 'COMPANY', 'Quản lý doanh nghiệp', NULL, 1, '/pages/company', 'npm-outline', 1, '2020-11-13 07:49:19', 13);
INSERT INTO `module` VALUES (16, 'ACTION', 'Quản lý hành động', NULL, 1, '/pages/action', 'lock-outline', 0, '2020-10-03 00:32:32', 13);
INSERT INTO `module` VALUES (17, 'MODULE', 'Quản lý menu', NULL, 1, '/pages/module', 'menu-outline', 0, '2020-10-18 13:37:33', 13);
INSERT INTO `module` VALUES (18, 'ROLE', 'Quản lý quyền', NULL, 1, '/pages/role', 'smiling-face-outline', 1, '2020-11-09 03:20:28', 13);
INSERT INTO `module` VALUES (22, 'PROJECT', 'Quản lý dự án', NULL, 1, NULL, 'clipboard-outline', 0, '2020-10-04 20:12:59', NULL);
INSERT INTO `module` VALUES (23, 'PRI', 'Thông tin dự án', 'Trang này dùng để xem thông tin dự án đang trong kế hoạch triển khai, .....', 1, '/pages/project/information', 'credit-card-outline', 1, '2020-11-09 03:20:40', 22);
INSERT INTO `module` VALUES (24, 'PARAM', 'Quản lý tham số', NULL, 1, '/pages/app-param', 'shield-outline', 0, '2020-11-03 03:19:47', 13);

-- ----------------------------
-- Table structure for module_action
-- ----------------------------
DROP TABLE IF EXISTS `module_action`;
CREATE TABLE `module_action`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `module_id` bigint(20) NULL DEFAULT NULL,
  `action_id` bigint(20) NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of module_action
-- ----------------------------
INSERT INTO `module_action` VALUES (22, 15, 2, '2020-10-01 16:32:15');
INSERT INTO `module_action` VALUES (23, 15, 4, '2020-10-01 16:32:15');
INSERT INTO `module_action` VALUES (24, 15, 3, '2020-10-01 16:32:15');
INSERT INTO `module_action` VALUES (25, 15, 5, '2020-10-01 16:32:15');
INSERT INTO `module_action` VALUES (26, 16, 2, '2020-10-01 16:34:37');
INSERT INTO `module_action` VALUES (27, 16, 3, '2020-10-01 16:34:37');
INSERT INTO `module_action` VALUES (28, 16, 4, '2020-10-01 16:34:37');
INSERT INTO `module_action` VALUES (29, 16, 5, '2020-10-01 16:34:37');
INSERT INTO `module_action` VALUES (34, 18, 2, '2020-10-01 16:36:17');
INSERT INTO `module_action` VALUES (35, 18, 3, '2020-10-01 16:36:17');
INSERT INTO `module_action` VALUES (36, 18, 4, '2020-10-01 16:36:17');
INSERT INTO `module_action` VALUES (37, 18, 5, '2020-10-01 16:36:17');
INSERT INTO `module_action` VALUES (38, 17, 2, '2020-10-03 00:25:49');
INSERT INTO `module_action` VALUES (39, 17, 3, '2020-10-03 00:25:49');
INSERT INTO `module_action` VALUES (40, 17, 4, '2020-10-03 00:25:49');
INSERT INTO `module_action` VALUES (41, 17, 5, '2020-10-03 00:25:49');
INSERT INTO `module_action` VALUES (42, 14, 2, '2020-10-03 23:56:15');
INSERT INTO `module_action` VALUES (43, 14, 4, '2020-10-03 23:56:15');
INSERT INTO `module_action` VALUES (45, 14, 5, '2020-10-03 23:56:15');
INSERT INTO `module_action` VALUES (46, 14, 3, '2020-10-03 23:57:47');
INSERT INTO `module_action` VALUES (55, 23, 2, '2020-10-04 13:37:19');
INSERT INTO `module_action` VALUES (56, 23, 3, '2020-10-04 13:37:19');
INSERT INTO `module_action` VALUES (57, 23, 4, '2020-10-04 13:37:19');
INSERT INTO `module_action` VALUES (58, 23, 5, '2020-10-04 13:37:19');
INSERT INTO `module_action` VALUES (61, 18, 7, '2020-10-04 17:19:28');
INSERT INTO `module_action` VALUES (62, 24, 2, '2020-11-03 03:10:44');
INSERT INTO `module_action` VALUES (63, 24, 3, '2020-11-03 03:10:44');
INSERT INTO `module_action` VALUES (64, 24, 4, '2020-11-03 03:10:44');
INSERT INTO `module_action` VALUES (65, 24, 5, '2020-11-03 03:10:44');
INSERT INTO `module_action` VALUES (66, 23, 8, '2020-11-04 02:00:03');
INSERT INTO `module_action` VALUES (67, 14, 8, '2020-11-06 07:07:35');

-- ----------------------------
-- Table structure for project_information
-- ----------------------------
DROP TABLE IF EXISTS `project_information`;
CREATE TABLE `project_information`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `start_date` date NULL DEFAULT NULL,
  `end_date_plan` date NULL DEFAULT NULL,
  `money` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_id` bigint(20) NULL DEFAULT NULL,
  `company_id` bigint(20) NULL DEFAULT NULL,
  `description` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `actual_end_time` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of project_information
-- ----------------------------
INSERT INTO `project_information` VALUES (1, 'VISABIT', 'Dự án quản lý thẻ ngân hàng Visa', '2020-02-05', '2020-11-08', '50 tỷ đồng', 18, 17, NULL, 2, '2020-11-08 20:35:37', '2020-11-10');

-- ----------------------------
-- Table structure for project_stage
-- ----------------------------
DROP TABLE IF EXISTS `project_stage`;
CREATE TABLE `project_stage`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `start_date` datetime NULL DEFAULT NULL,
  `end_date_plan` datetime NULL DEFAULT NULL,
  `actual_end_time` datetime NULL DEFAULT NULL,
  `project_id` bigint(20) NULL DEFAULT NULL,
  `status` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of project_stage
-- ----------------------------

-- ----------------------------
-- Table structure for project_team
-- ----------------------------
DROP TABLE IF EXISTS `project_team`;
CREATE TABLE `project_team`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `team_id` bigint(20) NULL DEFAULT NULL,
  `project_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of project_team
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (2, 'ADMIN', 'Admin', NULL, '2020-11-13 07:07:14', 1);
INSERT INTO `role` VALUES (3, 'USER_ADMIN', 'User Admin', 'Quyền này dành cho User tạo ra doanh nghiệp mới, không được xóa', '2020-11-05 04:37:06', 1);
INSERT INTO `role` VALUES (7, 'TEST', 'test', NULL, '2020-11-13 03:40:05', 1);

-- ----------------------------
-- Table structure for role_module
-- ----------------------------
DROP TABLE IF EXISTS `role_module`;
CREATE TABLE `role_module`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NULL DEFAULT NULL,
  `module_id` bigint(20) NULL DEFAULT NULL,
  `action_id` bigint(20) NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 248 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_module
-- ----------------------------
INSERT INTO `role_module` VALUES (69, 2, 14, 5, '2020-10-03 23:03:27');
INSERT INTO `role_module` VALUES (72, 2, 18, 5, '2020-10-03 23:33:46');
INSERT INTO `role_module` VALUES (76, 2, 17, 5, '2020-10-03 23:34:37');
INSERT INTO `role_module` VALUES (79, 2, 16, 5, '2020-10-04 00:08:18');
INSERT INTO `role_module` VALUES (93, 2, 15, 3, '2020-10-04 14:25:44');
INSERT INTO `role_module` VALUES (94, 2, 15, 2, '2020-10-04 14:25:44');
INSERT INTO `role_module` VALUES (95, 2, 15, 5, '2020-10-04 14:25:44');
INSERT INTO `role_module` VALUES (108, 2, 18, 3, '2020-10-04 17:15:40');
INSERT INTO `role_module` VALUES (116, 2, 18, 7, '2020-10-04 17:43:19');
INSERT INTO `role_module` VALUES (121, 2, 23, 3, '2020-10-04 17:46:10');
INSERT INTO `role_module` VALUES (122, 2, 23, 2, '2020-10-04 17:46:10');
INSERT INTO `role_module` VALUES (123, 2, 23, 5, '2020-10-04 17:46:10');
INSERT INTO `role_module` VALUES (124, 2, 23, 4, '2020-10-04 17:46:10');
INSERT INTO `role_module` VALUES (131, 2, 15, 4, '2020-10-05 11:05:04');
INSERT INTO `role_module` VALUES (134, 2, 17, 3, '2020-10-05 11:16:39');
INSERT INTO `role_module` VALUES (135, 2, 17, 2, '2020-10-05 11:16:39');
INSERT INTO `role_module` VALUES (136, 2, 17, 4, '2020-10-05 11:16:39');
INSERT INTO `role_module` VALUES (141, 2, 14, 2, '2020-10-05 07:39:56');
INSERT INTO `role_module` VALUES (151, 2, 14, 4, '2020-10-05 07:39:56');
INSERT INTO `role_module` VALUES (171, 2, 18, 2, '2020-10-28 11:19:16');
INSERT INTO `role_module` VALUES (191, 2, 18, 4, '2020-10-31 07:40:49');
INSERT INTO `role_module` VALUES (192, 2, 24, 3, '2020-11-03 03:11:20');
INSERT INTO `role_module` VALUES (193, 2, 24, 2, '2020-11-03 03:11:20');
INSERT INTO `role_module` VALUES (194, 2, 24, 5, '2020-11-03 03:11:20');
INSERT INTO `role_module` VALUES (195, 2, 24, 4, '2020-11-03 03:11:20');
INSERT INTO `role_module` VALUES (196, 2, 23, 8, '2020-11-04 02:00:30');
INSERT INTO `role_module` VALUES (197, 3, 23, 3, '2020-11-05 04:30:24');
INSERT INTO `role_module` VALUES (198, 3, 23, 2, '2020-11-05 04:30:24');
INSERT INTO `role_module` VALUES (199, 3, 23, 5, '2020-11-05 04:30:24');
INSERT INTO `role_module` VALUES (200, 3, 23, 8, '2020-11-05 04:30:24');
INSERT INTO `role_module` VALUES (201, 3, 23, 4, '2020-11-05 04:30:24');
INSERT INTO `role_module` VALUES (202, 2, 14, 8, '2020-11-06 07:07:47');
INSERT INTO `role_module` VALUES (203, 2, 14, 3, '2020-11-07 12:43:32');
INSERT INTO `role_module` VALUES (228, 3, 15, 3, '2020-11-12 03:59:52');
INSERT INTO `role_module` VALUES (229, 3, 15, 7, '2020-11-12 03:59:52');
INSERT INTO `role_module` VALUES (230, 3, 15, 2, '2020-11-12 03:59:52');
INSERT INTO `role_module` VALUES (231, 3, 15, 5, '2020-11-12 03:59:52');
INSERT INTO `role_module` VALUES (232, 3, 15, 4, '2020-11-12 03:59:52');
INSERT INTO `role_module` VALUES (233, 3, 18, 3, '2020-11-12 03:59:52');
INSERT INTO `role_module` VALUES (234, 3, 18, 7, '2020-11-12 03:59:52');
INSERT INTO `role_module` VALUES (235, 3, 18, 2, '2020-11-12 03:59:52');
INSERT INTO `role_module` VALUES (236, 3, 18, 5, '2020-11-12 03:59:52');
INSERT INTO `role_module` VALUES (237, 3, 18, 4, '2020-11-12 03:59:52');
INSERT INTO `role_module` VALUES (238, 3, 14, 3, '2020-11-12 03:59:52');
INSERT INTO `role_module` VALUES (239, 3, 14, 2, '2020-11-12 03:59:52');
INSERT INTO `role_module` VALUES (240, 3, 14, 5, '2020-11-12 03:59:52');
INSERT INTO `role_module` VALUES (241, 3, 14, 8, '2020-11-12 03:59:52');
INSERT INTO `role_module` VALUES (242, 3, 14, 4, '2020-11-12 03:59:52');
INSERT INTO `role_module` VALUES (245, 2, 16, 3, '2020-11-12 07:31:48');
INSERT INTO `role_module` VALUES (246, 2, 16, 2, '2020-11-12 07:31:48');
INSERT INTO `role_module` VALUES (247, 2, 16, 4, '2020-11-12 07:31:48');

-- ----------------------------
-- Table structure for team_information
-- ----------------------------
DROP TABLE IF EXISTS `team_information`;
CREATE TABLE `team_information`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `company_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of team_information
-- ----------------------------

-- ----------------------------
-- Table structure for team_user
-- ----------------------------
DROP TABLE IF EXISTS `team_user`;
CREATE TABLE `team_user`  (
  `user_id` bigint(20) NULL DEFAULT NULL,
  `team_id` bigint(20) NULL DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_in_project_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of team_user
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `full_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `image_url` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  `lang_key` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `activation_key` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `reset_key` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `reset_date` timestamp NULL DEFAULT NULL,
  `last_modified_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `last_modified_date` timestamp NULL DEFAULT NULL,
  `fingerprint` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '$2a$10$W7yF/Rr48GZKACa/oFGNwOYvyr8dev78U1ABwgJSfNdofiQvzuA9G', 'Nguyễn Văn Ngọc', 'nvn41091@gmail.com', NULL, 1, 'vi', NULL, '2AZgXfdNES4rcPVziRc6', 'nvn41091', '2020-08-30 23:53:53', '2020-11-13 02:28:58', NULL, NULL, '5d3d415185814f51a40abd8a2e4656b1');
INSERT INTO `user` VALUES (72, 'nvn41091', '$2a$10$oOjcDkXPzPck89BpIUvyNeSIUXPBKLwixtAOUl8dhRUY67SZbOLYW', 'Nguyễn Văn Ngọc', 'ngoc410991@gmail.com', NULL, 1, 'vi', NULL, 'hB0Cw44Q6JMNz2xMNxWL', NULL, '2020-11-05 06:53:08', NULL, NULL, NULL, '85906776b9913d3578e4e859bd9f6d48');
INSERT INTO `user` VALUES (73, 'ngoc41099', '$2a$10$yxSf4ZI1CiNsmYG6eILMmuLnmcAwR.WxUDqKpxc5l.K7XwC4iRu62', 'Ngọc', 'ngoc41099@gmail.com', NULL, 1, NULL, NULL, 'FoMfX74JJcixRInfdQWi', 'admin', '2020-11-09 08:18:30', '2020-11-09 08:19:07', 'admin', '2020-11-09 08:18:35', '85906776b9913d3578e4e859bd9f6d48');
INSERT INTO `user` VALUES (74, '123456', '$2a$10$/gvY7Tv1x8Xh1JOBcGcVxOSL8f0xHfAh8mFLkrX9CvxzvnwpGaqBy', 'Nguyễn Văn Ngọc', '123456@gmail.com', NULL, 1, 'vi', NULL, 'YegMIpKQ60npH0jPj0DE', NULL, '2020-11-12 16:07:38', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `role_id` bigint(20) NULL DEFAULT NULL,
  `company_id` bigint(20) NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (3, 1, 2, 17, '2020-10-03 08:13:35');
INSERT INTO `user_role` VALUES (4, 1, 3, 18, '2020-11-05 11:32:56');
INSERT INTO `user_role` VALUES (12, 72, 3, 23, '2020-11-12 07:26:10');

SET FOREIGN_KEY_CHECKS = 1;
