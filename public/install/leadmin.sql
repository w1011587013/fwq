/*
 Navicat Premium Data Transfer

 Source Server         : 本地sql
 Source Server Type    : MySQL
 Source Server Version : 50638
 Source Host           : localhost:3306
 Source Schema         : leadmin

 Target Server Type    : MySQL
 Target Server Version : 50638
 File Encoding         : 65001

 Date: 27/06/2018 11:38:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for le_gather
-- ----------------------------
DROP TABLE IF EXISTS `le_gather`;
CREATE TABLE `le_gather` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(20) NOT NULL COMMENT '昵称',
  `money` double NOT NULL COMMENT '金额',
  `time` date NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of le_gather
-- ----------------------------
BEGIN;
INSERT INTO `le_gather` VALUES (5, 'vip-ad***', 49, '2017-03-17');
COMMIT;

-- ----------------------------
-- Table structure for le_klresult
-- ----------------------------
DROP TABLE IF EXISTS `le_klresult`;
CREATE TABLE `le_klresult` (
  `id` int(50) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `klid` int(50) DEFAULT NULL COMMENT '口令id',
  `smtime` varchar(30) DEFAULT NULL COMMENT '扫描时间',
  `smip` varchar(20) DEFAULT NULL COMMENT '扫描ip',
  `smresult` varchar(12) DEFAULT NULL COMMENT '扫描结果',
  `sma` varchar(10) DEFAULT NULL COMMENT 's码',
  `uagent` varchar(255) DEFAULT NULL COMMENT '用户信息',
  `uadd` varchar(0) DEFAULT NULL COMMENT '用户地址',
  `ci` varchar(20) DEFAULT NULL COMMENT '已使用第几次',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of le_klresult
-- ----------------------------
BEGIN;
INSERT INTO `le_klresult` VALUES (13, 5, '2018-06-26 18:30:19', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '', NULL);
INSERT INTO `le_klresult` VALUES (14, 5, '2018-06-26 18:31:40', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '', NULL);
INSERT INTO `le_klresult` VALUES (15, 6, '2018-06-26 18:33:22', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '', NULL);
INSERT INTO `le_klresult` VALUES (16, 6, '2018-06-26 18:33:33', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '', NULL);
INSERT INTO `le_klresult` VALUES (17, 6, '2018-06-26 18:33:36', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '', NULL);
INSERT INTO `le_klresult` VALUES (18, 6, '2018-06-26 18:37:43', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '', NULL);
INSERT INTO `le_klresult` VALUES (19, 8, '2018-06-27 09:34:10', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '第1次登录');
INSERT INTO `le_klresult` VALUES (20, 8, '2018-06-27 09:34:49', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '第2次登录');
INSERT INTO `le_klresult` VALUES (21, 8, '2018-06-27 09:41:34', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '第1次登录');
INSERT INTO `le_klresult` VALUES (22, 8, '2018-06-27 09:41:37', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '第1次登录');
INSERT INTO `le_klresult` VALUES (23, 8, '2018-06-27 09:42:22', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '第1次登录');
INSERT INTO `le_klresult` VALUES (24, 8, '2018-06-27 09:42:24', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '第1次登录');
INSERT INTO `le_klresult` VALUES (25, 8, '2018-06-27 09:45:48', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '第1次登录');
INSERT INTO `le_klresult` VALUES (26, 8, '2018-06-27 09:46:27', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '第1次登录');
INSERT INTO `le_klresult` VALUES (27, 8, '2018-06-27 09:46:30', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '第1次登录');
INSERT INTO `le_klresult` VALUES (28, 8, '2018-06-27 09:49:10', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '第1次登录');
INSERT INTO `le_klresult` VALUES (29, 8, '2018-06-27 09:49:14', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '第1次登录');
INSERT INTO `le_klresult` VALUES (30, 8, '2018-06-27 09:50:41', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '第1次登录');
INSERT INTO `le_klresult` VALUES (31, 8, '2018-06-27 09:59:09', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '第1次登录');
INSERT INTO `le_klresult` VALUES (32, 8, '2018-06-27 09:59:11', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '第1次登录');
INSERT INTO `le_klresult` VALUES (33, 8, '2018-06-27 09:59:14', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '第1次登录');
INSERT INTO `le_klresult` VALUES (34, 8, '2018-06-27 10:03:59', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '第1次登录');
INSERT INTO `le_klresult` VALUES (35, 8, '2018-06-27 10:04:02', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '第1次登录');
INSERT INTO `le_klresult` VALUES (36, 8, '2018-06-27 10:32:50', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '第18次登录');
INSERT INTO `le_klresult` VALUES (37, 8, '2018-06-27 10:32:52', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '第19次登录');
INSERT INTO `le_klresult` VALUES (38, 7, '2018-06-27 11:19:44', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '第1次登录');
INSERT INTO `le_klresult` VALUES (39, 7, '2018-06-27 11:28:53', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '第2次登录');
INSERT INTO `le_klresult` VALUES (40, 7, '2018-06-27 11:29:05', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '第3次登录');
INSERT INTO `le_klresult` VALUES (41, 7, '2018-06-27 11:29:07', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '第4次登录');
INSERT INTO `le_klresult` VALUES (42, 7, '2018-06-27 11:30:31', '::1', '非淘宝来源', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '第5次登录');
COMMIT;

-- ----------------------------
-- Table structure for le_kouling
-- ----------------------------
DROP TABLE IF EXISTS `le_kouling`;
CREATE TABLE `le_kouling` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `kl` varchar(20) DEFAULT NULL COMMENT '口令',
  `kluid` varchar(32) DEFAULT NULL COMMENT '口令用户',
  `status` varchar(2) DEFAULT NULL COMMENT '状态',
  `createtime` varchar(20) DEFAULT NULL COMMENT '生成时间',
  `usenumber` int(5) DEFAULT NULL COMMENT '使用次数',
  `ma` varchar(255) DEFAULT NULL COMMENT '二维码',
  `beizhu` varchar(100) DEFAULT NULL COMMENT '备注',
  `endtime` varchar(20) DEFAULT NULL COMMENT '到期时间',
  `maxnumber` int(3) DEFAULT NULL COMMENT '最大次数',
  `sid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of le_kouling
-- ----------------------------
BEGIN;
INSERT INTO `le_kouling` VALUES (1, NULL, NULL, '1', '1529978037', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `le_kouling` VALUES (2, NULL, NULL, '1', '1529978044', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `le_kouling` VALUES (3, '21111', '1', '1', '1529978407', 50, NULL, '222', '1530583207', 50, '71ecf3a12729ba438d057df53c82a1ca');
INSERT INTO `le_kouling` VALUES (4, 'qera', '1', '1', '1529978499', 3, NULL, '这是描述', '1529978499', 50, 'be5b385c042a9f847a1e75f71272b2f1');
INSERT INTO `le_kouling` VALUES (5, 'zhangsan', '1', '0', '1529993261', 10, NULL, '备注没有', '1530598061', 50, '75e87b0f55b5e7d96614902062c03f5e');
INSERT INTO `le_kouling` VALUES (6, 'SER4', '1', '1', '1530009142', 4, NULL, 'dasf afad', '1530613942', 50, '3ec4a03432a2b412d0580ccf269e5302');
INSERT INTO `le_kouling` VALUES (7, '21212', '1', '1', '1530059758', 5, NULL, '1111', '1530664558', 50, 'e74672632076ff336c1710c255e181bc');
INSERT INTO `le_kouling` VALUES (8, 'shibie', '5', '1', '1530063212', 19, NULL, 'miaoshu', '1530668012', 50, 'a2c62b3efdaf6bcf7a302f0924931e4e');
COMMIT;

-- ----------------------------
-- Table structure for le_must_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `le_must_auth_group`;
CREATE TABLE `le_must_auth_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` varchar(255) NOT NULL COMMENT '权限规则id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='权限组表';

-- ----------------------------
-- Records of le_must_auth_group
-- ----------------------------
BEGIN;
INSERT INTO `le_must_auth_group` VALUES (1, '超级管理组', 1, '100,101,102,103,104,105,107,108,109,110,111,112,113');
INSERT INTO `le_must_auth_group` VALUES (2, '普通管理员', 1, '102,103,109,111,112,113,105,100');
INSERT INTO `le_must_auth_group` VALUES (3, '口令组', 1, '1003,1002,1004,1005');
COMMIT;

-- ----------------------------
-- Table structure for le_must_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `le_must_auth_group_access`;
CREATE TABLE `le_must_auth_group_access` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `sid` smallint(8) unsigned NOT NULL COMMENT '系统权限用户id',
  `gid` smallint(8) unsigned NOT NULL COMMENT '权限规则id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户权限组规则表';

-- ----------------------------
-- Records of le_must_auth_group_access
-- ----------------------------
BEGIN;
INSERT INTO `le_must_auth_group_access` VALUES (1, 1, 1);
INSERT INTO `le_must_auth_group_access` VALUES (2, 2, 2);
INSERT INTO `le_must_auth_group_access` VALUES (5, 5, 3);
COMMIT;

-- ----------------------------
-- Table structure for le_must_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `le_must_auth_rule`;
CREATE TABLE `le_must_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(20) NOT NULL COMMENT '节点名称',
  `url` varchar(100) NOT NULL COMMENT '链接url',
  `pid` smallint(5) unsigned NOT NULL COMMENT '父id',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `order` tinyint(4) unsigned NOT NULL COMMENT '排序',
  `note` char(100) DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8 COMMENT='必要规则表';

-- ----------------------------
-- Records of le_must_auth_rule
-- ----------------------------
BEGIN;
INSERT INTO `le_must_auth_rule` VALUES (107, '菜单管理', 'admin/Nav/index', 101, 1, '#xe621;', 0, NULL, 1);
INSERT INTO `le_must_auth_rule` VALUES (108, '权限组', 'admin/System/auth', 101, 1, '#xe621;', 0, NULL, 1);
INSERT INTO `le_must_auth_rule` VALUES (109, '普通用户', 'admin/User/index', 102, 1, '#xe621;', 0, NULL, 0);
INSERT INTO `le_must_auth_rule` VALUES (110, '系统用户', 'admin/SystemUser/index', 102, 1, '#xe621;', 0, NULL, 1);
INSERT INTO `le_must_auth_rule` VALUES (111, '修改密码', 'admin/SystemUser/edit_password', 102, 1, '#xe621;', 0, NULL, 1);
INSERT INTO `le_must_auth_rule` VALUES (112, '日志记录', 'admin/Log/index', 103, 1, '#xe621;', 0, NULL, 1);
INSERT INTO `le_must_auth_rule` VALUES (113, '数据库备份', 'admin/Bak/index', 104, 1, '#xe621;', 0, NULL, 1);
INSERT INTO `le_must_auth_rule` VALUES (100, '系统配置', '', 0, 1, '#xe631;', 0, NULL, 1);
INSERT INTO `le_must_auth_rule` VALUES (101, '系统管理', '', 0, 1, '#xe620;', 0, NULL, 1);
INSERT INTO `le_must_auth_rule` VALUES (102, '用户管理', '', 0, 1, '#xe612;', 0, NULL, 1);
INSERT INTO `le_must_auth_rule` VALUES (103, '日志管理', '', 0, 1, '#xe60a;', 0, NULL, 1);
INSERT INTO `le_must_auth_rule` VALUES (104, '数据库管理', '', 0, 1, '#xe632;', 0, NULL, 1);
INSERT INTO `le_must_auth_rule` VALUES (105, '后台配置', 'admin/System/config', 100, 1, '#xe621;', 0, NULL, 1);
INSERT INTO `le_must_auth_rule` VALUES (1002, '防P图验号', '-', 0, 1, '#xe63b;', 0, NULL, 1);
INSERT INTO `le_must_auth_rule` VALUES (1003, '生成口令', 'admin/Verify/index', 1002, 1, '#xe63a;', 0, NULL, 1);
INSERT INTO `le_must_auth_rule` VALUES (1004, '口令管理', 'admin/Verify/kladmin', 1002, 1, '#xe63a;', 0, NULL, 1);
INSERT INTO `le_must_auth_rule` VALUES (1005, '扫描结果管理', 'admin/Verify/klresult', 1002, 1, '#xe622;', 0, NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for le_must_back_sql
-- ----------------------------
DROP TABLE IF EXISTS `le_must_back_sql`;
CREATE TABLE `le_must_back_sql` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `url` varchar(250) NOT NULL COMMENT '备份文件地址',
  `time` datetime NOT NULL COMMENT '备份时间',
  `status` smallint(6) NOT NULL COMMENT '状态 1正常 0删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='数据库备份表';

-- ----------------------------
-- Records of le_must_back_sql
-- ----------------------------
BEGIN;
INSERT INTO `le_must_back_sql` VALUES (18, 'static/admin/sql/back_2018-06-27_6929.sql', '2018-06-27 10:35:30', 1);
COMMIT;

-- ----------------------------
-- Table structure for le_must_config
-- ----------------------------
DROP TABLE IF EXISTS `le_must_config`;
CREATE TABLE `le_must_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config` text NOT NULL COMMENT '配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='配置';

-- ----------------------------
-- Records of le_must_config
-- ----------------------------
BEGIN;
INSERT INTO `le_must_config` VALUES (1, '{\"title\":\"LEUI-admin\",\"version\":\"v2.1\",\"copy\":\"Copyright \\u00a92018 [\\u4f7f\\u7528\\u8005\\u7f51\\u7ad9] Powered By [\\u7f51\\u7ad9\\u7a0b\\u5e8f\\u540d\\u79f0] Version 2.1.0\",\"icp\":\"\\u67d0ICP\\u5907xxxxxxxx\\u53f7\",\"code\":\"javascript:baidutongji();\"}');
COMMIT;

-- ----------------------------
-- Table structure for le_must_system_log
-- ----------------------------
DROP TABLE IF EXISTS `le_must_system_log`;
CREATE TABLE `le_must_system_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `us_id` int(11) DEFAULT NULL COMMENT '普通用户id/系统用户id',
  `operation_position` varchar(100) NOT NULL COMMENT '操作位置',
  `operation_ip` char(20) NOT NULL COMMENT '操作ip地址',
  `operation_ip_area` char(50) NOT NULL COMMENT 'ip地址',
  `is_mobile` varchar(6) NOT NULL COMMENT '是否是手机访问',
  `time` datetime NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3664 DEFAULT CHARSET=utf8 COMMENT='用户操作日志记录表';

-- ----------------------------
-- Records of le_must_system_log
-- ----------------------------
BEGIN;
INSERT INTO `le_must_system_log` VALUES (2128, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-15 14:33:12');
INSERT INTO `le_must_system_log` VALUES (2129, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-15 14:34:04');
INSERT INTO `le_must_system_log` VALUES (2130, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-15 14:42:21');
INSERT INTO `le_must_system_log` VALUES (2131, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-15 14:43:57');
INSERT INTO `le_must_system_log` VALUES (2132, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-15 14:44:18');
INSERT INTO `le_must_system_log` VALUES (2133, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-15 14:45:47');
INSERT INTO `le_must_system_log` VALUES (2134, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-15 14:46:18');
INSERT INTO `le_must_system_log` VALUES (2135, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-15 15:48:52');
INSERT INTO `le_must_system_log` VALUES (2136, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-15 15:49:00');
INSERT INTO `le_must_system_log` VALUES (2137, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-15 15:49:27');
INSERT INTO `le_must_system_log` VALUES (2138, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-15 15:49:43');
INSERT INTO `le_must_system_log` VALUES (2139, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-15 15:51:27');
INSERT INTO `le_must_system_log` VALUES (2140, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-15 15:52:47');
INSERT INTO `le_must_system_log` VALUES (2141, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:07:48');
INSERT INTO `le_must_system_log` VALUES (2142, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:08:44');
INSERT INTO `le_must_system_log` VALUES (2143, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:09:03');
INSERT INTO `le_must_system_log` VALUES (2144, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:09:39');
INSERT INTO `le_must_system_log` VALUES (2145, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:19:37');
INSERT INTO `le_must_system_log` VALUES (2146, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:19:51');
INSERT INTO `le_must_system_log` VALUES (2147, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:20:07');
INSERT INTO `le_must_system_log` VALUES (2148, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:20:13');
INSERT INTO `le_must_system_log` VALUES (2149, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:20:20');
INSERT INTO `le_must_system_log` VALUES (2150, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:20:27');
INSERT INTO `le_must_system_log` VALUES (2151, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:20:49');
INSERT INTO `le_must_system_log` VALUES (2152, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:20:54');
INSERT INTO `le_must_system_log` VALUES (2153, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:20:59');
INSERT INTO `le_must_system_log` VALUES (2154, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:21:01');
INSERT INTO `le_must_system_log` VALUES (2155, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:21:30');
INSERT INTO `le_must_system_log` VALUES (2156, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:21:41');
INSERT INTO `le_must_system_log` VALUES (2157, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:21:44');
INSERT INTO `le_must_system_log` VALUES (2158, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:23:18');
INSERT INTO `le_must_system_log` VALUES (2159, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:23:27');
INSERT INTO `le_must_system_log` VALUES (2160, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:23:30');
INSERT INTO `le_must_system_log` VALUES (2161, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:24:41');
INSERT INTO `le_must_system_log` VALUES (2162, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:24:52');
INSERT INTO `le_must_system_log` VALUES (2163, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:25:05');
INSERT INTO `le_must_system_log` VALUES (2164, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:28:21');
INSERT INTO `le_must_system_log` VALUES (2165, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:28:49');
INSERT INTO `le_must_system_log` VALUES (2166, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:28:54');
INSERT INTO `le_must_system_log` VALUES (2167, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:28:56');
INSERT INTO `le_must_system_log` VALUES (2168, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:29:03');
INSERT INTO `le_must_system_log` VALUES (2169, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:29:05');
INSERT INTO `le_must_system_log` VALUES (2170, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:29:15');
INSERT INTO `le_must_system_log` VALUES (2171, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:29:19');
INSERT INTO `le_must_system_log` VALUES (2172, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:29:26');
INSERT INTO `le_must_system_log` VALUES (2173, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:29:31');
INSERT INTO `le_must_system_log` VALUES (2174, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:30:09');
INSERT INTO `le_must_system_log` VALUES (2175, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:31:38');
INSERT INTO `le_must_system_log` VALUES (2176, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:31:41');
INSERT INTO `le_must_system_log` VALUES (2177, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:35:25');
INSERT INTO `le_must_system_log` VALUES (2178, 0, 'admin/Index/index', '::1', '--', '否', '2018-06-15 16:35:27');
INSERT INTO `le_must_system_log` VALUES (2179, 0, 'admin/System/index', '::1', '--', '否', '2018-06-15 16:35:28');
INSERT INTO `le_must_system_log` VALUES (2180, 0, 'admin/Login/out', '::1', '--', '否', '2018-06-15 16:36:03');
INSERT INTO `le_must_system_log` VALUES (2181, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:36:04');
INSERT INTO `le_must_system_log` VALUES (2182, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:36:43');
INSERT INTO `le_must_system_log` VALUES (2183, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:43:32');
INSERT INTO `le_must_system_log` VALUES (2184, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:43:41');
INSERT INTO `le_must_system_log` VALUES (2185, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:44:10');
INSERT INTO `le_must_system_log` VALUES (2186, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:44:17');
INSERT INTO `le_must_system_log` VALUES (2187, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:44:23');
INSERT INTO `le_must_system_log` VALUES (2188, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:44:30');
INSERT INTO `le_must_system_log` VALUES (2189, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:44:32');
INSERT INTO `le_must_system_log` VALUES (2190, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:45:01');
INSERT INTO `le_must_system_log` VALUES (2191, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:45:56');
INSERT INTO `le_must_system_log` VALUES (2192, 0, 'admin/Index/index', '::1', '--', '否', '2018-06-15 16:45:59');
INSERT INTO `le_must_system_log` VALUES (2193, 0, 'admin/System/index', '::1', '--', '否', '2018-06-15 16:45:59');
INSERT INTO `le_must_system_log` VALUES (2194, 0, 'admin/Index/index', '::1', '--', '否', '2018-06-15 16:48:39');
INSERT INTO `le_must_system_log` VALUES (2195, 0, 'admin/System/index', '::1', '--', '否', '2018-06-15 16:48:40');
INSERT INTO `le_must_system_log` VALUES (2196, 0, 'admin/Index/index', '::1', '--', '否', '2018-06-15 16:48:45');
INSERT INTO `le_must_system_log` VALUES (2197, 0, 'admin/System/index', '::1', '--', '否', '2018-06-15 16:48:46');
INSERT INTO `le_must_system_log` VALUES (2198, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:50:06');
INSERT INTO `le_must_system_log` VALUES (2199, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:52:01');
INSERT INTO `le_must_system_log` VALUES (2200, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:52:04');
INSERT INTO `le_must_system_log` VALUES (2201, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:52:08');
INSERT INTO `le_must_system_log` VALUES (2202, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:52:11');
INSERT INTO `le_must_system_log` VALUES (2203, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:52:14');
INSERT INTO `le_must_system_log` VALUES (2204, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:52:15');
INSERT INTO `le_must_system_log` VALUES (2205, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:55:47');
INSERT INTO `le_must_system_log` VALUES (2206, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:56:33');
INSERT INTO `le_must_system_log` VALUES (2207, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:57:08');
INSERT INTO `le_must_system_log` VALUES (2208, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:57:22');
INSERT INTO `le_must_system_log` VALUES (2209, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 16:59:36');
INSERT INTO `le_must_system_log` VALUES (2210, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:06:23');
INSERT INTO `le_must_system_log` VALUES (2211, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:07:34');
INSERT INTO `le_must_system_log` VALUES (2212, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:07:47');
INSERT INTO `le_must_system_log` VALUES (2213, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:09:13');
INSERT INTO `le_must_system_log` VALUES (2214, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:09:19');
INSERT INTO `le_must_system_log` VALUES (2215, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:09:45');
INSERT INTO `le_must_system_log` VALUES (2216, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:10:18');
INSERT INTO `le_must_system_log` VALUES (2217, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:11:49');
INSERT INTO `le_must_system_log` VALUES (2218, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:11:58');
INSERT INTO `le_must_system_log` VALUES (2219, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:13:11');
INSERT INTO `le_must_system_log` VALUES (2220, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:13:13');
INSERT INTO `le_must_system_log` VALUES (2221, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:13:15');
INSERT INTO `le_must_system_log` VALUES (2222, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:21:39');
INSERT INTO `le_must_system_log` VALUES (2223, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:21:42');
INSERT INTO `le_must_system_log` VALUES (2224, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:24:46');
INSERT INTO `le_must_system_log` VALUES (2225, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:25:14');
INSERT INTO `le_must_system_log` VALUES (2226, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:25:17');
INSERT INTO `le_must_system_log` VALUES (2227, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:27:34');
INSERT INTO `le_must_system_log` VALUES (2228, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:28:44');
INSERT INTO `le_must_system_log` VALUES (2229, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:41:08');
INSERT INTO `le_must_system_log` VALUES (2230, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:41:20');
INSERT INTO `le_must_system_log` VALUES (2231, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:41:22');
INSERT INTO `le_must_system_log` VALUES (2232, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:41:24');
INSERT INTO `le_must_system_log` VALUES (2233, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:41:26');
INSERT INTO `le_must_system_log` VALUES (2234, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:41:43');
INSERT INTO `le_must_system_log` VALUES (2235, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:42:27');
INSERT INTO `le_must_system_log` VALUES (2236, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:42:31');
INSERT INTO `le_must_system_log` VALUES (2237, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 17:46:22');
INSERT INTO `le_must_system_log` VALUES (2238, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-15 18:15:50');
INSERT INTO `le_must_system_log` VALUES (2239, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 18:16:13');
INSERT INTO `le_must_system_log` VALUES (2240, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 18:16:21');
INSERT INTO `le_must_system_log` VALUES (2241, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 18:17:01');
INSERT INTO `le_must_system_log` VALUES (2242, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 18:18:43');
INSERT INTO `le_must_system_log` VALUES (2243, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 18:21:45');
INSERT INTO `le_must_system_log` VALUES (2244, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 18:23:50');
INSERT INTO `le_must_system_log` VALUES (2245, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 18:23:52');
INSERT INTO `le_must_system_log` VALUES (2246, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 18:24:16');
INSERT INTO `le_must_system_log` VALUES (2247, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 18:25:39');
INSERT INTO `le_must_system_log` VALUES (2248, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 18:26:51');
INSERT INTO `le_must_system_log` VALUES (2249, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 18:27:07');
INSERT INTO `le_must_system_log` VALUES (2250, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 18:27:27');
INSERT INTO `le_must_system_log` VALUES (2251, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 18:28:20');
INSERT INTO `le_must_system_log` VALUES (2252, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 18:28:58');
INSERT INTO `le_must_system_log` VALUES (2253, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 18:29:10');
INSERT INTO `le_must_system_log` VALUES (2254, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 18:29:42');
INSERT INTO `le_must_system_log` VALUES (2255, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 18:29:55');
INSERT INTO `le_must_system_log` VALUES (2256, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 18:30:17');
INSERT INTO `le_must_system_log` VALUES (2257, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 18:31:04');
INSERT INTO `le_must_system_log` VALUES (2258, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 18:32:11');
INSERT INTO `le_must_system_log` VALUES (2259, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 18:32:20');
INSERT INTO `le_must_system_log` VALUES (2260, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 18:32:22');
INSERT INTO `le_must_system_log` VALUES (2261, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 18:32:26');
INSERT INTO `le_must_system_log` VALUES (2262, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 18:32:57');
INSERT INTO `le_must_system_log` VALUES (2263, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-15 18:33:18');
INSERT INTO `le_must_system_log` VALUES (2264, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-15 18:33:20');
INSERT INTO `le_must_system_log` VALUES (2265, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-15 18:33:57');
INSERT INTO `le_must_system_log` VALUES (2266, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-17 11:06:46');
INSERT INTO `le_must_system_log` VALUES (2267, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-17 11:07:01');
INSERT INTO `le_must_system_log` VALUES (2268, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-17 11:07:04');
INSERT INTO `le_must_system_log` VALUES (2269, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-17 11:19:09');
INSERT INTO `le_must_system_log` VALUES (2270, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-17 11:19:14');
INSERT INTO `le_must_system_log` VALUES (2271, 0, 'admin/Login/index', '::1', '--', '否', '2018-06-17 11:19:17');
INSERT INTO `le_must_system_log` VALUES (2272, 0, 'admin/Index/index', '::1', '--', '否', '2018-06-17 11:21:21');
INSERT INTO `le_must_system_log` VALUES (2273, 0, 'admin/Index/index', '::1', '--', '否', '2018-06-17 11:21:22');
INSERT INTO `le_must_system_log` VALUES (2274, 0, 'admin/System/index', '::1', '--', '否', '2018-06-17 11:21:22');
INSERT INTO `le_must_system_log` VALUES (2275, 0, 'admin/Login/out', '::1', '--', '否', '2018-06-17 11:21:33');
INSERT INTO `le_must_system_log` VALUES (2276, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-17 11:21:33');
INSERT INTO `le_must_system_log` VALUES (2277, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-17 11:22:40');
INSERT INTO `le_must_system_log` VALUES (2278, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 11:22:42');
INSERT INTO `le_must_system_log` VALUES (2279, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 11:23:23');
INSERT INTO `le_must_system_log` VALUES (2280, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 11:26:08');
INSERT INTO `le_must_system_log` VALUES (2281, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 11:26:17');
INSERT INTO `le_must_system_log` VALUES (2282, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 11:26:53');
INSERT INTO `le_must_system_log` VALUES (2283, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 11:27:15');
INSERT INTO `le_must_system_log` VALUES (2284, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 11:35:42');
INSERT INTO `le_must_system_log` VALUES (2285, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 11:42:15');
INSERT INTO `le_must_system_log` VALUES (2286, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 11:42:17');
INSERT INTO `le_must_system_log` VALUES (2287, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 11:42:41');
INSERT INTO `le_must_system_log` VALUES (2288, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 11:43:04');
INSERT INTO `le_must_system_log` VALUES (2289, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-17 11:43:52');
INSERT INTO `le_must_system_log` VALUES (2290, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-17 11:44:02');
INSERT INTO `le_must_system_log` VALUES (2291, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 11:44:20');
INSERT INTO `le_must_system_log` VALUES (2292, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 11:47:52');
INSERT INTO `le_must_system_log` VALUES (2293, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 11:47:54');
INSERT INTO `le_must_system_log` VALUES (2294, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 11:48:09');
INSERT INTO `le_must_system_log` VALUES (2295, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 11:49:07');
INSERT INTO `le_must_system_log` VALUES (2296, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 11:49:49');
INSERT INTO `le_must_system_log` VALUES (2297, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 11:50:01');
INSERT INTO `le_must_system_log` VALUES (2298, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 11:51:24');
INSERT INTO `le_must_system_log` VALUES (2299, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 13:13:04');
INSERT INTO `le_must_system_log` VALUES (2300, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 13:13:14');
INSERT INTO `le_must_system_log` VALUES (2301, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 13:13:34');
INSERT INTO `le_must_system_log` VALUES (2302, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 13:13:50');
INSERT INTO `le_must_system_log` VALUES (2303, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 13:14:08');
INSERT INTO `le_must_system_log` VALUES (2304, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 13:14:49');
INSERT INTO `le_must_system_log` VALUES (2305, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 13:15:26');
INSERT INTO `le_must_system_log` VALUES (2306, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 13:15:48');
INSERT INTO `le_must_system_log` VALUES (2307, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 13:16:10');
INSERT INTO `le_must_system_log` VALUES (2308, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 13:16:49');
INSERT INTO `le_must_system_log` VALUES (2309, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 13:17:10');
INSERT INTO `le_must_system_log` VALUES (2310, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 13:17:33');
INSERT INTO `le_must_system_log` VALUES (2311, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 13:18:09');
INSERT INTO `le_must_system_log` VALUES (2312, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 13:18:20');
INSERT INTO `le_must_system_log` VALUES (2313, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 13:19:55');
INSERT INTO `le_must_system_log` VALUES (2314, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 13:38:58');
INSERT INTO `le_must_system_log` VALUES (2315, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-17 13:44:18');
INSERT INTO `le_must_system_log` VALUES (2316, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-17 13:44:27');
INSERT INTO `le_must_system_log` VALUES (2317, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-17 13:44:30');
INSERT INTO `le_must_system_log` VALUES (2318, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-17 13:44:34');
INSERT INTO `le_must_system_log` VALUES (2319, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-17 13:44:55');
INSERT INTO `le_must_system_log` VALUES (2320, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-17 13:45:03');
INSERT INTO `le_must_system_log` VALUES (2321, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-17 13:45:32');
INSERT INTO `le_must_system_log` VALUES (2322, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 13:45:34');
INSERT INTO `le_must_system_log` VALUES (2323, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 14:11:51');
INSERT INTO `le_must_system_log` VALUES (2324, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 14:16:17');
INSERT INTO `le_must_system_log` VALUES (2325, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 14:19:05');
INSERT INTO `le_must_system_log` VALUES (2326, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 14:19:25');
INSERT INTO `le_must_system_log` VALUES (2327, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 14:20:50');
INSERT INTO `le_must_system_log` VALUES (2328, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 14:26:33');
INSERT INTO `le_must_system_log` VALUES (2329, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 14:27:15');
INSERT INTO `le_must_system_log` VALUES (2330, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 14:37:40');
INSERT INTO `le_must_system_log` VALUES (2331, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 14:37:48');
INSERT INTO `le_must_system_log` VALUES (2332, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 14:41:31');
INSERT INTO `le_must_system_log` VALUES (2333, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 14:41:40');
INSERT INTO `le_must_system_log` VALUES (2334, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 14:45:21');
INSERT INTO `le_must_system_log` VALUES (2335, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 15:10:50');
INSERT INTO `le_must_system_log` VALUES (2336, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 15:11:02');
INSERT INTO `le_must_system_log` VALUES (2337, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 15:11:41');
INSERT INTO `le_must_system_log` VALUES (2338, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 15:21:59');
INSERT INTO `le_must_system_log` VALUES (2339, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 15:22:10');
INSERT INTO `le_must_system_log` VALUES (2340, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 15:22:31');
INSERT INTO `le_must_system_log` VALUES (2341, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 15:22:41');
INSERT INTO `le_must_system_log` VALUES (2342, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 15:25:34');
INSERT INTO `le_must_system_log` VALUES (2343, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 15:53:14');
INSERT INTO `le_must_system_log` VALUES (2344, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-17 15:53:46');
INSERT INTO `le_must_system_log` VALUES (2345, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-19 09:56:32');
INSERT INTO `le_must_system_log` VALUES (2346, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-19 09:57:13');
INSERT INTO `le_must_system_log` VALUES (2347, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-19 09:57:15');
INSERT INTO `le_must_system_log` VALUES (2348, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-19 10:31:44');
INSERT INTO `le_must_system_log` VALUES (2349, 1, 'admin/System/index', '::1', '--', '否', '2018-06-19 10:31:45');
INSERT INTO `le_must_system_log` VALUES (2350, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-22 14:55:04');
INSERT INTO `le_must_system_log` VALUES (2351, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-22 14:55:05');
INSERT INTO `le_must_system_log` VALUES (2352, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-22 14:55:20');
INSERT INTO `le_must_system_log` VALUES (2353, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-22 14:55:26');
INSERT INTO `le_must_system_log` VALUES (2354, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-22 14:59:00');
INSERT INTO `le_must_system_log` VALUES (2355, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-22 14:59:13');
INSERT INTO `le_must_system_log` VALUES (2356, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-22 14:59:18');
INSERT INTO `le_must_system_log` VALUES (2357, 1, 'admin/Login/out', '::1', '--', '否', '2018-06-22 15:00:16');
INSERT INTO `le_must_system_log` VALUES (2358, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-22 15:00:17');
INSERT INTO `le_must_system_log` VALUES (2359, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-22 15:00:25');
INSERT INTO `le_must_system_log` VALUES (2360, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-22 15:00:30');
INSERT INTO `le_must_system_log` VALUES (2361, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-22 15:00:37');
INSERT INTO `le_must_system_log` VALUES (2362, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-22 15:00:50');
INSERT INTO `le_must_system_log` VALUES (2363, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-22 15:01:05');
INSERT INTO `le_must_system_log` VALUES (2364, 1, 'admin/Login/out', '::1', '--', '否', '2018-06-22 15:02:06');
INSERT INTO `le_must_system_log` VALUES (2365, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-22 15:02:06');
INSERT INTO `le_must_system_log` VALUES (2366, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-22 15:02:17');
INSERT INTO `le_must_system_log` VALUES (2367, 4, 'admin/Login/out', '::1', '--', '否', '2018-06-22 15:05:19');
INSERT INTO `le_must_system_log` VALUES (2368, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-22 15:05:20');
INSERT INTO `le_must_system_log` VALUES (2369, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-22 15:05:29');
INSERT INTO `le_must_system_log` VALUES (2370, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-22 15:09:23');
INSERT INTO `le_must_system_log` VALUES (2371, 1, 'admin/System/index', '::1', '--', '否', '2018-06-22 15:09:24');
INSERT INTO `le_must_system_log` VALUES (2372, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-22 15:09:27');
INSERT INTO `le_must_system_log` VALUES (2373, 1, 'admin/System/auth', '::1', '--', '否', '2018-06-22 15:09:27');
INSERT INTO `le_must_system_log` VALUES (2374, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-22 15:09:47');
INSERT INTO `le_must_system_log` VALUES (2375, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-22 15:12:12');
INSERT INTO `le_must_system_log` VALUES (2376, 1, 'admin/System/index', '::1', '--', '否', '2018-06-22 15:12:12');
INSERT INTO `le_must_system_log` VALUES (2377, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-22 15:12:19');
INSERT INTO `le_must_system_log` VALUES (2378, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-22 15:12:19');
INSERT INTO `le_must_system_log` VALUES (2379, 1, 'admin/System/auth', '::1', '--', '否', '2018-06-22 15:12:24');
INSERT INTO `le_must_system_log` VALUES (2380, 1, 'admin/System/auth_edit', '::1', '--', '否', '2018-06-22 15:12:26');
INSERT INTO `le_must_system_log` VALUES (2381, 1, 'admin/System/authallocation', '::1', '--', '否', '2018-06-22 15:12:32');
INSERT INTO `le_must_system_log` VALUES (2382, 1, 'admin/System/authallocation', '::1', '--', '否', '2018-06-22 15:12:52');
INSERT INTO `le_must_system_log` VALUES (2383, 1, 'admin/System/authallocation', '::1', '--', '否', '2018-06-22 15:13:11');
INSERT INTO `le_must_system_log` VALUES (2384, 1, 'admin/System/authallocation', '::1', '--', '否', '2018-06-22 15:15:10');
INSERT INTO `le_must_system_log` VALUES (2385, 1, 'admin/System/treejson', '::1', '--', '否', '2018-06-22 15:15:10');
INSERT INTO `le_must_system_log` VALUES (2386, 1, 'admin/System/authallocation', '::1', '--', '否', '2018-06-22 15:15:10');
INSERT INTO `le_must_system_log` VALUES (2387, 1, 'admin/System/authallocation', '::1', '--', '否', '2018-06-22 15:15:14');
INSERT INTO `le_must_system_log` VALUES (2388, 1, 'admin/Login/out', '::1', '--', '否', '2018-06-22 15:15:22');
INSERT INTO `le_must_system_log` VALUES (2389, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-22 15:15:22');
INSERT INTO `le_must_system_log` VALUES (2390, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-22 15:15:31');
INSERT INTO `le_must_system_log` VALUES (2391, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 15:15:33');
INSERT INTO `le_must_system_log` VALUES (2392, 4, 'admin/System/index', '::1', '--', '否', '2018-06-22 15:15:34');
INSERT INTO `le_must_system_log` VALUES (2393, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 15:36:24');
INSERT INTO `le_must_system_log` VALUES (2394, 4, 'admin/System/index', '::1', '--', '否', '2018-06-22 15:36:24');
INSERT INTO `le_must_system_log` VALUES (2395, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 15:49:34');
INSERT INTO `le_must_system_log` VALUES (2396, 4, 'admin/System/index', '::1', '--', '否', '2018-06-22 15:49:34');
INSERT INTO `le_must_system_log` VALUES (2397, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 15:49:36');
INSERT INTO `le_must_system_log` VALUES (2398, 4, 'admin/System/index', '::1', '--', '否', '2018-06-22 15:49:36');
INSERT INTO `le_must_system_log` VALUES (2399, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 16:02:55');
INSERT INTO `le_must_system_log` VALUES (2400, 4, 'admin/System/index', '::1', '--', '否', '2018-06-22 16:02:56');
INSERT INTO `le_must_system_log` VALUES (2401, 4, 'admin/Login/out', '::1', '--', '否', '2018-06-22 16:02:58');
INSERT INTO `le_must_system_log` VALUES (2402, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-22 16:02:58');
INSERT INTO `le_must_system_log` VALUES (2403, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-22 16:03:11');
INSERT INTO `le_must_system_log` VALUES (2404, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 16:03:13');
INSERT INTO `le_must_system_log` VALUES (2405, 4, 'admin/System/index', '::1', '--', '否', '2018-06-22 16:03:14');
INSERT INTO `le_must_system_log` VALUES (2406, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 16:10:12');
INSERT INTO `le_must_system_log` VALUES (2407, 4, 'admin/System/index', '::1', '--', '否', '2018-06-22 16:10:12');
INSERT INTO `le_must_system_log` VALUES (2408, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 16:10:23');
INSERT INTO `le_must_system_log` VALUES (2409, 4, 'admin/System/index', '::1', '--', '否', '2018-06-22 16:10:23');
INSERT INTO `le_must_system_log` VALUES (2410, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 16:16:07');
INSERT INTO `le_must_system_log` VALUES (2411, 4, 'admin/System/index', '::1', '--', '否', '2018-06-22 16:16:07');
INSERT INTO `le_must_system_log` VALUES (2412, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 16:25:57');
INSERT INTO `le_must_system_log` VALUES (2413, 4, 'admin/System/index', '::1', '--', '否', '2018-06-22 16:25:57');
INSERT INTO `le_must_system_log` VALUES (2414, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 16:28:12');
INSERT INTO `le_must_system_log` VALUES (2415, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 16:30:08');
INSERT INTO `le_must_system_log` VALUES (2416, 4, 'admin/System/index', '::1', '--', '否', '2018-06-22 16:30:09');
INSERT INTO `le_must_system_log` VALUES (2417, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 16:34:14');
INSERT INTO `le_must_system_log` VALUES (2418, 4, 'admin/System/index', '::1', '--', '否', '2018-06-22 16:34:15');
INSERT INTO `le_must_system_log` VALUES (2419, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 16:42:21');
INSERT INTO `le_must_system_log` VALUES (2420, 4, 'admin/System/index', '::1', '--', '否', '2018-06-22 16:42:21');
INSERT INTO `le_must_system_log` VALUES (2421, 4, 'admin/Login/out', '::1', '--', '否', '2018-06-22 16:42:22');
INSERT INTO `le_must_system_log` VALUES (2422, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-22 16:42:23');
INSERT INTO `le_must_system_log` VALUES (2423, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-22 16:42:35');
INSERT INTO `le_must_system_log` VALUES (2424, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-22 16:42:37');
INSERT INTO `le_must_system_log` VALUES (2425, 1, 'admin/System/index', '::1', '--', '否', '2018-06-22 16:42:37');
INSERT INTO `le_must_system_log` VALUES (2426, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-22 16:42:41');
INSERT INTO `le_must_system_log` VALUES (2427, 1, 'admin/System/auth', '::1', '--', '否', '2018-06-22 16:42:43');
INSERT INTO `le_must_system_log` VALUES (2428, 1, 'admin/System/auth_edit', '::1', '--', '否', '2018-06-22 16:42:46');
INSERT INTO `le_must_system_log` VALUES (2429, 1, 'admin/System/authallocation', '::1', '--', '否', '2018-06-22 16:42:52');
INSERT INTO `le_must_system_log` VALUES (2430, 1, 'admin/System/treejson', '::1', '--', '否', '2018-06-22 16:42:52');
INSERT INTO `le_must_system_log` VALUES (2431, 1, 'admin/System/authallocation', '::1', '--', '否', '2018-06-22 16:42:52');
INSERT INTO `le_must_system_log` VALUES (2432, 1, 'admin/System/authallocation', '::1', '--', '否', '2018-06-22 16:42:56');
INSERT INTO `le_must_system_log` VALUES (2433, 1, 'admin/System/authallocation', '::1', '--', '否', '2018-06-22 16:43:01');
INSERT INTO `le_must_system_log` VALUES (2434, 1, 'admin/System/status', '::1', '--', '否', '2018-06-22 16:43:05');
INSERT INTO `le_must_system_log` VALUES (2435, 1, 'admin/System/status', '::1', '--', '否', '2018-06-22 16:43:06');
INSERT INTO `le_must_system_log` VALUES (2436, 1, 'admin/System/status', '::1', '--', '否', '2018-06-22 16:43:21');
INSERT INTO `le_must_system_log` VALUES (2437, 1, 'admin/System/auth_edit', '::1', '--', '否', '2018-06-22 16:43:33');
INSERT INTO `le_must_system_log` VALUES (2438, 1, 'admin/System/authstatus', '::1', '--', '否', '2018-06-22 16:43:36');
INSERT INTO `le_must_system_log` VALUES (2439, 1, 'admin/System/authstatus', '::1', '--', '否', '2018-06-22 16:43:39');
INSERT INTO `le_must_system_log` VALUES (2440, 1, 'admin/Login/out', '::1', '--', '否', '2018-06-22 16:43:43');
INSERT INTO `le_must_system_log` VALUES (2441, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-22 16:43:43');
INSERT INTO `le_must_system_log` VALUES (2442, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-22 16:43:52');
INSERT INTO `le_must_system_log` VALUES (2443, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-22 16:43:56');
INSERT INTO `le_must_system_log` VALUES (2444, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 16:43:58');
INSERT INTO `le_must_system_log` VALUES (2445, 4, 'admin/System/index', '::1', '--', '否', '2018-06-22 16:43:58');
INSERT INTO `le_must_system_log` VALUES (2446, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 17:41:00');
INSERT INTO `le_must_system_log` VALUES (2447, 4, 'admin/System/index', '::1', '--', '否', '2018-06-22 17:41:01');
INSERT INTO `le_must_system_log` VALUES (2448, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 17:41:38');
INSERT INTO `le_must_system_log` VALUES (2449, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 17:42:15');
INSERT INTO `le_must_system_log` VALUES (2450, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 17:42:20');
INSERT INTO `le_must_system_log` VALUES (2451, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 17:42:42');
INSERT INTO `le_must_system_log` VALUES (2452, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 17:53:59');
INSERT INTO `le_must_system_log` VALUES (2453, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 17:55:39');
INSERT INTO `le_must_system_log` VALUES (2454, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 17:55:41');
INSERT INTO `le_must_system_log` VALUES (2455, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 17:55:55');
INSERT INTO `le_must_system_log` VALUES (2456, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 17:56:13');
INSERT INTO `le_must_system_log` VALUES (2457, 4, 'admin/System/index', '::1', '--', '否', '2018-06-22 17:56:13');
INSERT INTO `le_must_system_log` VALUES (2458, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 18:03:15');
INSERT INTO `le_must_system_log` VALUES (2459, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 18:11:25');
INSERT INTO `le_must_system_log` VALUES (2460, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 18:12:08');
INSERT INTO `le_must_system_log` VALUES (2461, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 18:12:39');
INSERT INTO `le_must_system_log` VALUES (2462, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 18:12:57');
INSERT INTO `le_must_system_log` VALUES (2463, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 18:12:59');
INSERT INTO `le_must_system_log` VALUES (2464, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 18:13:14');
INSERT INTO `le_must_system_log` VALUES (2465, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 18:16:03');
INSERT INTO `le_must_system_log` VALUES (2466, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 18:16:05');
INSERT INTO `le_must_system_log` VALUES (2467, 4, 'admin/Login/index', '::1', '--', '否', '2018-06-22 18:16:06');
INSERT INTO `le_must_system_log` VALUES (2468, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-22 18:16:07');
INSERT INTO `le_must_system_log` VALUES (2469, 4, 'admin/Login/index', '::1', '--', '否', '2018-06-22 18:16:09');
INSERT INTO `le_must_system_log` VALUES (2470, 4, 'admin/Login/index', '::1', '--', '否', '2018-06-22 18:16:32');
INSERT INTO `le_must_system_log` VALUES (2471, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-22 18:16:35');
INSERT INTO `le_must_system_log` VALUES (2472, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-22 18:18:03');
INSERT INTO `le_must_system_log` VALUES (2473, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-22 18:18:23');
INSERT INTO `le_must_system_log` VALUES (2474, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-22 18:19:40');
INSERT INTO `le_must_system_log` VALUES (2475, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-22 18:20:50');
INSERT INTO `le_must_system_log` VALUES (2476, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-22 18:21:04');
INSERT INTO `le_must_system_log` VALUES (2477, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-22 18:22:53');
INSERT INTO `le_must_system_log` VALUES (2478, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-22 18:25:31');
INSERT INTO `le_must_system_log` VALUES (2479, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-22 18:26:20');
INSERT INTO `le_must_system_log` VALUES (2480, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-22 18:30:16');
INSERT INTO `le_must_system_log` VALUES (2481, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-22 18:30:18');
INSERT INTO `le_must_system_log` VALUES (2482, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-22 18:30:28');
INSERT INTO `le_must_system_log` VALUES (2483, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-22 18:30:31');
INSERT INTO `le_must_system_log` VALUES (2484, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-22 18:34:02');
INSERT INTO `le_must_system_log` VALUES (2485, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-22 18:43:09');
INSERT INTO `le_must_system_log` VALUES (2486, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-22 18:44:20');
INSERT INTO `le_must_system_log` VALUES (2487, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-22 18:45:05');
INSERT INTO `le_must_system_log` VALUES (2488, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-22 18:45:59');
INSERT INTO `le_must_system_log` VALUES (2489, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-22 18:46:25');
INSERT INTO `le_must_system_log` VALUES (2490, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-23 09:02:00');
INSERT INTO `le_must_system_log` VALUES (2491, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-23 09:02:09');
INSERT INTO `le_must_system_log` VALUES (2492, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-23 09:02:11');
INSERT INTO `le_must_system_log` VALUES (2493, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-23 09:03:18');
INSERT INTO `le_must_system_log` VALUES (2494, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-23 09:07:42');
INSERT INTO `le_must_system_log` VALUES (2495, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-23 09:07:54');
INSERT INTO `le_must_system_log` VALUES (2496, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-23 09:09:02');
INSERT INTO `le_must_system_log` VALUES (2497, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-23 09:10:05');
INSERT INTO `le_must_system_log` VALUES (2498, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-23 09:10:16');
INSERT INTO `le_must_system_log` VALUES (2499, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-23 09:10:28');
INSERT INTO `le_must_system_log` VALUES (2500, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-23 09:11:22');
INSERT INTO `le_must_system_log` VALUES (2501, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-23 09:11:56');
INSERT INTO `le_must_system_log` VALUES (2502, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-23 09:34:31');
INSERT INTO `le_must_system_log` VALUES (2503, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-23 09:34:39');
INSERT INTO `le_must_system_log` VALUES (2504, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-23 09:40:20');
INSERT INTO `le_must_system_log` VALUES (2505, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-23 09:40:39');
INSERT INTO `le_must_system_log` VALUES (2506, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-23 09:40:54');
INSERT INTO `le_must_system_log` VALUES (2507, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-23 09:42:08');
INSERT INTO `le_must_system_log` VALUES (2508, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-23 09:46:48');
INSERT INTO `le_must_system_log` VALUES (2509, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-23 09:47:49');
INSERT INTO `le_must_system_log` VALUES (2510, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-23 09:47:52');
INSERT INTO `le_must_system_log` VALUES (2511, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-23 09:47:59');
INSERT INTO `le_must_system_log` VALUES (2512, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-23 09:48:08');
INSERT INTO `le_must_system_log` VALUES (2513, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-23 09:48:16');
INSERT INTO `le_must_system_log` VALUES (2514, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-23 09:48:23');
INSERT INTO `le_must_system_log` VALUES (2515, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 09:48:25');
INSERT INTO `le_must_system_log` VALUES (2516, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 09:49:16');
INSERT INTO `le_must_system_log` VALUES (2517, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 09:49:39');
INSERT INTO `le_must_system_log` VALUES (2518, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 09:50:00');
INSERT INTO `le_must_system_log` VALUES (2519, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 09:50:24');
INSERT INTO `le_must_system_log` VALUES (2520, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 09:50:36');
INSERT INTO `le_must_system_log` VALUES (2521, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 09:51:00');
INSERT INTO `le_must_system_log` VALUES (2522, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 10:15:13');
INSERT INTO `le_must_system_log` VALUES (2523, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 10:19:55');
INSERT INTO `le_must_system_log` VALUES (2524, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 10:20:04');
INSERT INTO `le_must_system_log` VALUES (2525, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 10:37:22');
INSERT INTO `le_must_system_log` VALUES (2526, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 10:37:41');
INSERT INTO `le_must_system_log` VALUES (2527, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 10:45:12');
INSERT INTO `le_must_system_log` VALUES (2528, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 10:45:42');
INSERT INTO `le_must_system_log` VALUES (2529, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 10:45:54');
INSERT INTO `le_must_system_log` VALUES (2530, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 10:46:15');
INSERT INTO `le_must_system_log` VALUES (2531, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 10:47:01');
INSERT INTO `le_must_system_log` VALUES (2532, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 10:47:41');
INSERT INTO `le_must_system_log` VALUES (2533, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 10:47:56');
INSERT INTO `le_must_system_log` VALUES (2534, 4, 'admin/System/index', '::1', '--', '否', '2018-06-23 10:47:56');
INSERT INTO `le_must_system_log` VALUES (2535, 4, 'admin/System/config', '::1', '--', '否', '2018-06-23 10:47:59');
INSERT INTO `le_must_system_log` VALUES (2536, 4, 'admin/SystemUser/edit_password', '::1', '--', '否', '2018-06-23 10:48:00');
INSERT INTO `le_must_system_log` VALUES (2537, 4, 'admin/Log/index', '::1', '--', '否', '2018-06-23 10:48:02');
INSERT INTO `le_must_system_log` VALUES (2538, 4, 'admin/Log/index', '::1', '--', '否', '2018-06-23 10:48:03');
INSERT INTO `le_must_system_log` VALUES (2539, 4, 'admin/System/config', '::1', '--', '否', '2018-06-23 10:48:10');
INSERT INTO `le_must_system_log` VALUES (2540, 4, 'admin/SystemUser/edit_password', '::1', '--', '否', '2018-06-23 10:48:14');
INSERT INTO `le_must_system_log` VALUES (2541, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 10:48:26');
INSERT INTO `le_must_system_log` VALUES (2542, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 10:48:28');
INSERT INTO `le_must_system_log` VALUES (2543, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 10:48:35');
INSERT INTO `le_must_system_log` VALUES (2544, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 10:48:40');
INSERT INTO `le_must_system_log` VALUES (2545, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 10:48:44');
INSERT INTO `le_must_system_log` VALUES (2546, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 10:48:50');
INSERT INTO `le_must_system_log` VALUES (2547, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 10:48:52');
INSERT INTO `le_must_system_log` VALUES (2548, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-23 11:06:59');
INSERT INTO `le_must_system_log` VALUES (2549, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-23 11:07:17');
INSERT INTO `le_must_system_log` VALUES (2550, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 11:07:20');
INSERT INTO `le_must_system_log` VALUES (2551, 4, 'admin/Login/index', '::1', '--', '否', '2018-06-23 11:07:46');
INSERT INTO `le_must_system_log` VALUES (2552, 4, 'admin/Login/index', '::1', '--', '否', '2018-06-23 11:07:52');
INSERT INTO `le_must_system_log` VALUES (2553, 4, 'admin/Login/index', '::1', '--', '否', '2018-06-23 11:07:58');
INSERT INTO `le_must_system_log` VALUES (2554, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 11:08:00');
INSERT INTO `le_must_system_log` VALUES (2555, 4, 'admin/Login/index', '::1', '--', '否', '2018-06-23 11:08:14');
INSERT INTO `le_must_system_log` VALUES (2556, 4, 'admin/Login/index', '::1', '--', '否', '2018-06-23 11:08:23');
INSERT INTO `le_must_system_log` VALUES (2557, 4, 'admin/Login/index', '::1', '--', '否', '2018-06-23 11:08:28');
INSERT INTO `le_must_system_log` VALUES (2558, 4, 'admin/Login/index', '::1', '--', '否', '2018-06-23 11:08:33');
INSERT INTO `le_must_system_log` VALUES (2559, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 11:08:35');
INSERT INTO `le_must_system_log` VALUES (2560, 4, 'admin/Login/index', '::1', '--', '否', '2018-06-23 11:09:15');
INSERT INTO `le_must_system_log` VALUES (2561, 4, 'admin/Login/index', '::1', '--', '否', '2018-06-23 11:09:24');
INSERT INTO `le_must_system_log` VALUES (2562, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 11:09:26');
INSERT INTO `le_must_system_log` VALUES (2563, 4, 'admin/Login/index', '::1', '--', '否', '2018-06-23 11:10:19');
INSERT INTO `le_must_system_log` VALUES (2564, 4, 'admin/Login/index', '::1', '--', '否', '2018-06-23 11:10:35');
INSERT INTO `le_must_system_log` VALUES (2565, 4, 'admin/Login/index', '::1', '--', '否', '2018-06-23 11:10:41');
INSERT INTO `le_must_system_log` VALUES (2566, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 11:10:43');
INSERT INTO `le_must_system_log` VALUES (2567, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 11:11:21');
INSERT INTO `le_must_system_log` VALUES (2568, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 11:11:21');
INSERT INTO `le_must_system_log` VALUES (2569, 4, 'admin/Login/index', '::1', '--', '否', '2018-06-23 11:11:39');
INSERT INTO `le_must_system_log` VALUES (2570, 4, 'admin/Login/index', '::1', '--', '否', '2018-06-23 11:11:48');
INSERT INTO `le_must_system_log` VALUES (2571, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-23 11:11:50');
INSERT INTO `le_must_system_log` VALUES (2572, 1, 'admin/System/index', '::1', '--', '否', '2018-06-23 11:11:50');
INSERT INTO `le_must_system_log` VALUES (2573, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-23 11:11:57');
INSERT INTO `le_must_system_log` VALUES (2574, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-23 11:11:57');
INSERT INTO `le_must_system_log` VALUES (2575, 1, 'admin/Login/out', '::1', '--', '否', '2018-06-23 11:12:03');
INSERT INTO `le_must_system_log` VALUES (2576, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-23 11:12:04');
INSERT INTO `le_must_system_log` VALUES (2577, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-23 11:12:11');
INSERT INTO `le_must_system_log` VALUES (2578, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 11:12:13');
INSERT INTO `le_must_system_log` VALUES (2579, 4, 'admin/System/index', '::1', '--', '否', '2018-06-23 11:12:13');
INSERT INTO `le_must_system_log` VALUES (2580, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 11:12:28');
INSERT INTO `le_must_system_log` VALUES (2581, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 11:12:29');
INSERT INTO `le_must_system_log` VALUES (2582, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 11:13:38');
INSERT INTO `le_must_system_log` VALUES (2583, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 11:13:49');
INSERT INTO `le_must_system_log` VALUES (2584, 4, 'admin/Login/index', '::1', '--', '否', '2018-06-23 11:21:35');
INSERT INTO `le_must_system_log` VALUES (2585, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 11:52:38');
INSERT INTO `le_must_system_log` VALUES (2586, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 11:52:39');
INSERT INTO `le_must_system_log` VALUES (2587, 4, 'admin/Login/index', '::1', '--', '否', '2018-06-23 11:52:46');
INSERT INTO `le_must_system_log` VALUES (2588, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-23 11:52:50');
INSERT INTO `le_must_system_log` VALUES (2589, 4, 'admin/Login/index', '::1', '--', '否', '2018-06-23 13:41:39');
INSERT INTO `le_must_system_log` VALUES (2590, 4, 'admin/Login/index', '::1', '--', '否', '2018-06-23 13:41:45');
INSERT INTO `le_must_system_log` VALUES (2591, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-23 13:41:47');
INSERT INTO `le_must_system_log` VALUES (2592, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-23 13:41:50');
INSERT INTO `le_must_system_log` VALUES (2593, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-23 13:42:44');
INSERT INTO `le_must_system_log` VALUES (2594, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-23 13:42:47');
INSERT INTO `le_must_system_log` VALUES (2595, 1, 'admin/System/index', '::1', '--', '否', '2018-06-23 13:42:47');
INSERT INTO `le_must_system_log` VALUES (2596, 1, 'admin/SystemUser/edit_password', '::1', '--', '否', '2018-06-23 13:42:55');
INSERT INTO `le_must_system_log` VALUES (2597, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-23 13:42:56');
INSERT INTO `le_must_system_log` VALUES (2598, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-23 13:42:56');
INSERT INTO `le_must_system_log` VALUES (2599, 1, 'admin/SystemUser/edit_password', '::1', '--', '否', '2018-06-23 13:46:22');
INSERT INTO `le_must_system_log` VALUES (2600, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-23 13:46:23');
INSERT INTO `le_must_system_log` VALUES (2601, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-23 13:46:23');
INSERT INTO `le_must_system_log` VALUES (2602, 1, 'admin/Log/index', '::1', '--', '否', '2018-06-23 13:46:25');
INSERT INTO `le_must_system_log` VALUES (2603, 1, 'admin/Log/index', '::1', '--', '否', '2018-06-23 13:46:25');
INSERT INTO `le_must_system_log` VALUES (2604, 1, 'admin/Bak/index', '::1', '--', '否', '2018-06-23 13:46:27');
INSERT INTO `le_must_system_log` VALUES (2605, 1, 'admin/Bak/index', '::1', '--', '否', '2018-06-23 13:46:27');
INSERT INTO `le_must_system_log` VALUES (2606, 1, 'admin/System/auth', '::1', '--', '否', '2018-06-23 13:46:29');
INSERT INTO `le_must_system_log` VALUES (2607, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-23 13:46:29');
INSERT INTO `le_must_system_log` VALUES (2608, 1, 'admin/System/config', '::1', '--', '否', '2018-06-23 13:46:31');
INSERT INTO `le_must_system_log` VALUES (2609, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-23 13:46:48');
INSERT INTO `le_must_system_log` VALUES (2610, 1, 'admin/System/auth', '::1', '--', '否', '2018-06-23 13:46:49');
INSERT INTO `le_must_system_log` VALUES (2611, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-23 13:46:51');
INSERT INTO `le_must_system_log` VALUES (2612, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-23 13:46:51');
INSERT INTO `le_must_system_log` VALUES (2613, 1, 'admin/SystemUser/edit_password', '::1', '--', '否', '2018-06-23 13:46:52');
INSERT INTO `le_must_system_log` VALUES (2614, 1, 'admin/Log/index', '::1', '--', '否', '2018-06-23 13:46:53');
INSERT INTO `le_must_system_log` VALUES (2615, 1, 'admin/Log/index', '::1', '--', '否', '2018-06-23 13:46:53');
INSERT INTO `le_must_system_log` VALUES (2616, 1, 'admin/Bak/index', '::1', '--', '否', '2018-06-23 13:46:53');
INSERT INTO `le_must_system_log` VALUES (2617, 1, 'admin/Bak/index', '::1', '--', '否', '2018-06-23 13:46:54');
INSERT INTO `le_must_system_log` VALUES (2618, 1, 'admin/System/config', '::1', '--', '否', '2018-06-23 13:48:11');
INSERT INTO `le_must_system_log` VALUES (2619, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-23 13:48:12');
INSERT INTO `le_must_system_log` VALUES (2620, 1, 'admin/System/auth', '::1', '--', '否', '2018-06-23 13:48:13');
INSERT INTO `le_must_system_log` VALUES (2621, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-23 13:48:18');
INSERT INTO `le_must_system_log` VALUES (2622, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-23 13:48:18');
INSERT INTO `le_must_system_log` VALUES (2623, 1, 'admin/SystemUser/edit_password', '::1', '--', '否', '2018-06-23 13:48:19');
INSERT INTO `le_must_system_log` VALUES (2624, 1, 'admin/SystemUser/edit_password', '::1', '--', '否', '2018-06-23 13:48:26');
INSERT INTO `le_must_system_log` VALUES (2625, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-23 13:48:27');
INSERT INTO `le_must_system_log` VALUES (2626, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-23 13:48:27');
INSERT INTO `le_must_system_log` VALUES (2627, 1, 'admin/Log/index', '::1', '--', '否', '2018-06-23 13:48:28');
INSERT INTO `le_must_system_log` VALUES (2628, 1, 'admin/Log/index', '::1', '--', '否', '2018-06-23 13:48:28');
INSERT INTO `le_must_system_log` VALUES (2629, 1, 'admin/Bak/index', '::1', '--', '否', '2018-06-23 13:48:29');
INSERT INTO `le_must_system_log` VALUES (2630, 1, 'admin/Bak/index', '::1', '--', '否', '2018-06-23 13:48:29');
INSERT INTO `le_must_system_log` VALUES (2631, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-23 13:48:30');
INSERT INTO `le_must_system_log` VALUES (2632, 1, 'admin/System/auth', '::1', '--', '否', '2018-06-23 13:48:31');
INSERT INTO `le_must_system_log` VALUES (2633, 1, 'admin/System/config', '::1', '--', '否', '2018-06-23 13:48:46');
INSERT INTO `le_must_system_log` VALUES (2634, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-23 14:06:06');
INSERT INTO `le_must_system_log` VALUES (2635, 1, 'admin/System/index', '::1', '--', '否', '2018-06-23 14:06:07');
INSERT INTO `le_must_system_log` VALUES (2636, 1, 'admin/System/auth', '::1', '--', '否', '2018-06-23 14:06:17');
INSERT INTO `le_must_system_log` VALUES (2637, 1, 'admin/System/authallocation', '::1', '--', '否', '2018-06-23 14:06:22');
INSERT INTO `le_must_system_log` VALUES (2638, 1, 'admin/System/treejson', '::1', '--', '否', '2018-06-23 14:06:22');
INSERT INTO `le_must_system_log` VALUES (2639, 1, 'admin/System/authallocation', '::1', '--', '否', '2018-06-23 14:06:22');
INSERT INTO `le_must_system_log` VALUES (2640, 1, 'admin/System/authallocation', '::1', '--', '否', '2018-06-23 14:06:30');
INSERT INTO `le_must_system_log` VALUES (2641, 1, 'admin/System/status', '::1', '--', '否', '2018-06-23 14:06:34');
INSERT INTO `le_must_system_log` VALUES (2642, 1, 'admin/System/status', '::1', '--', '否', '2018-06-23 14:06:35');
INSERT INTO `le_must_system_log` VALUES (2643, 1, 'admin/System/status', '::1', '--', '否', '2018-06-23 14:06:48');
INSERT INTO `le_must_system_log` VALUES (2644, 1, 'admin/System/status', '::1', '--', '否', '2018-06-23 14:06:49');
INSERT INTO `le_must_system_log` VALUES (2645, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-23 14:11:54');
INSERT INTO `le_must_system_log` VALUES (2646, 1, 'admin/System/index', '::1', '--', '否', '2018-06-23 14:11:54');
INSERT INTO `le_must_system_log` VALUES (2647, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-23 14:12:00');
INSERT INTO `le_must_system_log` VALUES (2648, 1, 'admin/System/config', '::1', '--', '否', '2018-06-23 14:12:20');
INSERT INTO `le_must_system_log` VALUES (2649, 1, 'admin/System/config', '::1', '--', '否', '2018-06-23 14:13:27');
INSERT INTO `le_must_system_log` VALUES (2650, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-23 14:13:30');
INSERT INTO `le_must_system_log` VALUES (2651, 1, 'admin/System/index', '::1', '--', '否', '2018-06-23 14:13:30');
INSERT INTO `le_must_system_log` VALUES (2652, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-23 14:18:41');
INSERT INTO `le_must_system_log` VALUES (2653, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-23 14:18:41');
INSERT INTO `le_must_system_log` VALUES (2654, 1, 'admin/SystemUser/edit_password', '::1', '--', '否', '2018-06-23 14:19:00');
INSERT INTO `le_must_system_log` VALUES (2655, 1, 'admin/System/config', '::1', '--', '否', '2018-06-23 14:19:02');
INSERT INTO `le_must_system_log` VALUES (2656, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-23 14:19:04');
INSERT INTO `le_must_system_log` VALUES (2657, 1, 'admin/System/auth', '::1', '--', '否', '2018-06-23 14:19:06');
INSERT INTO `le_must_system_log` VALUES (2658, 1, 'admin/Log/index', '::1', '--', '否', '2018-06-23 14:19:09');
INSERT INTO `le_must_system_log` VALUES (2659, 1, 'admin/Log/index', '::1', '--', '否', '2018-06-23 14:19:09');
INSERT INTO `le_must_system_log` VALUES (2660, 1, 'admin/Bak/index', '::1', '--', '否', '2018-06-23 14:22:20');
INSERT INTO `le_must_system_log` VALUES (2661, 1, 'admin/Bak/index', '::1', '--', '否', '2018-06-23 14:22:21');
INSERT INTO `le_must_system_log` VALUES (2662, 1, 'admin/System/config', '::1', '--', '否', '2018-06-23 14:35:54');
INSERT INTO `le_must_system_log` VALUES (2663, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-23 14:35:57');
INSERT INTO `le_must_system_log` VALUES (2664, 1, 'admin/System/index', '::1', '--', '否', '2018-06-23 14:35:57');
INSERT INTO `le_must_system_log` VALUES (2665, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-23 14:36:00');
INSERT INTO `le_must_system_log` VALUES (2666, 1, 'admin/System/index', '::1', '--', '否', '2018-06-23 14:36:01');
INSERT INTO `le_must_system_log` VALUES (2667, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-23 14:43:04');
INSERT INTO `le_must_system_log` VALUES (2668, 1, 'admin/System/index', '::1', '--', '否', '2018-06-23 14:43:04');
INSERT INTO `le_must_system_log` VALUES (2669, 1, 'admin/System/config', '::1', '--', '否', '2018-06-23 14:43:08');
INSERT INTO `le_must_system_log` VALUES (2670, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-23 17:42:27');
INSERT INTO `le_must_system_log` VALUES (2671, 1, 'admin/System/index', '::1', '--', '否', '2018-06-23 17:42:28');
INSERT INTO `le_must_system_log` VALUES (2672, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 08:05:32');
INSERT INTO `le_must_system_log` VALUES (2673, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 08:09:49');
INSERT INTO `le_must_system_log` VALUES (2674, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 08:09:51');
INSERT INTO `le_must_system_log` VALUES (2675, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 08:09:52');
INSERT INTO `le_must_system_log` VALUES (2676, 1, 'admin/Bak/index', '::1', '--', '否', '2018-06-25 08:09:55');
INSERT INTO `le_must_system_log` VALUES (2677, 1, 'admin/Bak/index', '::1', '--', '否', '2018-06-25 08:09:55');
INSERT INTO `le_must_system_log` VALUES (2678, 1, 'admin/Log/index', '::1', '--', '否', '2018-06-25 08:09:58');
INSERT INTO `le_must_system_log` VALUES (2679, 1, 'admin/Log/index', '::1', '--', '否', '2018-06-25 08:09:58');
INSERT INTO `le_must_system_log` VALUES (2680, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-25 08:10:03');
INSERT INTO `le_must_system_log` VALUES (2681, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-25 08:10:03');
INSERT INTO `le_must_system_log` VALUES (2682, 1, 'admin/System/config', '::1', '--', '否', '2018-06-25 08:10:09');
INSERT INTO `le_must_system_log` VALUES (2683, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 08:10:48');
INSERT INTO `le_must_system_log` VALUES (2684, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 08:10:48');
INSERT INTO `le_must_system_log` VALUES (2685, 1, 'admin/Log/index', '::1', '--', '否', '2018-06-25 08:10:55');
INSERT INTO `le_must_system_log` VALUES (2686, 1, 'admin/Log/index', '::1', '--', '否', '2018-06-25 08:10:56');
INSERT INTO `le_must_system_log` VALUES (2687, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-25 08:21:19');
INSERT INTO `le_must_system_log` VALUES (2688, 1, 'admin/Nav/add', '::1', '--', '否', '2018-06-25 08:26:57');
INSERT INTO `le_must_system_log` VALUES (2689, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-25 08:26:59');
INSERT INTO `le_must_system_log` VALUES (2690, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 08:27:09');
INSERT INTO `le_must_system_log` VALUES (2691, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 08:27:10');
INSERT INTO `le_must_system_log` VALUES (2692, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-25 08:27:29');
INSERT INTO `le_must_system_log` VALUES (2693, 1, 'admin/Nav/edit', '::1', '--', '否', '2018-06-25 08:27:33');
INSERT INTO `le_must_system_log` VALUES (2694, 1, 'admin/Nav/edit', '::1', '--', '否', '2018-06-25 08:27:41');
INSERT INTO `le_must_system_log` VALUES (2695, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-25 08:27:41');
INSERT INTO `le_must_system_log` VALUES (2696, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 08:27:45');
INSERT INTO `le_must_system_log` VALUES (2697, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 08:27:45');
INSERT INTO `le_must_system_log` VALUES (2698, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-25 08:27:53');
INSERT INTO `le_must_system_log` VALUES (2699, 1, 'admin/Nav/add', '::1', '--', '否', '2018-06-25 08:28:34');
INSERT INTO `le_must_system_log` VALUES (2700, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-25 08:28:36');
INSERT INTO `le_must_system_log` VALUES (2701, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 08:28:45');
INSERT INTO `le_must_system_log` VALUES (2702, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 08:28:45');
INSERT INTO `le_must_system_log` VALUES (2703, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-25 08:31:49');
INSERT INTO `le_must_system_log` VALUES (2704, 1, 'admin/Nav/edit', '::1', '--', '否', '2018-06-25 08:33:00');
INSERT INTO `le_must_system_log` VALUES (2705, 1, 'admin/Nav/edit', '::1', '--', '否', '2018-06-25 08:33:08');
INSERT INTO `le_must_system_log` VALUES (2706, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-25 08:33:08');
INSERT INTO `le_must_system_log` VALUES (2707, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 08:33:12');
INSERT INTO `le_must_system_log` VALUES (2708, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 08:33:12');
INSERT INTO `le_must_system_log` VALUES (2709, 1, 'admin/System/config', '::1', '--', '否', '2018-06-25 08:34:34');
INSERT INTO `le_must_system_log` VALUES (2710, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-25 08:34:44');
INSERT INTO `le_must_system_log` VALUES (2711, 1, 'admin/Nav/edit', '::1', '--', '否', '2018-06-25 08:34:47');
INSERT INTO `le_must_system_log` VALUES (2712, 1, 'admin/Nav/edit', '::1', '--', '否', '2018-06-25 08:34:56');
INSERT INTO `le_must_system_log` VALUES (2713, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-25 08:34:57');
INSERT INTO `le_must_system_log` VALUES (2714, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 08:35:01');
INSERT INTO `le_must_system_log` VALUES (2715, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 08:35:01');
INSERT INTO `le_must_system_log` VALUES (2716, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-25 08:35:14');
INSERT INTO `le_must_system_log` VALUES (2717, 1, 'admin/Nav/edit', '::1', '--', '否', '2018-06-25 08:35:17');
INSERT INTO `le_must_system_log` VALUES (2718, 1, 'admin/Nav/edit', '::1', '--', '否', '2018-06-25 08:35:55');
INSERT INTO `le_must_system_log` VALUES (2719, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-25 08:35:55');
INSERT INTO `le_must_system_log` VALUES (2720, 1, 'admin/Nav/add', '::1', '--', '否', '2018-06-25 08:36:46');
INSERT INTO `le_must_system_log` VALUES (2721, 1, 'admin/Nav/add', '::1', '--', '否', '2018-06-25 08:37:10');
INSERT INTO `le_must_system_log` VALUES (2722, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-25 08:37:13');
INSERT INTO `le_must_system_log` VALUES (2723, 1, 'admin/Nav/add', '::1', '--', '否', '2018-06-25 08:38:18');
INSERT INTO `le_must_system_log` VALUES (2724, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-25 08:38:20');
INSERT INTO `le_must_system_log` VALUES (2725, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 08:38:21');
INSERT INTO `le_must_system_log` VALUES (2726, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 08:38:22');
INSERT INTO `le_must_system_log` VALUES (2727, 1, 'admin/System/config', '::1', '--', '否', '2018-06-25 08:41:51');
INSERT INTO `le_must_system_log` VALUES (2728, 1, 'admin/System/config', '::1', '--', '否', '2018-06-25 08:41:59');
INSERT INTO `le_must_system_log` VALUES (2729, 1, 'admin/System/config', '::1', '--', '否', '2018-06-25 08:42:11');
INSERT INTO `le_must_system_log` VALUES (2730, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 08:42:15');
INSERT INTO `le_must_system_log` VALUES (2731, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 08:42:15');
INSERT INTO `le_must_system_log` VALUES (2732, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 08:44:36');
INSERT INTO `le_must_system_log` VALUES (2733, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 08:44:36');
INSERT INTO `le_must_system_log` VALUES (2734, 1, 'admin/Bak/index', '::1', '--', '否', '2018-06-25 08:47:05');
INSERT INTO `le_must_system_log` VALUES (2735, 1, 'admin/Bak/index', '::1', '--', '否', '2018-06-25 08:47:06');
INSERT INTO `le_must_system_log` VALUES (2736, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-25 08:47:15');
INSERT INTO `le_must_system_log` VALUES (2737, 1, 'admin/System/auth', '::1', '--', '否', '2018-06-25 08:47:26');
INSERT INTO `le_must_system_log` VALUES (2738, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 08:49:09');
INSERT INTO `le_must_system_log` VALUES (2739, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 08:49:10');
INSERT INTO `le_must_system_log` VALUES (2740, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-25 08:50:43');
INSERT INTO `le_must_system_log` VALUES (2741, 1, 'admin/Nav/edit', '::1', '--', '否', '2018-06-25 08:50:47');
INSERT INTO `le_must_system_log` VALUES (2742, 1, 'admin/Nav/edit', '::1', '--', '否', '2018-06-25 08:50:57');
INSERT INTO `le_must_system_log` VALUES (2743, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-25 08:50:57');
INSERT INTO `le_must_system_log` VALUES (2744, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 08:51:16');
INSERT INTO `le_must_system_log` VALUES (2745, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 08:51:17');
INSERT INTO `le_must_system_log` VALUES (2746, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 09:24:03');
INSERT INTO `le_must_system_log` VALUES (2747, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 09:24:03');
INSERT INTO `le_must_system_log` VALUES (2748, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 09:24:12');
INSERT INTO `le_must_system_log` VALUES (2749, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 09:24:13');
INSERT INTO `le_must_system_log` VALUES (2750, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 09:55:42');
INSERT INTO `le_must_system_log` VALUES (2751, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 09:55:42');
INSERT INTO `le_must_system_log` VALUES (2752, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 09:55:54');
INSERT INTO `le_must_system_log` VALUES (2753, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 09:55:54');
INSERT INTO `le_must_system_log` VALUES (2754, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 10:01:02');
INSERT INTO `le_must_system_log` VALUES (2755, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 10:01:03');
INSERT INTO `le_must_system_log` VALUES (2756, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 10:26:11');
INSERT INTO `le_must_system_log` VALUES (2757, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 10:26:11');
INSERT INTO `le_must_system_log` VALUES (2758, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 10:30:38');
INSERT INTO `le_must_system_log` VALUES (2759, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 10:30:38');
INSERT INTO `le_must_system_log` VALUES (2760, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 10:36:20');
INSERT INTO `le_must_system_log` VALUES (2761, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 10:36:31');
INSERT INTO `le_must_system_log` VALUES (2762, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 10:37:12');
INSERT INTO `le_must_system_log` VALUES (2763, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 10:37:13');
INSERT INTO `le_must_system_log` VALUES (2764, 1, 'admin/Bak/index', '::1', '--', '否', '2018-06-25 11:05:56');
INSERT INTO `le_must_system_log` VALUES (2765, 1, 'admin/Bak/index', '::1', '--', '否', '2018-06-25 11:05:56');
INSERT INTO `le_must_system_log` VALUES (2766, 1, 'admin/Log/index', '::1', '--', '否', '2018-06-25 11:05:59');
INSERT INTO `le_must_system_log` VALUES (2767, 1, 'admin/Log/index', '::1', '--', '否', '2018-06-25 11:05:59');
INSERT INTO `le_must_system_log` VALUES (2768, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-25 11:06:03');
INSERT INTO `le_must_system_log` VALUES (2769, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-25 11:06:03');
INSERT INTO `le_must_system_log` VALUES (2770, 1, 'admin/SystemUser/edit_password', '::1', '--', '否', '2018-06-25 11:06:04');
INSERT INTO `le_must_system_log` VALUES (2771, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 11:10:08');
INSERT INTO `le_must_system_log` VALUES (2772, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 11:10:09');
INSERT INTO `le_must_system_log` VALUES (2773, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-25 13:51:10');
INSERT INTO `le_must_system_log` VALUES (2774, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-25 13:51:20');
INSERT INTO `le_must_system_log` VALUES (2775, 1, 'admin/Nav/edit', '::1', '--', '否', '2018-06-25 13:51:53');
INSERT INTO `le_must_system_log` VALUES (2776, 1, 'admin/Nav/edit', '::1', '--', '否', '2018-06-25 13:51:59');
INSERT INTO `le_must_system_log` VALUES (2777, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-25 13:52:00');
INSERT INTO `le_must_system_log` VALUES (2778, 1, 'admin/Nav/edit', '::1', '--', '否', '2018-06-25 13:52:04');
INSERT INTO `le_must_system_log` VALUES (2779, 1, 'admin/Nav/edit', '::1', '--', '否', '2018-06-25 13:52:09');
INSERT INTO `le_must_system_log` VALUES (2780, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-25 13:52:09');
INSERT INTO `le_must_system_log` VALUES (2781, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 13:52:12');
INSERT INTO `le_must_system_log` VALUES (2782, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 13:52:12');
INSERT INTO `le_must_system_log` VALUES (2783, 1, 'admin/Bak/index', '::1', '--', '否', '2018-06-25 13:52:14');
INSERT INTO `le_must_system_log` VALUES (2784, 1, 'admin/Bak/index', '::1', '--', '否', '2018-06-25 13:52:14');
INSERT INTO `le_must_system_log` VALUES (2785, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 13:52:16');
INSERT INTO `le_must_system_log` VALUES (2786, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-25 13:52:20');
INSERT INTO `le_must_system_log` VALUES (2787, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-25 13:52:22');
INSERT INTO `le_must_system_log` VALUES (2788, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 13:52:29');
INSERT INTO `le_must_system_log` VALUES (2789, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 13:52:32');
INSERT INTO `le_must_system_log` VALUES (2790, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 13:52:36');
INSERT INTO `le_must_system_log` VALUES (2791, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 13:55:04');
INSERT INTO `le_must_system_log` VALUES (2792, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 13:55:20');
INSERT INTO `le_must_system_log` VALUES (2793, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 13:55:23');
INSERT INTO `le_must_system_log` VALUES (2794, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 13:56:24');
INSERT INTO `le_must_system_log` VALUES (2795, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 13:56:26');
INSERT INTO `le_must_system_log` VALUES (2796, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 13:56:30');
INSERT INTO `le_must_system_log` VALUES (2797, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 13:56:36');
INSERT INTO `le_must_system_log` VALUES (2798, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 13:58:20');
INSERT INTO `le_must_system_log` VALUES (2799, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 13:58:22');
INSERT INTO `le_must_system_log` VALUES (2800, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 13:58:25');
INSERT INTO `le_must_system_log` VALUES (2801, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 13:58:28');
INSERT INTO `le_must_system_log` VALUES (2802, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 13:58:32');
INSERT INTO `le_must_system_log` VALUES (2803, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 13:59:44');
INSERT INTO `le_must_system_log` VALUES (2804, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 13:59:47');
INSERT INTO `le_must_system_log` VALUES (2805, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 13:59:50');
INSERT INTO `le_must_system_log` VALUES (2806, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 13:59:56');
INSERT INTO `le_must_system_log` VALUES (2807, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-25 14:00:02');
INSERT INTO `le_must_system_log` VALUES (2808, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-25 14:04:49');
INSERT INTO `le_must_system_log` VALUES (2809, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-25 14:04:51');
INSERT INTO `le_must_system_log` VALUES (2810, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 14:08:49');
INSERT INTO `le_must_system_log` VALUES (2811, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 14:08:49');
INSERT INTO `le_must_system_log` VALUES (2812, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:08:52');
INSERT INTO `le_must_system_log` VALUES (2813, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:08:53');
INSERT INTO `le_must_system_log` VALUES (2814, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:08:55');
INSERT INTO `le_must_system_log` VALUES (2815, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:08:58');
INSERT INTO `le_must_system_log` VALUES (2816, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:09:01');
INSERT INTO `le_must_system_log` VALUES (2817, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 14:10:09');
INSERT INTO `le_must_system_log` VALUES (2818, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 14:10:09');
INSERT INTO `le_must_system_log` VALUES (2819, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:10:12');
INSERT INTO `le_must_system_log` VALUES (2820, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:10:13');
INSERT INTO `le_must_system_log` VALUES (2821, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:10:50');
INSERT INTO `le_must_system_log` VALUES (2822, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:10:51');
INSERT INTO `le_must_system_log` VALUES (2823, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:10:52');
INSERT INTO `le_must_system_log` VALUES (2824, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:11:41');
INSERT INTO `le_must_system_log` VALUES (2825, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:18:12');
INSERT INTO `le_must_system_log` VALUES (2826, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:19:11');
INSERT INTO `le_must_system_log` VALUES (2827, 1, 'admin/Login/out', '::1', '--', '否', '2018-06-25 14:21:18');
INSERT INTO `le_must_system_log` VALUES (2828, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 14:21:19');
INSERT INTO `le_must_system_log` VALUES (2829, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 14:21:38');
INSERT INTO `le_must_system_log` VALUES (2830, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 14:22:20');
INSERT INTO `le_must_system_log` VALUES (2831, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 14:22:26');
INSERT INTO `le_must_system_log` VALUES (2832, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 14:22:28');
INSERT INTO `le_must_system_log` VALUES (2833, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 14:22:28');
INSERT INTO `le_must_system_log` VALUES (2834, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:22:30');
INSERT INTO `le_must_system_log` VALUES (2835, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 14:25:23');
INSERT INTO `le_must_system_log` VALUES (2836, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 14:25:23');
INSERT INTO `le_must_system_log` VALUES (2837, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:25:25');
INSERT INTO `le_must_system_log` VALUES (2838, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 14:33:02');
INSERT INTO `le_must_system_log` VALUES (2839, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 14:33:03');
INSERT INTO `le_must_system_log` VALUES (2840, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:33:04');
INSERT INTO `le_must_system_log` VALUES (2841, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:33:08');
INSERT INTO `le_must_system_log` VALUES (2842, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:35:35');
INSERT INTO `le_must_system_log` VALUES (2843, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:35:40');
INSERT INTO `le_must_system_log` VALUES (2844, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:35:47');
INSERT INTO `le_must_system_log` VALUES (2845, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:41:01');
INSERT INTO `le_must_system_log` VALUES (2846, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:41:05');
INSERT INTO `le_must_system_log` VALUES (2847, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:41:11');
INSERT INTO `le_must_system_log` VALUES (2848, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:41:16');
INSERT INTO `le_must_system_log` VALUES (2849, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:41:32');
INSERT INTO `le_must_system_log` VALUES (2850, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:41:44');
INSERT INTO `le_must_system_log` VALUES (2851, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:41:47');
INSERT INTO `le_must_system_log` VALUES (2852, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:45:48');
INSERT INTO `le_must_system_log` VALUES (2853, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:45:53');
INSERT INTO `le_must_system_log` VALUES (2854, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 14:46:38');
INSERT INTO `le_must_system_log` VALUES (2855, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 14:46:39');
INSERT INTO `le_must_system_log` VALUES (2856, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:46:40');
INSERT INTO `le_must_system_log` VALUES (2857, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:46:43');
INSERT INTO `le_must_system_log` VALUES (2858, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:48:30');
INSERT INTO `le_must_system_log` VALUES (2859, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:48:32');
INSERT INTO `le_must_system_log` VALUES (2860, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:48:40');
INSERT INTO `le_must_system_log` VALUES (2861, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:48:43');
INSERT INTO `le_must_system_log` VALUES (2862, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:49:03');
INSERT INTO `le_must_system_log` VALUES (2863, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:49:05');
INSERT INTO `le_must_system_log` VALUES (2864, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:50:45');
INSERT INTO `le_must_system_log` VALUES (2865, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:50:48');
INSERT INTO `le_must_system_log` VALUES (2866, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:51:10');
INSERT INTO `le_must_system_log` VALUES (2867, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 14:51:13');
INSERT INTO `le_must_system_log` VALUES (2868, 1, 'admin/Login/out', '::1', '--', '否', '2018-06-25 14:54:34');
INSERT INTO `le_must_system_log` VALUES (2869, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 14:54:34');
INSERT INTO `le_must_system_log` VALUES (2870, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 14:54:45');
INSERT INTO `le_must_system_log` VALUES (2871, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 14:54:50');
INSERT INTO `le_must_system_log` VALUES (2872, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 14:54:56');
INSERT INTO `le_must_system_log` VALUES (2873, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-25 14:55:01');
INSERT INTO `le_must_system_log` VALUES (2874, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-25 14:55:04');
INSERT INTO `le_must_system_log` VALUES (2875, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-25 14:55:44');
INSERT INTO `le_must_system_log` VALUES (2876, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-25 14:55:48');
INSERT INTO `le_must_system_log` VALUES (2877, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-25 14:55:59');
INSERT INTO `le_must_system_log` VALUES (2878, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-25 14:56:05');
INSERT INTO `le_must_system_log` VALUES (2879, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-25 14:56:10');
INSERT INTO `le_must_system_log` VALUES (2880, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-25 14:56:14');
INSERT INTO `le_must_system_log` VALUES (2881, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 14:56:16');
INSERT INTO `le_must_system_log` VALUES (2882, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 14:56:17');
INSERT INTO `le_must_system_log` VALUES (2883, 1, 'admin/Login/out', '::1', '--', '否', '2018-06-25 14:59:11');
INSERT INTO `le_must_system_log` VALUES (2884, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 14:59:11');
INSERT INTO `le_must_system_log` VALUES (2885, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 14:59:20');
INSERT INTO `le_must_system_log` VALUES (2886, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 14:59:22');
INSERT INTO `le_must_system_log` VALUES (2887, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 14:59:28');
INSERT INTO `le_must_system_log` VALUES (2888, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 15:02:42');
INSERT INTO `le_must_system_log` VALUES (2889, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 15:02:47');
INSERT INTO `le_must_system_log` VALUES (2890, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 15:04:05');
INSERT INTO `le_must_system_log` VALUES (2891, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 15:04:15');
INSERT INTO `le_must_system_log` VALUES (2892, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 15:04:19');
INSERT INTO `le_must_system_log` VALUES (2893, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 15:04:51');
INSERT INTO `le_must_system_log` VALUES (2894, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 15:04:57');
INSERT INTO `le_must_system_log` VALUES (2895, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 15:05:06');
INSERT INTO `le_must_system_log` VALUES (2896, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 15:05:11');
INSERT INTO `le_must_system_log` VALUES (2897, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 15:07:38');
INSERT INTO `le_must_system_log` VALUES (2898, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 15:07:42');
INSERT INTO `le_must_system_log` VALUES (2899, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 15:08:31');
INSERT INTO `le_must_system_log` VALUES (2900, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 15:09:46');
INSERT INTO `le_must_system_log` VALUES (2901, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 15:10:16');
INSERT INTO `le_must_system_log` VALUES (2902, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 15:10:28');
INSERT INTO `le_must_system_log` VALUES (2903, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 15:11:05');
INSERT INTO `le_must_system_log` VALUES (2904, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 15:12:50');
INSERT INTO `le_must_system_log` VALUES (2905, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-25 15:13:00');
INSERT INTO `le_must_system_log` VALUES (2906, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-25 15:14:25');
INSERT INTO `le_must_system_log` VALUES (2907, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-25 15:14:32');
INSERT INTO `le_must_system_log` VALUES (2908, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-25 15:14:45');
INSERT INTO `le_must_system_log` VALUES (2909, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-25 15:14:50');
INSERT INTO `le_must_system_log` VALUES (2910, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-25 15:14:55');
INSERT INTO `le_must_system_log` VALUES (2911, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 15:14:57');
INSERT INTO `le_must_system_log` VALUES (2912, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 15:14:58');
INSERT INTO `le_must_system_log` VALUES (2913, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 15:16:30');
INSERT INTO `le_must_system_log` VALUES (2914, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 15:16:33');
INSERT INTO `le_must_system_log` VALUES (2915, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 15:17:26');
INSERT INTO `le_must_system_log` VALUES (2916, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 15:17:29');
INSERT INTO `le_must_system_log` VALUES (2917, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-25 15:43:39');
INSERT INTO `le_must_system_log` VALUES (2918, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-25 15:43:40');
INSERT INTO `le_must_system_log` VALUES (2919, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 15:50:10');
INSERT INTO `le_must_system_log` VALUES (2920, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 15:50:23');
INSERT INTO `le_must_system_log` VALUES (2921, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 15:50:26');
INSERT INTO `le_must_system_log` VALUES (2922, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 15:51:12');
INSERT INTO `le_must_system_log` VALUES (2923, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 15:51:15');
INSERT INTO `le_must_system_log` VALUES (2924, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:10:03');
INSERT INTO `le_must_system_log` VALUES (2925, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:10:06');
INSERT INTO `le_must_system_log` VALUES (2926, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:14:17');
INSERT INTO `le_must_system_log` VALUES (2927, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:14:20');
INSERT INTO `le_must_system_log` VALUES (2928, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:22:34');
INSERT INTO `le_must_system_log` VALUES (2929, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:24:25');
INSERT INTO `le_must_system_log` VALUES (2930, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:24:31');
INSERT INTO `le_must_system_log` VALUES (2931, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 16:26:22');
INSERT INTO `le_must_system_log` VALUES (2932, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 16:26:23');
INSERT INTO `le_must_system_log` VALUES (2933, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:26:24');
INSERT INTO `le_must_system_log` VALUES (2934, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:30:17');
INSERT INTO `le_must_system_log` VALUES (2935, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:30:39');
INSERT INTO `le_must_system_log` VALUES (2936, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:30:41');
INSERT INTO `le_must_system_log` VALUES (2937, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 16:31:57');
INSERT INTO `le_must_system_log` VALUES (2938, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 16:31:58');
INSERT INTO `le_must_system_log` VALUES (2939, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:32:00');
INSERT INTO `le_must_system_log` VALUES (2940, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:32:03');
INSERT INTO `le_must_system_log` VALUES (2941, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:32:08');
INSERT INTO `le_must_system_log` VALUES (2942, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:32:13');
INSERT INTO `le_must_system_log` VALUES (2943, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:32:35');
INSERT INTO `le_must_system_log` VALUES (2944, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:32:37');
INSERT INTO `le_must_system_log` VALUES (2945, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:32:41');
INSERT INTO `le_must_system_log` VALUES (2946, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:33:34');
INSERT INTO `le_must_system_log` VALUES (2947, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:33:40');
INSERT INTO `le_must_system_log` VALUES (2948, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:33:44');
INSERT INTO `le_must_system_log` VALUES (2949, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:34:16');
INSERT INTO `le_must_system_log` VALUES (2950, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:34:19');
INSERT INTO `le_must_system_log` VALUES (2951, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:36:16');
INSERT INTO `le_must_system_log` VALUES (2952, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:37:46');
INSERT INTO `le_must_system_log` VALUES (2953, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:38:18');
INSERT INTO `le_must_system_log` VALUES (2954, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:38:20');
INSERT INTO `le_must_system_log` VALUES (2955, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:38:42');
INSERT INTO `le_must_system_log` VALUES (2956, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:41:21');
INSERT INTO `le_must_system_log` VALUES (2957, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:41:32');
INSERT INTO `le_must_system_log` VALUES (2958, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:41:35');
INSERT INTO `le_must_system_log` VALUES (2959, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:45:18');
INSERT INTO `le_must_system_log` VALUES (2960, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:45:18');
INSERT INTO `le_must_system_log` VALUES (2961, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:45:49');
INSERT INTO `le_must_system_log` VALUES (2962, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:45:52');
INSERT INTO `le_must_system_log` VALUES (2963, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:49:23');
INSERT INTO `le_must_system_log` VALUES (2964, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:49:26');
INSERT INTO `le_must_system_log` VALUES (2965, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:49:33');
INSERT INTO `le_must_system_log` VALUES (2966, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 16:50:49');
INSERT INTO `le_must_system_log` VALUES (2967, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 16:50:50');
INSERT INTO `le_must_system_log` VALUES (2968, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:50:52');
INSERT INTO `le_must_system_log` VALUES (2969, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:50:56');
INSERT INTO `le_must_system_log` VALUES (2970, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:52:21');
INSERT INTO `le_must_system_log` VALUES (2971, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:52:25');
INSERT INTO `le_must_system_log` VALUES (2972, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:52:42');
INSERT INTO `le_must_system_log` VALUES (2973, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:52:45');
INSERT INTO `le_must_system_log` VALUES (2974, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:53:06');
INSERT INTO `le_must_system_log` VALUES (2975, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:53:11');
INSERT INTO `le_must_system_log` VALUES (2976, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:55:23');
INSERT INTO `le_must_system_log` VALUES (2977, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:56:06');
INSERT INTO `le_must_system_log` VALUES (2978, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 16:56:10');
INSERT INTO `le_must_system_log` VALUES (2979, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:03:28');
INSERT INTO `le_must_system_log` VALUES (2980, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:03:30');
INSERT INTO `le_must_system_log` VALUES (2981, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:03:35');
INSERT INTO `le_must_system_log` VALUES (2982, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:04:48');
INSERT INTO `le_must_system_log` VALUES (2983, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:05:17');
INSERT INTO `le_must_system_log` VALUES (2984, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:05:19');
INSERT INTO `le_must_system_log` VALUES (2985, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:05:57');
INSERT INTO `le_must_system_log` VALUES (2986, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:06:01');
INSERT INTO `le_must_system_log` VALUES (2987, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:06:35');
INSERT INTO `le_must_system_log` VALUES (2988, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:06:51');
INSERT INTO `le_must_system_log` VALUES (2989, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:06:57');
INSERT INTO `le_must_system_log` VALUES (2990, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:07:31');
INSERT INTO `le_must_system_log` VALUES (2991, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:07:38');
INSERT INTO `le_must_system_log` VALUES (2992, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:08:17');
INSERT INTO `le_must_system_log` VALUES (2993, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:08:26');
INSERT INTO `le_must_system_log` VALUES (2994, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:08:29');
INSERT INTO `le_must_system_log` VALUES (2995, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:09:16');
INSERT INTO `le_must_system_log` VALUES (2996, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:09:28');
INSERT INTO `le_must_system_log` VALUES (2997, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:09:38');
INSERT INTO `le_must_system_log` VALUES (2998, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:10:17');
INSERT INTO `le_must_system_log` VALUES (2999, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:10:45');
INSERT INTO `le_must_system_log` VALUES (3000, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:14:53');
INSERT INTO `le_must_system_log` VALUES (3001, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:14:56');
INSERT INTO `le_must_system_log` VALUES (3002, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:15:16');
INSERT INTO `le_must_system_log` VALUES (3003, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:15:19');
INSERT INTO `le_must_system_log` VALUES (3004, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:15:41');
INSERT INTO `le_must_system_log` VALUES (3005, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:15:44');
INSERT INTO `le_must_system_log` VALUES (3006, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:17:01');
INSERT INTO `le_must_system_log` VALUES (3007, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:18:45');
INSERT INTO `le_must_system_log` VALUES (3008, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:19:12');
INSERT INTO `le_must_system_log` VALUES (3009, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:21:59');
INSERT INTO `le_must_system_log` VALUES (3010, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:23:07');
INSERT INTO `le_must_system_log` VALUES (3011, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:23:29');
INSERT INTO `le_must_system_log` VALUES (3012, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:23:51');
INSERT INTO `le_must_system_log` VALUES (3013, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:25:25');
INSERT INTO `le_must_system_log` VALUES (3014, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:26:37');
INSERT INTO `le_must_system_log` VALUES (3015, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:27:19');
INSERT INTO `le_must_system_log` VALUES (3016, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:27:32');
INSERT INTO `le_must_system_log` VALUES (3017, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 17:27:44');
INSERT INTO `le_must_system_log` VALUES (3018, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 17:27:44');
INSERT INTO `le_must_system_log` VALUES (3019, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:27:45');
INSERT INTO `le_must_system_log` VALUES (3020, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:28:08');
INSERT INTO `le_must_system_log` VALUES (3021, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:28:32');
INSERT INTO `le_must_system_log` VALUES (3022, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:28:46');
INSERT INTO `le_must_system_log` VALUES (3023, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:29:03');
INSERT INTO `le_must_system_log` VALUES (3024, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:30:03');
INSERT INTO `le_must_system_log` VALUES (3025, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:30:06');
INSERT INTO `le_must_system_log` VALUES (3026, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:36:35');
INSERT INTO `le_must_system_log` VALUES (3027, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:36:42');
INSERT INTO `le_must_system_log` VALUES (3028, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:36:44');
INSERT INTO `le_must_system_log` VALUES (3029, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:37:29');
INSERT INTO `le_must_system_log` VALUES (3030, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:37:32');
INSERT INTO `le_must_system_log` VALUES (3031, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:37:36');
INSERT INTO `le_must_system_log` VALUES (3032, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:38:00');
INSERT INTO `le_must_system_log` VALUES (3033, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:38:01');
INSERT INTO `le_must_system_log` VALUES (3034, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:38:04');
INSERT INTO `le_must_system_log` VALUES (3035, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:39:02');
INSERT INTO `le_must_system_log` VALUES (3036, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:39:03');
INSERT INTO `le_must_system_log` VALUES (3037, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:39:41');
INSERT INTO `le_must_system_log` VALUES (3038, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:39:45');
INSERT INTO `le_must_system_log` VALUES (3039, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-25 17:39:47');
INSERT INTO `le_must_system_log` VALUES (3040, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:39:48');
INSERT INTO `le_must_system_log` VALUES (3041, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:39:52');
INSERT INTO `le_must_system_log` VALUES (3042, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:40:16');
INSERT INTO `le_must_system_log` VALUES (3043, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:40:19');
INSERT INTO `le_must_system_log` VALUES (3044, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:40:20');
INSERT INTO `le_must_system_log` VALUES (3045, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:40:20');
INSERT INTO `le_must_system_log` VALUES (3046, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:40:26');
INSERT INTO `le_must_system_log` VALUES (3047, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:44:26');
INSERT INTO `le_must_system_log` VALUES (3048, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:46:28');
INSERT INTO `le_must_system_log` VALUES (3049, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:46:30');
INSERT INTO `le_must_system_log` VALUES (3050, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:46:33');
INSERT INTO `le_must_system_log` VALUES (3051, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:46:55');
INSERT INTO `le_must_system_log` VALUES (3052, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:46:56');
INSERT INTO `le_must_system_log` VALUES (3053, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:46:56');
INSERT INTO `le_must_system_log` VALUES (3054, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:47:48');
INSERT INTO `le_must_system_log` VALUES (3055, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:47:50');
INSERT INTO `le_must_system_log` VALUES (3056, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:47:53');
INSERT INTO `le_must_system_log` VALUES (3057, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:47:53');
INSERT INTO `le_must_system_log` VALUES (3058, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:47:54');
INSERT INTO `le_must_system_log` VALUES (3059, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:47:54');
INSERT INTO `le_must_system_log` VALUES (3060, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:48:18');
INSERT INTO `le_must_system_log` VALUES (3061, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:48:21');
INSERT INTO `le_must_system_log` VALUES (3062, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:48:23');
INSERT INTO `le_must_system_log` VALUES (3063, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:48:24');
INSERT INTO `le_must_system_log` VALUES (3064, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:48:24');
INSERT INTO `le_must_system_log` VALUES (3065, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:48:25');
INSERT INTO `le_must_system_log` VALUES (3066, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:48:25');
INSERT INTO `le_must_system_log` VALUES (3067, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:48:29');
INSERT INTO `le_must_system_log` VALUES (3068, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:48:38');
INSERT INTO `le_must_system_log` VALUES (3069, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:48:56');
INSERT INTO `le_must_system_log` VALUES (3070, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:49:39');
INSERT INTO `le_must_system_log` VALUES (3071, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:49:57');
INSERT INTO `le_must_system_log` VALUES (3072, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:49:59');
INSERT INTO `le_must_system_log` VALUES (3073, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:50:05');
INSERT INTO `le_must_system_log` VALUES (3074, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:50:08');
INSERT INTO `le_must_system_log` VALUES (3075, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:50:31');
INSERT INTO `le_must_system_log` VALUES (3076, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:50:34');
INSERT INTO `le_must_system_log` VALUES (3077, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:50:43');
INSERT INTO `le_must_system_log` VALUES (3078, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:50:45');
INSERT INTO `le_must_system_log` VALUES (3079, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:51:12');
INSERT INTO `le_must_system_log` VALUES (3080, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:51:22');
INSERT INTO `le_must_system_log` VALUES (3081, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:51:23');
INSERT INTO `le_must_system_log` VALUES (3082, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:51:23');
INSERT INTO `le_must_system_log` VALUES (3083, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:51:24');
INSERT INTO `le_must_system_log` VALUES (3084, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:51:27');
INSERT INTO `le_must_system_log` VALUES (3085, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:51:37');
INSERT INTO `le_must_system_log` VALUES (3086, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:53:06');
INSERT INTO `le_must_system_log` VALUES (3087, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-25 17:53:08');
INSERT INTO `le_must_system_log` VALUES (3088, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 17:53:12');
INSERT INTO `le_must_system_log` VALUES (3089, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 17:53:13');
INSERT INTO `le_must_system_log` VALUES (3090, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:53:15');
INSERT INTO `le_must_system_log` VALUES (3091, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:53:30');
INSERT INTO `le_must_system_log` VALUES (3092, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-25 17:53:32');
INSERT INTO `le_must_system_log` VALUES (3093, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-25 17:53:45');
INSERT INTO `le_must_system_log` VALUES (3094, 1, 'admin/System/index', '::1', '--', '否', '2018-06-25 17:53:45');
INSERT INTO `le_must_system_log` VALUES (3095, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:53:56');
INSERT INTO `le_must_system_log` VALUES (3096, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:53:58');
INSERT INTO `le_must_system_log` VALUES (3097, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-25 17:54:01');
INSERT INTO `le_must_system_log` VALUES (3098, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-25 17:54:04');
INSERT INTO `le_must_system_log` VALUES (3099, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:54:51');
INSERT INTO `le_must_system_log` VALUES (3100, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:54:53');
INSERT INTO `le_must_system_log` VALUES (3101, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:55:02');
INSERT INTO `le_must_system_log` VALUES (3102, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:55:04');
INSERT INTO `le_must_system_log` VALUES (3103, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-25 17:55:07');
INSERT INTO `le_must_system_log` VALUES (3104, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:56:02');
INSERT INTO `le_must_system_log` VALUES (3105, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:56:04');
INSERT INTO `le_must_system_log` VALUES (3106, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:56:06');
INSERT INTO `le_must_system_log` VALUES (3107, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-25 17:56:09');
INSERT INTO `le_must_system_log` VALUES (3108, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:58:31');
INSERT INTO `le_must_system_log` VALUES (3109, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 17:58:33');
INSERT INTO `le_must_system_log` VALUES (3110, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 18:13:48');
INSERT INTO `le_must_system_log` VALUES (3111, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 18:14:17');
INSERT INTO `le_must_system_log` VALUES (3112, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 18:14:22');
INSERT INTO `le_must_system_log` VALUES (3113, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 18:14:27');
INSERT INTO `le_must_system_log` VALUES (3114, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 18:14:39');
INSERT INTO `le_must_system_log` VALUES (3115, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 18:15:32');
INSERT INTO `le_must_system_log` VALUES (3116, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 18:15:34');
INSERT INTO `le_must_system_log` VALUES (3117, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 18:19:03');
INSERT INTO `le_must_system_log` VALUES (3118, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 18:19:17');
INSERT INTO `le_must_system_log` VALUES (3119, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-25 18:19:27');
INSERT INTO `le_must_system_log` VALUES (3120, 1, 'admin/Log/index', '::1', '--', '否', '2018-06-25 18:21:01');
INSERT INTO `le_must_system_log` VALUES (3121, 1, 'admin/Log/index', '::1', '--', '否', '2018-06-25 18:21:01');
INSERT INTO `le_must_system_log` VALUES (3122, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-25 18:21:02');
INSERT INTO `le_must_system_log` VALUES (3123, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-25 18:21:02');
INSERT INTO `le_must_system_log` VALUES (3124, 1, 'admin/SystemUser/edit_password', '::1', '--', '否', '2018-06-25 18:21:03');
INSERT INTO `le_must_system_log` VALUES (3125, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-26 08:17:21');
INSERT INTO `le_must_system_log` VALUES (3126, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-26 08:17:34');
INSERT INTO `le_must_system_log` VALUES (3127, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-26 08:17:38');
INSERT INTO `le_must_system_log` VALUES (3128, 1, 'admin/System/index', '::1', '--', '否', '2018-06-26 08:17:39');
INSERT INTO `le_must_system_log` VALUES (3129, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:17:41');
INSERT INTO `le_must_system_log` VALUES (3130, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:17:54');
INSERT INTO `le_must_system_log` VALUES (3131, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:26:29');
INSERT INTO `le_must_system_log` VALUES (3132, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:26:35');
INSERT INTO `le_must_system_log` VALUES (3133, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:27:00');
INSERT INTO `le_must_system_log` VALUES (3134, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:27:03');
INSERT INTO `le_must_system_log` VALUES (3135, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:27:21');
INSERT INTO `le_must_system_log` VALUES (3136, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:27:23');
INSERT INTO `le_must_system_log` VALUES (3137, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:27:25');
INSERT INTO `le_must_system_log` VALUES (3138, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:30:02');
INSERT INTO `le_must_system_log` VALUES (3139, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:30:06');
INSERT INTO `le_must_system_log` VALUES (3140, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:31:14');
INSERT INTO `le_must_system_log` VALUES (3141, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:31:17');
INSERT INTO `le_must_system_log` VALUES (3142, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:32:50');
INSERT INTO `le_must_system_log` VALUES (3143, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:32:54');
INSERT INTO `le_must_system_log` VALUES (3144, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:32:55');
INSERT INTO `le_must_system_log` VALUES (3145, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:32:55');
INSERT INTO `le_must_system_log` VALUES (3146, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:33:50');
INSERT INTO `le_must_system_log` VALUES (3147, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:33:52');
INSERT INTO `le_must_system_log` VALUES (3148, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:33:54');
INSERT INTO `le_must_system_log` VALUES (3149, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:33:54');
INSERT INTO `le_must_system_log` VALUES (3150, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:37:11');
INSERT INTO `le_must_system_log` VALUES (3151, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:37:13');
INSERT INTO `le_must_system_log` VALUES (3152, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:37:15');
INSERT INTO `le_must_system_log` VALUES (3153, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:37:15');
INSERT INTO `le_must_system_log` VALUES (3154, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-26 08:37:24');
INSERT INTO `le_must_system_log` VALUES (3155, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-26 08:37:32');
INSERT INTO `le_must_system_log` VALUES (3156, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-26 08:37:34');
INSERT INTO `le_must_system_log` VALUES (3157, 1, 'admin/System/index', '::1', '--', '否', '2018-06-26 08:37:34');
INSERT INTO `le_must_system_log` VALUES (3158, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:37:36');
INSERT INTO `le_must_system_log` VALUES (3159, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:37:40');
INSERT INTO `le_must_system_log` VALUES (3160, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:38:11');
INSERT INTO `le_must_system_log` VALUES (3161, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:38:13');
INSERT INTO `le_must_system_log` VALUES (3162, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:39:55');
INSERT INTO `le_must_system_log` VALUES (3163, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:39:58');
INSERT INTO `le_must_system_log` VALUES (3164, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:39:59');
INSERT INTO `le_must_system_log` VALUES (3165, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:39:59');
INSERT INTO `le_must_system_log` VALUES (3166, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:40:00');
INSERT INTO `le_must_system_log` VALUES (3167, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:40:36');
INSERT INTO `le_must_system_log` VALUES (3168, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:40:38');
INSERT INTO `le_must_system_log` VALUES (3169, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:40:40');
INSERT INTO `le_must_system_log` VALUES (3170, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:43:41');
INSERT INTO `le_must_system_log` VALUES (3171, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:43:44');
INSERT INTO `le_must_system_log` VALUES (3172, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:43:45');
INSERT INTO `le_must_system_log` VALUES (3173, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:44:05');
INSERT INTO `le_must_system_log` VALUES (3174, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:44:11');
INSERT INTO `le_must_system_log` VALUES (3175, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:45:42');
INSERT INTO `le_must_system_log` VALUES (3176, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:45:44');
INSERT INTO `le_must_system_log` VALUES (3177, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:45:45');
INSERT INTO `le_must_system_log` VALUES (3178, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:47:06');
INSERT INTO `le_must_system_log` VALUES (3179, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:47:10');
INSERT INTO `le_must_system_log` VALUES (3180, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:47:12');
INSERT INTO `le_must_system_log` VALUES (3181, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:47:15');
INSERT INTO `le_must_system_log` VALUES (3182, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:47:27');
INSERT INTO `le_must_system_log` VALUES (3183, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:49:01');
INSERT INTO `le_must_system_log` VALUES (3184, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:49:43');
INSERT INTO `le_must_system_log` VALUES (3185, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:49:48');
INSERT INTO `le_must_system_log` VALUES (3186, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:51:09');
INSERT INTO `le_must_system_log` VALUES (3187, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:51:12');
INSERT INTO `le_must_system_log` VALUES (3188, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:51:15');
INSERT INTO `le_must_system_log` VALUES (3189, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:52:04');
INSERT INTO `le_must_system_log` VALUES (3190, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:52:09');
INSERT INTO `le_must_system_log` VALUES (3191, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:52:42');
INSERT INTO `le_must_system_log` VALUES (3192, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:52:47');
INSERT INTO `le_must_system_log` VALUES (3193, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:52:50');
INSERT INTO `le_must_system_log` VALUES (3194, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:53:30');
INSERT INTO `le_must_system_log` VALUES (3195, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:53:34');
INSERT INTO `le_must_system_log` VALUES (3196, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:53:38');
INSERT INTO `le_must_system_log` VALUES (3197, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-26 08:54:07');
INSERT INTO `le_must_system_log` VALUES (3198, 1, 'admin/System/index', '::1', '--', '否', '2018-06-26 08:54:07');
INSERT INTO `le_must_system_log` VALUES (3199, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:54:09');
INSERT INTO `le_must_system_log` VALUES (3200, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:54:11');
INSERT INTO `le_must_system_log` VALUES (3201, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:54:46');
INSERT INTO `le_must_system_log` VALUES (3202, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:58:44');
INSERT INTO `le_must_system_log` VALUES (3203, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:58:46');
INSERT INTO `le_must_system_log` VALUES (3204, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 08:58:48');
INSERT INTO `le_must_system_log` VALUES (3205, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:11:11');
INSERT INTO `le_must_system_log` VALUES (3206, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:11:27');
INSERT INTO `le_must_system_log` VALUES (3207, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:11:30');
INSERT INTO `le_must_system_log` VALUES (3208, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:14:15');
INSERT INTO `le_must_system_log` VALUES (3209, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:14:17');
INSERT INTO `le_must_system_log` VALUES (3210, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:14:48');
INSERT INTO `le_must_system_log` VALUES (3211, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:14:49');
INSERT INTO `le_must_system_log` VALUES (3212, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:14:53');
INSERT INTO `le_must_system_log` VALUES (3213, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:14:56');
INSERT INTO `le_must_system_log` VALUES (3214, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:14:57');
INSERT INTO `le_must_system_log` VALUES (3215, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:14:57');
INSERT INTO `le_must_system_log` VALUES (3216, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:15:46');
INSERT INTO `le_must_system_log` VALUES (3217, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:16:37');
INSERT INTO `le_must_system_log` VALUES (3218, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-26 09:16:53');
INSERT INTO `le_must_system_log` VALUES (3219, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 09:17:01');
INSERT INTO `le_must_system_log` VALUES (3220, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 09:17:07');
INSERT INTO `le_must_system_log` VALUES (3221, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:17:10');
INSERT INTO `le_must_system_log` VALUES (3222, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:17:58');
INSERT INTO `le_must_system_log` VALUES (3223, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:19:02');
INSERT INTO `le_must_system_log` VALUES (3224, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:22:00');
INSERT INTO `le_must_system_log` VALUES (3225, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:22:26');
INSERT INTO `le_must_system_log` VALUES (3226, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:23:38');
INSERT INTO `le_must_system_log` VALUES (3227, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:25:03');
INSERT INTO `le_must_system_log` VALUES (3228, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:39:52');
INSERT INTO `le_must_system_log` VALUES (3229, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:40:43');
INSERT INTO `le_must_system_log` VALUES (3230, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:42:45');
INSERT INTO `le_must_system_log` VALUES (3231, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:44:18');
INSERT INTO `le_must_system_log` VALUES (3232, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:47:22');
INSERT INTO `le_must_system_log` VALUES (3233, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:49:52');
INSERT INTO `le_must_system_log` VALUES (3234, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:52:07');
INSERT INTO `le_must_system_log` VALUES (3235, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:53:57');
INSERT INTO `le_must_system_log` VALUES (3236, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:54:04');
INSERT INTO `le_must_system_log` VALUES (3237, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:57:07');
INSERT INTO `le_must_system_log` VALUES (3238, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:57:32');
INSERT INTO `le_must_system_log` VALUES (3239, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 09:58:40');
INSERT INTO `le_must_system_log` VALUES (3240, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 10:00:04');
INSERT INTO `le_must_system_log` VALUES (3241, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 10:00:07');
INSERT INTO `le_must_system_log` VALUES (3242, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 10:00:09');
INSERT INTO `le_must_system_log` VALUES (3243, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:01:20');
INSERT INTO `le_must_system_log` VALUES (3244, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 10:01:39');
INSERT INTO `le_must_system_log` VALUES (3245, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 10:01:41');
INSERT INTO `le_must_system_log` VALUES (3246, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:02:18');
INSERT INTO `le_must_system_log` VALUES (3247, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 10:02:32');
INSERT INTO `le_must_system_log` VALUES (3248, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:03:20');
INSERT INTO `le_must_system_log` VALUES (3249, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:03:32');
INSERT INTO `le_must_system_log` VALUES (3250, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-26 10:13:42');
INSERT INTO `le_must_system_log` VALUES (3251, 1, 'admin/System/auth', '::1', '--', '否', '2018-06-26 10:13:45');
INSERT INTO `le_must_system_log` VALUES (3252, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 10:14:09');
INSERT INTO `le_must_system_log` VALUES (3253, 1, 'admin/System/auth', '::1', '--', '否', '2018-06-26 10:17:52');
INSERT INTO `le_must_system_log` VALUES (3254, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-26 10:17:53');
INSERT INTO `le_must_system_log` VALUES (3255, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-26 10:18:24');
INSERT INTO `le_must_system_log` VALUES (3256, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-26 10:19:36');
INSERT INTO `le_must_system_log` VALUES (3257, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-26 10:19:37');
INSERT INTO `le_must_system_log` VALUES (3258, 1, 'admin/SystemUser/edit', '::1', '--', '否', '2018-06-26 10:22:50');
INSERT INTO `le_must_system_log` VALUES (3259, 1, 'admin/SystemUser/edit', '::1', '--', '否', '2018-06-26 10:22:56');
INSERT INTO `le_must_system_log` VALUES (3260, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:23:58');
INSERT INTO `le_must_system_log` VALUES (3261, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:24:16');
INSERT INTO `le_must_system_log` VALUES (3262, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:26:06');
INSERT INTO `le_must_system_log` VALUES (3263, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:27:21');
INSERT INTO `le_must_system_log` VALUES (3264, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:28:40');
INSERT INTO `le_must_system_log` VALUES (3265, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:28:41');
INSERT INTO `le_must_system_log` VALUES (3266, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:30:24');
INSERT INTO `le_must_system_log` VALUES (3267, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:30:25');
INSERT INTO `le_must_system_log` VALUES (3268, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:32:02');
INSERT INTO `le_must_system_log` VALUES (3269, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:34:27');
INSERT INTO `le_must_system_log` VALUES (3270, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:34:28');
INSERT INTO `le_must_system_log` VALUES (3271, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:36:30');
INSERT INTO `le_must_system_log` VALUES (3272, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:36:30');
INSERT INTO `le_must_system_log` VALUES (3273, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:38:53');
INSERT INTO `le_must_system_log` VALUES (3274, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:38:53');
INSERT INTO `le_must_system_log` VALUES (3275, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:39:47');
INSERT INTO `le_must_system_log` VALUES (3276, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:39:47');
INSERT INTO `le_must_system_log` VALUES (3277, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:41:38');
INSERT INTO `le_must_system_log` VALUES (3278, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:41:38');
INSERT INTO `le_must_system_log` VALUES (3279, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:46:08');
INSERT INTO `le_must_system_log` VALUES (3280, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:46:08');
INSERT INTO `le_must_system_log` VALUES (3281, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:48:29');
INSERT INTO `le_must_system_log` VALUES (3282, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:48:30');
INSERT INTO `le_must_system_log` VALUES (3283, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-26 10:59:08');
INSERT INTO `le_must_system_log` VALUES (3284, 1, 'admin/System/index', '::1', '--', '否', '2018-06-26 10:59:09');
INSERT INTO `le_must_system_log` VALUES (3285, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 10:59:12');
INSERT INTO `le_must_system_log` VALUES (3286, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:59:13');
INSERT INTO `le_must_system_log` VALUES (3287, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:59:13');
INSERT INTO `le_must_system_log` VALUES (3288, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-26 10:59:36');
INSERT INTO `le_must_system_log` VALUES (3289, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:59:43');
INSERT INTO `le_must_system_log` VALUES (3290, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 10:59:43');
INSERT INTO `le_must_system_log` VALUES (3291, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:00:12');
INSERT INTO `le_must_system_log` VALUES (3292, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:00:13');
INSERT INTO `le_must_system_log` VALUES (3293, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:05:03');
INSERT INTO `le_must_system_log` VALUES (3294, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:05:30');
INSERT INTO `le_must_system_log` VALUES (3295, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:07:08');
INSERT INTO `le_must_system_log` VALUES (3296, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:07:31');
INSERT INTO `le_must_system_log` VALUES (3297, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:08:11');
INSERT INTO `le_must_system_log` VALUES (3298, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:08:37');
INSERT INTO `le_must_system_log` VALUES (3299, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:11:38');
INSERT INTO `le_must_system_log` VALUES (3300, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:11:38');
INSERT INTO `le_must_system_log` VALUES (3301, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:12:54');
INSERT INTO `le_must_system_log` VALUES (3302, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:13:04');
INSERT INTO `le_must_system_log` VALUES (3303, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:22:12');
INSERT INTO `le_must_system_log` VALUES (3304, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:22:29');
INSERT INTO `le_must_system_log` VALUES (3305, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:22:55');
INSERT INTO `le_must_system_log` VALUES (3306, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:26:07');
INSERT INTO `le_must_system_log` VALUES (3307, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:27:13');
INSERT INTO `le_must_system_log` VALUES (3308, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:35:20');
INSERT INTO `le_must_system_log` VALUES (3309, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:36:26');
INSERT INTO `le_must_system_log` VALUES (3310, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:39:38');
INSERT INTO `le_must_system_log` VALUES (3311, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:39:38');
INSERT INTO `le_must_system_log` VALUES (3312, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:40:38');
INSERT INTO `le_must_system_log` VALUES (3313, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:40:38');
INSERT INTO `le_must_system_log` VALUES (3314, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:41:07');
INSERT INTO `le_must_system_log` VALUES (3315, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:41:07');
INSERT INTO `le_must_system_log` VALUES (3316, 1, 'admin/Verify/systemuserstatus', '::1', '--', '否', '2018-06-26 11:42:51');
INSERT INTO `le_must_system_log` VALUES (3317, 1, 'admin/Verify/systemuserstatus', '::1', '--', '否', '2018-06-26 11:42:52');
INSERT INTO `le_must_system_log` VALUES (3318, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:43:10');
INSERT INTO `le_must_system_log` VALUES (3319, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:43:10');
INSERT INTO `le_must_system_log` VALUES (3320, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:44:32');
INSERT INTO `le_must_system_log` VALUES (3321, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:44:32');
INSERT INTO `le_must_system_log` VALUES (3322, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:46:51');
INSERT INTO `le_must_system_log` VALUES (3323, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:46:52');
INSERT INTO `le_must_system_log` VALUES (3324, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:46:55');
INSERT INTO `le_must_system_log` VALUES (3325, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 11:46:55');
INSERT INTO `le_must_system_log` VALUES (3326, 1, 'admin/Verify/systemuserstatus', '::1', '--', '否', '2018-06-26 11:48:33');
INSERT INTO `le_must_system_log` VALUES (3327, 1, 'admin/Verify/systemuserstatus', '::1', '--', '否', '2018-06-26 11:48:34');
INSERT INTO `le_must_system_log` VALUES (3328, 1, 'admin/Verify/edit', '::1', '--', '否', '2018-06-26 11:48:36');
INSERT INTO `le_must_system_log` VALUES (3329, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 13:19:05');
INSERT INTO `le_must_system_log` VALUES (3330, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 13:19:05');
INSERT INTO `le_must_system_log` VALUES (3331, 1, 'admin/Verify/systemuserstatus', '::1', '--', '否', '2018-06-26 13:19:49');
INSERT INTO `le_must_system_log` VALUES (3332, 1, 'admin/Verify/systemuserstatus', '::1', '--', '否', '2018-06-26 13:19:50');
INSERT INTO `le_must_system_log` VALUES (3333, 1, 'admin/Verify/systemuserstatus', '::1', '--', '否', '2018-06-26 13:20:40');
INSERT INTO `le_must_system_log` VALUES (3334, 1, 'admin/Verify/systemuserstatus', '::1', '--', '否', '2018-06-26 13:20:41');
INSERT INTO `le_must_system_log` VALUES (3335, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 13:20:44');
INSERT INTO `le_must_system_log` VALUES (3336, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 13:20:44');
INSERT INTO `le_must_system_log` VALUES (3337, 1, 'admin/Verify/klstatus', '::1', '--', '否', '2018-06-26 13:20:45');
INSERT INTO `le_must_system_log` VALUES (3338, 1, 'admin/Verify/klstatus', '::1', '--', '否', '2018-06-26 13:20:46');
INSERT INTO `le_must_system_log` VALUES (3339, 1, 'admin/Verify/klstatus', '::1', '--', '否', '2018-06-26 13:20:57');
INSERT INTO `le_must_system_log` VALUES (3340, 1, 'admin/Verify/klstatus', '::1', '--', '否', '2018-06-26 13:21:01');
INSERT INTO `le_must_system_log` VALUES (3341, 1, 'admin/Verify/klstatus', '::1', '--', '否', '2018-06-26 13:21:02');
INSERT INTO `le_must_system_log` VALUES (3342, 1, 'admin/Verify/klstatus', '::1', '--', '否', '2018-06-26 13:21:15');
INSERT INTO `le_must_system_log` VALUES (3343, 1, 'admin/Verify/klstatus', '::1', '--', '否', '2018-06-26 13:22:00');
INSERT INTO `le_must_system_log` VALUES (3344, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 13:26:30');
INSERT INTO `le_must_system_log` VALUES (3345, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 13:26:30');
INSERT INTO `le_must_system_log` VALUES (3346, 1, 'admin/Verify/delete', '::1', '--', '否', '2018-06-26 13:28:05');
INSERT INTO `le_must_system_log` VALUES (3347, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 13:28:08');
INSERT INTO `le_must_system_log` VALUES (3348, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 13:28:11');
INSERT INTO `le_must_system_log` VALUES (3349, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 13:28:11');
INSERT INTO `le_must_system_log` VALUES (3350, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 13:39:44');
INSERT INTO `le_must_system_log` VALUES (3351, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 13:39:45');
INSERT INTO `le_must_system_log` VALUES (3352, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 13:41:35');
INSERT INTO `le_must_system_log` VALUES (3353, 1, 'admin/Verify/edit', '::1', '--', '否', '2018-06-26 13:42:06');
INSERT INTO `le_must_system_log` VALUES (3354, 1, 'admin/Verify/klstatus', '::1', '--', '否', '2018-06-26 13:53:03');
INSERT INTO `le_must_system_log` VALUES (3355, 1, 'admin/Verify/klstatus', '::1', '--', '否', '2018-06-26 13:53:04');
INSERT INTO `le_must_system_log` VALUES (3356, 1, 'admin/Verify/klstatus', '::1', '--', '否', '2018-06-26 13:53:11');
INSERT INTO `le_must_system_log` VALUES (3357, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 14:06:13');
INSERT INTO `le_must_system_log` VALUES (3358, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 14:06:14');
INSERT INTO `le_must_system_log` VALUES (3359, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-26 14:06:15');
INSERT INTO `le_must_system_log` VALUES (3360, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-26 14:06:58');
INSERT INTO `le_must_system_log` VALUES (3361, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 14:07:41');
INSERT INTO `le_must_system_log` VALUES (3362, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 14:07:43');
INSERT INTO `le_must_system_log` VALUES (3363, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 14:07:47');
INSERT INTO `le_must_system_log` VALUES (3364, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 14:07:47');
INSERT INTO `le_must_system_log` VALUES (3365, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-26 14:08:03');
INSERT INTO `le_must_system_log` VALUES (3366, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 14:14:51');
INSERT INTO `le_must_system_log` VALUES (3367, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 14:14:52');
INSERT INTO `le_must_system_log` VALUES (3368, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 14:15:39');
INSERT INTO `le_must_system_log` VALUES (3369, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 14:15:40');
INSERT INTO `le_must_system_log` VALUES (3370, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-26 14:15:41');
INSERT INTO `le_must_system_log` VALUES (3371, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 14:15:49');
INSERT INTO `le_must_system_log` VALUES (3372, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 14:15:49');
INSERT INTO `le_must_system_log` VALUES (3373, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-26 14:15:50');
INSERT INTO `le_must_system_log` VALUES (3374, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 14:17:11');
INSERT INTO `le_must_system_log` VALUES (3375, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 14:17:12');
INSERT INTO `le_must_system_log` VALUES (3376, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-26 14:17:13');
INSERT INTO `le_must_system_log` VALUES (3377, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-26 14:17:41');
INSERT INTO `le_must_system_log` VALUES (3378, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-26 14:18:17');
INSERT INTO `le_must_system_log` VALUES (3379, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-26 14:18:28');
INSERT INTO `le_must_system_log` VALUES (3380, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-26 14:21:07');
INSERT INTO `le_must_system_log` VALUES (3381, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-26 14:21:12');
INSERT INTO `le_must_system_log` VALUES (3382, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-26 14:21:25');
INSERT INTO `le_must_system_log` VALUES (3383, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-26 14:21:36');
INSERT INTO `le_must_system_log` VALUES (3384, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-26 14:31:01');
INSERT INTO `le_must_system_log` VALUES (3385, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 14:35:31');
INSERT INTO `le_must_system_log` VALUES (3386, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 14:37:15');
INSERT INTO `le_must_system_log` VALUES (3387, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 14:42:04');
INSERT INTO `le_must_system_log` VALUES (3388, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 14:44:28');
INSERT INTO `le_must_system_log` VALUES (3389, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 14:46:44');
INSERT INTO `le_must_system_log` VALUES (3390, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 14:52:26');
INSERT INTO `le_must_system_log` VALUES (3391, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 14:52:36');
INSERT INTO `le_must_system_log` VALUES (3392, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 14:54:18');
INSERT INTO `le_must_system_log` VALUES (3393, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 14:55:03');
INSERT INTO `le_must_system_log` VALUES (3394, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 14:55:03');
INSERT INTO `le_must_system_log` VALUES (3395, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-26 14:56:06');
INSERT INTO `le_must_system_log` VALUES (3396, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-26 14:56:09');
INSERT INTO `le_must_system_log` VALUES (3397, 1, 'admin/Verify/klstatus', '::1', '--', '否', '2018-06-26 14:58:37');
INSERT INTO `le_must_system_log` VALUES (3398, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 14:58:46');
INSERT INTO `le_must_system_log` VALUES (3399, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 14:58:46');
INSERT INTO `le_must_system_log` VALUES (3400, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 14:58:49');
INSERT INTO `le_must_system_log` VALUES (3401, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 14:58:52');
INSERT INTO `le_must_system_log` VALUES (3402, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 14:58:52');
INSERT INTO `le_must_system_log` VALUES (3403, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 17:04:45');
INSERT INTO `le_must_system_log` VALUES (3404, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 17:05:00');
INSERT INTO `le_must_system_log` VALUES (3405, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 17:05:22');
INSERT INTO `le_must_system_log` VALUES (3406, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-26 17:05:42');
INSERT INTO `le_must_system_log` VALUES (3407, 1, 'admin/System/index', '::1', '--', '否', '2018-06-26 17:05:43');
INSERT INTO `le_must_system_log` VALUES (3408, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-26 17:05:49');
INSERT INTO `le_must_system_log` VALUES (3409, 1, 'admin/System/index', '::1', '--', '否', '2018-06-26 17:05:49');
INSERT INTO `le_must_system_log` VALUES (3410, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-26 17:05:55');
INSERT INTO `le_must_system_log` VALUES (3411, 1, 'admin/System/index', '::1', '--', '否', '2018-06-26 17:05:55');
INSERT INTO `le_must_system_log` VALUES (3412, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-26 17:05:59');
INSERT INTO `le_must_system_log` VALUES (3413, 1, 'admin/System/index', '::1', '--', '否', '2018-06-26 17:05:59');
INSERT INTO `le_must_system_log` VALUES (3414, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-26 17:06:25');
INSERT INTO `le_must_system_log` VALUES (3415, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-26 17:06:30');
INSERT INTO `le_must_system_log` VALUES (3416, 1, 'admin/System/index', '::1', '--', '否', '2018-06-26 17:06:31');
INSERT INTO `le_must_system_log` VALUES (3417, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-26 17:07:23');
INSERT INTO `le_must_system_log` VALUES (3418, 1, 'admin/System/index', '::1', '--', '否', '2018-06-26 17:07:23');
INSERT INTO `le_must_system_log` VALUES (3419, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-26 17:07:26');
INSERT INTO `le_must_system_log` VALUES (3420, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-26 17:07:26');
INSERT INTO `le_must_system_log` VALUES (3421, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-26 17:08:39');
INSERT INTO `le_must_system_log` VALUES (3422, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-26 17:08:54');
INSERT INTO `le_must_system_log` VALUES (3423, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-26 17:10:52');
INSERT INTO `le_must_system_log` VALUES (3424, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-26 17:11:51');
INSERT INTO `le_must_system_log` VALUES (3425, 1, 'admin/System/index', '::1', '--', '否', '2018-06-26 17:11:51');
INSERT INTO `le_must_system_log` VALUES (3426, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-26 17:12:06');
INSERT INTO `le_must_system_log` VALUES (3427, 1, 'admin/System/index', '::1', '--', '否', '2018-06-26 17:12:06');
INSERT INTO `le_must_system_log` VALUES (3428, 1, 'admin/Login/out', '::1', '--', '否', '2018-06-26 17:12:14');
INSERT INTO `le_must_system_log` VALUES (3429, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-26 17:12:14');
INSERT INTO `le_must_system_log` VALUES (3430, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-26 17:13:08');
INSERT INTO `le_must_system_log` VALUES (3431, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-26 17:13:17');
INSERT INTO `le_must_system_log` VALUES (3432, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-26 17:13:23');
INSERT INTO `le_must_system_log` VALUES (3433, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-26 17:14:50');
INSERT INTO `le_must_system_log` VALUES (3434, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-26 17:15:08');
INSERT INTO `le_must_system_log` VALUES (3435, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-26 17:16:17');
INSERT INTO `le_must_system_log` VALUES (3436, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-26 17:19:04');
INSERT INTO `le_must_system_log` VALUES (3437, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-26 17:19:14');
INSERT INTO `le_must_system_log` VALUES (3438, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-26 17:19:26');
INSERT INTO `le_must_system_log` VALUES (3439, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-26 17:19:31');
INSERT INTO `le_must_system_log` VALUES (3440, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-26 17:19:35');
INSERT INTO `le_must_system_log` VALUES (3441, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-26 17:19:37');
INSERT INTO `le_must_system_log` VALUES (3442, 1, 'admin/System/index', '::1', '--', '否', '2018-06-26 17:19:37');
INSERT INTO `le_must_system_log` VALUES (3443, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 17:19:39');
INSERT INTO `le_must_system_log` VALUES (3444, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 17:19:41');
INSERT INTO `le_must_system_log` VALUES (3445, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 17:19:41');
INSERT INTO `le_must_system_log` VALUES (3446, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 17:19:53');
INSERT INTO `le_must_system_log` VALUES (3447, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 17:19:53');
INSERT INTO `le_must_system_log` VALUES (3448, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 17:22:35');
INSERT INTO `le_must_system_log` VALUES (3449, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 17:22:35');
INSERT INTO `le_must_system_log` VALUES (3450, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 18:11:26');
INSERT INTO `le_must_system_log` VALUES (3451, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 18:11:27');
INSERT INTO `le_must_system_log` VALUES (3452, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-26 18:12:24');
INSERT INTO `le_must_system_log` VALUES (3453, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-26 18:12:32');
INSERT INTO `le_must_system_log` VALUES (3454, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-26 18:12:46');
INSERT INTO `le_must_system_log` VALUES (3455, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-26 18:12:55');
INSERT INTO `le_must_system_log` VALUES (3456, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 18:14:39');
INSERT INTO `le_must_system_log` VALUES (3457, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 18:14:39');
INSERT INTO `le_must_system_log` VALUES (3458, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 18:16:17');
INSERT INTO `le_must_system_log` VALUES (3459, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 18:16:17');
INSERT INTO `le_must_system_log` VALUES (3460, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 18:16:34');
INSERT INTO `le_must_system_log` VALUES (3461, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 18:16:34');
INSERT INTO `le_must_system_log` VALUES (3462, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 18:17:56');
INSERT INTO `le_must_system_log` VALUES (3463, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 18:17:56');
INSERT INTO `le_must_system_log` VALUES (3464, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 18:19:28');
INSERT INTO `le_must_system_log` VALUES (3465, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 18:19:29');
INSERT INTO `le_must_system_log` VALUES (3466, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 18:19:30');
INSERT INTO `le_must_system_log` VALUES (3467, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 18:19:30');
INSERT INTO `le_must_system_log` VALUES (3468, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 18:20:52');
INSERT INTO `le_must_system_log` VALUES (3469, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 18:21:54');
INSERT INTO `le_must_system_log` VALUES (3470, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 18:21:54');
INSERT INTO `le_must_system_log` VALUES (3471, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 18:32:06');
INSERT INTO `le_must_system_log` VALUES (3472, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 18:32:22');
INSERT INTO `le_must_system_log` VALUES (3473, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-26 18:32:24');
INSERT INTO `le_must_system_log` VALUES (3474, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 18:32:25');
INSERT INTO `le_must_system_log` VALUES (3475, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 18:32:25');
INSERT INTO `le_must_system_log` VALUES (3476, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-26 18:32:31');
INSERT INTO `le_must_system_log` VALUES (3477, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-26 18:32:56');
INSERT INTO `le_must_system_log` VALUES (3478, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 18:33:52');
INSERT INTO `le_must_system_log` VALUES (3479, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 18:33:52');
INSERT INTO `le_must_system_log` VALUES (3480, 1, 'admin/Verify/klstatus', '::1', '--', '否', '2018-06-26 18:34:10');
INSERT INTO `le_must_system_log` VALUES (3481, 1, 'admin/Verify/klstatus', '::1', '--', '否', '2018-06-26 18:34:33');
INSERT INTO `le_must_system_log` VALUES (3482, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 18:34:43');
INSERT INTO `le_must_system_log` VALUES (3483, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 18:34:43');
INSERT INTO `le_must_system_log` VALUES (3484, 1, 'admin/Verify/klstatus', '::1', '--', '否', '2018-06-26 18:35:03');
INSERT INTO `le_must_system_log` VALUES (3485, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 18:35:08');
INSERT INTO `le_must_system_log` VALUES (3486, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 18:35:08');
INSERT INTO `le_must_system_log` VALUES (3487, 1, 'admin/Verify/klstatus', '::1', '--', '否', '2018-06-26 18:35:13');
INSERT INTO `le_must_system_log` VALUES (3488, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 18:35:22');
INSERT INTO `le_must_system_log` VALUES (3489, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 18:35:23');
INSERT INTO `le_must_system_log` VALUES (3490, 1, 'admin/Verify/klstatus', '::1', '--', '否', '2018-06-26 18:35:28');
INSERT INTO `le_must_system_log` VALUES (3491, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 18:35:31');
INSERT INTO `le_must_system_log` VALUES (3492, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 18:35:32');
INSERT INTO `le_must_system_log` VALUES (3493, 1, 'admin/Verify/klstatus', '::1', '--', '否', '2018-06-26 18:37:22');
INSERT INTO `le_must_system_log` VALUES (3494, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 18:37:29');
INSERT INTO `le_must_system_log` VALUES (3495, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-26 18:37:29');
INSERT INTO `le_must_system_log` VALUES (3496, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 18:37:35');
INSERT INTO `le_must_system_log` VALUES (3497, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-26 18:37:35');
INSERT INTO `le_must_system_log` VALUES (3498, 1, 'admin/Verify/klstatus', '::1', '--', '否', '2018-06-26 18:37:37');
INSERT INTO `le_must_system_log` VALUES (3499, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-26 18:39:13');
INSERT INTO `le_must_system_log` VALUES (3500, 1, 'admin/System/auth', '::1', '--', '否', '2018-06-26 18:39:22');
INSERT INTO `le_must_system_log` VALUES (3501, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-26 18:39:48');
INSERT INTO `le_must_system_log` VALUES (3502, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-27 08:34:41');
INSERT INTO `le_must_system_log` VALUES (3503, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-27 08:34:55');
INSERT INTO `le_must_system_log` VALUES (3504, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-27 08:35:00');
INSERT INTO `le_must_system_log` VALUES (3505, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-27 08:35:02');
INSERT INTO `le_must_system_log` VALUES (3506, 1, 'admin/System/index', '::1', '--', '否', '2018-06-27 08:35:03');
INSERT INTO `le_must_system_log` VALUES (3507, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-27 08:35:06');
INSERT INTO `le_must_system_log` VALUES (3508, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-27 08:35:07');
INSERT INTO `le_must_system_log` VALUES (3509, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-27 08:35:07');
INSERT INTO `le_must_system_log` VALUES (3510, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-27 08:35:19');
INSERT INTO `le_must_system_log` VALUES (3511, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-27 08:35:29');
INSERT INTO `le_must_system_log` VALUES (3512, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-27 08:35:34');
INSERT INTO `le_must_system_log` VALUES (3513, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-27 08:35:58');
INSERT INTO `le_must_system_log` VALUES (3514, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-27 08:36:00');
INSERT INTO `le_must_system_log` VALUES (3515, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-27 08:36:10');
INSERT INTO `le_must_system_log` VALUES (3516, 1, 'admin/System/index', '::1', '--', '否', '2018-06-27 08:36:10');
INSERT INTO `le_must_system_log` VALUES (3517, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-27 08:36:13');
INSERT INTO `le_must_system_log` VALUES (3518, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-27 08:36:13');
INSERT INTO `le_must_system_log` VALUES (3519, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 08:36:21');
INSERT INTO `le_must_system_log` VALUES (3520, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 08:36:21');
INSERT INTO `le_must_system_log` VALUES (3521, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-27 09:00:55');
INSERT INTO `le_must_system_log` VALUES (3522, 1, 'admin/System/config', '::1', '--', '否', '2018-06-27 09:13:09');
INSERT INTO `le_must_system_log` VALUES (3523, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:14:46');
INSERT INTO `le_must_system_log` VALUES (3524, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:14:47');
INSERT INTO `le_must_system_log` VALUES (3525, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:25:20');
INSERT INTO `le_must_system_log` VALUES (3526, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:25:20');
INSERT INTO `le_must_system_log` VALUES (3527, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-27 09:30:11');
INSERT INTO `le_must_system_log` VALUES (3528, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-27 09:30:12');
INSERT INTO `le_must_system_log` VALUES (3529, 1, 'admin/System/auth', '::1', '--', '否', '2018-06-27 09:30:26');
INSERT INTO `le_must_system_log` VALUES (3530, 1, 'admin/System/auth', '::1', '--', '否', '2018-06-27 09:30:36');
INSERT INTO `le_must_system_log` VALUES (3531, 1, 'admin/System/auth', '::1', '--', '否', '2018-06-27 09:30:42');
INSERT INTO `le_must_system_log` VALUES (3532, 1, 'admin/System/addauth', '::1', '--', '否', '2018-06-27 09:30:48');
INSERT INTO `le_must_system_log` VALUES (3533, 1, 'admin/System/auth', '::1', '--', '否', '2018-06-27 09:30:51');
INSERT INTO `le_must_system_log` VALUES (3534, 1, 'admin/System/auth_edit', '::1', '--', '否', '2018-06-27 09:30:53');
INSERT INTO `le_must_system_log` VALUES (3535, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-27 09:30:58');
INSERT INTO `le_must_system_log` VALUES (3536, 1, 'admin/System/authallocation', '::1', '--', '否', '2018-06-27 09:31:06');
INSERT INTO `le_must_system_log` VALUES (3537, 1, 'admin/System/treejson', '::1', '--', '否', '2018-06-27 09:31:06');
INSERT INTO `le_must_system_log` VALUES (3538, 1, 'admin/System/authallocation', '::1', '--', '否', '2018-06-27 09:31:06');
INSERT INTO `le_must_system_log` VALUES (3539, 1, 'admin/System/authallocation', '::1', '--', '否', '2018-06-27 09:31:07');
INSERT INTO `le_must_system_log` VALUES (3540, 1, 'admin/System/status', '::1', '--', '否', '2018-06-27 09:31:14');
INSERT INTO `le_must_system_log` VALUES (3541, 1, 'admin/System/status', '::1', '--', '否', '2018-06-27 09:31:16');
INSERT INTO `le_must_system_log` VALUES (3542, 1, 'admin/System/status', '::1', '--', '否', '2018-06-27 09:31:17');
INSERT INTO `le_must_system_log` VALUES (3543, 1, 'admin/System/status', '::1', '--', '否', '2018-06-27 09:31:18');
INSERT INTO `le_must_system_log` VALUES (3544, 1, 'admin/SystemUser/edit', '::1', '--', '否', '2018-06-27 09:31:31');
INSERT INTO `le_must_system_log` VALUES (3545, 1, 'admin/SystemUser/edit', '::1', '--', '否', '2018-06-27 09:31:35');
INSERT INTO `le_must_system_log` VALUES (3546, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-27 09:31:48');
INSERT INTO `le_must_system_log` VALUES (3547, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-27 09:31:48');
INSERT INTO `le_must_system_log` VALUES (3548, 1, 'admin/SystemUser/edit_password', '::1', '--', '否', '2018-06-27 09:31:51');
INSERT INTO `le_must_system_log` VALUES (3549, 1, 'admin/Login/out', '::1', '--', '否', '2018-06-27 09:32:00');
INSERT INTO `le_must_system_log` VALUES (3550, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-27 09:32:01');
INSERT INTO `le_must_system_log` VALUES (3551, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-27 09:32:13');
INSERT INTO `le_must_system_log` VALUES (3552, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-27 09:32:15');
INSERT INTO `le_must_system_log` VALUES (3553, 4, 'admin/System/index', '::1', '--', '否', '2018-06-27 09:32:15');
INSERT INTO `le_must_system_log` VALUES (3554, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-27 09:32:17');
INSERT INTO `le_must_system_log` VALUES (3555, 4, 'admin/System/index', '::1', '--', '否', '2018-06-27 09:32:18');
INSERT INTO `le_must_system_log` VALUES (3556, 4, 'admin/Index/index', '::1', '--', '否', '2018-06-27 09:32:19');
INSERT INTO `le_must_system_log` VALUES (3557, 4, 'admin/System/index', '::1', '--', '否', '2018-06-27 09:32:19');
INSERT INTO `le_must_system_log` VALUES (3558, 4, 'admin/Login/out', '::1', '--', '否', '2018-06-27 09:32:25');
INSERT INTO `le_must_system_log` VALUES (3559, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-27 09:32:25');
INSERT INTO `le_must_system_log` VALUES (3560, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-27 09:32:34');
INSERT INTO `le_must_system_log` VALUES (3561, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-27 09:32:36');
INSERT INTO `le_must_system_log` VALUES (3562, 1, 'admin/System/index', '::1', '--', '否', '2018-06-27 09:32:36');
INSERT INTO `le_must_system_log` VALUES (3563, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-27 09:32:39');
INSERT INTO `le_must_system_log` VALUES (3564, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-27 09:32:39');
INSERT INTO `le_must_system_log` VALUES (3565, 1, 'admin/SystemUser/add', '::1', '--', '否', '2018-06-27 09:32:55');
INSERT INTO `le_must_system_log` VALUES (3566, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-27 09:32:58');
INSERT INTO `le_must_system_log` VALUES (3567, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-27 09:32:58');
INSERT INTO `le_must_system_log` VALUES (3568, 1, 'admin/SystemUser/systemuserstatus', '::1', '--', '否', '2018-06-27 09:33:01');
INSERT INTO `le_must_system_log` VALUES (3569, 1, 'admin/Login/out', '::1', '--', '否', '2018-06-27 09:33:05');
INSERT INTO `le_must_system_log` VALUES (3570, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-27 09:33:05');
INSERT INTO `le_must_system_log` VALUES (3571, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-27 09:33:13');
INSERT INTO `le_must_system_log` VALUES (3572, 5, 'admin/Index/index', '::1', '--', '否', '2018-06-27 09:33:15');
INSERT INTO `le_must_system_log` VALUES (3573, 5, 'admin/System/index', '::1', '--', '否', '2018-06-27 09:33:15');
INSERT INTO `le_must_system_log` VALUES (3574, 5, 'admin/Verify/index', '::1', '--', '否', '2018-06-27 09:33:17');
INSERT INTO `le_must_system_log` VALUES (3575, 5, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-27 09:33:19');
INSERT INTO `le_must_system_log` VALUES (3576, 5, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-27 09:33:19');
INSERT INTO `le_must_system_log` VALUES (3577, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:33:21');
INSERT INTO `le_must_system_log` VALUES (3578, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:33:21');
INSERT INTO `le_must_system_log` VALUES (3579, 5, 'admin/Verify/index', '::1', '--', '否', '2018-06-27 09:33:32');
INSERT INTO `le_must_system_log` VALUES (3580, 5, 'admin/Verify/index', '::1', '--', '否', '2018-06-27 09:33:34');
INSERT INTO `le_must_system_log` VALUES (3581, 5, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-27 09:33:36');
INSERT INTO `le_must_system_log` VALUES (3582, 5, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-27 09:33:36');
INSERT INTO `le_must_system_log` VALUES (3583, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:33:40');
INSERT INTO `le_must_system_log` VALUES (3584, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:33:40');
INSERT INTO `le_must_system_log` VALUES (3585, 5, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-27 09:33:46');
INSERT INTO `le_must_system_log` VALUES (3586, 5, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-27 09:33:50');
INSERT INTO `le_must_system_log` VALUES (3587, 5, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-27 09:34:19');
INSERT INTO `le_must_system_log` VALUES (3588, 5, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-27 09:34:19');
INSERT INTO `le_must_system_log` VALUES (3589, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:34:32');
INSERT INTO `le_must_system_log` VALUES (3590, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:34:33');
INSERT INTO `le_must_system_log` VALUES (3591, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:34:51');
INSERT INTO `le_must_system_log` VALUES (3592, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:34:52');
INSERT INTO `le_must_system_log` VALUES (3593, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:41:44');
INSERT INTO `le_must_system_log` VALUES (3594, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:41:44');
INSERT INTO `le_must_system_log` VALUES (3595, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:42:28');
INSERT INTO `le_must_system_log` VALUES (3596, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:42:28');
INSERT INTO `le_must_system_log` VALUES (3597, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:45:52');
INSERT INTO `le_must_system_log` VALUES (3598, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:45:52');
INSERT INTO `le_must_system_log` VALUES (3599, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:46:38');
INSERT INTO `le_must_system_log` VALUES (3600, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:46:38');
INSERT INTO `le_must_system_log` VALUES (3601, 5, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-27 09:48:37');
INSERT INTO `le_must_system_log` VALUES (3602, 5, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-27 09:48:40');
INSERT INTO `le_must_system_log` VALUES (3603, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:49:19');
INSERT INTO `le_must_system_log` VALUES (3604, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:49:19');
INSERT INTO `le_must_system_log` VALUES (3605, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:50:44');
INSERT INTO `le_must_system_log` VALUES (3606, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:50:45');
INSERT INTO `le_must_system_log` VALUES (3607, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:51:39');
INSERT INTO `le_must_system_log` VALUES (3608, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:51:40');
INSERT INTO `le_must_system_log` VALUES (3609, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:57:55');
INSERT INTO `le_must_system_log` VALUES (3610, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:57:55');
INSERT INTO `le_must_system_log` VALUES (3611, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:59:20');
INSERT INTO `le_must_system_log` VALUES (3612, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 09:59:20');
INSERT INTO `le_must_system_log` VALUES (3613, 5, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-27 10:03:48');
INSERT INTO `le_must_system_log` VALUES (3614, 5, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-27 10:03:50');
INSERT INTO `le_must_system_log` VALUES (3615, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 10:04:05');
INSERT INTO `le_must_system_log` VALUES (3616, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 10:04:05');
INSERT INTO `le_must_system_log` VALUES (3617, 5, 'admin/Login/index', '::1', '--', '否', '2018-06-27 10:05:37');
INSERT INTO `le_must_system_log` VALUES (3618, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 10:31:50');
INSERT INTO `le_must_system_log` VALUES (3619, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 10:31:50');
INSERT INTO `le_must_system_log` VALUES (3620, 5, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-27 10:32:00');
INSERT INTO `le_must_system_log` VALUES (3621, 5, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-27 10:32:04');
INSERT INTO `le_must_system_log` VALUES (3622, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 10:32:58');
INSERT INTO `le_must_system_log` VALUES (3623, 5, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 10:32:58');
INSERT INTO `le_must_system_log` VALUES (3624, 5, 'admin/Login/out', '::1', '--', '否', '2018-06-27 10:33:21');
INSERT INTO `le_must_system_log` VALUES (3625, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-27 10:33:21');
INSERT INTO `le_must_system_log` VALUES (3626, NULL, 'admin/Login/index', '::1', '--', '否', '2018-06-27 10:34:10');
INSERT INTO `le_must_system_log` VALUES (3627, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-27 10:34:12');
INSERT INTO `le_must_system_log` VALUES (3628, 1, 'admin/System/index', '::1', '--', '否', '2018-06-27 10:34:12');
INSERT INTO `le_must_system_log` VALUES (3629, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-27 10:34:15');
INSERT INTO `le_must_system_log` VALUES (3630, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-27 10:34:15');
INSERT INTO `le_must_system_log` VALUES (3631, 1, 'admin/Bak/index', '::1', '--', '否', '2018-06-27 10:35:23');
INSERT INTO `le_must_system_log` VALUES (3632, 1, 'admin/Bak/index', '::1', '--', '否', '2018-06-27 10:35:23');
INSERT INTO `le_must_system_log` VALUES (3633, 1, 'admin/Bak/back', '::1', '--', '否', '2018-06-27 10:35:29');
INSERT INTO `le_must_system_log` VALUES (3634, 1, 'admin/Bak/index', '::1', '--', '否', '2018-06-27 10:35:32');
INSERT INTO `le_must_system_log` VALUES (3635, 1, 'admin/Bak/index', '::1', '--', '否', '2018-06-27 10:35:32');
INSERT INTO `le_must_system_log` VALUES (3636, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-27 11:01:58');
INSERT INTO `le_must_system_log` VALUES (3637, 1, 'admin/Login/index', '::1', '--', '否', '2018-06-27 11:02:09');
INSERT INTO `le_must_system_log` VALUES (3638, 1, 'admin/Index/index', '::1', '--', '否', '2018-06-27 11:02:11');
INSERT INTO `le_must_system_log` VALUES (3639, 1, 'admin/System/index', '::1', '--', '否', '2018-06-27 11:02:11');
INSERT INTO `le_must_system_log` VALUES (3640, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-27 11:02:13');
INSERT INTO `le_must_system_log` VALUES (3641, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-27 11:02:14');
INSERT INTO `le_must_system_log` VALUES (3642, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-27 11:02:15');
INSERT INTO `le_must_system_log` VALUES (3643, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 11:02:16');
INSERT INTO `le_must_system_log` VALUES (3644, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 11:02:16');
INSERT INTO `le_must_system_log` VALUES (3645, 1, 'admin/System/config', '::1', '--', '否', '2018-06-27 11:02:20');
INSERT INTO `le_must_system_log` VALUES (3646, 1, 'admin/Log/index', '::1', '--', '否', '2018-06-27 11:02:26');
INSERT INTO `le_must_system_log` VALUES (3647, 1, 'admin/Log/index', '::1', '--', '否', '2018-06-27 11:02:26');
INSERT INTO `le_must_system_log` VALUES (3648, 1, 'admin/Verify/index', '::1', '--', '否', '2018-06-27 11:03:14');
INSERT INTO `le_must_system_log` VALUES (3649, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-27 11:03:15');
INSERT INTO `le_must_system_log` VALUES (3650, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-27 11:03:15');
INSERT INTO `le_must_system_log` VALUES (3651, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 11:03:26');
INSERT INTO `le_must_system_log` VALUES (3652, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 11:03:27');
INSERT INTO `le_must_system_log` VALUES (3653, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-27 11:03:30');
INSERT INTO `le_must_system_log` VALUES (3654, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 11:04:46');
INSERT INTO `le_must_system_log` VALUES (3655, 1, 'admin/Verify/klresult', '::1', '--', '否', '2018-06-27 11:04:46');
INSERT INTO `le_must_system_log` VALUES (3656, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-27 11:16:27');
INSERT INTO `le_must_system_log` VALUES (3657, 1, 'admin/SystemUser/index', '::1', '--', '否', '2018-06-27 11:16:28');
INSERT INTO `le_must_system_log` VALUES (3658, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-27 11:16:31');
INSERT INTO `le_must_system_log` VALUES (3659, 1, 'admin/Nav/index', '::1', '--', '否', '2018-06-27 11:17:19');
INSERT INTO `le_must_system_log` VALUES (3660, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-27 11:19:26');
INSERT INTO `le_must_system_log` VALUES (3661, 1, 'admin/Verify/kladmin', '::1', '--', '否', '2018-06-27 11:19:27');
INSERT INTO `le_must_system_log` VALUES (3662, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-27 11:19:30');
INSERT INTO `le_must_system_log` VALUES (3663, 1, 'admin/Verify/editkl', '::1', '--', '否', '2018-06-27 11:19:33');
COMMIT;

-- ----------------------------
-- Table structure for le_must_system_user
-- ----------------------------
DROP TABLE IF EXISTS `le_must_system_user`;
CREATE TABLE `le_must_system_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `account` varchar(20) NOT NULL DEFAULT '' COMMENT '管理员用户名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '管理员密码',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(20) DEFAULT NULL COMMENT '最后登录IP',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态 1:启用 0:禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of le_must_system_user
-- ----------------------------
BEGIN;
INSERT INTO `le_must_system_user` VALUES (1, 'admin', '39b06ad92d56e6445a58096d77b39f48', '2018-06-27 11:02:09', '::1', '2016-10-18 15:28:37', 1);
INSERT INTO `le_must_system_user` VALUES (2, 'root', '39b06ad92d56e6445a58096d77b39f48', '2017-05-02 20:30:27', '0.0.0.0', '2017-02-23 16:10:53', 1);
INSERT INTO `le_must_system_user` VALUES (4, 'lezhu', '3a68d5d870f00255be8770ff952c15d7', '2018-06-27 09:32:13', '::1', '2018-06-22 15:01:57', 1);
INSERT INTO `le_must_system_user` VALUES (5, 'test', '39b06ad92d56e6445a58096d77b39f48', '2018-06-27 09:33:13', '::1', '2018-06-27 09:32:55', 1);
COMMIT;

-- ----------------------------
-- Table structure for le_yhhome
-- ----------------------------
DROP TABLE IF EXISTS `le_yhhome`;
CREATE TABLE `le_yhhome` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `mname` varchar(30) DEFAULT NULL COMMENT '菜单名称',
  `murl` varchar(30) DEFAULT NULL COMMENT '菜单链接',
  `mstyle` varchar(30) DEFAULT NULL COMMENT '菜单样式',
  `micon` varchar(30) DEFAULT NULL COMMENT '菜单图标',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of le_yhhome
-- ----------------------------
BEGIN;
INSERT INTO `le_yhhome` VALUES (1, '我的评价（第一张）', '/index/index/user.html', 'btn-info', 'glyphicon-user');
INSERT INTO `le_yhhome` VALUES (2, '所有订单（第二张）', '/index/index/order.html', 'btn-primary', 'glyphicon-align-justify');
INSERT INTO `le_yhhome` VALUES (3, '我的信誉（第三张）', '/index/index/xy.html', 'btn-success', 'glyphicon-heart-empty');
INSERT INTO `le_yhhome` VALUES (4, '看淘气值（第四张）', '/index/index/tj.html', 'btn-warning', 'glyphicon-search');
INSERT INTO `le_yhhome` VALUES (5, '退款管理（第五张）', '/index/index/tk.html', 'btn-warning', 'glyphicon-user');
INSERT INTO `le_yhhome` VALUES (6, '信用中心（第六张）', '/index/index/xinyong.html', 'btn-danger', 'glyphicon-yen');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
