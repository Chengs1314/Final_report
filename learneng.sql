/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : learneng

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 10/04/2025 20:14:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_custormer
-- ----------------------------
DROP TABLE IF EXISTS `t_custormer`;
CREATE TABLE `t_custormer`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_custormer
-- ----------------------------
INSERT INTO `t_custormer` VALUES (17, 'zhangsan', '111111', '张小花', '2025-03-21 19:55:26', '18877221133', NULL, '山东省');

-- ----------------------------
-- Table structure for t_data_permission_test
-- ----------------------------
DROP TABLE IF EXISTS `t_data_permission_test`;
CREATE TABLE `t_data_permission_test`  (
  `FIELD1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FIELD2` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FIELD3` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FIELD4` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DEPT_ID` int(0) NOT NULL,
  `CREATE_TIME` datetime(0) NOT NULL,
  `ID` int(0) NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户权限测试' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_data_permission_test
-- ----------------------------
INSERT INTO `t_data_permission_test` VALUES ('11', '22', '33', '44', 4, '2023-10-26 12:30:50', 0);
INSERT INTO `t_data_permission_test` VALUES ('小米', '小米10Pro', '4999', '珍珠白', 1, '2020-04-14 15:00:38', 1);
INSERT INTO `t_data_permission_test` VALUES ('腾讯', '黑鲨游戏手机3', '3799', '铠甲灰', 2, '2020-04-14 15:01:36', 2);

-- ----------------------------
-- Table structure for t_dept
-- ----------------------------
DROP TABLE IF EXISTS `t_dept`;
CREATE TABLE `t_dept`  (
  `DEPT_ID` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `PARENT_ID` bigint(0) NOT NULL COMMENT '上级部门ID',
  `DEPT_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门名称',
  `ORDER_NUM` bigint(0) NULL DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`DEPT_ID`) USING BTREE,
  INDEX `t_dept_parent_id`(`PARENT_ID`) USING BTREE,
  INDEX `t_dept_dept_name`(`DEPT_NAME`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 93 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_dept
-- ----------------------------
INSERT INTO `t_dept` VALUES (93, 0, '其他', 3, '2023-10-09 15:35:06', NULL);

-- ----------------------------
-- Table structure for t_exam_info
-- ----------------------------
DROP TABLE IF EXISTS `t_exam_info`;
CREATE TABLE `t_exam_info`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `userid` bigint(0) NULL DEFAULT NULL COMMENT '用户ID',
  `score` int(0) NULL DEFAULT NULL COMMENT '分数',
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '测试时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '测验分数' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_exam_info
-- ----------------------------
INSERT INTO `t_exam_info` VALUES (1910153752338255873, 17, 30, '2025-04-10 10:11:58');
INSERT INTO `t_exam_info` VALUES (1910299275250741249, 17, 90, '2025-04-10 19:50:13');

-- ----------------------------
-- Table structure for t_eximport
-- ----------------------------
DROP TABLE IF EXISTS `t_eximport`;
CREATE TABLE `t_eximport`  (
  `FIELD1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字段1',
  `FIELD2` int(0) NOT NULL COMMENT '字段2',
  `FIELD3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字段3',
  `CREATE_TIME` datetime(0) NOT NULL
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Excel导入导出测试' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_eximport
-- ----------------------------

-- ----------------------------
-- Table structure for t_generator_config
-- ----------------------------
DROP TABLE IF EXISTS `t_generator_config`;
CREATE TABLE `t_generator_config`  (
  `id` int(0) NOT NULL COMMENT '主键',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作者',
  `base_package` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '基础包名',
  `entity_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'entity文件存放路径',
  `mapper_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'mapper文件存放路径',
  `mapper_xml_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'mapper xml文件存放路径',
  `service_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'servcie文件存放路径',
  `service_impl_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'serviceImpl文件存放路径',
  `controller_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'controller文件存放路径',
  `is_trim` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否去除前缀 1是 0否',
  `trim_value` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前缀内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_generator_config
-- ----------------------------
INSERT INTO `t_generator_config` VALUES (1, 'wjl', 'com.wjl.oneshot.business', 'entity', 'mapper', 'mapper', 'service', 'service.impl', 'controller', '1', 't_');

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log`  (
  `ID` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作用户',
  `OPERATION` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '操作内容',
  `TIME` decimal(11, 0) NULL DEFAULT NULL COMMENT '耗时',
  `METHOD` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '操作方法',
  `PARAMS` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '方法参数',
  `IP` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作者IP',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作地点',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `t_log_create_time`(`CREATE_TIME`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1289 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES (1011, 'MrBird', '修改部门', 18, 'com.wjl.oneshot.system.controller.DeptController.updateDept()', ' dept: \"Dept(deptId=1, parentId=null, deptName=领导办公室, orderNum=1, createTime=null, modifyTime=Wed Sep 27 06:00:10 CST 2023)\"', '192.168.30.1', '2023-09-27 06:00:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1012, 'MrBird', '修改部门', 12, 'com.wjl.oneshot.system.controller.DeptController.updateDept()', ' dept: \"Dept(deptId=1, parentId=null, deptName=镇领导办公室, orderNum=1, createTime=null, modifyTime=Wed Sep 27 06:00:16 CST 2023)\"', '192.168.30.1', '2023-09-27 06:00:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1013, 'MrBird', '修改部门', 13, 'com.wjl.oneshot.system.controller.DeptController.updateDept()', ' dept: \"Dept(deptId=4, parentId=null, deptName=财政所\\t\\t\\t\\t, orderNum=2, createTime=null, modifyTime=Wed Sep 27 06:00:24 CST 2023)\"', '192.168.30.1', '2023-09-27 06:00:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1014, 'MrBird', '修改部门', 13, 'com.wjl.oneshot.system.controller.DeptController.updateDept()', ' dept: \"Dept(deptId=4, parentId=null, deptName=财政所, orderNum=2, createTime=null, modifyTime=Wed Sep 27 06:00:32 CST 2023)\"', '192.168.30.1', '2023-09-27 06:00:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1015, 'MrBird', '修改部门', 12, 'com.wjl.oneshot.system.controller.DeptController.updateDept()', ' dept: \"Dept(deptId=5, parentId=null, deptName=农技站, orderNum=3, createTime=null, modifyTime=Wed Sep 27 06:00:47 CST 2023)\"', '192.168.30.1', '2023-09-27 06:00:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1016, 'MrBird', '修改部门', 13, 'com.wjl.oneshot.system.controller.DeptController.updateDept()', ' dept: \"Dept(deptId=5, parentId=null, deptName=农机站, orderNum=3, createTime=null, modifyTime=Wed Sep 27 06:01:08 CST 2023)\"', '192.168.30.1', '2023-09-27 06:01:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1017, 'MrBird', '修改部门', 13, 'com.wjl.oneshot.system.controller.DeptController.updateDept()', ' dept: \"Dept(deptId=6, parentId=null, deptName=信访办, orderNum=4, createTime=null, modifyTime=Wed Sep 27 06:01:20 CST 2023)\"', '192.168.30.1', '2023-09-27 06:01:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1018, 'MrBird', '修改部门', 14, 'com.wjl.oneshot.system.controller.DeptController.updateDept()', ' dept: \"Dept(deptId=7, parentId=null, deptName=武装部, orderNum=5, createTime=null, modifyTime=Wed Sep 27 06:01:31 CST 2023)\"', '192.168.30.1', '2023-09-27 06:01:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1019, 'MrBird', '修改部门', 12, 'com.wjl.oneshot.system.controller.DeptController.updateDept()', ' dept: \"Dept(deptId=8, parentId=null, deptName=计生办（老龄办）, orderNum=6, createTime=null, modifyTime=Wed Sep 27 06:01:49 CST 2023)\"', '192.168.30.1', '2023-09-27 06:01:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1020, 'MrBird', '修改部门', 12, 'com.wjl.oneshot.system.controller.DeptController.updateDept()', ' dept: \"Dept(deptId=10, parentId=null, deptName=综治办, orderNum=7, createTime=null, modifyTime=Wed Sep 27 06:02:00 CST 2023)\"', '192.168.30.1', '2023-09-27 06:02:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1021, 'MrBird', '修改部门', 13, 'com.wjl.oneshot.system.controller.DeptController.updateDept()', ' dept: \"Dept(deptId=9, parentId=null, deptName=环保站, orderNum=8, createTime=null, modifyTime=Wed Sep 27 06:02:09 CST 2023)\"', '192.168.30.1', '2023-09-27 06:02:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1022, 'MrBird', '新增部门', 12, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=11, parentId=0, deptName=退役军人服务站 , orderNum=9, createTime=Wed Sep 27 06:02:50 CST 2023, modifyTime=null)\"', '192.168.30.1', '2023-09-27 06:02:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1023, 'MrBird', '新增部门', 12, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=12, parentId=0, deptName=消防站\\t, orderNum=10, createTime=Wed Sep 27 06:03:31 CST 2023, modifyTime=null)\"', '192.168.30.1', '2023-09-27 06:03:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1024, 'MrBird', '新增部门', 13, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=13, parentId=0, deptName=城乡环卫一体化办公室, orderNum=11, createTime=Wed Sep 27 06:03:41 CST 2023, modifyTime=null)\"', '192.168.30.1', '2023-09-27 06:03:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1025, 'MrBird', '新增部门', 13, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=14, parentId=0, deptName=社区戒毒康复办公室, orderNum=12, createTime=Wed Sep 27 06:03:52 CST 2023, modifyTime=null)\"', '192.168.30.1', '2023-09-27 06:03:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1026, 'MrBird', '新增部门', 12, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=15, parentId=0, deptName=人保所, orderNum=12, createTime=Wed Sep 27 06:04:05 CST 2023, modifyTime=null)\"', '192.168.30.1', '2023-09-27 06:04:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1027, 'MrBird', '新增部门', 13, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=16, parentId=0, deptName=食安办, orderNum=13, createTime=Wed Sep 27 06:04:19 CST 2023, modifyTime=null)\"', '192.168.30.1', '2023-09-27 06:04:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1028, 'MrBird', '新增部门', 13, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=17, parentId=0, deptName=综合执法中队, orderNum=14, createTime=Wed Sep 27 06:04:33 CST 2023, modifyTime=null)\"', '192.168.30.1', '2023-09-27 06:04:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1029, 'MrBird', '新增部门', 11, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=18, parentId=0, deptName=文化旅游站, orderNum=15, createTime=Wed Sep 27 06:04:56 CST 2023, modifyTime=null)\"', '192.168.30.1', '2023-09-27 06:04:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1030, 'MrBird', '新增部门', 12, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=19, parentId=0, deptName=高田办事处, orderNum=16, createTime=Wed Sep 27 06:05:12 CST 2023, modifyTime=null)\"', '192.168.30.1', '2023-09-27 06:05:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1031, 'MrBird', '新增部门', 11, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=20, parentId=0, deptName=北瞿办事处, orderNum=17, createTime=Wed Sep 27 06:05:55 CST 2023, modifyTime=null)\"', '192.168.30.1', '2023-09-27 06:05:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1032, 'MrBird', '新增部门', 11, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=21, parentId=0, deptName=文化旅游站, orderNum=19, createTime=Wed Sep 27 06:08:20 CST 2023, modifyTime=null)\"', '192.168.30.1', '2023-09-27 06:08:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1033, 'MrBird', '新增部门', 12, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=22, parentId=0, deptName=妇联, orderNum=20, createTime=Wed Sep 27 06:08:37 CST 2023, modifyTime=null)\"', '192.168.30.1', '2023-09-27 06:08:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1034, 'MrBird', '新增部门', 13, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=23, parentId=0, deptName=经管站, orderNum=21, createTime=Wed Sep 27 06:08:55 CST 2023, modifyTime=null)\"', '192.168.30.1', '2023-09-27 06:08:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1035, 'MrBird', '新增部门', 12, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=24, parentId=0, deptName=统计站, orderNum=22, createTime=Wed Sep 27 06:09:05 CST 2023, modifyTime=null)\"', '192.168.30.1', '2023-09-27 06:09:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1036, 'MrBird', '新增部门', 12, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=25, parentId=0, deptName=高井办事处, orderNum=23, createTime=Wed Sep 27 06:09:16 CST 2023, modifyTime=null)\"', '192.168.30.1', '2023-09-27 06:09:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1037, 'MrBird', '新增部门', 11, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=26, parentId=0, deptName=岔尖办事处, orderNum=25, createTime=Wed Sep 27 06:09:33 CST 2023, modifyTime=null)\"', '192.168.30.1', '2023-09-27 06:09:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1038, 'MrBird', '修改部门', 11, 'com.wjl.oneshot.system.controller.DeptController.updateDept()', ' dept: \"Dept(deptId=26, parentId=null, deptName=岔尖办事处, orderNum=24, createTime=null, modifyTime=Wed Sep 27 06:09:39 CST 2023)\"', '192.168.30.1', '2023-09-27 06:09:40', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1039, 'MrBird', '新增部门', 12, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=27, parentId=0, deptName=党建办, orderNum=25, createTime=Wed Sep 27 06:09:55 CST 2023, modifyTime=null)\"', '192.168.30.1', '2023-09-27 06:09:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1040, 'MrBird', '新增部门', 12, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=28, parentId=0, deptName=乡村振兴办公室, orderNum=26, createTime=Wed Sep 27 06:10:08 CST 2023, modifyTime=null)\"', '192.168.30.1', '2023-09-27 06:10:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1041, 'MrBird', '删除用户', 772, 'com.wjl.oneshot.system.controller.UserController.deleteUsers()', ' userIds: \"7\"', '127.0.0.1', '2023-09-27 13:00:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1042, 'MrBird', '删除用户', 780, 'com.wjl.oneshot.system.controller.UserController.deleteUsers()', ' userIds: \"6\"', '127.0.0.1', '2023-09-27 13:00:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1043, 'MrBird', '删除用户', 697, 'com.wjl.oneshot.system.controller.UserController.deleteUsers()', ' userIds: \"5\"', '127.0.0.1', '2023-09-27 13:00:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1044, 'MrBird', '删除用户', 706, 'com.wjl.oneshot.system.controller.UserController.deleteUsers()', ' userIds: \"4\"', '127.0.0.1', '2023-09-27 13:00:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1045, 'MrBird', '删除用户', 1192, 'com.wjl.oneshot.system.controller.UserController.deleteUsers()', ' userIds: \"3\"', '127.0.0.1', '2023-09-27 13:00:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1046, 'MrBird', '删除用户', 702, 'com.wjl.oneshot.system.controller.UserController.deleteUsers()', ' userIds: \"2\"', '127.0.0.1', '2023-09-27 13:00:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1047, 'admin', '删除部门', 640, 'com.wjl.oneshot.system.controller.DeptController.deleteDept()', ' deptIds: \"2,3\"', '127.0.0.1', '2023-09-27 13:03:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1048, 'admin', '删除角色', 910, 'com.wjl.oneshot.system.controller.RoleController.deleteRoles()', ' roleIds: \"80,79,78,77,2\"', '127.0.0.1', '2023-09-27 13:03:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1049, 'admin', '新增部门', 269, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=30, parentId=29, deptName=路政所（交通安全管理站）, orderNum=27, createTime=Wed Sep 27 20:31:08 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:31:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1050, 'admin', '新增部门', 258, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=31, parentId=29, deptName=工会 , orderNum=29, createTime=Wed Sep 27 20:31:32 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:31:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1051, 'admin', '修改部门', 260, 'com.wjl.oneshot.system.controller.DeptController.updateDept()', ' dept: \"Dept(deptId=31, parentId=29, deptName=工会 , orderNum=28, createTime=null, modifyTime=Wed Sep 27 20:31:40 CST 2023)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:31:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1052, 'admin', '新增部门', 255, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=32, parentId=29, deptName=便民服务大厅 , orderNum=30, createTime=Wed Sep 27 20:32:27 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:32:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1053, 'admin', '新增部门', 250, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=33, parentId=29, deptName=综合室, orderNum=31, createTime=Wed Sep 27 20:32:41 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:32:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1054, 'admin', '新增部门', 257, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=34, parentId=29, deptName=民政办公室, orderNum=32, createTime=Wed Sep 27 20:32:55 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:32:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1055, 'admin', '新增部门', 257, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=35, parentId=29, deptName=调研室, orderNum=33, createTime=Wed Sep 27 20:33:07 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:33:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1056, 'admin', '新增部门', 253, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=36, parentId=29, deptName=综合室司机, orderNum=34, createTime=Wed Sep 27 20:33:21 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:33:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1057, 'admin', '新增部门', 259, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=37, parentId=29, deptName=经济发展办公室, orderNum=35, createTime=Wed Sep 27 20:33:33 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:33:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1058, 'admin', '新增部门', 254, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=38, parentId=29, deptName=宣传, orderNum=36, createTime=Wed Sep 27 20:33:44 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:33:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1059, 'admin', '修改部门', 257, 'com.wjl.oneshot.system.controller.DeptController.updateDept()', ' dept: \"Dept(deptId=31, parentId=29, deptName=工会, orderNum=28, createTime=null, modifyTime=Wed Sep 27 20:34:15 CST 2023)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:34:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1060, 'admin', '修改部门', 252, 'com.wjl.oneshot.system.controller.DeptController.updateDept()', ' dept: \"Dept(deptId=32, parentId=29, deptName=便民服务大厅, orderNum=30, createTime=null, modifyTime=Wed Sep 27 20:34:23 CST 2023)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:34:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1061, 'admin', '新增部门', 252, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=39, parentId=29, deptName=统战, orderNum=34, createTime=Wed Sep 27 20:35:31 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:35:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1062, 'admin', '修改部门', 255, 'com.wjl.oneshot.system.controller.DeptController.updateDept()', ' dept: \"Dept(deptId=39, parentId=29, deptName=统战, orderNum=36, createTime=null, modifyTime=Wed Sep 27 20:35:41 CST 2023)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:35:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1063, 'admin', '修改部门', 253, 'com.wjl.oneshot.system.controller.DeptController.updateDept()', ' dept: \"Dept(deptId=39, parentId=29, deptName=统战, orderNum=37, createTime=null, modifyTime=Wed Sep 27 20:35:50 CST 2023)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:35:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1064, 'admin', '新增部门', 255, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=40, parentId=29, deptName=国土所, orderNum=39, createTime=Wed Sep 27 20:36:21 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:36:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1065, 'admin', '修改部门', 250, 'com.wjl.oneshot.system.controller.DeptController.updateDept()', ' dept: \"Dept(deptId=40, parentId=29, deptName=国土所, orderNum=38, createTime=null, modifyTime=Wed Sep 27 20:36:31 CST 2023)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:36:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1066, 'admin', '新增部门', 252, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=41, parentId=29, deptName=村镇办, orderNum=39, createTime=Wed Sep 27 20:43:31 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:43:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1067, 'admin', '新增部门', 252, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=42, parentId=29, deptName=督查室, orderNum=40, createTime=Wed Sep 27 20:43:50 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:43:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1068, 'admin', '新增部门', 255, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=43, parentId=29, deptName=司法所, orderNum=41, createTime=Wed Sep 27 20:44:21 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:44:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1069, 'admin', '新增部门', 257, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=44, parentId=29, deptName=旱厕改造办公室, orderNum=42, createTime=Wed Sep 27 20:44:43 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:44:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1070, 'admin', '新增部门', 250, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=45, parentId=29, deptName=档案站, orderNum=43, createTime=Wed Sep 27 20:44:59 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:45:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1071, 'admin', '新增部门', 253, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=46, parentId=29, deptName=海洋渔业发展服务中心, orderNum=44, createTime=Wed Sep 27 20:45:13 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:45:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1072, 'admin', '新增部门', 250, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=47, parentId=29, deptName=纪委、监察室, orderNum=45, createTime=Wed Sep 27 20:45:34 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:45:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1073, 'admin', '新增部门', 249, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=48, parentId=29, deptName=农业农村综合服务站, orderNum=46, createTime=Wed Sep 27 20:45:48 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:45:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1074, 'admin', '新增部门', 256, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=49, parentId=29, deptName=餐厅工作人员, orderNum=47, createTime=Wed Sep 27 20:46:01 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:46:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1075, 'admin', '新增部门', 252, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=50, parentId=29, deptName=水利站, orderNum=48, createTime=Wed Sep 27 20:46:13 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:46:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1076, 'admin', '新增部门', 254, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=51, parentId=29, deptName=团委, orderNum=49, createTime=Wed Sep 27 20:46:25 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:46:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1077, 'admin', '新增部门', 250, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=52, parentId=29, deptName=林业站, orderNum=50, createTime=Wed Sep 27 20:46:36 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:46:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1078, 'admin', '新增部门', 256, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=53, parentId=29, deptName=物业, orderNum=51, createTime=Wed Sep 27 20:46:47 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:46:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1079, 'admin', '新增部门', 257, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=54, parentId=0, deptName=村单位, orderNum=2, createTime=Wed Sep 27 20:46:58 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:46:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1080, 'admin', '新增部门', 253, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=55, parentId=54, deptName=南o, orderNum=1, createTime=Wed Sep 27 20:47:18 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:47:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1081, 'admin', '新增部门', 257, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=56, parentId=54, deptName=马山子, orderNum=2, createTime=Wed Sep 27 20:47:27 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:47:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1082, 'admin', '新增部门', 251, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=57, parentId=54, deptName=高井, orderNum=3, createTime=Wed Sep 27 20:47:48 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:47:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1083, 'admin', '新增部门', 249, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=58, parentId=54, deptName=北o, orderNum=4, createTime=Wed Sep 27 20:47:58 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:47:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1084, 'admin', '新增部门', 252, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=59, parentId=54, deptName=付山子, orderNum=5, createTime=Wed Sep 27 20:48:06 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:48:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1085, 'admin', '新增部门', 256, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=60, parentId=54, deptName=帝赐街, orderNum=6, createTime=Wed Sep 27 20:48:14 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:48:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1086, 'admin', '新增部门', 253, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=61, parentId=54, deptName=张赵, orderNum=7, createTime=Wed Sep 27 20:48:24 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:48:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1087, 'admin', '新增部门', 251, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=62, parentId=54, deptName=岔尖一村, orderNum=8, createTime=Wed Sep 27 20:48:32 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:48:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1088, 'admin', '新增部门', 255, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=63, parentId=54, deptName=辛庄, orderNum=9, createTime=Wed Sep 27 20:48:45 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:48:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1089, 'admin', '新增部门', 251, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=64, parentId=54, deptName=蔡家, orderNum=10, createTime=Wed Sep 27 20:48:54 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:48:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1090, 'admin', '新增部门', 255, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=65, parentId=54, deptName=岔尖二村, orderNum=11, createTime=Wed Sep 27 20:49:01 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:49:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1091, 'admin', '新增部门', 250, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=66, parentId=54, deptName=孙家, orderNum=12, createTime=Wed Sep 27 20:49:09 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:49:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1092, 'admin', '新增部门', 252, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=67, parentId=54, deptName=沙头村, orderNum=13, createTime=Wed Sep 27 20:49:18 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:49:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1093, 'admin', '新增部门', 255, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=68, parentId=54, deptName=下泊头, orderNum=14, createTime=Wed Sep 27 20:49:32 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:49:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1094, 'admin', '新增部门', 250, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=69, parentId=54, deptName=高家, orderNum=15, createTime=Wed Sep 27 20:49:57 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:49:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1095, 'admin', '新增部门', 258, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=70, parentId=54, deptName=田家, orderNum=16, createTime=Wed Sep 27 20:50:05 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:50:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1096, 'admin', '新增部门', 260, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=71, parentId=54, deptName=大梁王, orderNum=17, createTime=Wed Sep 27 20:50:13 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:50:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1097, 'admin', '新增部门', 250, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=72, parentId=54, deptName=付台子, orderNum=19, createTime=Wed Sep 27 20:50:21 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:50:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1098, 'admin', '新增部门', 255, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=73, parentId=54, deptName=胡道口, orderNum=20, createTime=Wed Sep 27 20:50:29 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:50:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1099, 'admin', '新增部门', 251, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=74, parentId=54, deptName=小梁王, orderNum=21, createTime=Wed Sep 27 20:50:37 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:50:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1100, 'admin', '新增部门', 256, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=75, parentId=54, deptName=付屋子, orderNum=22, createTime=Wed Sep 27 20:50:52 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:50:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1101, 'admin', '新增部门', 251, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=76, parentId=54, deptName=镇直部门, orderNum=23, createTime=Wed Sep 27 20:51:19 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:51:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1102, 'admin', '新增部门', 256, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=77, parentId=76, deptName=医院, orderNum=1, createTime=Wed Sep 27 20:51:42 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:51:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1103, 'admin', '新增部门', 250, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=78, parentId=76, deptName=供销社, orderNum=2, createTime=Wed Sep 27 20:51:52 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:51:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1104, 'admin', '新增部门', 253, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=79, parentId=76, deptName=农商行, orderNum=3, createTime=Wed Sep 27 20:52:06 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:52:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1105, 'admin', '新增部门', 251, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=80, parentId=76, deptName=邮政局, orderNum=5, createTime=Wed Sep 27 20:52:20 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:52:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1106, 'admin', '新增部门', 257, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=81, parentId=76, deptName=移动, orderNum=6, createTime=Wed Sep 27 20:52:34 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:52:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1107, 'admin', '新增部门', 251, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=82, parentId=76, deptName=电信, orderNum=7, createTime=Wed Sep 27 20:52:42 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:52:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1108, 'admin', '新增部门', 249, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=83, parentId=76, deptName=网通, orderNum=8, createTime=Wed Sep 27 20:52:54 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:52:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1109, 'admin', '新增部门', 250, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=84, parentId=76, deptName=变电站, orderNum=9, createTime=Wed Sep 27 20:53:07 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:53:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1110, 'admin', '新增部门', 255, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=85, parentId=76, deptName=建设银行, orderNum=10, createTime=Wed Sep 27 20:53:33 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:53:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1111, 'admin', '新增部门', 258, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=86, parentId=76, deptName=农行, orderNum=11, createTime=Wed Sep 27 20:53:45 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:53:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1112, 'admin', '新增部门', 249, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=87, parentId=76, deptName=幼儿园, orderNum=12, createTime=Wed Sep 27 20:53:56 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:53:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1113, 'admin', '新增部门', 251, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=88, parentId=76, deptName=边防大队, orderNum=13, createTime=Wed Sep 27 20:54:06 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:54:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1114, 'admin', '新增部门', 251, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=89, parentId=76, deptName=山子盐场, orderNum=14, createTime=Wed Sep 27 20:54:19 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:54:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1115, 'admin', '新增部门', 256, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=90, parentId=76, deptName=派出所, orderNum=15, createTime=Wed Sep 27 20:54:31 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:54:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1116, 'admin', '新增部门', 255, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=91, parentId=76, deptName=供水公司, orderNum=16, createTime=Wed Sep 27 20:54:44 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:54:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1117, 'admin', '新增部门', 250, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=92, parentId=76, deptName=北海水库, orderNum=17, createTime=Wed Sep 27 20:54:56 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-27 20:54:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1118, 'admin', '修改GeneratorConfig', 303, 'com.wjl.oneshot.generator.controller.GeneratorConfigController.updateGeneratorConfig()', ' generatorConfig: GeneratorConfig(id=1, author=wjl, basePackage=com.wjl.oneshot.business, entityPackage=entity, mapperPackage=mapper, mapperXmlPackage=mapper, servicePackage=service, serviceImplPackage=service.impl, controllerPackage=controller, isTrim=1, trimValue=t_, javaPath=/src/main/java/, resourcesPath=src/main/resources, date=2023-09-27 21:10:14, tableName=null, tableComment=null, className=null, hasDate=false, hasBigDecimal=false, columns=null)', '0:0:0:0:0:0:0:1', '2023-09-27 21:10:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1119, 'admin', '新增菜单/按钮', 264, 'com.wjl.oneshot.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=179, parentId=0, menuName=任务管理, url=, perms=, icon=layui-icon-folder, type=0, orderNum=6, createTime=Thu Sep 28 07:09:20 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-28 07:09:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1120, 'admin', '新增菜单/按钮', 255, 'com.wjl.oneshot.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=180, parentId=179, menuName=任务类型, url=business/worktype, perms=worktype:list, icon=, type=0, orderNum=1, createTime=Thu Sep 28 07:10:05 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-28 07:10:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1121, 'admin', '修改菜单/按钮', 312, 'com.wjl.oneshot.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=180, parentId=179, menuName=任务类型, url=/business/worktype, perms=worktype:list, icon=, type=0, orderNum=1, createTime=null, modifyTime=Thu Sep 28 07:10:18 CST 2023)\"', '0:0:0:0:0:0:0:1', '2023-09-28 07:10:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1122, 'admin', '新增菜单/按钮', 258, 'com.wjl.oneshot.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=181, parentId=180, menuName=任务类型新增, url=null, perms=worktype:add, icon=null, type=1, orderNum=null, createTime=Thu Sep 28 07:10:53 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-28 07:10:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1123, 'admin', '新增菜单/按钮', 256, 'com.wjl.oneshot.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=182, parentId=180, menuName=任务类型修改, url=null, perms=worktype:update, icon=null, type=1, orderNum=null, createTime=Thu Sep 28 07:11:13 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-28 07:11:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1124, 'admin', '新增菜单/按钮', 255, 'com.wjl.oneshot.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=183, parentId=180, menuName=任务类型删除, url=null, perms=worktype:delete, icon=null, type=1, orderNum=null, createTime=Thu Sep 28 07:11:30 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-09-28 07:11:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1125, 'admin', '修改角色', 3701, 'com.wjl.oneshot.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Thu Sep 28 07:11:41 CST 2023, menuIds=1,3,161,160,11,12,13,4,162,14,15,16,5,163,17,18,19,6,164,20,21,22,2,8,23,10,24,170,136,172,171,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,174,110,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,169,168,167,178,179,180,183,182,181)\"', '0:0:0:0:0:0:0:1', '2023-09-28 07:11:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1126, 'admin', '新增工作类型', 257, 'com.wjl.oneshot.business.controller.WorktypeController.addWorktype()', ' worktype: Worktype(code=zdgz, des=攻坚型、应急型等需要成立工作专班推进的工作。, id=1, name=重点工作)', '0:0:0:0:0:0:0:1', '2023-09-28 20:10:40', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1127, 'admin', '修改工作类型', 302, 'com.wjl.oneshot.business.controller.WorktypeController.updateWorktype()', ' worktype: Worktype(code=zdgz1, des=攻坚型、应急型等需要成立工作专班推进的工作。, id=1, name=重点工作)', '0:0:0:0:0:0:0:1', '2023-09-29 07:44:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1128, 'admin', '修改工作类型', 295, 'com.wjl.oneshot.business.controller.WorktypeController.updateWorktype()', ' worktype: Worktype(code=zdgz, des=攻坚型、应急型等需要成立工作专班推进的工作。, id=1, name=重点工作)', '0:0:0:0:0:0:0:1', '2023-09-29 07:44:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1129, 'admin', '新增工作类型', 217, 'com.wjl.oneshot.business.controller.WorktypeController.addWorktype()', ' worktype: Worktype(code=zxgz, des=党工委安排，需要班子成员牵头、包村干部共同参与或多个部门通力合作完成的工作。, id=2, name=中心工作)', '0:0:0:0:0:0:0:1', '2023-09-29 07:48:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1130, 'admin', '新增工作类型', 227, 'com.wjl.oneshot.business.controller.WorktypeController.addWorktype()', ' worktype: Worktype(code=cggz, des=部门内部日常工作。, id=3, name=常规工作)', '0:0:0:0:0:0:0:1', '2023-09-29 07:48:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1131, 'admin', '修改工作类型', 257, 'com.wjl.oneshot.business.controller.WorktypeController.updateWorktype()', ' worktype: Worktype(code=zdgz, des=攻坚型、应急型等需要成立工作专班推进的工作。, id=1, name=1, level=null)', '0:0:0:0:0:0:0:1', '2023-09-29 08:25:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1132, 'admin', '修改工作类型', 257, 'com.wjl.oneshot.business.controller.WorktypeController.updateWorktype()', ' worktype: Worktype(code=zdgz, des=攻坚型、应急型等需要成立工作专班推进的工作。, id=1, name=重点工作, level=1)', '0:0:0:0:0:0:0:1', '2023-09-29 08:29:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1133, 'admin', '修改工作类型', 252, 'com.wjl.oneshot.business.controller.WorktypeController.updateWorktype()', ' worktype: Worktype(code=zxgz, des=党工委安排，需要班子成员牵头、包村干部共同参与或多个部门通力合作完成的工作。, id=2, name=中心工作, level=1)', '0:0:0:0:0:0:0:1', '2023-09-29 08:29:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1134, 'admin', '修改工作类型', 251, 'com.wjl.oneshot.business.controller.WorktypeController.updateWorktype()', ' worktype: Worktype(code=cggz, des=部门内部日常工作。, id=3, name=常规工作, level=3)', '0:0:0:0:0:0:0:1', '2023-09-29 08:29:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1135, 'admin', '修改工作类型', 259, 'com.wjl.oneshot.business.controller.WorktypeController.updateWorktype()', ' worktype: Worktype(code=zdgz, des=攻坚型、应急型等需要成立工作专班推进的工作。, id=1, name=重点工作, level=1, scorerange=1-5分, scorebase=实行“一事一议”，通过党工委会、书记办公会等形式，由分 管班子成员对重点工作赋分提出初步意见，由街道主要负责 同志审核确认。)', '0:0:0:0:0:0:0:1', '2023-09-29 09:52:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1136, 'admin', '修改工作类型', 251, 'com.wjl.oneshot.business.controller.WorktypeController.updateWorktype()', ' worktype: Worktype(code=zxgz, des=党工委安排，需要班子成员牵头、包村干部共同参与或多个部门通力合作完成的工作。, id=2, name=中心工作, level=1, scorerange=1-2分, scorebase=由班子成员根据中心工作的难易程度、付出程度、工作量大 小等因素进行差异化赋分。)', '0:0:0:0:0:0:0:1', '2023-09-29 09:52:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1137, 'admin', '修改工作类型', 252, 'com.wjl.oneshot.business.controller.WorktypeController.updateWorktype()', ' worktype: Worktype(code=cggz, des=部门内部日常工作。, id=3, name=常规工作, level=3, scorerange=1分, scorebase=各部门按照一定时间、一定数量、一定范围等，确定本部门 常规工作发布标准。)', '0:0:0:0:0:0:0:1', '2023-09-29 09:52:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1138, 'admin', '新增菜单/按钮', 259, 'com.wjl.oneshot.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=184, parentId=179, menuName=任务信息, url=/business/work, perms=work:list, icon=, type=0, orderNum=2, createTime=Thu Oct 05 18:58:35 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-10-05 18:58:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1139, 'admin', '修改角色', 3708, 'com.wjl.oneshot.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Thu Oct 05 18:58:45 CST 2023, menuIds=1,3,160,161,11,12,13,4,162,14,15,16,5,163,17,18,19,6,164,20,21,22,2,8,23,10,24,170,136,172,171,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,174,110,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,169,168,167,178,179,180,183,182,181,184)\"', '0:0:0:0:0:0:0:1', '2023-10-05 18:58:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1140, 'admin', '新增菜单/按钮', 250, 'com.wjl.oneshot.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=185, parentId=184, menuName=任务新增, url=null, perms=work:add, icon=null, type=1, orderNum=null, createTime=Thu Oct 05 18:59:23 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-10-05 18:59:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1141, 'admin', '新增菜单/按钮', 251, 'com.wjl.oneshot.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=186, parentId=184, menuName=任务修改, url=null, perms=work:update, icon=null, type=1, orderNum=null, createTime=Thu Oct 05 18:59:41 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-10-05 18:59:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1142, 'admin', '新增菜单/按钮', 250, 'com.wjl.oneshot.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=187, parentId=184, menuName=任务删除, url=null, perms=work:delete, icon=null, type=1, orderNum=null, createTime=Thu Oct 05 18:59:58 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-10-05 18:59:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1143, 'admin', '修改角色', 4836, 'com.wjl.oneshot.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Thu Oct 05 19:00:26 CST 2023, menuIds=1,3,11,12,13,161,160,4,15,162,14,16,5,163,17,18,19,6,164,20,21,22,2,8,23,10,170,24,136,172,171,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,174,110,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,169,168,167,178,179,180,182,181,183,184,187,186,185)\"', '0:0:0:0:0:0:0:1', '2023-10-05 19:00:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1144, 'admin', '修改用户', 480, 'com.wjl.oneshot.system.controller.UserController.updateUser()', ' user: \"User(userId=1, username=null, password=null, name=王学斌, deptId=1, email=mrbird@qq.com, mobile=17788888888, status=1, createTime=null, modifyTime=Thu Oct 05 22:36:15 CST 2023, lastLoginTime=null, sex=0, avatar=null, theme=null, isTab=null, description=超级管理员, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=1, roleName=null, deptIds=, stringPermissions=null, roles=null)\"', '0:0:0:0:0:0:0:1', '2023-10-05 22:36:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1145, 'admin', '新增角色', 257, 'com.wjl.oneshot.system.controller.RoleController.addRole()', ' role: \"Role(roleId=81, roleName=普通用户, remark=普通使用人员, createTime=Thu Oct 05 23:24:30 CST 2023, modifyTime=null, menuIds=)\"', '0:0:0:0:0:0:0:1', '2023-10-05 23:24:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1146, 'admin', '新增用户', 331, 'com.wjl.oneshot.system.controller.UserController.addUser()', ' user: \"User(userId=8, username=zhangxuejun, password=3d52c23e84564bd8c6af56a43f4cc87d, name=张学军, deptId=1, email=, mobile=13626493035, status=1, createTime=Thu Oct 05 23:30:30 CST 2023, modifyTime=null, lastLoginTime=null, sex=0, avatar=default.jpg, theme=black, isTab=1, description=, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=81, roleName=null, deptIds=, stringPermissions=null, roles=null)\"', '0:0:0:0:0:0:0:1', '2023-10-05 23:30:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1147, 'admin', '修改用户', 507, 'com.wjl.oneshot.system.controller.UserController.updateUser()', ' user: \"User(userId=1, username=null, password=null, name=王学斌, deptId=1, email=test@qq.com, mobile=17788888888, status=1, createTime=null, modifyTime=Thu Oct 05 23:30:44 CST 2023, lastLoginTime=null, sex=0, avatar=null, theme=null, isTab=null, description=超级管理员, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=1, roleName=null, deptIds=, stringPermissions=null, roles=null)\"', '0:0:0:0:0:0:0:1', '2023-10-05 23:30:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1148, 'admin', '修改用户', 761, 'com.wjl.oneshot.system.controller.UserController.updateUser()', ' user: \"User(userId=1, username=null, password=null, name=王学斌, deptId=1, email=test@qq.com, mobile=17788888888, status=1, createTime=null, modifyTime=Thu Oct 05 23:30:44 CST 2023, lastLoginTime=null, sex=0, avatar=null, theme=null, isTab=null, description=超级管理员, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=1, roleName=null, deptIds=, stringPermissions=null, roles=null)\"', '0:0:0:0:0:0:0:1', '2023-10-05 23:30:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1149, 'admin', '新增工作', 273, 'com.wjl.oneshot.business.controller.WorkController.addWork()', ' work: Work(content=222, createrid=1, createtime=Thu Oct 05 23:44:18 CST 2023, deptid=51, endtime=Fri Oct 27 00:00:00 CST 2023, id=1, leaderid=1, personids=1,8, score=2, status=1, title=111, typeid=1)', '0:0:0:0:0:0:0:1', '2023-10-05 23:44:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1150, 'admin', '修改工作', 306, 'com.wjl.oneshot.business.controller.WorkController.updateWork()', ' work: Work(content=222, createrid=null, createtime=null, deptid=51, endtime=Thu Oct 26 00:00:00 CST 2023, id=1, leaderid=1, personids=1,8, score=5, status=null, title=111, typeid=1, typename=null, leadername=null, personnames=null, deptname=null)', '0:0:0:0:0:0:0:1', '2023-10-06 11:05:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1151, 'admin', '删除工作', 144, 'com.wjl.oneshot.business.controller.WorkController.deleteWork()', ' workIds: \"1\"', '0:0:0:0:0:0:0:1', '2023-10-06 11:38:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1152, 'admin', '修改部门', 345, 'com.wjl.oneshot.system.controller.DeptController.updateDept()', ' dept: \"Dept(deptId=29, parentId=null, deptName=镇单位, orderNum=1, createTime=null, modifyTime=Sat Oct 07 20:51:56 CST 2023)\"', '0:0:0:0:0:0:0:1', '2023-10-07 20:51:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1153, 'admin', '修改菜单/按钮', 520, 'com.wjl.oneshot.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=179, parentId=0, menuName=工作管理, url=, perms=, icon=layui-icon-folder, type=0, orderNum=6, createTime=null, modifyTime=Sat Oct 07 20:56:23 CST 2023)\"', '0:0:0:0:0:0:0:1', '2023-10-07 20:56:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1154, 'admin', '修改菜单/按钮', 356, 'com.wjl.oneshot.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=180, parentId=179, menuName=工作类型, url=/business/worktype, perms=worktype:list, icon=, type=0, orderNum=1, createTime=null, modifyTime=Sat Oct 07 20:56:34 CST 2023)\"', '0:0:0:0:0:0:0:1', '2023-10-07 20:56:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1155, 'admin', '修改菜单/按钮', 359, 'com.wjl.oneshot.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=182, parentId=180, menuName=工作类型修改, url=null, perms=worktype:update, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Sat Oct 07 20:56:44 CST 2023)\"', '0:0:0:0:0:0:0:1', '2023-10-07 20:56:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1156, 'admin', '修改菜单/按钮', 399, 'com.wjl.oneshot.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=181, parentId=180, menuName=工作类型新增, url=null, perms=worktype:add, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Sat Oct 07 20:56:58 CST 2023)\"', '0:0:0:0:0:0:0:1', '2023-10-07 20:56:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1157, 'admin', '修改菜单/按钮', 359, 'com.wjl.oneshot.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=183, parentId=180, menuName=工作类型删除, url=null, perms=worktype:delete, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Sat Oct 07 20:57:07 CST 2023)\"', '0:0:0:0:0:0:0:1', '2023-10-07 20:57:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1158, 'admin', '修改菜单/按钮', 340, 'com.wjl.oneshot.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=184, parentId=179, menuName=工作信息, url=/business/work, perms=work:list, icon=, type=0, orderNum=2, createTime=null, modifyTime=Sat Oct 07 20:57:18 CST 2023)\"', '0:0:0:0:0:0:0:1', '2023-10-07 20:57:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1159, 'admin', '修改菜单/按钮', 396, 'com.wjl.oneshot.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=187, parentId=184, menuName=工作删除, url=null, perms=work:delete, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Sat Oct 07 20:57:28 CST 2023)\"', '0:0:0:0:0:0:0:1', '2023-10-07 20:57:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1160, 'admin', '修改菜单/按钮', 352, 'com.wjl.oneshot.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=186, parentId=184, menuName=工作修改, url=null, perms=work:update, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Sat Oct 07 20:57:48 CST 2023)\"', '0:0:0:0:0:0:0:1', '2023-10-07 20:57:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1161, 'admin', '修改菜单/按钮', 356, 'com.wjl.oneshot.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=185, parentId=184, menuName=工作新增, url=null, perms=work:add, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Sat Oct 07 20:57:58 CST 2023)\"', '0:0:0:0:0:0:0:1', '2023-10-07 20:57:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1162, 'admin', '新增工作', 366, 'com.wjl.oneshot.business.controller.WorkController.addWork()', ' work: Work(content=测试, createrid=1, createtime=Sat Oct 07 22:00:41 CST 2023, deptid=52, endtime=Tue Oct 31 00:00:00 CST 2023, id=2, leaderid=1, personids=1,8, score=2, status=1, title=测试, typeid=1, typename=null, leadername=null, personnames=null, deptname=null)', '0:0:0:0:0:0:0:1', '2023-10-07 22:00:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1163, 'admin', '新增菜单/按钮', 348, 'com.wjl.oneshot.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=188, parentId=0, menuName=统计报表, url=, perms=, icon=layui-icon-barchart, type=0, orderNum=7, createTime=Sat Oct 07 23:01:15 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-10-07 23:01:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1164, 'admin', '新增菜单/按钮', 328, 'com.wjl.oneshot.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=189, parentId=188, menuName=工作发布报表, url=/business/report/publish, perms=, icon=, type=0, orderNum=1, createTime=Sat Oct 07 23:01:45 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-10-07 23:01:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1165, 'admin', '新增菜单/按钮', 305, 'com.wjl.oneshot.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=190, parentId=188, menuName=工作完成报表, url=/business/report/completion, perms=, icon=, type=0, orderNum=2, createTime=Sat Oct 07 23:02:17 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-10-07 23:02:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1166, 'admin', '修改角色', 4459, 'com.wjl.oneshot.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Sat Oct 07 23:02:31 CST 2023, menuIds=1,3,161,160,11,12,13,4,162,14,15,16,5,163,17,18,19,6,164,20,21,22,2,8,23,10,170,24,136,171,172,127,128,129,131,175,101,102,104,105,106,108,173,107,103,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,169,168,167,178,179,180,183,182,181,184,186,187,185,188,189,190)\"', '0:0:0:0:0:0:0:1', '2023-10-07 23:02:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1167, 'admin', '修改用户', 662, 'com.wjl.oneshot.system.controller.UserController.updateUser()', ' user: \"User(userId=8, username=null, password=null, name=张学军, deptId=1, email=test@163.com, mobile=13626493035, status=1, createTime=null, modifyTime=Mon Oct 09 06:40:04 CST 2023, lastLoginTime=null, sex=0, avatar=null, theme=null, isTab=null, description=, openid=null, score=null, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=81, roleName=null, deptIds=null, stringPermissions=null, roles=null)\"', '0:0:0:0:0:0:0:1', '2023-10-09 06:40:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1168, 'admin', '修改用户', 635, 'com.wjl.oneshot.system.controller.UserController.updateUser()', ' user: \"User(userId=1, username=null, password=null, name=系统管理员, deptId=1, email=test@qq.com, mobile=17788888888, status=1, createTime=null, modifyTime=Mon Oct 09 06:40:45 CST 2023, lastLoginTime=null, sex=0, avatar=null, theme=null, isTab=null, description=超级管理员, openid=null, score=null, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=1, roleName=null, deptIds=null, stringPermissions=null, roles=null)\"', '0:0:0:0:0:0:0:1', '2023-10-09 06:40:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1169, 'admin', '修改用户', 601, 'com.wjl.oneshot.system.controller.UserController.updateUser()', ' user: \"User(userId=1, username=null, password=null, name=超级管理员, deptId=1, email=test@qq.com, mobile=17788888888, status=1, createTime=null, modifyTime=Mon Oct 09 06:41:03 CST 2023, lastLoginTime=null, sex=0, avatar=null, theme=null, isTab=null, description=超级管理员, openid=null, score=null, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=1, roleName=null, deptIds=null, stringPermissions=null, roles=null)\"', '0:0:0:0:0:0:0:1', '2023-10-09 06:41:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1170, 'admin', '修改角色', 4431, 'com.wjl.oneshot.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=超级管理员, remark=超级管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Mon Oct 09 06:41:27 CST 2023, menuIds=1,3,161,160,11,12,13,4,162,14,15,16,5,163,17,18,19,6,164,20,21,22,2,8,23,10,170,24,136,171,172,127,128,129,131,175,101,102,104,105,106,108,173,107,103,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,169,168,167,178,179,180,183,182,181,184,186,187,185,188,189,190)\"', '0:0:0:0:0:0:0:1', '2023-10-09 06:41:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1171, 'admin', '新增角色', 1672, 'com.wjl.oneshot.system.controller.RoleController.addRole()', ' role: \"Role(roleId=82, roleName=系统管理员, remark=马山子镇管理员, createTime=Mon Oct 09 06:42:50 CST 2023, modifyTime=null, menuIds=1,3,161,160,11,12,13,4,162,14,15,16,6,164,20,21,22,179,180,183,182,181,184,186,187,185,188,189,190)\"', '0:0:0:0:0:0:0:1', '2023-10-09 06:42:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1172, 'admin', '删除工作', 174, 'com.wjl.oneshot.business.controller.WorkController.deleteWork()', ' workIds: \"2\"', '0:0:0:0:0:0:0:1', '2023-10-09 06:45:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1173, 'admin', '新增角色', 522, 'com.wjl.oneshot.system.controller.RoleController.addRole()', ' role: \"Role(roleId=83, roleName=分管领导, remark=分管领导, createTime=Mon Oct 09 06:54:56 CST 2023, modifyTime=null, menuIds=188,189,190)\"', '0:0:0:0:0:0:0:1', '2023-10-09 06:54:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1174, 'admin', '修改用户', 633, 'com.wjl.oneshot.system.controller.UserController.updateUser()', ' user: \"User(userId=8, username=null, password=null, name=张学军, deptId=1, email=test@163.com, mobile=13626493035, status=1, createTime=null, modifyTime=Mon Oct 09 06:55:13 CST 2023, lastLoginTime=null, sex=0, avatar=null, theme=null, isTab=null, description=, openid=null, score=null, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=83, roleName=null, deptIds=null, stringPermissions=null, roles=null)\"', '0:0:0:0:0:0:0:1', '2023-10-09 06:55:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1175, 'admin', '新增用户', 451, 'com.wjl.oneshot.system.controller.UserController.addUser()', ' user: \"User(userId=9, username=wanghao, password=bf98e485c4080a84c93f1161a26fc7c2, name=王浩, deptId=1, email=, mobile=18763099708, status=1, createTime=Mon Oct 09 06:55:53 CST 2023, modifyTime=null, lastLoginTime=null, sex=0, avatar=default.jpg, theme=black, isTab=1, description=, openid=null, score=null, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=83, roleName=null, deptIds=null, stringPermissions=null, roles=null)\"', '0:0:0:0:0:0:0:1', '2023-10-09 06:55:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1176, 'admin', '新增用户', 392, 'com.wjl.oneshot.system.controller.UserController.addUser()', ' user: \"User(userId=10, username=hanguodong, password=72086a262888279e5c0783e4d0c44142, name=韩国栋, deptId=1, email=, mobile=13562343933, status=1, createTime=Mon Oct 09 06:56:48 CST 2023, modifyTime=null, lastLoginTime=null, sex=0, avatar=default.jpg, theme=black, isTab=1, description=, openid=null, score=null, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=83, roleName=null, deptIds=null, stringPermissions=null, roles=null)\"', '0:0:0:0:0:0:0:1', '2023-10-09 06:56:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1177, 'admin', '新增用户', 399, 'com.wjl.oneshot.system.controller.UserController.addUser()', ' user: \"User(userId=11, username=gubeibei, password=1c3587af331373f6c2b74d7184317213, name=顾贝贝, deptId=4, email=, mobile=15969988957, status=1, createTime=Mon Oct 09 06:57:25 CST 2023, modifyTime=null, lastLoginTime=null, sex=1, avatar=default.jpg, theme=black, isTab=1, description=, openid=null, score=null, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=81, roleName=null, deptIds=null, stringPermissions=null, roles=null)\"', '0:0:0:0:0:0:0:1', '2023-10-09 06:57:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1178, 'admin', '新增用户', 379, 'com.wjl.oneshot.system.controller.UserController.addUser()', ' user: \"User(userId=12, username=sunyuhua, password=8c9a1d64ff3a3eead53fbede5eb69424, name=孙玉花, deptId=null, email=, mobile=13605433107, status=1, createTime=Mon Oct 09 06:58:20 CST 2023, modifyTime=null, lastLoginTime=null, sex=1, avatar=default.jpg, theme=black, isTab=1, description=, openid=null, score=null, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=81, roleName=null, deptIds=null, stringPermissions=null, roles=null)\"', '0:0:0:0:0:0:0:1', '2023-10-09 06:58:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1179, 'admin', '修改用户', 569, 'com.wjl.oneshot.system.controller.UserController.updateUser()', ' user: \"User(userId=12, username=null, password=null, name=孙玉花, deptId=1, email=, mobile=13605433107, status=1, createTime=null, modifyTime=Mon Oct 09 06:58:31 CST 2023, lastLoginTime=null, sex=1, avatar=null, theme=null, isTab=null, description=, openid=null, score=null, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=81, roleName=null, deptIds=null, stringPermissions=null, roles=null)\"', '0:0:0:0:0:0:0:1', '2023-10-09 06:58:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1180, 'admin', '新增工作类型', 342, 'com.wjl.oneshot.business.controller.WorktypeController.addWorktype()', ' worktype: Worktype(code=11, des=11, id=4, name=11, level=11, scorerange=11, scorebase=11)', '0:0:0:0:0:0:0:1', '2023-10-09 14:37:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1181, 'admin', '删除工作类型', 194, 'com.wjl.oneshot.business.controller.WorktypeController.deleteWorktype()', ' ids: \"4\"', '0:0:0:0:0:0:0:1', '2023-10-09 14:37:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1182, 'admin', '新增部门', 354, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=93, parentId=0, deptName=其他, orderNum=3, createTime=Mon Oct 09 15:35:06 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-10-09 15:35:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1183, 'admin', '修改用户', 835, 'com.wjl.oneshot.system.controller.UserController.updateUser()', ' user: \"User(userId=1, username=null, password=null, name=超级管理员, deptId=93, email=test@qq.com, mobile=17788888888, status=1, createTime=null, modifyTime=Mon Oct 09 15:35:27 CST 2023, lastLoginTime=null, sex=0, avatar=null, theme=null, isTab=null, description=超级管理员, openid=null, score=null, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=1, roleName=null, deptIds=null, stringPermissions=null, roles=null)\"', '0:0:0:0:0:0:0:1', '2023-10-09 15:35:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1184, 'admin', '新增工作', 440, 'com.wjl.oneshot.business.controller.WorkController.addWork()', ' work: Work(content=财务部对账核查, createrid=1, createtime=Mon Oct 09 16:36:30 CST 2023, deptid=4, endtime=Thu Oct 19 00:00:00 CST 2023, id=3, leaderid=9, personids=11, score=3, status=1, title=财务部对账核查, typeid=2, typename=null, leadername=null, personnames=null, deptname=null)', '0:0:0:0:0:0:0:1', '2023-10-09 16:36:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1185, 'admin', '修改用户', 870, 'com.wjl.oneshot.system.controller.UserController.updateUser()', ' user: \"User(userId=12, username=null, password=null, name=孙玉花, deptId=4, email=, mobile=13605433107, status=1, createTime=null, modifyTime=Mon Oct 09 16:38:31 CST 2023, lastLoginTime=null, sex=1, avatar=null, theme=null, isTab=null, description=, openid=null, score=null, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=81, roleName=null, deptIds=null, stringPermissions=null, roles=null)\"', '0:0:0:0:0:0:0:1', '2023-10-09 16:38:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1186, 'admin', '删除工作', 239, 'com.wjl.oneshot.business.controller.WorkController.deleteWork()', ' workIds: \"3\"', '0:0:0:0:0:0:0:1', '2023-10-09 17:20:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1187, 'admin', '新增工作', 476, 'com.wjl.oneshot.business.controller.WorkController.addWork()', ' work: Work(content=财务对账, createrid=1, createtime=Mon Oct 09 17:54:42 CST 2023, deptid=4, endtime=Thu Oct 26 00:00:00 CST 2023, id=4, leaderid=8, personids=12, score=2, status=1, title=财务对账, proid=16, typeid=2, typename=null, pstatus=null, leadername=null, personnames=null, deptname=null)', '0:0:0:0:0:0:0:1', '2023-10-09 17:54:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1188, 'admin', '修改用户', 819, 'com.wjl.oneshot.system.controller.UserController.updateUser()', ' user: \"User(userId=1, username=null, password=null, name=超级管理员, deptId=93, email=test@qq.com, mobile=18668135365, status=1, createTime=null, modifyTime=Tue Oct 10 10:49:32 CST 2023, lastLoginTime=null, sex=0, avatar=null, theme=null, isTab=null, description=超级管理员, openid=null, score=null, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=1, roleName=null, deptIds=null, stringPermissions=null, roles=null)\"', '0:0:0:0:0:0:0:1', '2023-10-10 10:49:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1189, 'admin', '新增用户', 536, 'com.wjl.oneshot.system.controller.UserController.addUser()', ' user: \"User(userId=13, username=test, password=50531c15181030c9a07bb7fb8551ac26, name=测试人员, deptId=93, email=, mobile=18660135363, status=1, createTime=Tue Oct 10 10:50:13 CST 2023, modifyTime=null, lastLoginTime=null, sex=0, avatar=default.jpg, theme=black, isTab=1, description=, openid=null, score=null, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=81, roleName=null, deptIds=null, stringPermissions=null, roles=null)\"', '0:0:0:0:0:0:0:1', '2023-10-10 10:50:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1190, 'admin', '新增角色', 759, 'com.wjl.oneshot.system.controller.RoleController.addRole()', ' role: \"Role(roleId=84, roleName=部门管理员, remark=部门管理员，可以发布常规工作, createTime=Tue Oct 10 10:51:21 CST 2023, modifyTime=null, menuIds=179,184,186,187,185)\"', '0:0:0:0:0:0:0:1', '2023-10-10 10:51:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1191, 'admin', '修改工作', 303, 'com.wjl.oneshot.business.controller.WorkController.updateWork()', ' work: Work(content=财务对账, createrid=null, createtime=null, deptid=4, endtime=Wed Oct 25 00:00:00 CST 2023, id=4, leaderid=8, personids=12,11, score=2, status=null, title=财务对账, proid=14, typeid=2, typename=null, pstatus=null, leadername=null, personnames=null, deptname=null)', '0:0:0:0:0:0:0:1', '2023-10-10 23:40:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1192, 'admin', '修改用户', 83, 'com.wjl.oneshot.system.controller.UserController.updateUser()', ' user: \"User(userId=13, username=null, password=null, name=测试人员, deptId=93, email=, mobile=18660135363, status=1, createTime=null, modifyTime=Fri Oct 13 13:52:48 CST 2023, lastLoginTime=null, sex=0, avatar=null, theme=null, isTab=null, description=, openid=null, score=null, wxhead=null, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=84, roleName=null, deptIds=null, stringPermissions=null, roles=null)\"', '60.208.111.194', '2023-10-13 13:52:49', '中国|华东|山东省|济南市|联通');
INSERT INTO `t_log` VALUES (1193, 'admin', '修改用户', 16, 'com.wjl.oneshot.system.controller.UserController.updateUser()', ' user: \"User(userId=13, username=null, password=null, name=测试人员, deptId=93, email=, mobile=18660135363, status=1, createTime=null, modifyTime=Fri Oct 13 13:53:39 CST 2023, lastLoginTime=null, sex=0, avatar=null, theme=null, isTab=null, description=, openid=null, score=null, wxhead=null, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=82, roleName=null, deptIds=null, stringPermissions=null, roles=null)\"', '60.208.111.194', '2023-10-13 13:53:39', '中国|华东|山东省|济南市|联通');
INSERT INTO `t_log` VALUES (1194, 'admin', '新增部门', 370, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=94, parentId=0, deptName=dd, orderNum=5, createTime=Sat Oct 14 13:17:21 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-10-14 13:17:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1195, 'admin', '删除部门', 544, 'com.wjl.oneshot.system.controller.DeptController.deleteDept()', ' deptIds: \"94\"', '0:0:0:0:0:0:0:1', '2023-10-14 13:17:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1196, 'admin', '新增部门', 382, 'com.wjl.oneshot.system.controller.DeptController.addDept()', ' dept: \"Dept(deptId=95, parentId=0, deptName=66, orderNum=6, createTime=Sat Oct 14 13:18:26 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-10-14 13:18:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1197, 'admin', '删除部门', 559, 'com.wjl.oneshot.system.controller.DeptController.deleteDept()', ' deptIds: \"95\"', '0:0:0:0:0:0:0:1', '2023-10-14 13:18:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1198, 'admin', '新增菜单/按钮', 266, 'com.wjl.oneshot.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=191, parentId=188, menuName=实时排行榜, url=/system/user/ranks, perms=user:view, icon=layui-icon-trophy, type=0, orderNum=1, createTime=Thu Oct 19 06:50:49 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-10-19 06:50:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1199, 'admin', '修改菜单/按钮', 445, 'com.wjl.oneshot.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=189, parentId=188, menuName=工作发布报表, url=/business/report/publish, perms=, icon=, type=0, orderNum=2, createTime=null, modifyTime=Thu Oct 19 06:50:57 CST 2023)\"', '0:0:0:0:0:0:0:1', '2023-10-19 06:50:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1200, 'admin', '修改菜单/按钮', 318, 'com.wjl.oneshot.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=190, parentId=188, menuName=工作完成报表, url=/business/report/completion, perms=, icon=, type=0, orderNum=3, createTime=null, modifyTime=Thu Oct 19 06:51:04 CST 2023)\"', '0:0:0:0:0:0:0:1', '2023-10-19 06:51:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1201, 'admin', '修改角色', 4145, 'com.wjl.oneshot.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=超级管理员, remark=超级管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Thu Oct 19 06:51:32 CST 2023, menuIds=1,3,161,160,11,12,13,4,162,14,15,16,5,163,17,18,19,6,164,20,21,22,2,8,23,10,170,24,136,171,172,127,128,129,131,175,101,102,104,105,106,108,173,107,103,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,169,168,167,178,179,180,183,182,181,184,186,187,185,188,191,189,190)\"', '0:0:0:0:0:0:0:1', '2023-10-19 06:51:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1202, 'admin', '新增菜单/按钮', 309, 'com.wjl.oneshot.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=192, parentId=191, menuName=查看排行榜, url=null, perms=user:rank, icon=null, type=1, orderNum=null, createTime=Thu Oct 19 07:16:38 CST 2023, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2023-10-19 07:16:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1203, 'admin', '修改角色', 4273, 'com.wjl.oneshot.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=超级管理员, remark=超级管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Thu Oct 19 07:16:51 CST 2023, menuIds=1,3,161,160,11,12,13,4,162,14,15,16,5,163,19,17,18,6,164,20,21,22,2,8,23,10,170,24,136,171,172,127,128,129,131,175,101,102,104,105,106,108,173,107,103,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,169,168,167,178,179,180,183,182,181,184,185,187,186,188,191,192,189,190)\"', '0:0:0:0:0:0:0:1', '2023-10-19 07:16:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1204, 'admin', '修改角色', 95, 'com.wjl.oneshot.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=82, roleName=系统管理员, remark=马山子镇管理员, createTime=null, modifyTime=Tue Oct 24 23:55:48 CST 2023, menuIds=1,3,161,160,11,12,13,4,162,14,15,16,6,164,20,21,22,179,180,183,182,181,184,185,187,186,188,191,192,189,190)\"', '112.232.221.124', '2023-10-24 23:55:48', '中国|华东|山东省|济南市|联通');
INSERT INTO `t_log` VALUES (1205, 'admin', '新增工作', 51, 'com.wjl.oneshot.business.controller.WorkController.addWork()', ' work: Work(content=测试测试的信息, createrid=1, createtime=Thu Oct 26 15:40:56 CST 2023, deptid=4, endtime=Tue Oct 31 00:00:00 CST 2023, id=11, leaderid=8, personids=11,12, score=3, status=1, title=测试测试, proid=4, typeid=1, typename=null, pstatus=null, leadername=null, personnames=null, deptname=null, publisher=null, workDetail=null, timeSearch=null)', '60.208.111.194', '2023-10-26 15:40:57', '中国|华东|山东省|济南市|联通');
INSERT INTO `t_log` VALUES (1206, 'admin', '删除角色', 48, 'com.bysj.mental.system.controller.RoleController.deleteRoles()', ' roleIds: \"84,83,82,81\"', '192.168.30.1', '2024-01-20 00:09:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1207, 'admin', '删除用户', 25, 'com.bysj.mental.system.controller.UserController.deleteUsers()', ' userIds: \"8,9,10,11,12,13\"', '192.168.30.1', '2024-01-20 00:09:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1208, 'admin', '删除部门', 30, 'com.bysj.mental.system.controller.DeptController.deleteDept()', ' deptIds: \"29,1\"', '192.168.30.1', '2024-01-20 00:10:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1209, 'admin', '删除部门', 28, 'com.bysj.mental.system.controller.DeptController.deleteDept()', ' deptIds: \"54\"', '192.168.30.1', '2024-01-20 00:10:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1210, 'admin', '删除菜单/按钮', 39, 'com.bysj.mental.system.controller.MenuController.deleteMenus()', ' menuIds: \"2,101,137,115,188\"', '192.168.30.1', '2024-01-20 00:11:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1211, 'admin', '修改菜单/按钮', 25, 'com.bysj.mental.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=179, parentId=0, menuName=心理问卷, url=, perms=, icon=layui-icon-folder, type=0, orderNum=6, createTime=null, modifyTime=Sat Jan 20 00:11:46 CST 2024)\"', '192.168.30.1', '2024-01-20 00:11:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1212, 'admin', '删除菜单/按钮', 18, 'com.bysj.mental.system.controller.MenuController.deleteMenus()', ' menuIds: \"181,182,183\"', '192.168.30.1', '2024-01-20 00:11:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1213, 'admin', '删除菜单/按钮', 20, 'com.bysj.mental.system.controller.MenuController.deleteMenus()', ' menuIds: \"185,186,187\"', '192.168.30.1', '2024-01-20 00:12:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1214, 'admin', '修改菜单/按钮', 16, 'com.bysj.mental.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=180, parentId=179, menuName=问卷类型, url=/business/questiontype, perms=, icon=, type=0, orderNum=1, createTime=null, modifyTime=Sat Jan 20 00:12:38 CST 2024)\"', '192.168.30.1', '2024-01-20 00:12:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1215, 'admin', '修改菜单/按钮', 39, 'com.bysj.mental.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=184, parentId=179, menuName=问卷管理, url=/business/question, perms=, icon=, type=0, orderNum=2, createTime=null, modifyTime=Sat Jan 20 00:44:31 CST 2024)\"', '192.168.30.1', '2024-01-20 00:44:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1216, 'admin', '新增菜单/按钮', 20, 'com.bysj.mental.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=193, parentId=179, menuName=题目管理, url=/business/option, perms=, icon=, type=0, orderNum=3, createTime=Sat Jan 20 08:37:54 CST 2024, modifyTime=null)\"', '192.168.30.1', '2024-01-20 08:37:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1217, 'admin', '修改角色', 54, 'com.bysj.mental.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=超级管理员, remark=超级管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Sat Jan 20 08:38:03 CST 2024, menuIds=1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,179,180,184,193)\"', '192.168.30.1', '2024-01-20 08:38:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1218, 'admin', '新增菜单/按钮', 23, 'com.bysj.mental.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=194, parentId=179, menuName=评估结论, url=/business/conclution, perms=, icon=, type=0, orderNum=4, createTime=Sat Jan 20 09:17:42 CST 2024, modifyTime=null)\"', '192.168.30.1', '2024-01-20 09:17:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1219, 'admin', '修改角色', 73, 'com.bysj.mental.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=超级管理员, remark=超级管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Sat Jan 20 09:17:50 CST 2024, menuIds=1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,179,180,184,193,194)\"', '192.168.30.1', '2024-01-20 09:17:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1220, 'admin', '修改角色', 30, 'com.bysj.mental.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=超级管理员, remark=超级管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Sat Jan 20 09:17:50 CST 2024, menuIds=1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,179,180,184,193,194)\"', '192.168.30.1', '2024-01-20 09:17:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1221, 'admin', '新增菜单/按钮', 25, 'com.bysj.mental.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=195, parentId=0, menuName=音乐管理, url=/business/music, perms=, icon=, type=0, orderNum=3, createTime=Sat Jan 20 10:00:30 CST 2024, modifyTime=null)\"', '192.168.30.1', '2024-01-20 10:00:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1222, 'admin', '修改菜单/按钮', 37, 'com.bysj.mental.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=179, parentId=0, menuName=心理问卷, url=, perms=, icon=layui-icon-folder, type=0, orderNum=2, createTime=null, modifyTime=Sat Jan 20 10:00:42 CST 2024)\"', '192.168.30.1', '2024-01-20 10:00:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1223, 'admin', '修改角色', 35, 'com.bysj.mental.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=超级管理员, remark=超级管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Sat Jan 20 10:00:49 CST 2024, menuIds=1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,195,179,180,184,193,194)\"', '192.168.30.1', '2024-01-20 10:00:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1224, 'admin', '新增菜单/按钮', 11, 'com.bysj.mental.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=197, parentId=0, menuName=论坛管理, url=/business/topic, perms=, icon=, type=0, orderNum=4, createTime=Sat Jan 20 10:49:24 CST 2024, modifyTime=null)\"', '192.168.30.1', '2024-01-20 10:49:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1225, 'admin', '新增菜单/按钮', 27, 'com.bysj.mental.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=196, parentId=0, menuName=论坛管理, url=/business/topic, perms=, icon=, type=0, orderNum=4, createTime=Sat Jan 20 10:49:24 CST 2024, modifyTime=null)\"', '192.168.30.1', '2024-01-20 10:49:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1226, 'admin', '删除菜单/按钮', 39, 'com.bysj.mental.system.controller.MenuController.deleteMenus()', ' menuIds: \"197\"', '192.168.30.1', '2024-01-20 10:49:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1227, 'admin', '修改角色', 45, 'com.bysj.mental.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=超级管理员, remark=超级管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Sat Jan 20 10:49:43 CST 2024, menuIds=1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,179,180,184,193,194,195,196)\"', '192.168.30.1', '2024-01-20 10:49:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1228, 'admin', '修改菜单/按钮', 18, 'com.bysj.mental.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=195, parentId=0, menuName=音乐管理, url=/business/music, perms=, icon=layui-icon-dashboard, type=0, orderNum=3, createTime=null, modifyTime=Sat Jan 20 10:55:37 CST 2024)\"', '192.168.30.1', '2024-01-20 10:55:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1229, 'admin', '修改菜单/按钮', 42, 'com.bysj.mental.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=195, parentId=0, menuName=音乐管理, url=/business/music, perms=, icon=layui-icon-dashboard, type=0, orderNum=3, createTime=null, modifyTime=Sat Jan 20 10:55:37 CST 2024)\"', '192.168.30.1', '2024-01-20 10:55:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1230, 'admin', '修改菜单/按钮', 9, 'com.bysj.mental.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=196, parentId=0, menuName=论坛管理, url=/business/topic, perms=, icon=layui-icon-control, type=0, orderNum=4, createTime=null, modifyTime=Sat Jan 20 10:55:46 CST 2024)\"', '192.168.30.1', '2024-01-20 10:55:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1231, 'admin', '修改菜单/按钮', 66, 'com.bysj.scenic.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=195, parentId=0, menuName=景点管理, url=/business/scenic, perms=, icon=layui-icon-dashboard, type=0, orderNum=3, createTime=null, modifyTime=Mon Jan 22 10:04:34 CST 2024)\"', '0:0:0:0:0:0:0:1', '2024-01-22 10:04:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1232, 'admin', '删除菜单/按钮', 51, 'com.bysj.scenic.system.controller.MenuController.deleteMenus()', ' menuIds: \"179\"', '0:0:0:0:0:0:0:1', '2024-01-22 22:57:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1233, 'admin', '修改菜单/按钮', 35, 'com.bysj.scenic.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=195, parentId=0, menuName=景点管理, url=/business/scenic, perms=, icon=layui-icon-dashboard, type=0, orderNum=2, createTime=null, modifyTime=Mon Jan 22 22:57:12 CST 2024)\"', '0:0:0:0:0:0:0:1', '2024-01-22 22:57:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1234, 'admin', '修改菜单/按钮', 18, 'com.bysj.scenic.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=196, parentId=0, menuName=酒店管理, url=/business/hotel, perms=, icon=layui-icon-control, type=0, orderNum=3, createTime=null, modifyTime=Mon Jan 22 22:57:25 CST 2024)\"', '0:0:0:0:0:0:0:1', '2024-01-22 22:57:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1235, 'admin', '新增菜单/按钮', 32, 'com.bysj.scenic.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=198, parentId=0, menuName=美食管理, url=/business/food, perms=, icon=, type=0, orderNum=4, createTime=Tue Jan 23 10:33:49 CST 2024, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2024-01-23 10:33:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1236, 'admin', '修改角色', 77, 'com.bysj.scenic.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=超级管理员, remark=超级管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Tue Jan 23 10:33:57 CST 2024, menuIds=1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,195,196,198)\"', '0:0:0:0:0:0:0:1', '2024-01-23 10:33:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1237, 'admin', '修改菜单/按钮', 30, 'com.bysj.scenic.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=198, parentId=0, menuName=美食管理, url=/business/food, perms=, icon=layui-icon-pointmap, type=0, orderNum=4, createTime=null, modifyTime=Tue Jan 23 10:35:00 CST 2024)\"', '0:0:0:0:0:0:0:1', '2024-01-23 10:35:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1238, 'admin', '新增菜单/按钮', 34, 'com.bysj.scenic.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=199, parentId=0, menuName=娱乐场所管理, url=/business/play, perms=, icon=layui-icon-save, type=0, orderNum=5, createTime=Tue Jan 23 10:36:55 CST 2024, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2024-01-23 10:36:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1239, 'admin', '修改角色', 63, 'com.bysj.scenic.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=超级管理员, remark=超级管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Tue Jan 23 10:37:01 CST 2024, menuIds=1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,195,196,198,199)\"', '0:0:0:0:0:0:0:1', '2024-01-23 10:37:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1240, 'admin', '新增菜单/按钮', 17, 'com.bysj.scenic.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=200, parentId=0, menuName=微信用户管理, url=/business/wxuser, perms=, icon=layui-icon-eye, type=0, orderNum=6, createTime=Tue Jan 23 10:37:39 CST 2024, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2024-01-23 10:37:40', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1241, 'admin', '修改角色', 41, 'com.bysj.scenic.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=超级管理员, remark=超级管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Tue Jan 23 10:37:59 CST 2024, menuIds=1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,195,196,198,199,200)\"', '0:0:0:0:0:0:0:1', '2024-01-23 10:37:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1242, 'admin', '新增菜单/按钮', 28, 'com.bysj.scenic.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=201, parentId=0, menuName=订单管理, url=, perms=/business/order, icon=layui-icon-message, type=0, orderNum=7, createTime=Tue Jan 23 20:21:02 CST 2024, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2024-01-23 20:21:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1243, 'admin', '修改角色', 61, 'com.bysj.scenic.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=超级管理员, remark=超级管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Tue Jan 23 20:21:07 CST 2024, menuIds=1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,195,196,198,199,200,201)\"', '0:0:0:0:0:0:0:1', '2024-01-23 20:21:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1244, 'admin', '修改菜单/按钮', 24, 'com.bysj.scenic.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=201, parentId=0, menuName=订单管理, url=/business/order, perms=, icon=layui-icon-message, type=0, orderNum=7, createTime=null, modifyTime=Tue Jan 23 20:21:38 CST 2024)\"', '0:0:0:0:0:0:0:1', '2024-01-23 20:21:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1245, 'admin', '新增菜单/按钮', 24, 'com.bysj.scenic.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=202, parentId=0, menuName=订单报表, url=/business/report, perms=, icon=layui-icon-read, type=0, orderNum=8, createTime=Wed Jan 24 07:18:30 CST 2024, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2024-01-24 07:18:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1246, 'admin', '修改角色', 47, 'com.bysj.scenic.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=超级管理员, remark=超级管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Wed Jan 24 07:18:35 CST 2024, menuIds=1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,195,196,198,199,200,201,202)\"', '0:0:0:0:0:0:0:1', '2024-01-24 07:18:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1247, 'admin', '删除菜单/按钮', 62, 'com.bysj.motor.system.controller.MenuController.deleteMenus()', ' menuIds: \"196,198,199,200\"', '0:0:0:0:0:0:0:1', '2024-04-03 15:53:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1248, 'admin', '修改菜单/按钮', 58, 'com.bysj.motor.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=195, parentId=0, menuName=维修厂管理, url=/business/scenic, perms=, icon=layui-icon-dashboard, type=0, orderNum=2, createTime=null, modifyTime=Wed Apr 03 15:59:36 CST 2024)\"', '0:0:0:0:0:0:0:1', '2024-04-03 15:59:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1249, 'admin', '新增菜单/按钮', 23, 'com.bysj.motor.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=203, parentId=0, menuName=微信用户管理, url=/business/wxuser, perms=, icon=layui-icon-question-circle, type=0, orderNum=null, createTime=Wed Apr 03 16:16:43 CST 2024, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2024-04-03 16:16:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1250, 'admin', '修改菜单/按钮', 34, 'com.bysj.motor.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=203, parentId=0, menuName=微信用户管理, url=/business/wxuser, perms=, icon=layui-icon-question-circle, type=0, orderNum=3, createTime=null, modifyTime=Wed Apr 03 16:16:54 CST 2024)\"', '0:0:0:0:0:0:0:1', '2024-04-03 16:16:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1251, 'admin', '修改角色', 51, 'com.bysj.motor.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=超级管理员, remark=超级管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Wed Apr 03 16:17:04 CST 2024, menuIds=1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,195,203,201,202)\"', '0:0:0:0:0:0:0:1', '2024-04-03 16:17:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1252, 'admin', '新增菜单/按钮', 18, 'com.bysj.motor.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=204, parentId=0, menuName=维修项目管理, url=/business/motorproject, perms=, icon=layui-icon-reloadtime, type=0, orderNum=4, createTime=Fri Apr 05 22:23:27 CST 2024, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2024-04-05 22:23:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1253, 'admin', '修改角色', 53, 'com.bysj.motor.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=超级管理员, remark=超级管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Fri Apr 05 22:23:32 CST 2024, menuIds=1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,195,203,204,201,202)\"', '0:0:0:0:0:0:0:1', '2024-04-05 22:23:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1254, 'admin', '修改菜单/按钮', 46, 'com.bysj.devinfo.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=195, parentId=0, menuName=维修厂管理, url=/business/scenic, perms=, icon=layui-icon-dashboard, type=0, orderNum=20, createTime=null, modifyTime=Thu Jan 02 16:39:24 CST 2025)\"', '0:0:0:0:0:0:0:1', '2025-01-02 16:39:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1255, 'admin', '修改菜单/按钮', 19, 'com.bysj.devinfo.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=203, parentId=0, menuName=微信用户管理, url=/business/wxuser, perms=, icon=layui-icon-question-circle, type=0, orderNum=30, createTime=null, modifyTime=Thu Jan 02 16:39:28 CST 2025)\"', '0:0:0:0:0:0:0:1', '2025-01-02 16:39:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1256, 'admin', '修改菜单/按钮', 19, 'com.bysj.devinfo.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=204, parentId=0, menuName=设备类型管理, url=/business/devtype, perms=, icon=layui-icon-reloadtime, type=0, orderNum=2, createTime=null, modifyTime=Thu Jan 02 16:39:53 CST 2025)\"', '0:0:0:0:0:0:0:1', '2025-01-02 16:39:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1257, 'admin', '修改菜单/按钮', 45, 'com.bysj.devinfo.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=195, parentId=0, menuName=设备管理, url=/business/devinfo, perms=, icon=layui-icon-dashboard, type=0, orderNum=3, createTime=null, modifyTime=Thu Jan 02 17:38:48 CST 2025)\"', '0:0:0:0:0:0:0:1', '2025-01-02 17:38:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1258, 'admin', '修改菜单/按钮', 61, 'com.bysj.devinfo.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=201, parentId=0, menuName=故障上报管理, url=/business/order, perms=, icon=layui-icon-message, type=0, orderNum=7, createTime=null, modifyTime=Fri Jan 03 16:10:37 CST 2025)\"', '0:0:0:0:0:0:0:1', '2025-01-03 16:10:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1259, 'admin', '修改菜单/按钮', 53, 'com.bysj.devinfo.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=201, parentId=0, menuName=故障上报管理, url=/business/reorder, perms=, icon=layui-icon-message, type=0, orderNum=7, createTime=null, modifyTime=Fri Jan 03 16:25:41 CST 2025)\"', '0:0:0:0:0:0:0:1', '2025-01-03 16:25:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1260, 'admin', '新增角色', 28, 'com.bysj.devinfo.system.controller.RoleController.addRole()', ' role: \"Role(roleId=2, roleName=维修人员, remark=, createTime=Fri Jan 03 16:41:29 CST 2025, modifyTime=null, menuIds=)\"', '0:0:0:0:0:0:0:1', '2025-01-03 16:41:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1261, 'admin', '修改菜单/按钮', 51, 'com.bysj.devinfo.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=202, parentId=0, menuName=故障查询, url=/business/order, perms=, icon=layui-icon-read, type=0, orderNum=8, createTime=null, modifyTime=Fri Jan 03 17:37:29 CST 2025)\"', '0:0:0:0:0:0:0:1', '2025-01-03 17:37:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1262, 'admin', '新增菜单/按钮', 17, 'com.bysj.devinfo.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=205, parentId=0, menuName=我的任务, url=business/order/mylist, perms=, icon=layui-icon-appstore, type=0, orderNum=9, createTime=Sat Jan 04 08:04:57 CST 2025, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2025-01-04 08:04:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1263, 'admin', '修改菜单/按钮', 27, 'com.bysj.devinfo.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=205, parentId=0, menuName=我的任务, url=/business/order/mylist, perms=, icon=layui-icon-appstore, type=0, orderNum=9, createTime=null, modifyTime=Sat Jan 04 08:05:05 CST 2025)\"', '0:0:0:0:0:0:0:1', '2025-01-04 08:05:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1264, 'admin', '修改角色', 28, 'com.bysj.devinfo.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=2, roleName=维修人员, remark=, createTime=null, modifyTime=Sat Jan 04 08:05:20 CST 2025, menuIds=205)\"', '0:0:0:0:0:0:0:1', '2025-01-04 08:05:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1265, 'admin', '修改菜单/按钮', 14, 'com.bysj.devinfo.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=205, parentId=0, menuName=我的任务, url=/business/myorder, perms=, icon=layui-icon-appstore, type=0, orderNum=9, createTime=null, modifyTime=Sat Jan 04 08:06:06 CST 2025)\"', '0:0:0:0:0:0:0:1', '2025-01-04 08:06:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1266, 'admin', '新增菜单/按钮', 14, 'com.bysj.devinfo.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=206, parentId=0, menuName=报废管理, url=business/devbf, perms=, icon=layui-icon-dashboard, type=0, orderNum=4, createTime=Sat Jan 04 22:48:23 CST 2025, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2025-01-04 22:48:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1267, 'admin', '修改菜单/按钮', 22, 'com.bysj.devinfo.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=206, parentId=0, menuName=报废管理, url=/business/devbf, perms=, icon=layui-icon-dashboard, type=0, orderNum=4, createTime=null, modifyTime=Sat Jan 04 22:48:29 CST 2025)\"', '0:0:0:0:0:0:0:1', '2025-01-04 22:48:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1268, 'admin', '修改角色', 38, 'com.bysj.devinfo.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=超级管理员, remark=超级管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Sat Jan 04 22:48:34 CST 2025, menuIds=1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,204,195,206,201,202,203)\"', '0:0:0:0:0:0:0:1', '2025-01-04 22:48:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1269, 'admin', '新增菜单/按钮', 28, 'com.bysj.devinfo.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=207, parentId=0, menuName=养护登记管理, url=/business/devyh, perms=, icon=layui-icon-time-circle, type=0, orderNum=10, createTime=Mon Jan 06 10:38:14 CST 2025, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2025-01-06 10:38:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1270, 'admin', '修改角色', 71, 'com.bysj.devinfo.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=超级管理员, remark=超级管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Mon Jan 06 10:38:26 CST 2025, menuIds=1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,204,195,206,201,202,207,203)\"', '0:0:0:0:0:0:0:1', '2025-01-06 10:38:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1271, 'admin', '新增菜单/按钮', 25, 'com.bysj.devinfo.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=208, parentId=0, menuName=意见箱管理, url=/business/errinfo, perms=, icon=layui-icon-message, type=0, orderNum=11, createTime=Mon Jan 06 13:44:33 CST 2025, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2025-01-06 13:44:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1272, 'admin', '修改角色', 70, 'com.bysj.devinfo.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=超级管理员, remark=超级管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Mon Jan 06 13:44:40 CST 2025, menuIds=1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,204,195,206,201,202,207,208,203)\"', '0:0:0:0:0:0:0:1', '2025-01-06 13:44:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1273, 'admin', '删除菜单/按钮', 32, 'com.bysj.secondhand.system.controller.MenuController.deleteMenus()', ' menuIds: \"206,201,202,205,207,208\"', '0:0:0:0:0:0:0:1', '2025-03-21 16:41:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1274, 'admin', '修改菜单/按钮', 34, 'com.bysj.secondhand.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=204, parentId=0, menuName=商品类型管理, url=/business/goodstype, perms=, icon=layui-icon-reloadtime, type=0, orderNum=2, createTime=null, modifyTime=Fri Mar 21 16:41:48 CST 2025)\"', '0:0:0:0:0:0:0:1', '2025-03-21 16:41:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1275, 'admin', '修改菜单/按钮', 13, 'com.bysj.secondhand.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=195, parentId=0, menuName=商品管理, url=/business/goodsinfo, perms=, icon=layui-icon-dashboard, type=0, orderNum=3, createTime=null, modifyTime=Fri Mar 21 16:42:01 CST 2025)\"', '0:0:0:0:0:0:0:1', '2025-03-21 16:42:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1276, 'admin', '修改菜单/按钮', 11, 'com.bysj.secondhand.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=203, parentId=0, menuName=客户管理, url=/business/custormer, perms=, icon=layui-icon-question-circle, type=0, orderNum=4, createTime=null, modifyTime=Fri Mar 21 16:42:20 CST 2025)\"', '0:0:0:0:0:0:0:1', '2025-03-21 16:42:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1277, 'admin', '修改菜单/按钮', 20, 'com.bysj.secondhand.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=195, parentId=0, menuName=商品管理, url=/business/goods, perms=, icon=layui-icon-dashboard, type=0, orderNum=3, createTime=null, modifyTime=Fri Mar 21 16:42:56 CST 2025)\"', '0:0:0:0:0:0:0:1', '2025-03-21 16:42:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1278, 'admin', '修改菜单/按钮', 40, 'com.bysj.secondhand.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=195, parentId=0, menuName=商品管理, url=/business/goodsinfo, perms=, icon=layui-icon-dashboard, type=0, orderNum=3, createTime=null, modifyTime=Fri Mar 21 16:57:59 CST 2025)\"', '0:0:0:0:0:0:0:1', '2025-03-21 16:58:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1279, 'admin', '修改菜单/按钮', 14, 'com.bysj.secondhand.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=203, parentId=0, menuName=客户管理, url=/business/customer, perms=, icon=layui-icon-question-circle, type=0, orderNum=4, createTime=null, modifyTime=Fri Mar 21 16:58:56 CST 2025)\"', '0:0:0:0:0:0:0:1', '2025-03-21 16:58:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1280, 'admin', '删除菜单/按钮', 50, 'com.bysj.learneng.system.controller.MenuController.deleteMenus()', ' menuIds: \"204\"', '0:0:0:0:0:0:0:1', '2025-04-02 09:12:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1281, 'admin', '修改菜单/按钮', 34, 'com.bysj.learneng.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=195, parentId=0, menuName=单词管理, url=/business/goodsinfo, perms=, icon=layui-icon-dashboard, type=0, orderNum=3, createTime=null, modifyTime=Wed Apr 02 09:12:15 CST 2025)\"', '0:0:0:0:0:0:0:1', '2025-04-02 09:12:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1282, 'admin', '修改菜单/按钮', 45, 'com.bysj.learneng.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=195, parentId=0, menuName=单词管理, url=/business/wordinfo, perms=, icon=layui-icon-dashboard, type=0, orderNum=3, createTime=null, modifyTime=Wed Apr 02 10:30:09 CST 2025)\"', '0:0:0:0:0:0:0:1', '2025-04-02 10:30:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1283, 'admin', '新增菜单/按钮', 22, 'com.bysj.learneng.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=209, parentId=0, menuName=例句管理, url=/business/wordexm, perms=, icon=layui-icon-time-circle, type=0, orderNum=5, createTime=Wed Apr 02 12:24:37 CST 2025, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2025-04-02 12:24:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1284, 'admin', '删除角色', 53, 'com.bysj.learneng.system.controller.RoleController.deleteRoles()', ' roleIds: \"2\"', '0:0:0:0:0:0:0:1', '2025-04-02 12:24:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1285, 'admin', '删除用户', 22, 'com.bysj.learneng.system.controller.UserController.deleteUsers()', ' userIds: \"2\"', '0:0:0:0:0:0:0:1', '2025-04-02 12:24:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1286, 'admin', '修改角色', 41, 'com.bysj.learneng.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=超级管理员, remark=超级管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Wed Apr 02 12:25:02 CST 2025, menuIds=1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,195,203,209)\"', '0:0:0:0:0:0:0:1', '2025-04-02 12:25:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1287, 'admin', '新增菜单/按钮', 18, 'com.bysj.learneng.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=210, parentId=0, menuName=场景管理, url=/business/scenceinfo, perms=, icon=layui-icon-dashboard, type=0, orderNum=6, createTime=Wed Apr 02 15:44:09 CST 2025, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2025-04-02 15:44:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1288, 'admin', '修改角色', 52, 'com.bysj.learneng.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=超级管理员, remark=超级管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Wed Apr 02 15:44:15 CST 2025, menuIds=1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,195,203,209,210)\"', '0:0:0:0:0:0:0:1', '2025-04-02 15:44:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1289, 'admin', '新增菜单/按钮', 20, 'com.bysj.learneng.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=211, parentId=0, menuName=跟读分数查询, url=/business/examinfo, perms=, icon=layui-icon-message, type=0, orderNum=9, createTime=Thu Apr 10 10:13:07 CST 2025, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2025-04-10 10:13:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1290, 'admin', '修改角色', 74, 'com.bysj.learneng.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=超级管理员, remark=超级管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Thu Apr 10 10:13:15 CST 2025, menuIds=1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,195,203,209,210,211)\"', '0:0:0:0:0:0:0:1', '2025-04-10 10:13:15', '内网IP|0|0|内网IP|内网IP');

-- ----------------------------
-- Table structure for t_login_log
-- ----------------------------
DROP TABLE IF EXISTS `t_login_log`;
CREATE TABLE `t_login_log`  (
  `ID` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `LOGIN_TIME` datetime(0) NOT NULL COMMENT '登录时间',
  `LOCATION` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录地点',
  `IP` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `SYSTEM` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作系统',
  `BROWSER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '浏览器',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `t_login_log_login_time`(`LOGIN_TIME`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 248 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '登录日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_login_log
-- ----------------------------
INSERT INTO `t_login_log` VALUES (70, 'mrbird', '2023-09-26 20:05:33', '内网IP|0|0|内网IP|内网IP', '192.168.30.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (71, 'mrbird', '2023-09-27 05:59:25', '内网IP|0|0|内网IP|内网IP', '192.168.30.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (72, 'MrBird', '2023-09-27 13:00:10', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Mac OS X 10_15_7', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (73, 'admin', '2023-09-27 13:03:08', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Mac OS X 10_15_7', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (74, 'admin', '2023-09-27 19:41:38', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (75, 'admin', '2023-09-27 20:30:31', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (76, 'admin', '2023-09-28 07:05:47', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (77, 'admin', '2023-09-28 07:14:49', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (78, 'admin', '2023-09-28 10:21:50', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Mac OS X 10_15_7', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (79, 'admin', '2023-09-28 11:21:36', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Mac OS X 10_15_7', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (80, 'admin', '2023-09-28 19:50:44', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Mac OS X 10_15_7', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (81, 'admin', '2023-09-28 19:52:28', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Mac OS X 10_15_7', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (82, 'admin', '2023-09-28 19:58:18', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Mac OS X 10_15_7', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (83, 'admin', '2023-09-28 20:09:55', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (84, 'admin', '2023-09-29 07:22:56', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (85, 'admin', '2023-09-29 07:44:45', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (86, 'admin', '2023-09-29 07:47:30', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (87, 'admin', '2023-09-29 08:24:04', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (88, 'admin', '2023-09-29 08:29:20', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (89, 'admin', '2023-09-29 09:43:42', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (90, 'admin', '2023-09-29 09:49:39', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (91, 'admin', '2023-09-29 09:51:46', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (92, 'admin', '2023-10-05 18:51:27', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (93, 'admin', '2023-10-05 19:01:45', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (94, 'admin', '2023-10-05 19:13:35', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (95, 'admin', '2023-10-05 23:19:23', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (96, 'admin', '2023-10-05 23:22:32', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (97, 'admin', '2023-10-05 23:29:10', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (98, 'admin', '2023-10-07 20:45:59', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Mac OS X 10_15_7', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (99, 'admin', '2023-10-07 22:00:07', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Mac OS X 10_15_7', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (100, 'admin', '2023-10-07 23:28:21', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Mac OS X 10_15_7', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (101, 'admin', '2023-10-09 11:33:25', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (102, 'admin', '2023-10-09 11:36:59', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (103, 'admin', '2023-10-09 13:52:47', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (104, 'admin', '2023-10-09 13:57:22', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (105, 'admin', '2023-10-10 23:40:18', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (106, 'admin', '2023-10-11 23:25:40', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (107, 'admin', '2023-10-13 13:50:54', '中国|华东|山东省|济南市|联通', '60.208.111.194', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (108, 'admin', '2023-10-13 13:51:43', '中国|华东|山东省|济南市|联通', '60.208.111.194', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (109, 'test', '2023-10-13 13:54:03', '中国|华东|山东省|济南市|联通', '60.208.111.194', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (110, 'test', '2023-10-13 14:32:39', '中国|华东|山东省|济南市|联通', '60.208.111.194', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (111, 'test', '2023-10-13 14:38:17', '中国|华东|山东省|滨州市|联通', '27.209.65.231', 'Windows 10', 'Chrome 10');
INSERT INTO `t_login_log` VALUES (112, 'test', '2023-10-13 14:43:08', '中国|0|0|0|移动', '39.144.109.17', 'Linux', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (113, 'admin', '2023-10-14 12:31:48', '中国|华东|山东省|济南市|联通', '112.232.221.124', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (114, 'admin', '2023-10-16 08:03:07', '中国|华东|山东省|济南市|电信', '58.56.96.29', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (115, 'admin', '2023-10-17 22:33:17', '中国|华东|山东省|济南市|联通', '112.232.221.124', 'Mac OS X 10_15_7', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (116, 'admin', '2023-10-18 00:13:01', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Mac OS X 10_15_7', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (117, 'admin', '2023-10-19 06:46:17', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (118, 'admin', '2023-10-19 06:55:38', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (119, 'admin', '2023-10-19 07:22:26', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (120, 'admin', '2023-10-20 09:25:13', '中国|华东|山东省|济南市|联通', '60.208.111.194', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (121, 'admin', '2023-10-24 07:08:07', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (122, 'admin', '2023-10-24 20:52:34', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (123, 'admin', '2023-10-24 22:58:11', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (124, 'admin', '2023-10-24 23:49:35', '中国|华东|山东省|济南市|联通', '112.232.221.124', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (125, 'test', '2023-10-24 23:55:22', '中国|华东|山东省|济南市|联通', '112.232.221.124', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (126, 'admin', '2023-10-24 23:55:37', '中国|华东|山东省|济南市|联通', '112.232.221.124', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (127, 'test', '2023-10-24 23:55:56', '中国|华东|山东省|济南市|联通', '112.232.221.124', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (128, 'admin', '2023-10-24 23:57:06', '中国|华东|山东省|济南市|联通', '112.232.221.124', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (129, 'admin', '2023-10-25 11:52:32', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Mac OS X 10_15_7', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (130, 'admin', '2023-10-25 11:56:28', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Mac OS X 10_15_7', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (131, 'admin', '2023-10-26 13:42:00', '中国|华东|山东省|济南市|联通', '60.208.111.194', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (132, 'admin', '2023-10-26 15:36:36', '中国|华东|山东省|济南市|联通', '60.208.111.194', 'Windows 10', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (133, 'admin', '2023-10-27 14:39:11', '中国|华东|山东省|济南市|联通', '60.208.111.194', 'Mac OS X 10_15_7', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (134, 'test', '2023-11-25 12:44:17', '中国|0|0|0|移动', '39.144.109.29', 'Linux', 'Chrome 11');
INSERT INTO `t_login_log` VALUES (135, 'admin', '2024-01-18 17:02:14', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (136, 'admin', '2024-01-20 00:08:54', '内网IP|0|0|内网IP|内网IP', '192.168.30.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (137, 'admin', '2024-01-20 00:44:06', '内网IP|0|0|内网IP|内网IP', '192.168.30.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (138, 'admin', '2024-01-20 00:46:22', '内网IP|0|0|内网IP|内网IP', '192.168.30.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (139, 'admin', '2024-01-20 00:48:49', '内网IP|0|0|内网IP|内网IP', '192.168.30.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (140, 'admin', '2024-01-20 00:52:31', '内网IP|0|0|内网IP|内网IP', '192.168.30.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (141, 'admin', '2024-01-20 00:58:22', '内网IP|0|0|内网IP|内网IP', '192.168.30.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (142, 'admin', '2024-01-20 08:36:59', '内网IP|0|0|内网IP|内网IP', '192.168.30.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (143, 'admin', '2024-01-20 13:55:33', '内网IP|0|0|内网IP|内网IP', '192.168.30.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (144, 'admin', '2024-01-20 14:04:37', '内网IP|0|0|内网IP|内网IP', '192.168.30.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (145, 'admin', '2024-01-22 10:04:05', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (146, 'admin', '2024-01-22 10:08:54', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (147, 'admin', '2024-01-23 08:44:38', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (148, 'admin', '2024-01-23 09:46:25', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (149, 'admin', '2024-01-24 10:49:48', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (150, 'admin', '2024-04-03 10:57:40', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (151, 'admin', '2024-04-03 10:58:35', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (152, 'admin', '2024-04-03 15:52:52', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (153, 'admin', '2024-04-03 15:54:54', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (154, 'admin', '2024-04-03 15:57:54', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (155, 'admin', '2024-04-03 15:59:21', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (156, 'admin', '2024-04-03 16:16:16', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (157, 'admin', '2024-04-03 16:51:39', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (158, 'admin', '2024-04-05 22:22:37', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (159, 'admin', '2024-04-05 22:29:08', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (160, 'admin', '2024-04-05 22:50:50', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (161, 'admin', '2024-04-05 22:53:39', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (162, 'admin', '2024-04-05 22:55:40', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (163, 'admin', '2024-04-07 12:54:39', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (164, 'admin', '2024-04-07 12:55:26', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (165, 'admin', '2024-04-07 13:01:17', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (166, 'admin', '2024-04-07 13:02:55', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (167, 'admin', '2024-04-07 16:12:23', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (168, 'admin', '2024-04-07 16:41:25', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (169, 'admin', '2024-04-07 17:13:48', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (170, 'admin', '2024-04-07 17:27:07', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (171, 'admin', '2024-04-07 21:37:30', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (172, 'admin', '2024-04-07 21:38:26', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (173, 'admin', '2024-04-07 21:41:03', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (174, 'admin', '2024-04-07 21:42:50', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (175, 'admin', '2024-04-07 21:44:55', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (176, 'admin', '2024-04-07 21:45:19', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (177, 'admin', '2024-04-10 08:31:47', '内网IP|0|0|内网IP|内网IP', '192.168.30.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (178, 'admin', '2024-04-10 09:15:25', '内网IP|0|0|内网IP|内网IP', '192.168.30.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (179, 'admin', '2024-04-10 10:28:18', '内网IP|0|0|内网IP|内网IP', '192.168.30.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (180, 'admin', '2024-04-10 10:33:18', '内网IP|0|0|内网IP|内网IP', '192.168.30.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (181, 'admin', '2024-04-10 10:34:23', '内网IP|0|0|内网IP|内网IP', '192.168.30.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (182, 'admin', '2024-04-10 11:22:15', '内网IP|0|0|内网IP|内网IP', '192.168.30.1', 'Windows 10', 'Chrome 12');
INSERT INTO `t_login_log` VALUES (183, 'admin', '2025-01-02 15:48:12', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (184, 'admin', '2025-01-02 16:39:00', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (185, 'admin', '2025-01-02 17:38:24', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (186, 'admin', '2025-01-02 17:40:21', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (187, 'admin', '2025-01-02 17:42:35', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (188, 'admin', '2025-01-02 17:43:58', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (189, 'admin', '2025-01-02 17:46:25', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (190, 'admin', '2025-01-03 13:50:02', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (191, 'admin', '2025-01-03 16:09:58', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (192, 'admin', '2025-01-03 16:25:29', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (193, 'admin', '2025-01-03 16:41:04', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (194, 'admin', '2025-01-03 17:16:50', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (195, 'admin', '2025-01-03 17:21:26', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (196, 'admin', '2025-01-03 17:30:32', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (197, 'admin', '2025-01-03 17:36:36', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (198, 'admin', '2025-01-03 17:44:52', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (199, 'admin', '2025-01-03 17:46:13', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (200, 'admin', '2025-01-04 08:03:55', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (201, 'zhangsan', '2025-01-04 08:05:30', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (202, 'admin', '2025-01-04 08:05:54', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (203, 'zhangsan', '2025-01-04 08:10:00', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (204, 'zhangsan', '2025-01-04 08:13:02', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (205, 'zhangsan', '2025-01-04 08:16:20', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (206, 'admin', '2025-01-04 08:16:59', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (207, 'admin', '2025-01-04 22:47:59', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (208, 'admin', '2025-01-06 10:37:17', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (209, 'admin', '2025-01-06 13:43:54', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (210, 'admin', '2025-01-06 13:50:49', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (211, 'admin', '2025-01-06 13:52:37', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (212, 'zhangsan', '2025-02-21 09:19:09', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (213, 'admin', '2025-02-21 09:19:30', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (214, 'admin', '2025-02-22 16:40:07', '内网IP|0|0|内网IP|内网IP', '192.168.30.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (215, 'admin', '2025-02-22 17:53:44', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (216, 'admin', '2025-02-22 18:21:38', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (217, 'zhangsan', '2025-02-22 18:30:34', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (218, 'admin', '2025-03-21 13:44:13', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (219, 'admin', '2025-03-21 16:41:19', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (220, 'admin', '2025-03-21 16:57:38', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (221, 'admin', '2025-03-21 17:19:20', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (222, 'admin', '2025-03-21 17:22:01', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (223, 'admin', '2025-03-21 17:46:22', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (224, 'admin', '2025-03-21 22:15:28', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (225, 'admin', '2025-03-21 22:15:44', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (226, 'admin', '2025-03-21 22:16:08', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (227, 'admin', '2025-03-21 22:16:51', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (228, 'admin', '2025-03-21 22:18:14', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (229, 'admin', '2025-03-21 23:11:37', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (230, 'admin', '2025-03-22 08:54:24', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (231, 'admin', '2025-03-22 08:59:32', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (232, 'admin', '2025-03-22 09:07:13', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (233, 'admin', '2025-03-22 20:36:42', '内网IP|0|0|内网IP|内网IP', '192.168.30.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (234, 'admin', '2025-03-23 10:11:49', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (235, 'admin', '2025-03-23 10:13:39', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (236, 'admin', '2025-03-23 13:08:17', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (237, 'admin', '2025-04-02 09:09:28', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (238, 'admin', '2025-04-02 09:11:44', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (239, 'admin', '2025-04-02 10:29:55', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (240, 'admin', '2025-04-02 12:24:06', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (241, 'admin', '2025-04-02 15:43:33', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (242, 'admin', '2025-04-02 15:50:26', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (243, 'admin', '2025-04-07 13:34:48', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (244, 'admin', '2025-04-07 13:35:15', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (245, 'admin', '2025-04-07 22:11:45', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (246, 'admin', '2025-04-07 22:13:38', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (247, 'admin', '2025-04-07 22:17:05', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (248, 'admin', '2025-04-10 10:12:34', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (249, 'admin', '2025-04-10 19:43:09', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');
INSERT INTO `t_login_log` VALUES (250, 'admin', '2025-04-10 19:47:33', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 13');

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu`  (
  `MENU_ID` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '菜单/按钮ID',
  `PARENT_ID` bigint(0) NOT NULL COMMENT '上级菜单ID',
  `MENU_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单/按钮名称',
  `URL` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单URL',
  `PERMS` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '权限标识',
  `ICON` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `TYPE` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型 0菜单 1按钮',
  `ORDER_NUM` bigint(0) NULL DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime(0) NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`MENU_ID`) USING BTREE,
  INDEX `t_menu_parent_id`(`PARENT_ID`) USING BTREE,
  INDEX `t_menu_menu_id`(`MENU_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 210 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES (1, 0, '系统管理', NULL, NULL, 'layui-icon-setting', '0', 1, '2017-12-27 16:39:07', NULL);
INSERT INTO `t_menu` VALUES (3, 1, '用户管理', '/system/user', 'user:view', '', '0', 1, '2017-12-27 16:47:13', '2019-12-04 16:46:50');
INSERT INTO `t_menu` VALUES (4, 1, '角色管理', '/system/role', 'role:view', '', '0', 2, '2017-12-27 16:48:09', '2019-06-13 08:57:19');
INSERT INTO `t_menu` VALUES (5, 1, '菜单管理', '/system/menu', 'menu:view', '', '0', 3, '2017-12-27 16:48:57', '2019-06-13 08:57:34');
INSERT INTO `t_menu` VALUES (6, 1, '部门管理', '/system/dept', 'dept:view', '', '0', 4, '2017-12-27 16:57:33', '2019-06-14 19:56:00');
INSERT INTO `t_menu` VALUES (11, 3, '新增用户', NULL, 'user:add', NULL, '1', NULL, '2017-12-27 17:02:58', NULL);
INSERT INTO `t_menu` VALUES (12, 3, '修改用户', NULL, 'user:update', NULL, '1', NULL, '2017-12-27 17:04:07', NULL);
INSERT INTO `t_menu` VALUES (13, 3, '删除用户', NULL, 'user:delete', NULL, '1', NULL, '2017-12-27 17:04:58', NULL);
INSERT INTO `t_menu` VALUES (14, 4, '新增角色', NULL, 'role:add', NULL, '1', NULL, '2017-12-27 17:06:38', NULL);
INSERT INTO `t_menu` VALUES (15, 4, '修改角色', NULL, 'role:update', NULL, '1', NULL, '2017-12-27 17:06:38', NULL);
INSERT INTO `t_menu` VALUES (16, 4, '删除角色', NULL, 'role:delete', NULL, '1', NULL, '2017-12-27 17:06:38', NULL);
INSERT INTO `t_menu` VALUES (17, 5, '新增菜单', NULL, 'menu:add', NULL, '1', NULL, '2017-12-27 17:08:02', NULL);
INSERT INTO `t_menu` VALUES (18, 5, '修改菜单', NULL, 'menu:update', NULL, '1', NULL, '2017-12-27 17:08:02', NULL);
INSERT INTO `t_menu` VALUES (19, 5, '删除菜单', NULL, 'menu:delete', NULL, '1', NULL, '2017-12-27 17:08:02', NULL);
INSERT INTO `t_menu` VALUES (20, 6, '新增部门', NULL, 'dept:add', NULL, '1', NULL, '2017-12-27 17:09:24', NULL);
INSERT INTO `t_menu` VALUES (21, 6, '修改部门', NULL, 'dept:update', NULL, '1', NULL, '2017-12-27 17:09:24', NULL);
INSERT INTO `t_menu` VALUES (22, 6, '删除部门', NULL, 'dept:delete', NULL, '1', NULL, '2017-12-27 17:09:24', NULL);
INSERT INTO `t_menu` VALUES (160, 3, '密码重置', NULL, 'user:password:reset', NULL, '1', NULL, '2019-06-13 08:40:13', NULL);
INSERT INTO `t_menu` VALUES (161, 3, '导出Excel', NULL, 'user:export', NULL, '1', NULL, '2019-06-13 08:40:34', NULL);
INSERT INTO `t_menu` VALUES (162, 4, '导出Excel', NULL, 'role:export', NULL, '1', NULL, '2019-06-13 14:29:00', '2019-06-13 14:29:11');
INSERT INTO `t_menu` VALUES (163, 5, '导出Excel', NULL, 'menu:export', NULL, '1', NULL, '2019-06-13 14:29:32', NULL);
INSERT INTO `t_menu` VALUES (164, 6, '导出Excel', NULL, 'dept:export', NULL, '1', NULL, '2019-06-13 14:29:59', NULL);
INSERT INTO `t_menu` VALUES (195, 0, '单词管理', '/business/wordinfo', '', 'layui-icon-dashboard', '0', 3, '2024-01-20 10:00:30', '2025-04-02 10:30:09');
INSERT INTO `t_menu` VALUES (203, 0, '客户管理', '/business/customer', '', 'layui-icon-question-circle', '0', 4, '2024-04-03 16:16:43', '2025-03-21 16:58:57');
INSERT INTO `t_menu` VALUES (209, 0, '例句管理', '/business/wordexm', '', 'layui-icon-time-circle', '0', 5, '2025-04-02 12:24:38', NULL);
INSERT INTO `t_menu` VALUES (210, 0, '场景管理', '/business/scenceinfo', '', 'layui-icon-dashboard', '0', 6, '2025-04-02 15:44:09', NULL);
INSERT INTO `t_menu` VALUES (211, 0, '跟读分数查询', '/business/examinfo', '', 'layui-icon-message', '0', 9, '2025-04-10 10:13:07', NULL);

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `pid` bigint(0) NULL DEFAULT NULL COMMENT '商品ID',
  `userid` bigint(0) NULL DEFAULT NULL COMMENT '客户ID',
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '0已下单1已支付2已确认',
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '下单时间',
  `regtime` datetime(0) NULL DEFAULT NULL COMMENT '支付时间',
  `finishtime` datetime(0) NULL DEFAULT NULL COMMENT '完成时间',
  `des` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '订单备注',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `uname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系人',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系地址',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES (18, 15, 17, '0', '2025-03-23 09:56:28', NULL, NULL, '大大大', '18877662233', '张三', '18877662233', 100.00);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `ROLE_ID` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `ROLE_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `REMARK` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `CREATE_TIME` datetime(0) NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`ROLE_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, '超级管理员', '超级管理员，拥有所有操作权限 ^_^', '2019-06-14 16:23:11', '2025-04-10 10:13:15');

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu`  (
  `ROLE_ID` bigint(0) NOT NULL COMMENT '角色ID',
  `MENU_ID` bigint(0) NOT NULL COMMENT '菜单/按钮ID',
  INDEX `t_role_menu_menu_id`(`MENU_ID`) USING BTREE,
  INDEX `t_role_menu_role_id`(`ROLE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
INSERT INTO `t_role_menu` VALUES (1, 1);
INSERT INTO `t_role_menu` VALUES (1, 3);
INSERT INTO `t_role_menu` VALUES (1, 11);
INSERT INTO `t_role_menu` VALUES (1, 12);
INSERT INTO `t_role_menu` VALUES (1, 13);
INSERT INTO `t_role_menu` VALUES (1, 160);
INSERT INTO `t_role_menu` VALUES (1, 161);
INSERT INTO `t_role_menu` VALUES (1, 4);
INSERT INTO `t_role_menu` VALUES (1, 14);
INSERT INTO `t_role_menu` VALUES (1, 15);
INSERT INTO `t_role_menu` VALUES (1, 16);
INSERT INTO `t_role_menu` VALUES (1, 162);
INSERT INTO `t_role_menu` VALUES (1, 5);
INSERT INTO `t_role_menu` VALUES (1, 17);
INSERT INTO `t_role_menu` VALUES (1, 18);
INSERT INTO `t_role_menu` VALUES (1, 19);
INSERT INTO `t_role_menu` VALUES (1, 163);
INSERT INTO `t_role_menu` VALUES (1, 6);
INSERT INTO `t_role_menu` VALUES (1, 20);
INSERT INTO `t_role_menu` VALUES (1, 21);
INSERT INTO `t_role_menu` VALUES (1, 22);
INSERT INTO `t_role_menu` VALUES (1, 164);
INSERT INTO `t_role_menu` VALUES (1, 195);
INSERT INTO `t_role_menu` VALUES (1, 203);
INSERT INTO `t_role_menu` VALUES (1, 209);
INSERT INTO `t_role_menu` VALUES (1, 210);
INSERT INTO `t_role_menu` VALUES (1, 211);

-- ----------------------------
-- Table structure for t_scence_info
-- ----------------------------
DROP TABLE IF EXISTS `t_scence_info`;
CREATE TABLE `t_scence_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `des` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述信息',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片',
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标题',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '场景信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_scence_info
-- ----------------------------
INSERT INTO `t_scence_info` VALUES (1, '001', '生活篇', '生活篇|如何学习', '9a7c7110-af64-4e59-ab43-dd2fbe4cdca3.jpg', '2025-04-02 15:51:10', '生活篇|如何学习');
INSERT INTO `t_scence_info` VALUES (2, '111', '22', '44', 'b555d78e-b452-42fa-a03e-874b16473fa7.jpg', '2025-04-10 19:49:33', '33');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `USER_ID` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `DEPT_ID` bigint(0) NULL DEFAULT NULL COMMENT '部门ID',
  `EMAIL` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `MOBILE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `STATUS` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态 0锁定 1有效',
  `CREATE_TIME` datetime(0) NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `LAST_LOGIN_TIME` datetime(0) NULL DEFAULT NULL COMMENT '最近访问时间',
  `SSEX` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别 0男 1女 2保密',
  `IS_TAB` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否开启tab，0关闭 1开启',
  `THEME` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主题',
  `AVATAR` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `DESCRIPTION` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `OPENID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'openid',
  `SCORE` int(0) NULL DEFAULT 0 COMMENT '分数',
  `WXHEAD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信头像',
  PRIMARY KEY (`USER_ID`) USING BTREE,
  INDEX `t_user_username`(`USERNAME`) USING BTREE,
  INDEX `t_user_mobile`(`MOBILE`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', '37f66f3264e255aede93f3bcab13cf88', '超级管理员', 93, 'test@qq.com', '18668135365', '1', '2019-06-14 20:39:22', '2023-10-13 13:51:33', '2025-04-10 19:47:33', '0', '1', 'black', 'cnrhVkzwxjPwAaCfPbdc.png', '超级管理员', NULL, 10, 'https://mmbiz.qpic.cn/mmbiz/icTdbqWNOwNRna42FI242Lcia07jQodd2FJGIYQfG0LAJGFxM4FbnQP6yfMxBgJ0F3YRqJCJ1aPAK2dQagdusBZg/0');

-- ----------------------------
-- Table structure for t_user_data_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_user_data_permission`;
CREATE TABLE `t_user_data_permission`  (
  `USER_ID` bigint(0) NOT NULL,
  `DEPT_ID` bigint(0) NOT NULL,
  PRIMARY KEY (`USER_ID`, `DEPT_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户数据权限关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_data_permission
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
  `USER_ID` bigint(0) NOT NULL COMMENT '用户ID',
  `ROLE_ID` bigint(0) NOT NULL COMMENT '角色ID',
  INDEX `t_user_role_user_id`(`USER_ID`) USING BTREE,
  INDEX `t_user_role_role_id`(`ROLE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES (1, 1);

-- ----------------------------
-- Table structure for t_word_exm
-- ----------------------------
DROP TABLE IF EXISTS `t_word_exm`;
CREATE TABLE `t_word_exm`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '例句内容',
  `des` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '例句描述',
  `fileurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '音频文件',
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `wordid` bigint(0) NULL DEFAULT NULL COMMENT '所属单词',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '单词例句表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_word_exm
-- ----------------------------
INSERT INTO `t_word_exm` VALUES (17, 'hello,hello', '例句', 'http://localhost:8080/file/8b8e9513-6a0d-4591-bf0a-138849f69a36.mp3', '2025-04-02 12:25:32', 17);
INSERT INTO `t_word_exm` VALUES (18, 'sddssadsadsa', '倒萨倒萨倒萨倒萨', 'http://localhost:8080/file/cb3ea440-e5f7-4266-a97d-d9be02364098.mp3', '2025-04-10 19:49:11', 18);

-- ----------------------------
-- Table structure for t_word_info
-- ----------------------------
DROP TABLE IF EXISTS `t_word_info`;
CREATE TABLE `t_word_info`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单词名称',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单词释义',
  `des` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '描述信息',
  `fileurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '音频文件',
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `normal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '音标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '单词信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_word_info
-- ----------------------------
INSERT INTO `t_word_info` VALUES (17, 'hello', '你好;好\\n好的;确信', '多用于见面打招呼', 'http://localhost:8080/file/0021b2cd-6356-4a05-be7d-7a9d591fc7a8.mp3', '2025-04-02 11:22:36', '英[hailo]');
INSERT INTO `t_word_info` VALUES (18, 'bbb', '的大大撒', '大撒大撒范德萨范德萨', 'http://localhost:8080/file/598d06e4-4c6d-460d-b672-3fdc297af5ca.mp3', '2025-04-10 19:48:40', '123');

SET FOREIGN_KEY_CHECKS = 1;
