/*
Navicat MySQL Data Transfer

Source Server         : 备份库
Source Server Version : 50632
Source Host           : 127.0.0.1:3306
Source Database       : xjd_db

Target Server Type    : MYSQL
Target Server Version : 50632
File Encoding         : 65001

Date: 2019-03-20 18:02:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `d_admin`
-- ----------------------------
DROP TABLE IF EXISTS `d_admin`;
CREATE TABLE `d_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `pw` varchar(50) NOT NULL DEFAULT '0' COMMENT '明文密码',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(100) NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录时间',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `token` varchar(59) NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员表';

-- ----------------------------
-- Records of d_admin
-- ----------------------------
INSERT INTO `d_admin` VALUES ('1', 'admin', 'Admin', '0', '78b1ba68ccd920b6cff2396a9fa8072e', '825039', '/assets/img/avatar.png', 'admin@admin.com', '0', '1553047274', '1492186163', '1553047274', '05bbd6f9-10ea-4c65-8c3e-84a50993bb11', 'normal');
INSERT INTO `d_admin` VALUES ('2', 'channel2019032011472152', 'channel2019032011472152', '811570', '21f96c3ebf614e9ed34d18bea1b71fbf', 'uIltA4', '/assets/img/avatar.png', '', '0', '0', '1553053641', '1553053641', '', 'normal');
INSERT INTO `d_admin` VALUES ('3', 'channel2019032014345147', 'channel2019032014345147', '589313', '08002f7d2ef44052c00baf0e1b8bd52a', 'mK23I7', '/assets/img/avatar.png', '', '0', '0', '1553063691', '1553063691', '', 'normal');

-- ----------------------------
-- Table structure for `d_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `d_admin_log`;
CREATE TABLE `d_admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(1500) NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text NOT NULL COMMENT '内容',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `name` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员日志表';

-- ----------------------------
-- Records of d_admin_log
-- ----------------------------
INSERT INTO `d_admin_log` VALUES ('1', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '1552730847');
INSERT INTO `d_admin_log` VALUES ('2', '1', 'admin', '/admin/index/login', '登录', '{\"__token__\":\"fd617e8bedde0633bf52de3d7aeafeb6\",\"username\":\"admin\",\"captcha\":\"dbAm\"}', '120.244.111.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:65.0) Gecko/20100101 Firefox/65.0', '1552930031');
INSERT INTO `d_admin_log` VALUES ('3', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '120.244.111.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:65.0) Gecko/20100101 Firefox/65.0', '1552930034');
INSERT INTO `d_admin_log` VALUES ('4', '1', 'admin', '/admin/index/login', '登录', '{\"__token__\":\"da5b348f496c7305fd716d48358aaf21\",\"username\":\"admin\",\"captcha\":\"KNVF\"}', '114.252.141.102', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553046400');
INSERT INTO `d_admin_log` VALUES ('5', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553046401');
INSERT INTO `d_admin_log` VALUES ('6', '0', 'Unknown', '/admin/index/login', '', '{\"__token__\":\"e979b0327cfde8631da8e52ca7bdca3d\",\"username\":\"admin\",\"captcha\":\"oBYR\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '1553047198');
INSERT INTO `d_admin_log` VALUES ('7', '0', 'Unknown', '/admin/index/login', '', '{\"__token__\":\"07332d10bb0abb34a619706079493167\",\"username\":\"admin\",\"captcha\":\"OBYR\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '1553047206');
INSERT INTO `d_admin_log` VALUES ('8', '0', 'Unknown', '/admin/index/login', '', '{\"__token__\":\"dcbc7b367011dc6a19a51f962b90042c\",\"username\":\"admin\",\"captcha\":\"MVMZ\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '1553047213');
INSERT INTO `d_admin_log` VALUES ('9', '1', 'admin', '/admin/index/login', '登录', '{\"__token__\":\"21c6744d528e05fae0d0678784dbdf5c\",\"username\":\"admin\",\"captcha\":\"WFMM\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '1553047222');
INSERT INTO `d_admin_log` VALUES ('10', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '1553047222');
INSERT INTO `d_admin_log` VALUES ('11', '1', 'admin', '/admin/index/login', '登录', '{\"__token__\":\"6daebae1259d18686eeaa280e76ea4c5\",\"username\":\"admin\",\"captcha\":\"JPMP\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553047274');
INSERT INTO `d_admin_log` VALUES ('12', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553047275');
INSERT INTO `d_admin_log` VALUES ('13', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '1553047903');
INSERT INTO `d_admin_log` VALUES ('14', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553048073');
INSERT INTO `d_admin_log` VALUES ('15', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '1553048166');
INSERT INTO `d_admin_log` VALUES ('16', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '1553048367');
INSERT INTO `d_admin_log` VALUES ('17', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '1553048509');
INSERT INTO `d_admin_log` VALUES ('18', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '1553048598');
INSERT INTO `d_admin_log` VALUES ('19', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553048614');
INSERT INTO `d_admin_log` VALUES ('20', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553049240');
INSERT INTO `d_admin_log` VALUES ('21', '1', 'admin', '/admin/general/attachment/del/ids/10', '', '{\"action\":\"del\",\"ids\":\"10\",\"params\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553049483');
INSERT INTO `d_admin_log` VALUES ('22', '1', 'admin', '/admin/general/attachment/del/ids/9', '', '{\"action\":\"del\",\"ids\":\"9\",\"params\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553049492');
INSERT INTO `d_admin_log` VALUES ('23', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553049556');
INSERT INTO `d_admin_log` VALUES ('24', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553049600');
INSERT INTO `d_admin_log` VALUES ('25', '1', 'admin', '/admin/general/attachment/del/ids/8', '', '{\"action\":\"del\",\"ids\":\"8\",\"params\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553049675');
INSERT INTO `d_admin_log` VALUES ('26', '1', 'admin', '/admin/general/attachment/del/ids/7', '', '{\"action\":\"del\",\"ids\":\"7\",\"params\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553049678');
INSERT INTO `d_admin_log` VALUES ('27', '1', 'admin', '/admin/general/attachment/del/ids/6', '', '{\"action\":\"del\",\"ids\":\"6\",\"params\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553049680');
INSERT INTO `d_admin_log` VALUES ('28', '1', 'admin', '/admin/general/attachment/del/ids/5', '', '{\"action\":\"del\",\"ids\":\"5\",\"params\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553049682');
INSERT INTO `d_admin_log` VALUES ('29', '1', 'admin', '/admin/general/attachment/del/ids/4', '', '{\"action\":\"del\",\"ids\":\"4\",\"params\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553049684');
INSERT INTO `d_admin_log` VALUES ('30', '1', 'admin', '/admin/general/attachment/del/ids/3', '', '{\"action\":\"del\",\"ids\":\"3\",\"params\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553049687');
INSERT INTO `d_admin_log` VALUES ('31', '1', 'admin', '/admin/general/attachment/del/ids/2', '', '{\"action\":\"del\",\"ids\":\"2\",\"params\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553049690');
INSERT INTO `d_admin_log` VALUES ('32', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553049805');
INSERT INTO `d_admin_log` VALUES ('33', '1', 'admin', '/admin/channel/channeltemplate/edit/ids/1?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"template_name\":\"\\u6a21\\u677f1\",\"template_url\":\"http:\\/\\/test.chinazhizao2025.cn\\/index.php\\/register\\/index\",\"template_preview_pc\":\"\\/uploads\\/20190212\\/7cbf49346a793c888601242c38808ecd.png\",\"template_preview_app\":\"\\/uploads\\/20190212\\/943f08254f4d764d07841966417771e0.png\"},\"ids\":\"1\"}', '114.252.141.102', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553049934');
INSERT INTO `d_admin_log` VALUES ('34', '1', 'admin', '/admin/channel/channel/edit/ids/1?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"channel_name\":\"\\u77ed\\u4fe1\\u63a8\\u5e7f\\u6a21\\u677f\",\"channel_desc\":\"\\u77ed\\u4fe1\\u63a8\\u5e7f\\u94fe\\u63a5,\\u8bef\\u5220\",\"settle_type\":\"CPA\",\"template_id\":\"1\"},\"ids\":\"1\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553050398');
INSERT INTO `d_admin_log` VALUES ('35', '1', 'admin', '/admin/channel/channel/edit/ids/1?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"channel_name\":\"\\u77ed\\u4fe1\\u63a8\\u5e7f\\u6a21\\u677f\",\"channel_desc\":\"\\u77ed\\u4fe1\\u63a8\\u5e7f\\u94fe\\u63a5,\\u8bef\\u5220\",\"settle_type\":\"CPA\",\"template_id\":\"1\"},\"ids\":\"1\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553050410');
INSERT INTO `d_admin_log` VALUES ('36', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553050930');
INSERT INTO `d_admin_log` VALUES ('37', '1', 'admin', '/admin/channel/channeltemplate/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"template_name\":\"sdfgds\",\"template_url\":\"fdsgsdg\",\"template_preview_pc\":\"sfdgsdg\",\"template_preview_app\":\"sfdgsd\"}}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553051213');
INSERT INTO `d_admin_log` VALUES ('38', '1', 'admin', '/admin/channel/channeltemplate/del/ids/10', '', '{\"action\":\"del\",\"ids\":\"10\",\"params\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553051225');
INSERT INTO `d_admin_log` VALUES ('39', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553053632');
INSERT INTO `d_admin_log` VALUES ('40', '1', 'admin', '/admin/channel/channel/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"channel_name\":\"123\",\"channel_desc\":\"21312\",\"settle_type\":\"CPS\",\"template_id\":\"2\"}}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553053641');
INSERT INTO `d_admin_log` VALUES ('41', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553053763');
INSERT INTO `d_admin_log` VALUES ('42', '1', 'admin', '/admin/channel/channel/del/ids/2', '', '{\"action\":\"del\",\"ids\":\"2\",\"params\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553053782');
INSERT INTO `d_admin_log` VALUES ('43', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553053965');
INSERT INTO `d_admin_log` VALUES ('44', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553054065');
INSERT INTO `d_admin_log` VALUES ('45', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553054083');
INSERT INTO `d_admin_log` VALUES ('46', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553063626');
INSERT INTO `d_admin_log` VALUES ('47', '1', 'admin', '/admin/channel/channel/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"channel_name\":\"\\u77ed\\u4fe1\\u63a8\\u5e7f\\u6a21\\u677f\",\"channel_desc\":\"http:\\/\\/test.chinazhizao2025.cn\\/index.php\\/register\\/index\",\"settle_type\":\"CPA\",\"template_id\":\"1\"}}', '114.252.141.102', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553063691');
INSERT INTO `d_admin_log` VALUES ('48', '1', 'admin', '/admin/channel/channel/edit/ids/3?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"channel_name\":\"\\u77ed\\u4fe1\\u63a8\\u5e7f\\u6a21\\u677f\",\"channel_desc\":\"\\u77ed\\u4fe1\\u63a8\\u5e7f\\u94fe\\u63a5\",\"settle_type\":\"CPA\",\"template_id\":\"1\"},\"ids\":\"3\"}', '114.252.141.102', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553063715');
INSERT INTO `d_admin_log` VALUES ('49', '1', 'admin', '/admin/channel/channel/del/ids/1', '', '{\"action\":\"del\",\"ids\":\"1\",\"params\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553063733');
INSERT INTO `d_admin_log` VALUES ('50', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553064039');
INSERT INTO `d_admin_log` VALUES ('51', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553064142');
INSERT INTO `d_admin_log` VALUES ('52', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553064412');
INSERT INTO `d_admin_log` VALUES ('53', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553064451');
INSERT INTO `d_admin_log` VALUES ('54', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553070216');
INSERT INTO `d_admin_log` VALUES ('55', '1', 'admin', '/index.php/admin/delete', '', '{\"p\":\"18618106717\",\"t\":\"guozao-2019032016\"}', '114.252.141.102', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553071346');
INSERT INTO `d_admin_log` VALUES ('56', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553071352');
INSERT INTO `d_admin_log` VALUES ('57', '1', 'admin', '/admin/dashboard/getDayInfo.html', '', '{\"date\":\"\"}', '114.252.141.102', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '1553071505');

-- ----------------------------
-- Table structure for `d_alipay_user`
-- ----------------------------
DROP TABLE IF EXISTS `d_alipay_user`;
CREATE TABLE `d_alipay_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mem_id` int(11) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL COMMENT '账号',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_alipay_user
-- ----------------------------

-- ----------------------------
-- Table structure for `d_allot`
-- ----------------------------
DROP TABLE IF EXISTS `d_allot`;
CREATE TABLE `d_allot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '审核人员',
  `num` int(11) DEFAULT NULL COMMENT '分配订单数',
  `allot_time` int(11) DEFAULT NULL COMMENT '最近分配时间',
  `type` tinyint(2) DEFAULT NULL COMMENT '1 审核人员 2  财务人员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_allot
-- ----------------------------

-- ----------------------------
-- Table structure for `d_app_config`
-- ----------------------------
DROP TABLE IF EXISTS `d_app_config`;
CREATE TABLE `d_app_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_url` varchar(255) DEFAULT NULL COMMENT '安卓安装包地址',
  `ad_update_url` varchar(255) DEFAULT NULL COMMENT '安卓更新包地址',
  `ad_version` varchar(255) DEFAULT NULL COMMENT '安卓版本',
  `ios_url` varchar(255) DEFAULT NULL COMMENT 'ios安装包地址',
  `ios_version` varchar(255) DEFAULT NULL COMMENT 'ios安装包地址',
  `mobile` varchar(255) DEFAULT NULL COMMENT '客服电话',
  `qq` varchar(255) DEFAULT NULL COMMENT '客服QQ',
  `wechat` varchar(255) DEFAULT NULL COMMENT '客服微信',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL,
  `wechat_image` varchar(255) DEFAULT NULL COMMENT '微信图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_app_config
-- ----------------------------

-- ----------------------------
-- Table structure for `d_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `d_attachment`;
CREATE TABLE `d_attachment` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) NOT NULL DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) NOT NULL DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) NOT NULL DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `mimetype` varchar(100) NOT NULL DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) NOT NULL DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建日期',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `uploadtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `storage` varchar(100) NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='附件表';

-- ----------------------------
-- Records of d_attachment
-- ----------------------------
INSERT INTO `d_attachment` VALUES ('1', '1', '0', '/assets/img/qrcode.png', '150', '150', 'png', '0', '21859', 'image/png', '', '1499681848', '1499681848', '1499681848', 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6');
INSERT INTO `d_attachment` VALUES ('11', '1', '0', '/uploads/20190111/ee183a82afeb8c6c43fca3c96630f875.png', '200', '152', 'png', '0', '56921', 'image/png', '', '1547212976', '1547212976', '1547212976', 'local', '8d9df73c8c0c95c3d2edc1482e298a36090c7e5c');
INSERT INTO `d_attachment` VALUES ('12', '1', '0', '/uploads/20190215/193cf74c528404261adc2ab6f56eefc4.jpg', '750', '1334', 'jpg', '0', '204945', 'image/jpeg', '', '1550208073', '1550208073', '1550208073', 'local', 'e7d6dc7a70dd4d0bc1c937f3bb3c39db542436fa');
INSERT INTO `d_attachment` VALUES ('13', '1', '0', '/uploads/20190215/e5addd52186370eb1e996356ada1609f.jpg', '750', '1334', 'jpg', '0', '256648', 'image/jpeg', '', '1550208082', '1550208082', '1550208082', 'local', '1dada55f6fa2ed1dcf4aba0e3e4f368ef7946838');
INSERT INTO `d_attachment` VALUES ('14', '1', '0', '/uploads/20190215/4baba20fb8561fd588e83dcf05b522f2.jpg', '750', '1334', 'jpg', '0', '141861', 'image/jpeg', '', '1550208094', '1550208094', '1550208094', 'local', '2f33fa62902c90274fea3573dcde1598625f235e');
INSERT INTO `d_attachment` VALUES ('15', '1', '0', '/uploads/20190215/56807790d42d7de459b4cc7b73677392.jpg', '750', '1334', 'jpg', '0', '188161', 'image/jpeg', '', '1550208103', '1550208103', '1550208103', 'local', 'b1533282863cbc9ca9463172dab15c17ea4921ba');
INSERT INTO `d_attachment` VALUES ('16', '1', '0', '/uploads/20190215/4b35d511e9be904643e205ac6271a3c8.jpg', '750', '1334', 'jpg', '0', '122652', 'image/jpeg', '', '1550208112', '1550208112', '1550208112', 'local', 'becdbc8be3657d437ff550ea7bbad3cf567332c5');
INSERT INTO `d_attachment` VALUES ('17', '1', '0', '/uploads/20190215/3650610397d5423893db412e973ab77b.jpg', '750', '1334', 'jpg', '0', '157878', 'image/jpeg', '', '1550208122', '1550208122', '1550208122', 'local', '1f0ee410b8e61d83399cd8bd32718e21dcc34411');
INSERT INTO `d_attachment` VALUES ('18', '1', '0', '/uploads/20190215/32688a1e9b756bb394fef480abefe8e5.jpg', '750', '1334', 'jpg', '0', '132863', 'image/jpeg', '', '1550208130', '1550208130', '1550208130', 'local', 'c2051bdd1dd739f404f0ed559ed6521565eab541');
INSERT INTO `d_attachment` VALUES ('19', '1', '0', '/uploads/20190305/ae0f8f3fd608d43944e0c7da7fdfa09d.jpg', '750', '1334', 'jpg', '0', '189126', 'image/jpeg', '', '1551764520', '1551764520', '1551764520', 'local', '9764b1782e49b856aab6c98179ea95dde11c49a8');
INSERT INTO `d_attachment` VALUES ('20', '1', '0', '/uploads/20190305/ae0f8f3fd608d43944e0c7da7fdfa09d.jpg', '750', '1334', 'jpg', '0', '189126', 'image/jpeg', '', '1551764525', '1551764525', '1551764525', 'local', '9764b1782e49b856aab6c98179ea95dde11c49a8');

-- ----------------------------
-- Table structure for `d_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `d_auth_group`;
CREATE TABLE `d_auth_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text NOT NULL COMMENT '规则ID',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  `type` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='分组表';

-- ----------------------------
-- Records of d_auth_group
-- ----------------------------
INSERT INTO `d_auth_group` VALUES ('1', '0', 'Admin group', '*', '1490883540', '149088354', 'normal', '1');
INSERT INTO `d_auth_group` VALUES ('2', '1', '管理员', '13,14,16,15,17,118,119,120,121,122,127,128,131,132,133,134,135,137,138,139,140,141,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,100,101,102,103,104,123,124,125,126,1,117,130,136,9,10,11,12,5,6,7,8,2,99,98,129', '1490883540', '1549700337', 'normal', '2');
INSERT INTO `d_auth_group` VALUES ('4', '1', 'Second group 2', '1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65', '1490883540', '1502205350', 'normal', '4');
INSERT INTO `d_auth_group` VALUES ('6', '1', '渠道员', '142,143,150,151,152,153', '1490883540', '1547005082', 'normal', '6');
INSERT INTO `d_auth_group` VALUES ('7', '1', '催收组', '130,131,132,133,134,135,136,137,138,139,140,141,129', '1548075139', '1548075139', 'normal', '0');
INSERT INTO `d_auth_group` VALUES ('10', '1', '放款组', '1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,98,99,100,101,102,103,104,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141', '1490883540', '1547005082', 'normal', '5');
INSERT INTO `d_auth_group` VALUES ('11', '1', '审核员组', '1,13,14,15,16,17,117,118,119,120,121,122,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141', '1490883540', '1547005047', 'normal', '3');

-- ----------------------------
-- Table structure for `d_auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `d_auth_group_access`;
CREATE TABLE `d_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '会员ID',
  `group_id` int(10) unsigned NOT NULL COMMENT '级别ID',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `group_id` (`group_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='权限分组表';

-- ----------------------------
-- Records of d_auth_group_access
-- ----------------------------
INSERT INTO `d_auth_group_access` VALUES ('1', '1');
INSERT INTO `d_auth_group_access` VALUES ('2', '6');
INSERT INTO `d_auth_group_access` VALUES ('3', '6');

-- ----------------------------
-- Table structure for `d_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `d_auth_rule`;
CREATE TABLE `d_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '模块名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '规则名称',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '路径',
  `icon` varchar(50) NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  `hidden` tinyint(2) NOT NULL DEFAULT '0' COMMENT ' 是否隐藏 0 不隐藏 1 隐藏',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE,
  KEY `weigh` (`weigh`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点表';

-- ----------------------------
-- Records of d_auth_rule
-- ----------------------------
INSERT INTO `d_auth_rule` VALUES ('1', 'file', '0', 'dashboard', '首页', '', 'example', '', 'Dashboard tips', '1', '1497429920', '1497429920', '143', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('2', 'file', '0', 'general', '常规管理', '', 'fa fa-film', '', '', '1', '1497429920', '1547558568', '120', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('3', 'file', '0', 'category', 'Category', '', 'example', '', 'Category tips', '0', '1497429920', '1546973073', '119', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('5', 'file', '0', 'auth', '权限管理', '', 'fa fa-wpforms', '', '', '1', '1497429920', '1547558728', '134', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('6', 'file', '2', 'example', 'Config', '/example/table', 'example', '', 'Config tips', '0', '1497429920', '1546961433', '60', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('7', 'file', '2', 'general/attachment', 'Attachment', '', 'example', '', 'Attachment tips', '1', '1497429920', '1497430699', '53', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('8', 'file', '2', 'general/profile', 'Profile', '', 'example', '', '', '1', '1497429920', '1497429920', '34', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('9', 'file', '5', 'form', 'Admin', '/form/index', 'example', '', 'Admin tips', '1', '1497429920', '1497430320', '118', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('10', 'file', '5', 'auth/adminlog', 'Admin log', '', 'example', '', 'Admin log tips', '1', '1497429920', '1497430307', '113', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('11', 'file', '5', 'auth/group', 'Group', '', 'example', '', 'Group tips', '1', '1497429920', '1497429920', '109', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('12', 'file', '5', 'auth/rule', 'Rule', '', 'example', '', 'Rule tips', '1', '1497429920', '1547261115', '104', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('13', 'file', '1', 'form', 'View', '/form/index', 'example', '', '', '0', '1497429920', '1497429920', '136', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('14', 'file', '1', 'dashboard/add', 'Add', '', 'example', '', '', '0', '1497429920', '1497429920', '135', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('15', 'file', '1', 'dashboard/del', 'Delete', '', 'example', '', '', '0', '1497429920', '1497429920', '133', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('16', 'file', '1', 'dashboard/edit', 'Edit', '', 'example', '', '', '0', '1497429920', '1497429920', '134', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('17', 'file', '1', 'dashboard/multi', 'Multi', '', 'example', '', '', '0', '1497429920', '1497429920', '132', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('18', 'file', '6', 'general/config/index', 'View', '', 'example', '', '', '0', '1497429920', '1497429920', '52', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('19', 'file', '6', 'general/config/add', 'Add', '', 'example', '', '', '0', '1497429920', '1497429920', '51', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('20', 'file', '6', 'general/config/edit', 'Edit', '', 'example', '', '', '0', '1497429920', '1497429920', '50', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('21', 'file', '6', 'general/config/del', 'Delete', '', 'example', '', '', '0', '1497429920', '1497429920', '49', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('22', 'file', '6', 'general/config/multi', 'Multi', '', 'example', '', '', '0', '1497429920', '1497429920', '48', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('23', 'file', '7', 'general/attachment/index', 'View', '', 'example', '', 'Attachment tips', '0', '1497429920', '1497429920', '59', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('24', 'file', '7', 'general/attachment/select', 'Select attachment', '', 'example', '', '', '0', '1497429920', '1497429920', '58', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('25', 'file', '7', 'general/attachment/add', 'Add', '', 'example', '', '', '0', '1497429920', '1497429920', '57', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('26', 'file', '7', 'general/attachment/edit', 'Edit', '', 'example', '', '', '0', '1497429920', '1497429920', '56', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('27', 'file', '7', 'general/attachment/del', 'Delete', '', 'example', '', '', '0', '1497429920', '1497429920', '55', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('28', 'file', '7', 'general/attachment/multi', 'Multi', '', 'example', '', '', '0', '1497429920', '1497429920', '54', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('29', 'file', '8', 'general/profile/index', 'View', '', 'example', '', '', '0', '1497429920', '1497429920', '33', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('30', 'file', '8', 'general/profile/update', 'Update profile', '', 'example', '', '', '0', '1497429920', '1497429920', '32', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('31', 'file', '8', 'general/profile/add', 'Add', '', 'example', '', '', '0', '1497429920', '1497429920', '31', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('32', 'file', '8', 'general/profile/edit', 'Edit', '', 'example', '', '', '0', '1497429920', '1497429920', '30', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('33', 'file', '8', 'general/profile/del', 'Delete', '', 'example', '', '', '0', '1497429920', '1497429920', '29', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('34', 'file', '8', 'general/profile/multi', 'Multi', '', 'example', '', '', '0', '1497429920', '1497429920', '28', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('35', 'file', '3', 'category/index', 'View', '', 'example', '', 'Category tips', '0', '1497429920', '1497429920', '142', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('36', 'file', '3', 'category/add', 'Add', '', 'example', '', '', '0', '1497429920', '1497429920', '141', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('37', 'file', '3', 'category/edit', 'Edit', '', 'example', '', '', '0', '1497429920', '1497429920', '140', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('38', 'file', '3', 'category/del', 'Delete', '', 'example', '', '', '0', '1497429920', '1497429920', '139', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('39', 'file', '3', 'category/multi', 'Multi', '', 'example', '', '', '0', '1497429920', '1497429920', '138', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('40', 'file', '9', 'auth/admin/index', 'View', '', 'example', '', 'Admin tips', '1', '1497429920', '1497429920', '117', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('41', 'file', '9', 'auth/admin/add', 'Add', '', 'example', '', '', '1', '1497429920', '1497429920', '116', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('42', 'file', '9', 'auth/admin/edit', 'Edit', '', 'example', '', '', '0', '1497429920', '1497429920', '115', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('43', 'file', '9', 'auth/admin/del', 'Delete', '', 'example', '', '', '0', '1497429920', '1497429920', '114', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('44', 'file', '10', 'auth/adminlog/index', 'View', '', 'example', '', 'Admin log tips', '0', '1497429920', '1497429920', '112', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('45', 'file', '10', 'auth/adminlog/detail', 'Detail', '', 'example', '', '', '0', '1497429920', '1497429920', '111', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('46', 'file', '10', 'auth/adminlog/del', 'Delete', '', 'example', '', '', '0', '1497429920', '1497429920', '110', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('47', 'file', '11', 'auth/group/index', 'View', '', 'example', '', 'Group tips', '0', '1497429920', '1497429920', '108', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('48', 'file', '11', 'auth/group/add', 'Add', '', 'example', '', '', '0', '1497429920', '1497429920', '107', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('49', 'file', '11', 'auth/group/edit', 'Edit', '', 'example', '', '', '0', '1497429920', '1497429920', '106', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('50', 'file', '11', 'auth/group/del', 'Delete', '', 'example', '', '', '0', '1497429920', '1497429920', '105', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('51', 'file', '12', 'auth/rule/index', 'View', '', 'example', '', 'Rule tips', '0', '1497429920', '1497429920', '103', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('52', 'file', '12', 'auth/rule/add', 'Add', '', 'example', '', '', '0', '1497429920', '1497429920', '102', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('53', 'file', '12', 'auth/rule/edit', 'Edit', '', 'example', '', '', '0', '1497429920', '1497429920', '101', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('54', 'file', '12', 'auth/rule/del', 'Delete', '', 'example', '', '', '0', '1497429920', '1497429920', '100', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('66', 'file', '0', 'user', '用户管理', '', 'fa fa-address-book', '', '', '1', '1516374729', '1547558607', '140', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('67', 'file', '66', 'user/user', '用户管理', '', 'example', '', '', '1', '1516374729', '1548424769', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('68', 'file', '67', 'user/user/index', 'View', '', 'example', '', '', '0', '1516374729', '1516374729', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('69', 'file', '67', 'user/user/edit', 'Edit', '', 'example', '', '', '0', '1516374729', '1516374729', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('70', 'file', '67', 'user/user/add', 'Add', '', 'example', '', '', '0', '1516374729', '1516374729', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('71', 'file', '67', 'user/user/del', 'Del', '', 'example', '', '', '0', '1516374729', '1516374729', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('72', 'file', '67', 'user/user/multi', 'Multi', '', 'example', '', '', '0', '1516374729', '1516374729', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('73', 'file', '129', 'user/group', '黑名单', '', 'example', '', '', '1', '1516374729', '1548127994', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('74', 'file', '73', 'user/group/add', 'Add', '', 'example', '', '', '0', '1516374729', '1516374729', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('75', 'file', '73', 'user/group/edit', 'Edit', '', 'example', '', '', '0', '1516374729', '1516374729', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('76', 'file', '73', 'user/group/index', 'View', '', 'example', '', '', '0', '1516374729', '1516374729', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('77', 'file', '73', 'user/group/del', 'Del', '', 'example', '', '', '0', '1516374729', '1516374729', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('78', 'file', '73', 'user/group/multi', 'Multi', '', 'example', '', '', '0', '1516374729', '1516374729', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('79', 'file', '66', 'user/rule', 'User rule', '', 'example', '', '', '0', '1516374729', '1547384164', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('80', 'file', '79', 'user/rule/index', 'View', '', 'example', '', '', '0', '1516374729', '1516374729', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('81', 'file', '79', 'user/rule/del', 'Del', '', 'example', '', '', '0', '1516374729', '1516374729', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('82', 'file', '79', 'user/rule/add', 'Add', '', 'example', '', '', '0', '1516374729', '1516374729', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('83', 'file', '79', 'user/rule/edit', 'Edit', '', 'example', '', '', '0', '1516374729', '1516374729', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('84', 'file', '79', 'user/rule/multi', 'Multi', '', 'example', '', '', '0', '1516374729', '1516374729', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('91', 'file', '0', 'sms', '短信管理', '', 'fa fa-wpforms', '', '', '1', '1544875835', '1548421264', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('92', 'file', '91', 'sms/scene', 'Scene', '', 'example', '', '', '0', '1544875835', '1548565083', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('93', 'file', '92', 'sms/scene/index', '查看', '', 'example', '', '', '0', '1544875835', '1544875835', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('94', 'file', '92', 'sms/scene/add', '添加', '', 'example', '', '', '0', '1544875835', '1544875835', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('95', 'file', '92', 'sms/scene/edit', '编辑', '', 'example', '', '', '0', '1544875836', '1544875836', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('96', 'file', '92', 'sms/scene/del', '删除', '', 'example', '', '', '0', '1544875836', '1544875836', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('97', 'file', '92', 'sms/scene/multi', '', '', 'example', '', '', '0', '1544875836', '1544875836', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('98', 'file', '0', 'sys', '系统配置', '', 'fa fa-sun-o', '', '', '1', '1545016270', '1547558267', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('99', 'file', '98', 'sys/config', 'APP模板', '', 'example', '', '', '1', '1545016270', '1546757892', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('100', 'file', '99', 'sys/config/index', '查看', '', 'example', '', '', '0', '1545016270', '1545016270', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('101', 'file', '99', 'sys/config/add', '添加', '', 'example', '', '', '0', '1545016270', '1545016270', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('102', 'file', '99', 'sys/config/edit', '编辑', '', 'example', '', '', '0', '1545016271', '1545016271', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('103', 'file', '99', 'sys/config/del', '删除', '', 'example', '', '', '0', '1545016271', '1545016271', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('104', 'file', '99', 'sys/config/multi', '批量更新', '', 'example', '', '', '0', '1545016271', '1545016271', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('117', 'file', '0', 'order', '审核管理', '', 'fa fa-server', '', '', '1', '1545702949', '1549627532', '139', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('118', 'file', '117', 'order/index', '查看', '', 'example', '', '', '0', '1545702949', '1545702949', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('119', 'file', '117', 'order/add', '添加', '', 'example', '', '', '0', '1545702949', '1545702949', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('120', 'file', '117', 'order/edit', '编辑', '', 'example', '', '', '0', '1545702949', '1545702949', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('121', 'file', '117', 'order/del', '删除', '', 'example', '', '', '0', '1545702949', '1545702949', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('122', 'file', '117', 'order/multi', '批量更新', '', 'example', '', '', '0', '1545702949', '1545702949', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('123', 'file', '98', 'sys/appconfig/edit', 'APP 安装包配置', '', 'example', '', '', '1', '1546757035', '1546911311', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('124', 'file', '98', 'sys/examineconfig/edit', '审核配置', '', 'example', '', '', '0', '1546768370', '1547559502', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('125', 'file', '98', 'sys/payconfig/edit', '支付配置', '', 'example', '', '', '1', '1546781040', '1546781040', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('126', 'file', '98', 'sys/expectconfig/edit', '展期配置', '', 'example', '', '', '1', '1546781373', '1546911099', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('127', 'file', '117', 'order/fullorderindex', '完整进件', '', '', '', '', '1', '1546963323', '1546973255', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('128', 'file', '117', 'order/regorderlist', '注册进件', '', '', '', '', '1', '1546963344', '1546973262', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('129', 'file', '0', 'account', '贷后管理', '', 'fa fa-bitcoin', '', '', '1', '1546965948', '1547558679', '137', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('130', 'file', '129', 'account/noraml', '正常还款', '', '', '', '', '1', '1546965948', '1548564683', '3', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('131', 'file', '130', 'account/noraml/index', '查看', '', 'fa fa-circle-o', '', '', '0', '1546965949', '1546965949', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('132', 'file', '130', 'account/noraml/add', '添加', '', 'fa fa-circle-o', '', '', '0', '1546965949', '1546965949', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('133', 'file', '130', 'account/noraml/edit', '编辑', '', 'fa fa-circle-o', '', '', '0', '1546965949', '1546965949', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('134', 'file', '130', 'account/noraml/del', '删除', '', 'fa fa-circle-o', '', '', '0', '1546965949', '1546965949', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('135', 'file', '130', 'account/noraml/multi', '批量更新', '', 'fa fa-circle-o', '', '', '0', '1546965949', '1546965949', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('136', 'file', '129', 'account/over', '待收列表', '', '', '', '', '1', '1546965964', '1548564674', '2', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('137', 'file', '136', 'account/over/index', '查看', '', 'fa fa-circle-o', '', '', '0', '1546965964', '1546965964', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('138', 'file', '136', 'account/over/add', '添加', '', 'fa fa-circle-o', '', '', '0', '1546965964', '1546965964', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('139', 'file', '136', 'account/over/edit', '编辑', '', 'fa fa-circle-o', '', '', '0', '1546965964', '1546965964', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('140', 'file', '136', 'account/over/del', '删除', '', 'fa fa-circle-o', '', '', '0', '1546965964', '1546965964', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('141', 'file', '136', 'account/over/multi', '批量更新', '', 'fa fa-circle-o', '', '', '0', '1546965964', '1546965964', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('142', 'file', '0', 'channel', '渠道管理', '', 'fa fa-binoculars', '', '', '1', '1547124746', '1547558713', '135', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('143', 'file', '142', 'channel/channel/index', '渠道配置', '', '', '', '', '1', '1547124838', '1547172240', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('144', 'file', '129', 'account/statistics', '贷后报表', '', '', '', '', '1', '1547133016', '1548564667', '1', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('145', 'file', '144', 'account/statistics/index', '查看', '', 'fa fa-circle-o', '', '', '0', '1547133016', '1547133016', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('146', 'file', '144', 'account/statistics/add', '添加', '', 'fa fa-circle-o', '', '', '0', '1547133016', '1547133016', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('147', 'file', '144', 'account/statistics/edit', '编辑', '', 'fa fa-circle-o', '', '', '0', '1547133016', '1547133016', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('148', 'file', '144', 'account/statistics/del', '删除', '', 'fa fa-circle-o', '', '', '0', '1547133016', '1547133016', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('149', 'file', '144', 'account/statistics/multi', '批量更新', '', 'fa fa-circle-o', '', '', '0', '1547133016', '1547133016', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('150', 'file', '142', 'channel/channelagency/index', '渠道代理', '', '', '', '', '1', '1547175011', '1547985978', '0', 'hidden', '0');
INSERT INTO `d_auth_rule` VALUES ('151', 'file', '142', 'channel/channeltemplate/index', '渠道模板', '', '0', '', '', '1', '1547211170', '1547211170', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('152', 'file', '142', 'channel/channelstatistics/index', '渠道统计', '', '0', '', '', '1', '1547256561', '1547256561', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('153', 'file', '142', 'channel/channeluser/index', '渠道用户统计', '', '0', '', '', '1', '1547364015', '1550567074', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('154', 'file', '160', 'account/loan', '进件放款', '', '', '', '', '1', '1547482792', '1547558777', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('155', 'file', '154', 'account/loan/index', '查看', '', 'fa fa-circle-o', '', '', '0', '1547482792', '1547482792', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('156', 'file', '154', 'account/loan/add', '添加', '', 'fa fa-circle-o', '', '', '0', '1547482792', '1547482792', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('157', 'file', '154', 'account/loan/edit', '编辑', '', 'fa fa-circle-o', '', '', '0', '1547482792', '1547482792', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('158', 'file', '154', 'account/loan/del', '删除', '', 'fa fa-circle-o', '', '', '0', '1547482792', '1547482792', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('159', 'file', '154', 'account/loan/multi', '批量更新', '', 'fa fa-circle-o', '', '', '0', '1547482792', '1547482792', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('160', 'file', '0', 'finance', '放款管理', '', 'fa fa-calculator', '', '', '1', '1547558052', '1549627552', '138', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('161', 'file', '0', 'analyse', '数据统计', '', 'fa fa-binoculars', '', '', '0', '1547558466', '1548564652', '136', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('168', 'file', '160', 'account/repay', '还款追踪', '', '', '', '', '1', '1547993374', '1547993506', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('169', 'file', '168', 'account/repay/index', '查看', '', 'fa fa-circle-o', '', '', '0', '1547993374', '1547993374', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('170', 'file', '168', 'account/repay/add', '添加', '', 'fa fa-circle-o', '', '', '0', '1547993374', '1547993374', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('171', 'file', '168', 'account/repay/edit', '编辑', '', 'fa fa-circle-o', '', '', '0', '1547993374', '1547993374', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('172', 'file', '168', 'account/repay/del', '删除', '', 'fa fa-circle-o', '', '', '0', '1547993374', '1547993374', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('173', 'file', '168', 'account/repay/multi', '批量更新', '', 'fa fa-circle-o', '', '', '0', '1547993374', '1547993374', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('174', 'file', '91', 'general/crontab/index', '定时任务', '', '0', '', '', '0', '1548425035', '1548573125', '0', 'normal', '0');
INSERT INTO `d_auth_rule` VALUES ('175', 'file', '91', 'sms/business/index', '规则配置', '', '', '', '', '1', '1548465627', '1548465627', '0', 'normal', '0');

-- ----------------------------
-- Table structure for `d_banklist`
-- ----------------------------
DROP TABLE IF EXISTS `d_banklist`;
CREATE TABLE `d_banklist` (
  `id` varchar(255) NOT NULL COMMENT '银行缩写',
  `name` varchar(255) DEFAULT NULL COMMENT '银行名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_banklist
-- ----------------------------
INSERT INTO `d_banklist` VALUES ('ABC', '中国农业银行');
INSERT INTO `d_banklist` VALUES ('ARCU', '安徽省农村信用社');
INSERT INTO `d_banklist` VALUES ('ASCB', '鞍山银行');
INSERT INTO `d_banklist` VALUES ('AYCB', '安阳银行');
INSERT INTO `d_banklist` VALUES ('BANKWF', '潍坊银行');
INSERT INTO `d_banklist` VALUES ('BGB', '广西北部湾银行');
INSERT INTO `d_banklist` VALUES ('BHB', '河北银行');
INSERT INTO `d_banklist` VALUES ('BJBANK', '北京银行');
INSERT INTO `d_banklist` VALUES ('BJRCB', '北京农村商业银行');
INSERT INTO `d_banklist` VALUES ('BOC', '中国银行');
INSERT INTO `d_banklist` VALUES ('BOCD', '承德银行');
INSERT INTO `d_banklist` VALUES ('BOCY', '朝阳银行');
INSERT INTO `d_banklist` VALUES ('BOD', '东莞银行');
INSERT INTO `d_banklist` VALUES ('BODD', '丹东银行');
INSERT INTO `d_banklist` VALUES ('BOHAIB', '渤海银行');
INSERT INTO `d_banklist` VALUES ('BOJZ', '锦州银行');
INSERT INTO `d_banklist` VALUES ('BOP', '平顶山银行');
INSERT INTO `d_banklist` VALUES ('BOQH', '青海银行');
INSERT INTO `d_banklist` VALUES ('BOSZ', '苏州银行');
INSERT INTO `d_banklist` VALUES ('BOYK', '营口银行');
INSERT INTO `d_banklist` VALUES ('BOZK', '周口银行');
INSERT INTO `d_banklist` VALUES ('BSB', '包商银行');
INSERT INTO `d_banklist` VALUES ('BZMD', '驻马店银行');
INSERT INTO `d_banklist` VALUES ('CBBQS', '城市商业银行资金清算中心');
INSERT INTO `d_banklist` VALUES ('CBKF', '开封市商业银行');
INSERT INTO `d_banklist` VALUES ('CCB', '中国建设银行');
INSERT INTO `d_banklist` VALUES ('CCQTGB', '重庆三峡银行');
INSERT INTO `d_banklist` VALUES ('CDB', '国家开发银行');
INSERT INTO `d_banklist` VALUES ('CDCB', '成都银行');
INSERT INTO `d_banklist` VALUES ('CDRCB', '成都农商银行');
INSERT INTO `d_banklist` VALUES ('CEB', '中国光大银行');
INSERT INTO `d_banklist` VALUES ('CGNB', '南充市商业银行');
INSERT INTO `d_banklist` VALUES ('CIB', '兴业银行');
INSERT INTO `d_banklist` VALUES ('CITIC', '中信银行');
INSERT INTO `d_banklist` VALUES ('CMB', '招商银行');
INSERT INTO `d_banklist` VALUES ('CMBC', '中国民生银行');
INSERT INTO `d_banklist` VALUES ('COMM', '交通银行');
INSERT INTO `d_banklist` VALUES ('CQBANK', '重庆银行');
INSERT INTO `d_banklist` VALUES ('CRCBANK', '重庆农村商业银行');
INSERT INTO `d_banklist` VALUES ('CSCB', '长沙银行');
INSERT INTO `d_banklist` VALUES ('CSRCB', '常熟农村商业银行');
INSERT INTO `d_banklist` VALUES ('CZBANK', '浙商银行');
INSERT INTO `d_banklist` VALUES ('CZCB', '浙江稠州商业银行');
INSERT INTO `d_banklist` VALUES ('CZRCB', '常州农村信用联社');
INSERT INTO `d_banklist` VALUES ('DAQINGB', '龙江银行');
INSERT INTO `d_banklist` VALUES ('DLB', '大连银行');
INSERT INTO `d_banklist` VALUES ('DRCBCL', '东莞农村商业银行');
INSERT INTO `d_banklist` VALUES ('DYCB', '德阳商业银行');
INSERT INTO `d_banklist` VALUES ('DYCCB', '东营市商业银行');
INSERT INTO `d_banklist` VALUES ('DZBANK', '德州银行');
INSERT INTO `d_banklist` VALUES ('EGBANK', '恒丰银行');
INSERT INTO `d_banklist` VALUES ('FDB', '富滇银行');
INSERT INTO `d_banklist` VALUES ('FJHXBC', '福建海峡银行');
INSERT INTO `d_banklist` VALUES ('FSCB', '抚顺银行');
INSERT INTO `d_banklist` VALUES ('FXCB', '阜新银行');
INSERT INTO `d_banklist` VALUES ('GCB', '广州银行');
INSERT INTO `d_banklist` VALUES ('GDB', '广东发展银行');
INSERT INTO `d_banklist` VALUES ('GDRCC', '广东省农村信用社联合社');
INSERT INTO `d_banklist` VALUES ('GLBANK', '桂林银行');
INSERT INTO `d_banklist` VALUES ('GRCB', '广州农商银行');
INSERT INTO `d_banklist` VALUES ('GSRCU', '甘肃省农村信用');
INSERT INTO `d_banklist` VALUES ('GXRCU', '广西省农村信用');
INSERT INTO `d_banklist` VALUES ('GYCB', '贵阳市商业银行');
INSERT INTO `d_banklist` VALUES ('GZB', '赣州银行');
INSERT INTO `d_banklist` VALUES ('GZRCU', '贵州省农村信用社');
INSERT INTO `d_banklist` VALUES ('H3CB', '内蒙古银行');
INSERT INTO `d_banklist` VALUES ('HANABANK', '韩亚银行');
INSERT INTO `d_banklist` VALUES ('HBC', '湖北银行');
INSERT INTO `d_banklist` VALUES ('HBHSBANK', '湖北银行黄石分行');
INSERT INTO `d_banklist` VALUES ('HBRCU', '河北省农村信用社');
INSERT INTO `d_banklist` VALUES ('HBYCBANK', '湖北银行宜昌分行');
INSERT INTO `d_banklist` VALUES ('HDBANK', '邯郸银行');
INSERT INTO `d_banklist` VALUES ('HKB', '汉口银行');
INSERT INTO `d_banklist` VALUES ('HKBEA', '东亚银行');
INSERT INTO `d_banklist` VALUES ('HNRCC', '湖南省农村信用社');
INSERT INTO `d_banklist` VALUES ('HNRCU', '河南省农村信用');
INSERT INTO `d_banklist` VALUES ('HRXJB', '华融湘江银行');
INSERT INTO `d_banklist` VALUES ('HSBANK', '徽商银行');
INSERT INTO `d_banklist` VALUES ('HSBK', '衡水银行');
INSERT INTO `d_banklist` VALUES ('HURCB', '湖北省农村信用社');
INSERT INTO `d_banklist` VALUES ('HXBANK', '华夏银行');
INSERT INTO `d_banklist` VALUES ('HZCB', '杭州银行');
INSERT INTO `d_banklist` VALUES ('HZCCB', '湖州市商业银行');
INSERT INTO `d_banklist` VALUES ('ICBC', '中国工商银行');
INSERT INTO `d_banklist` VALUES ('JHBANK', '金华银行');
INSERT INTO `d_banklist` VALUES ('JINCHB', '晋城银行JCBANK');
INSERT INTO `d_banklist` VALUES ('JJBANK', '九江银行');
INSERT INTO `d_banklist` VALUES ('JLBANK', '吉林银行');
INSERT INTO `d_banklist` VALUES ('JLRCU', '吉林农信');
INSERT INTO `d_banklist` VALUES ('JNBANK', '济宁银行');
INSERT INTO `d_banklist` VALUES ('JRCB', '江苏江阴农村商业银行');
INSERT INTO `d_banklist` VALUES ('JSB', '晋商银行');
INSERT INTO `d_banklist` VALUES ('JSBANK', '江苏银行');
INSERT INTO `d_banklist` VALUES ('JSRCU', '江苏省农村信用联合社');
INSERT INTO `d_banklist` VALUES ('JXBANK', '嘉兴银行');
INSERT INTO `d_banklist` VALUES ('JXRCU', '江西省农村信用');
INSERT INTO `d_banklist` VALUES ('JZBANK', '晋中市商业银行');
INSERT INTO `d_banklist` VALUES ('KLB', '昆仑银行');
INSERT INTO `d_banklist` VALUES ('KORLABANK', '库尔勒市商业银行');
INSERT INTO `d_banklist` VALUES ('KSRB', '昆山农村商业银行');
INSERT INTO `d_banklist` VALUES ('LANGFB', '廊坊银行');
INSERT INTO `d_banklist` VALUES ('LSBANK', '莱商银行');
INSERT INTO `d_banklist` VALUES ('LSBC', '临商银行');
INSERT INTO `d_banklist` VALUES ('LSCCB', '乐山市商业银行');
INSERT INTO `d_banklist` VALUES ('LYBANK', '洛阳银行');
INSERT INTO `d_banklist` VALUES ('LYCB', '辽阳市商业银行');
INSERT INTO `d_banklist` VALUES ('LZYH', '兰州银行');
INSERT INTO `d_banklist` VALUES ('MTBANK', '浙江民泰商业银行');
INSERT INTO `d_banklist` VALUES ('NBBANK', '宁波银行');
INSERT INTO `d_banklist` VALUES ('NBYZ', '鄞州银行');
INSERT INTO `d_banklist` VALUES ('NCB', '南昌银行');
INSERT INTO `d_banklist` VALUES ('NHB', '南海农村信用联社');
INSERT INTO `d_banklist` VALUES ('NHQS', '农信银清算中心');
INSERT INTO `d_banklist` VALUES ('NJCB', '南京银行');
INSERT INTO `d_banklist` VALUES ('NXBANK', '宁夏银行');
INSERT INTO `d_banklist` VALUES ('NXRCU', '宁夏黄河农村商业银行');
INSERT INTO `d_banklist` VALUES ('NYNB', '广东南粤银行');
INSERT INTO `d_banklist` VALUES ('ORBANK', '鄂尔多斯银行');
INSERT INTO `d_banklist` VALUES ('PSBC', '中国邮政储蓄银行');
INSERT INTO `d_banklist` VALUES ('QDCCB', '青岛银行');
INSERT INTO `d_banklist` VALUES ('QLBANK', '齐鲁银行');
INSERT INTO `d_banklist` VALUES ('SCCB', '三门峡银行');
INSERT INTO `d_banklist` VALUES ('SCRCU', '四川省农村信用');
INSERT INTO `d_banklist` VALUES ('SDEB', '顺德农商银行');
INSERT INTO `d_banklist` VALUES ('SDRCU', '山东农信');
INSERT INTO `d_banklist` VALUES ('SHBANK', '上海银行');
INSERT INTO `d_banklist` VALUES ('SHRCB', '上海农村商业银行');
INSERT INTO `d_banklist` VALUES ('SJBANK', '盛京银行');
INSERT INTO `d_banklist` VALUES ('SPABANK', '平安银行');
INSERT INTO `d_banklist` VALUES ('SPDB', '上海浦东发展银行');
INSERT INTO `d_banklist` VALUES ('SRBANK', '上饶银行');
INSERT INTO `d_banklist` VALUES ('SRCB', '深圳农村商业银行');
INSERT INTO `d_banklist` VALUES ('SXCB', '绍兴银行');
INSERT INTO `d_banklist` VALUES ('SXRCCU', '陕西信合');
INSERT INTO `d_banklist` VALUES ('SZSBK', '石嘴山银行');
INSERT INTO `d_banklist` VALUES ('TACCB', '泰安市商业银行');
INSERT INTO `d_banklist` VALUES ('TCCB', '天津银行');
INSERT INTO `d_banklist` VALUES ('TCRCB', '江苏太仓农村商业银行');
INSERT INTO `d_banklist` VALUES ('TRCB', '天津农商银行');
INSERT INTO `d_banklist` VALUES ('TZCB', '台州银行');
INSERT INTO `d_banklist` VALUES ('URMQCCB', '乌鲁木齐市商业银行');
INSERT INTO `d_banklist` VALUES ('WHCCB', '威海市商业银行');
INSERT INTO `d_banklist` VALUES ('WHRCB', '武汉农村商业银行');
INSERT INTO `d_banklist` VALUES ('WJRCB', '吴江农商银行');
INSERT INTO `d_banklist` VALUES ('WRCB', '无锡农村商业银行');
INSERT INTO `d_banklist` VALUES ('WZCB', '温州银行');
INSERT INTO `d_banklist` VALUES ('XABANK', '西安银行');
INSERT INTO `d_banklist` VALUES ('XCYH', '许昌银行');
INSERT INTO `d_banklist` VALUES ('XLBANK', '中山小榄村镇银行');
INSERT INTO `d_banklist` VALUES ('XTB', '邢台银行');
INSERT INTO `d_banklist` VALUES ('XXBANK', '新乡银行');
INSERT INTO `d_banklist` VALUES ('XYBANK', '信阳银行');
INSERT INTO `d_banklist` VALUES ('YBCCB', '宜宾市商业银行');
INSERT INTO `d_banklist` VALUES ('YDRCB', '尧都农商行');
INSERT INTO `d_banklist` VALUES ('YNRCC', '云南省农村信用社');
INSERT INTO `d_banklist` VALUES ('YQCCB', '阳泉银行');
INSERT INTO `d_banklist` VALUES ('YXCCB', '玉溪市商业银行');
INSERT INTO `d_banklist` VALUES ('ZBCB', '齐商银行');
INSERT INTO `d_banklist` VALUES ('ZGCCB', '自贡市商业银行');
INSERT INTO `d_banklist` VALUES ('ZJKCCB', '张家口市商业银行');
INSERT INTO `d_banklist` VALUES ('ZJNX', '浙江省农村信用社联合社');
INSERT INTO `d_banklist` VALUES ('ZJTLCB', '浙江泰隆商业银行');
INSERT INTO `d_banklist` VALUES ('ZRCBANK', '张家港农村商业银行');
INSERT INTO `d_banklist` VALUES ('ZYCBANK', '遵义市商业银行');
INSERT INTO `d_banklist` VALUES ('ZZBANK', '郑州银行');

-- ----------------------------
-- Table structure for `d_business_sms_rules`
-- ----------------------------
DROP TABLE IF EXISTS `d_business_sms_rules`;
CREATE TABLE `d_business_sms_rules` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `business_type` int(11) DEFAULT NULL COMMENT '业务类型 1:Market唤醒营销 2:Collection催收',
  `business_node` varchar(255) NOT NULL COMMENT '业务节点',
  `start_date` datetime DEFAULT NULL COMMENT '开始日期',
  `end_date` datetime DEFAULT NULL COMMENT '结束日期',
  `is_use` smallint(1) DEFAULT '1' COMMENT '是否启用 0:未启用 1:启用',
  `business_sql` varchar(2000) DEFAULT NULL COMMENT '业务sql',
  `desc` varchar(1000) DEFAULT NULL COMMENT '备注',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `programm_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_business_sms_rules
-- ----------------------------
INSERT INTO `d_business_sms_rules` VALUES ('1', '1', '注册未完善基础信息', '2019-01-18 23:54:47', '2019-01-18 23:54:47', '0', 'select mobile from d_user where id not in (\r	select uid from d_user_authinfo where code = \'jcxx\' and status = 2\r) and mobile is not null and mobile <> \'\' and jointime between @start_datte and @end_date', '用户注册后,未提现', null, null, '1');
INSERT INTO `d_business_sms_rules` VALUES ('2', '1', ' 首借未续借', '2019-01-17 23:54:47', '2019-01-17 23:54:47', '0', 'select mobile from d_user duser\rinner join (\r	select uid,createtime from d_order dorder where uid not in (\r		select uid from d_order where type = 2 group by uid \r	)\r) temp on duser.id = temp.uid and between temp.createtime @start_date and @end_date', null, null, null, '2');

-- ----------------------------
-- Table structure for `d_call_records`
-- ----------------------------
DROP TABLE IF EXISTS `d_call_records`;
CREATE TABLE `d_call_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `content` mediumblob,
  `create_time` int(11) NOT NULL,
  `expired_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_call_records
-- ----------------------------

-- ----------------------------
-- Table structure for `d_category`
-- ----------------------------
DROP TABLE IF EXISTS `d_category`;
CREATE TABLE `d_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) NOT NULL DEFAULT '',
  `nickname` varchar(50) NOT NULL DEFAULT '',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) NOT NULL DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `weigh` (`weigh`,`id`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='分类表';

-- ----------------------------
-- Records of d_category
-- ----------------------------
INSERT INTO `d_category` VALUES ('1', '0', 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', '1495262190', '1495262190', '1', 'normal');
INSERT INTO `d_category` VALUES ('2', '0', 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', '1495262244', '1495262244', '2', 'normal');
INSERT INTO `d_category` VALUES ('3', '2', 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', '1495262288', '1495262288', '3', 'normal');
INSERT INTO `d_category` VALUES ('4', '2', 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', '1495262317', '1495262317', '4', 'normal');
INSERT INTO `d_category` VALUES ('5', '0', 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', '1495262336', '1499681850', '5', 'normal');
INSERT INTO `d_category` VALUES ('6', '5', 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', '1495262357', '1495262357', '6', 'normal');
INSERT INTO `d_category` VALUES ('7', '5', 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', '1495262391', '1495262391', '7', 'normal');
INSERT INTO `d_category` VALUES ('8', '6', 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', '1495262424', '1495262424', '8', 'normal');
INSERT INTO `d_category` VALUES ('9', '6', 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', '1495262456', '1495262456', '9', 'normal');
INSERT INTO `d_category` VALUES ('10', '7', 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', '1495262487', '1495262487', '10', 'normal');
INSERT INTO `d_category` VALUES ('11', '7', 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', '1495262515', '1495262515', '11', 'normal');
INSERT INTO `d_category` VALUES ('12', '0', 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', '1497015727', '1497015727', '12', 'normal');
INSERT INTO `d_category` VALUES ('13', '0', 'test', '测试2', 'test2', 'recommend', '/assets/img/qrcode.png', '', '', 'test2', '1497015738', '1546944428', '13', 'normal');

-- ----------------------------
-- Table structure for `d_channel`
-- ----------------------------
DROP TABLE IF EXISTS `d_channel`;
CREATE TABLE `d_channel` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `channel_code` varchar(255) DEFAULT NULL COMMENT '渠道 code',
  `channel_name` varchar(255) DEFAULT NULL COMMENT '渠道名称',
  `settle_type` varchar(255) DEFAULT NULL COMMENT '结算方式\nCPS/CPA\n',
  `template_id` int(10) DEFAULT NULL COMMENT '模板 ID',
  `agency_id` int(10) DEFAULT NULL COMMENT '代理 ID',
  `channel_url` varchar(2000) DEFAULT NULL COMMENT '渠道推广链接',
  `channel_desc` varchar(255) DEFAULT NULL COMMENT '渠道备注\n',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间\n',
  `admin_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `IDX_CHANNEL_CODE` (`channel_code`) USING BTREE,
  KEY `IDX_SETTEL_TYPE` (`settle_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='渠道表';

-- ----------------------------
-- Records of d_channel
-- ----------------------------
INSERT INTO `d_channel` VALUES ('3', '3A53E00D-5249-A61F-F774-81BA17A58A70', '短信推广模板', 'CPA', '1', null, 'http://test.chinazhizao2025.cn/index.php/register/index?channelCode=3A53E00D-5249-A61F-F774-81BA17A58A70', '短信推广链接', '1553063691', '1553063715', '3');

-- ----------------------------
-- Table structure for `d_channel_agency`
-- ----------------------------
DROP TABLE IF EXISTS `d_channel_agency`;
CREATE TABLE `d_channel_agency` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `agency_name` varchar(255) DEFAULT NULL COMMENT '代理名称',
  `agency_code` varchar(255) DEFAULT NULL COMMENT '代理 code\n',
  `agency_phone` varchar(255) DEFAULT NULL COMMENT '代理电话',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间\n',
  `updatetime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IDX_AGENCY_CODE` (`agency_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='渠道代理表\r\n';

-- ----------------------------
-- Records of d_channel_agency
-- ----------------------------

-- ----------------------------
-- Table structure for `d_channel_template`
-- ----------------------------
DROP TABLE IF EXISTS `d_channel_template`;
CREATE TABLE `d_channel_template` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `template_name` varchar(255) DEFAULT NULL COMMENT '模板名称',
  `template_preview_pc` varchar(255) DEFAULT NULL COMMENT '模板预览\nPC',
  `template_url` varchar(255) DEFAULT NULL,
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `template_preview_app` varchar(255) DEFAULT NULL COMMENT '模板预览app',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='渠道模板表';

-- ----------------------------
-- Records of d_channel_template
-- ----------------------------
INSERT INTO `d_channel_template` VALUES ('1', '模板1', '/uploads/20190212/7cbf49346a793c888601242c38808ecd.png', 'http://test.chinazhizao2025.cn/index.php/register/index', '1547212261', '1553049934', '/uploads/20190212/943f08254f4d764d07841966417771e0.png');
INSERT INTO `d_channel_template` VALUES ('2', '模板2', '/uploads/20190212/680d61a6d09cf4d8922a941229a0d18e.png', 'http://test.chinazhizao2025.cn/index.php/register/index', '1547212261', '1552473037', '/uploads/20190212/9d80dd9daea66af1c0d7e76c88e9a407.png');
INSERT INTO `d_channel_template` VALUES ('3', '模板3', '/uploads/20190212/5311c2f39099606687f4de2e9da9dfbd.png', 'http://test.chinazhizao2025.cn/index.php/register/index', '1547212261', '1552473031', '/uploads/20190212/d3eac875e8ffa035f457b71970406176.png');
INSERT INTO `d_channel_template` VALUES ('4', '模板4', '/uploads/20190212/66d38709fa7e2613146f047afb98fec9.png', 'http://test.chinazhizao2025.cn/index.php/register/index', '1547212261', '1552473024', '/uploads/20190212/a0f53f699637e8b9c41336a6ec320c52.png');
INSERT INTO `d_channel_template` VALUES ('6', '模板5', '/uploads/20190212/d16d626b24a0bce8a05431aec9f1fdd2.png', 'http://test.chinazhizao2025.cn/index.php/register/index', '1549936655', '1552473019', '/uploads/20190212/60c35b7df93ef16b49663081fe31b828.png');
INSERT INTO `d_channel_template` VALUES ('7', '模板6', '/uploads/20190212/83c81e3eb1385e904a5fb7a436926096.png', 'http://test.chinazhizao2025.cn/index.php/register/index', '1549936712', '1552473013', '/uploads/20190212/bb6d7ffde8c3d1ce57b6a65d2162f1c9.png');
INSERT INTO `d_channel_template` VALUES ('8', '模板7', '/uploads/20190212/56b072c92d53765a39d0756925a7d13e.png', 'http://test.chinazhizao2025.cn/index.php/register/index', '1549936781', '1552473001', '/uploads/20190212/28b5d173bc56a2b46a499c53c5aae2fa.png');
INSERT INTO `d_channel_template` VALUES ('9', '5000元', '/uploads/20190305/ae0f8f3fd608d43944e0c7da7fdfa09d.jpg', 'http://test.chinazhizao2025.cn/index.php/register/index', '1551764528', '1551764758', '/uploads/20190305/ae0f8f3fd608d43944e0c7da7fdfa09d.jpg');

-- ----------------------------
-- Table structure for `d_charge`
-- ----------------------------
DROP TABLE IF EXISTS `d_charge`;
CREATE TABLE `d_charge` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `charge_amount` decimal(8,0) DEFAULT NULL COMMENT '充值金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统充值表';

-- ----------------------------
-- Records of d_charge
-- ----------------------------
INSERT INTO `d_charge` VALUES ('1', '2000');
INSERT INTO `d_charge` VALUES ('2', '5000');
INSERT INTO `d_charge` VALUES ('3', '10000');
INSERT INTO `d_charge` VALUES ('4', '20000');
INSERT INTO `d_charge` VALUES ('5', '1');
INSERT INTO `d_charge` VALUES ('6', '2');

-- ----------------------------
-- Table structure for `d_china`
-- ----------------------------
DROP TABLE IF EXISTS `d_china`;
CREATE TABLE `d_china` (
  `Id` int(11) NOT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  KEY `FK_CHINA_REFERENCE_CHINA` (`Pid`) USING BTREE,
  CONSTRAINT `FK_CHINA_REFERENCE_CHINA` FOREIGN KEY (`Pid`) REFERENCES `d_china` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_china
-- ----------------------------
INSERT INTO `d_china` VALUES ('0', '中国', '0');
INSERT INTO `d_china` VALUES ('110000', '北京市', '0');
INSERT INTO `d_china` VALUES ('110100', '东城区', '110000');
INSERT INTO `d_china` VALUES ('110200', '西城区', '110000');
INSERT INTO `d_china` VALUES ('110500', '朝阳区', '110000');
INSERT INTO `d_china` VALUES ('110600', '丰台区', '110000');
INSERT INTO `d_china` VALUES ('110700', '石景山区', '110000');
INSERT INTO `d_china` VALUES ('110800', '海淀区', '110000');
INSERT INTO `d_china` VALUES ('110900', '门头沟区', '110000');
INSERT INTO `d_china` VALUES ('111100', '房山区', '110000');
INSERT INTO `d_china` VALUES ('111200', '通州区', '110000');
INSERT INTO `d_china` VALUES ('111300', '顺义区', '110000');
INSERT INTO `d_china` VALUES ('111400', '昌平区', '110000');
INSERT INTO `d_china` VALUES ('111500', '大兴区', '110000');
INSERT INTO `d_china` VALUES ('111600', '怀柔区', '110000');
INSERT INTO `d_china` VALUES ('111700', '平谷区', '110000');
INSERT INTO `d_china` VALUES ('112800', '密云县', '110000');
INSERT INTO `d_china` VALUES ('112900', '延庆县', '110000');
INSERT INTO `d_china` VALUES ('120000', '天津市', '0');
INSERT INTO `d_china` VALUES ('120100', '和平区', '120000');
INSERT INTO `d_china` VALUES ('120200', '河东区', '120000');
INSERT INTO `d_china` VALUES ('120300', '河西区', '120000');
INSERT INTO `d_china` VALUES ('120400', '南开区', '120000');
INSERT INTO `d_china` VALUES ('120500', '河北区', '120000');
INSERT INTO `d_china` VALUES ('120600', '红桥区', '120000');
INSERT INTO `d_china` VALUES ('120900', '滨海新区', '120000');
INSERT INTO `d_china` VALUES ('121000', '东丽区', '120000');
INSERT INTO `d_china` VALUES ('121100', '西青区', '120000');
INSERT INTO `d_china` VALUES ('121200', '津南区', '120000');
INSERT INTO `d_china` VALUES ('121300', '北辰区', '120000');
INSERT INTO `d_china` VALUES ('121400', '武清区', '120000');
INSERT INTO `d_china` VALUES ('121500', '宝坻区', '120000');
INSERT INTO `d_china` VALUES ('122100', '宁河县', '120000');
INSERT INTO `d_china` VALUES ('122300', '静海县', '120000');
INSERT INTO `d_china` VALUES ('122500', '蓟县', '120000');
INSERT INTO `d_china` VALUES ('130000', '河北省', '0');
INSERT INTO `d_china` VALUES ('130100', '石家庄市', '130000');
INSERT INTO `d_china` VALUES ('130101', '市辖区', '130100');
INSERT INTO `d_china` VALUES ('130102', '长安区', '130101');
INSERT INTO `d_china` VALUES ('130103', '桥东区', '130101');
INSERT INTO `d_china` VALUES ('130104', '桥西区', '130101');
INSERT INTO `d_china` VALUES ('130105', '新华区', '130101');
INSERT INTO `d_china` VALUES ('130107', '井陉矿区', '130101');
INSERT INTO `d_china` VALUES ('130108', '裕华区', '130101');
INSERT INTO `d_china` VALUES ('130121', '井陉县', '130100');
INSERT INTO `d_china` VALUES ('130123', '正定县', '130100');
INSERT INTO `d_china` VALUES ('130124', '栾城县', '130100');
INSERT INTO `d_china` VALUES ('130125', '行唐县', '130100');
INSERT INTO `d_china` VALUES ('130126', '灵寿县', '130100');
INSERT INTO `d_china` VALUES ('130127', '高邑县', '130100');
INSERT INTO `d_china` VALUES ('130128', '深泽县', '130100');
INSERT INTO `d_china` VALUES ('130129', '赞皇县', '130100');
INSERT INTO `d_china` VALUES ('130130', '无极县', '130100');
INSERT INTO `d_china` VALUES ('130131', '平山县', '130100');
INSERT INTO `d_china` VALUES ('130132', '元氏县', '130100');
INSERT INTO `d_china` VALUES ('130133', '赵县', '130100');
INSERT INTO `d_china` VALUES ('130181', '辛集市', '130100');
INSERT INTO `d_china` VALUES ('130182', '藁城市', '130100');
INSERT INTO `d_china` VALUES ('130183', '晋州市', '130100');
INSERT INTO `d_china` VALUES ('130184', '新乐市', '130100');
INSERT INTO `d_china` VALUES ('130185', '鹿泉市', '130100');
INSERT INTO `d_china` VALUES ('130200', '唐山市', '130000');
INSERT INTO `d_china` VALUES ('130201', '市辖区', '130200');
INSERT INTO `d_china` VALUES ('130202', '路南区', '130201');
INSERT INTO `d_china` VALUES ('130203', '路北区', '130201');
INSERT INTO `d_china` VALUES ('130204', '古冶区', '130201');
INSERT INTO `d_china` VALUES ('130205', '开平区', '130201');
INSERT INTO `d_china` VALUES ('130207', '丰南区', '130201');
INSERT INTO `d_china` VALUES ('130208', '丰润区', '130201');
INSERT INTO `d_china` VALUES ('130223', '滦县', '130200');
INSERT INTO `d_china` VALUES ('130224', '滦南县', '130200');
INSERT INTO `d_china` VALUES ('130225', '乐亭县', '130200');
INSERT INTO `d_china` VALUES ('130227', '迁西县', '130200');
INSERT INTO `d_china` VALUES ('130229', '玉田县', '130200');
INSERT INTO `d_china` VALUES ('130230', '唐海县', '130200');
INSERT INTO `d_china` VALUES ('130281', '遵化市', '130200');
INSERT INTO `d_china` VALUES ('130283', '迁安市', '130200');
INSERT INTO `d_china` VALUES ('130300', '秦皇岛市', '130000');
INSERT INTO `d_china` VALUES ('130301', '海港区', '130300');
INSERT INTO `d_china` VALUES ('130303', '山海关区', '130300');
INSERT INTO `d_china` VALUES ('130304', '北戴河区', '130300');
INSERT INTO `d_china` VALUES ('130321', '青龙满族自治县', '130300');
INSERT INTO `d_china` VALUES ('130322', '昌黎县', '130300');
INSERT INTO `d_china` VALUES ('130323', '抚宁县', '130300');
INSERT INTO `d_china` VALUES ('130324', '卢龙县', '130300');
INSERT INTO `d_china` VALUES ('130400', '邯郸市', '130000');
INSERT INTO `d_china` VALUES ('130401', '市辖区', '130400');
INSERT INTO `d_china` VALUES ('130402', '邯山区', '130401');
INSERT INTO `d_china` VALUES ('130403', '丛台区', '130401');
INSERT INTO `d_china` VALUES ('130404', '复兴区', '130401');
INSERT INTO `d_china` VALUES ('130406', '峰峰矿区', '130401');
INSERT INTO `d_china` VALUES ('130421', '邯郸县', '130400');
INSERT INTO `d_china` VALUES ('130423', '临漳县', '130400');
INSERT INTO `d_china` VALUES ('130424', '成安县', '130400');
INSERT INTO `d_china` VALUES ('130425', '大名县', '130400');
INSERT INTO `d_china` VALUES ('130426', '涉县', '130400');
INSERT INTO `d_china` VALUES ('130427', '磁县', '130400');
INSERT INTO `d_china` VALUES ('130428', '肥乡县', '130400');
INSERT INTO `d_china` VALUES ('130429', '永年县', '130400');
INSERT INTO `d_china` VALUES ('130430', '邱县', '130400');
INSERT INTO `d_china` VALUES ('130431', '鸡泽县', '130400');
INSERT INTO `d_china` VALUES ('130432', '广平县', '130400');
INSERT INTO `d_china` VALUES ('130433', '馆陶县', '130400');
INSERT INTO `d_china` VALUES ('130434', '魏县', '130400');
INSERT INTO `d_china` VALUES ('130435', '曲周县', '130400');
INSERT INTO `d_china` VALUES ('130481', '武安市', '130400');
INSERT INTO `d_china` VALUES ('130500', '邢台市', '130000');
INSERT INTO `d_china` VALUES ('130501', '市辖区', '130500');
INSERT INTO `d_china` VALUES ('130502', '桥东区', '130501');
INSERT INTO `d_china` VALUES ('130503', '桥西区', '130501');
INSERT INTO `d_china` VALUES ('130521', '邢台县', '130500');
INSERT INTO `d_china` VALUES ('130522', '临城县', '130500');
INSERT INTO `d_china` VALUES ('130523', '内丘县', '130500');
INSERT INTO `d_china` VALUES ('130524', '柏乡县', '130500');
INSERT INTO `d_china` VALUES ('130525', '隆尧县', '130500');
INSERT INTO `d_china` VALUES ('130526', '任县', '130500');
INSERT INTO `d_china` VALUES ('130527', '南和县', '130500');
INSERT INTO `d_china` VALUES ('130528', '宁晋县', '130500');
INSERT INTO `d_china` VALUES ('130529', '巨鹿县', '130529');
INSERT INTO `d_china` VALUES ('130530', '新河县', '130500');
INSERT INTO `d_china` VALUES ('130531', '广宗县', '130500');
INSERT INTO `d_china` VALUES ('130532', '平乡县', '130500');
INSERT INTO `d_china` VALUES ('130533', '威县', '130500');
INSERT INTO `d_china` VALUES ('130534', '清河县', '130500');
INSERT INTO `d_china` VALUES ('130535', '临西县', '130500');
INSERT INTO `d_china` VALUES ('130581', '南宫市', '130500');
INSERT INTO `d_china` VALUES ('130582', '沙河市', '130500');
INSERT INTO `d_china` VALUES ('130600', '保定市', '130000');
INSERT INTO `d_china` VALUES ('130601', '新市区', '130600');
INSERT INTO `d_china` VALUES ('130603', '北市区', '130600');
INSERT INTO `d_china` VALUES ('130604', '南市区', '130600');
INSERT INTO `d_china` VALUES ('130621', '满城县', '130600');
INSERT INTO `d_china` VALUES ('130622', '清苑县', '130600');
INSERT INTO `d_china` VALUES ('130623', '涞水县', '130600');
INSERT INTO `d_china` VALUES ('130624', '阜平县', '130600');
INSERT INTO `d_china` VALUES ('130625', '徐水县', '130600');
INSERT INTO `d_china` VALUES ('130626', '定兴县', '130600');
INSERT INTO `d_china` VALUES ('130627', '唐县', '130600');
INSERT INTO `d_china` VALUES ('130628', '高阳县', '130600');
INSERT INTO `d_china` VALUES ('130629', '容城县', '130600');
INSERT INTO `d_china` VALUES ('130630', '涞源县', '130600');
INSERT INTO `d_china` VALUES ('130631', '望都县', '130600');
INSERT INTO `d_china` VALUES ('130632', '安新县', '130600');
INSERT INTO `d_china` VALUES ('130633', '易县', '130600');
INSERT INTO `d_china` VALUES ('130634', '曲阳县', '130600');
INSERT INTO `d_china` VALUES ('130635', '蠡县', '130600');
INSERT INTO `d_china` VALUES ('130636', '顺平县', '130600');
INSERT INTO `d_china` VALUES ('130637', '博野县', '130600');
INSERT INTO `d_china` VALUES ('130638', '雄县', '130600');
INSERT INTO `d_china` VALUES ('130681', '涿州市', '130600');
INSERT INTO `d_china` VALUES ('130682', '定州市', '130600');
INSERT INTO `d_china` VALUES ('130683', '安国市', '130600');
INSERT INTO `d_china` VALUES ('130684', '高碑店市', '130600');
INSERT INTO `d_china` VALUES ('130685', '白沟新城县', '130600');
INSERT INTO `d_china` VALUES ('130700', '张家口市', '130000');
INSERT INTO `d_china` VALUES ('130701', '市辖区', '130700');
INSERT INTO `d_china` VALUES ('130702', '桥东区', '130701');
INSERT INTO `d_china` VALUES ('130703', '桥西区', '130701');
INSERT INTO `d_china` VALUES ('130705', '宣化区', '130701');
INSERT INTO `d_china` VALUES ('130706', '下花园区', '130701');
INSERT INTO `d_china` VALUES ('130721', '宣化县', '130700');
INSERT INTO `d_china` VALUES ('130722', '张北县', '130700');
INSERT INTO `d_china` VALUES ('130723', '康保县', '130700');
INSERT INTO `d_china` VALUES ('130724', '沽源县', '130700');
INSERT INTO `d_china` VALUES ('130725', '尚义县', '130700');
INSERT INTO `d_china` VALUES ('130726', '蔚县', '130700');
INSERT INTO `d_china` VALUES ('130727', '阳原县', '130700');
INSERT INTO `d_china` VALUES ('130728', '怀安县', '130700');
INSERT INTO `d_china` VALUES ('130729', '万全县', '130700');
INSERT INTO `d_china` VALUES ('130730', '怀来县', '130700');
INSERT INTO `d_china` VALUES ('130731', '涿鹿县', '130700');
INSERT INTO `d_china` VALUES ('130732', '赤城县', '130700');
INSERT INTO `d_china` VALUES ('130733', '崇礼县', '130700');
INSERT INTO `d_china` VALUES ('130800', '承德市', '130000');
INSERT INTO `d_china` VALUES ('130801', '市辖区', '130800');
INSERT INTO `d_china` VALUES ('130802', '双桥区', '130801');
INSERT INTO `d_china` VALUES ('130803', '双滦区', '130801');
INSERT INTO `d_china` VALUES ('130804', '鹰手营子矿区', '130801');
INSERT INTO `d_china` VALUES ('130821', '承德县', '130800');
INSERT INTO `d_china` VALUES ('130822', '兴隆县', '130800');
INSERT INTO `d_china` VALUES ('130823', '平泉县', '130800');
INSERT INTO `d_china` VALUES ('130824', '滦平县', '130800');
INSERT INTO `d_china` VALUES ('130825', '隆化县', '130800');
INSERT INTO `d_china` VALUES ('130826', '丰宁满族自治县', '130800');
INSERT INTO `d_china` VALUES ('130827', '宽城满族自治县', '130800');
INSERT INTO `d_china` VALUES ('130828', '围场满族蒙古族自治县', '130800');
INSERT INTO `d_china` VALUES ('130900', '沧州市', '130000');
INSERT INTO `d_china` VALUES ('130901', '市辖区', '130900');
INSERT INTO `d_china` VALUES ('130902', '新华区', '130901');
INSERT INTO `d_china` VALUES ('130903', '运河区', '130901');
INSERT INTO `d_china` VALUES ('130921', '沧县', '130900');
INSERT INTO `d_china` VALUES ('130922', '青县', '130900');
INSERT INTO `d_china` VALUES ('130923', '东光县', '130900');
INSERT INTO `d_china` VALUES ('130924', '海兴县', '130900');
INSERT INTO `d_china` VALUES ('130925', '盐山县', '130900');
INSERT INTO `d_china` VALUES ('130926', '肃宁县', '130900');
INSERT INTO `d_china` VALUES ('130927', '南皮县', '130900');
INSERT INTO `d_china` VALUES ('130928', '吴桥县', '130900');
INSERT INTO `d_china` VALUES ('130929', '献县', '130900');
INSERT INTO `d_china` VALUES ('130930', '孟村回族自治县', '130900');
INSERT INTO `d_china` VALUES ('130981', '泊头市', '130900');
INSERT INTO `d_china` VALUES ('130982', '任丘市', '130900');
INSERT INTO `d_china` VALUES ('130983', '黄骅市', '130900');
INSERT INTO `d_china` VALUES ('130984', '河间市', '130900');
INSERT INTO `d_china` VALUES ('131000', '廊坊市', '130000');
INSERT INTO `d_china` VALUES ('131001', '市辖区', '131000');
INSERT INTO `d_china` VALUES ('131002', '安次区', '131001');
INSERT INTO `d_china` VALUES ('131003', '广阳区', '131001');
INSERT INTO `d_china` VALUES ('131022', '固安县', '131000');
INSERT INTO `d_china` VALUES ('131023', '永清县', '131000');
INSERT INTO `d_china` VALUES ('131024', '香河县', '131000');
INSERT INTO `d_china` VALUES ('131025', '大城县', '131000');
INSERT INTO `d_china` VALUES ('131026', '文安县', '131000');
INSERT INTO `d_china` VALUES ('131028', '大厂回族自治县', '131000');
INSERT INTO `d_china` VALUES ('131081', '霸州市', '131000');
INSERT INTO `d_china` VALUES ('131082', '三河市', '131000');
INSERT INTO `d_china` VALUES ('131100', '衡水市', '130000');
INSERT INTO `d_china` VALUES ('131101', '市辖区', '131100');
INSERT INTO `d_china` VALUES ('131102', '桃城区', '131101');
INSERT INTO `d_china` VALUES ('131121', '枣强县', '131100');
INSERT INTO `d_china` VALUES ('131122', '武邑县', '131100');
INSERT INTO `d_china` VALUES ('131123', '武强县', '131100');
INSERT INTO `d_china` VALUES ('131124', '饶阳县', '131100');
INSERT INTO `d_china` VALUES ('131125', '安平县', '131100');
INSERT INTO `d_china` VALUES ('131126', '故城县', '131100');
INSERT INTO `d_china` VALUES ('131127', '景县', '131100');
INSERT INTO `d_china` VALUES ('131128', '阜城县', '131100');
INSERT INTO `d_china` VALUES ('131181', '冀州市', '131100');
INSERT INTO `d_china` VALUES ('131182', '深州市', '131100');
INSERT INTO `d_china` VALUES ('140000', '山西省', '0');
INSERT INTO `d_china` VALUES ('140100', '太原市', '140000');
INSERT INTO `d_china` VALUES ('140101', '市辖区', '140100');
INSERT INTO `d_china` VALUES ('140105', '小店区', '140101');
INSERT INTO `d_china` VALUES ('140106', '迎泽区', '140101');
INSERT INTO `d_china` VALUES ('140107', '杏花岭区', '140101');
INSERT INTO `d_china` VALUES ('140108', '尖草坪区', '140101');
INSERT INTO `d_china` VALUES ('140109', '万柏林区', '140101');
INSERT INTO `d_china` VALUES ('140110', '晋源区', '140101');
INSERT INTO `d_china` VALUES ('140121', '清徐县', '140100');
INSERT INTO `d_china` VALUES ('140122', '阳曲县', '140100');
INSERT INTO `d_china` VALUES ('140123', '娄烦县', '140100');
INSERT INTO `d_china` VALUES ('140181', '古交市', '140100');
INSERT INTO `d_china` VALUES ('140200', '大同市', '140000');
INSERT INTO `d_china` VALUES ('140201', '市辖区', '140200');
INSERT INTO `d_china` VALUES ('140202', '城区', '140201');
INSERT INTO `d_china` VALUES ('140203', '矿区', '140201');
INSERT INTO `d_china` VALUES ('140211', '南郊区', '140201');
INSERT INTO `d_china` VALUES ('140212', '新荣区', '140201');
INSERT INTO `d_china` VALUES ('140221', '阳高县', '140200');
INSERT INTO `d_china` VALUES ('140222', '天镇县', '140200');
INSERT INTO `d_china` VALUES ('140223', '广灵县', '140200');
INSERT INTO `d_china` VALUES ('140224', '灵丘县', '140200');
INSERT INTO `d_china` VALUES ('140225', '浑源县', '140200');
INSERT INTO `d_china` VALUES ('140226', '左云县', '140200');
INSERT INTO `d_china` VALUES ('140227', '大同县', '140200');
INSERT INTO `d_china` VALUES ('140300', '阳泉市', '140000');
INSERT INTO `d_china` VALUES ('140301', '市辖区', '140300');
INSERT INTO `d_china` VALUES ('140302', '城区', '140301');
INSERT INTO `d_china` VALUES ('140303', '矿区', '140301');
INSERT INTO `d_china` VALUES ('140311', '郊区', '140301');
INSERT INTO `d_china` VALUES ('140321', '平定县', '140300');
INSERT INTO `d_china` VALUES ('140322', '盂县', '140300');
INSERT INTO `d_china` VALUES ('140400', '长治市', '140000');
INSERT INTO `d_china` VALUES ('140401', '市辖区', '140400');
INSERT INTO `d_china` VALUES ('140402', '城区', '140401');
INSERT INTO `d_china` VALUES ('140411', '郊区', '140401');
INSERT INTO `d_china` VALUES ('140421', '长治县', '140400');
INSERT INTO `d_china` VALUES ('140423', '襄垣县', '140400');
INSERT INTO `d_china` VALUES ('140424', '屯留县', '140400');
INSERT INTO `d_china` VALUES ('140425', '平顺县', '140400');
INSERT INTO `d_china` VALUES ('140426', '黎城县', '140400');
INSERT INTO `d_china` VALUES ('140427', '壶关县', '140400');
INSERT INTO `d_china` VALUES ('140428', '长子县', '140400');
INSERT INTO `d_china` VALUES ('140429', '武乡县', '140400');
INSERT INTO `d_china` VALUES ('140430', '沁县', '140400');
INSERT INTO `d_china` VALUES ('140431', '沁源县', '140400');
INSERT INTO `d_china` VALUES ('140481', '潞城市', '140400');
INSERT INTO `d_china` VALUES ('140500', '晋城市', '140000');
INSERT INTO `d_china` VALUES ('140501', '市辖区', '140500');
INSERT INTO `d_china` VALUES ('140502', '城区', '140501');
INSERT INTO `d_china` VALUES ('140521', '沁水县', '140500');
INSERT INTO `d_china` VALUES ('140522', '阳城县', '140500');
INSERT INTO `d_china` VALUES ('140524', '陵川县', '140500');
INSERT INTO `d_china` VALUES ('140525', '泽州县', '140500');
INSERT INTO `d_china` VALUES ('140581', '高平市', '140500');
INSERT INTO `d_china` VALUES ('140600', '朔州市', '140000');
INSERT INTO `d_china` VALUES ('140601', '市辖区', '140600');
INSERT INTO `d_china` VALUES ('140602', '朔城区', '140601');
INSERT INTO `d_china` VALUES ('140603', '平鲁区', '140601');
INSERT INTO `d_china` VALUES ('140621', '山阴县', '140600');
INSERT INTO `d_china` VALUES ('140622', '应县', '140600');
INSERT INTO `d_china` VALUES ('140623', '右玉县', '140600');
INSERT INTO `d_china` VALUES ('140624', '怀仁县', '140600');
INSERT INTO `d_china` VALUES ('140700', '晋中市', '140000');
INSERT INTO `d_china` VALUES ('140701', '市辖区', '140700');
INSERT INTO `d_china` VALUES ('140702', '榆次区', '140701');
INSERT INTO `d_china` VALUES ('140721', '榆社县', '140700');
INSERT INTO `d_china` VALUES ('140722', '左权县', '140700');
INSERT INTO `d_china` VALUES ('140723', '和顺县', '140700');
INSERT INTO `d_china` VALUES ('140724', '昔阳县', '140700');
INSERT INTO `d_china` VALUES ('140725', '寿阳县', '140700');
INSERT INTO `d_china` VALUES ('140726', '太谷县', '140700');
INSERT INTO `d_china` VALUES ('140727', '祁县', '140700');
INSERT INTO `d_china` VALUES ('140728', '平遥县', '140700');
INSERT INTO `d_china` VALUES ('140729', '灵石县', '140700');
INSERT INTO `d_china` VALUES ('140781', '介休市', '140700');
INSERT INTO `d_china` VALUES ('140800', '运城市', '140000');
INSERT INTO `d_china` VALUES ('140801', '市辖区', '140800');
INSERT INTO `d_china` VALUES ('140802', '盐湖区', '140801');
INSERT INTO `d_china` VALUES ('140821', '临猗县', '140800');
INSERT INTO `d_china` VALUES ('140822', '万荣县', '140800');
INSERT INTO `d_china` VALUES ('140823', '闻喜县', '140800');
INSERT INTO `d_china` VALUES ('140824', '稷山县', '140800');
INSERT INTO `d_china` VALUES ('140825', '新绛县', '140800');
INSERT INTO `d_china` VALUES ('140826', '绛县', '140800');
INSERT INTO `d_china` VALUES ('140827', '垣曲县', '140800');
INSERT INTO `d_china` VALUES ('140828', '夏县', '140800');
INSERT INTO `d_china` VALUES ('140829', '平陆县', '140800');
INSERT INTO `d_china` VALUES ('140830', '芮城县', '140800');
INSERT INTO `d_china` VALUES ('140881', '永济市', '140800');
INSERT INTO `d_china` VALUES ('140882', '河津市', '140800');
INSERT INTO `d_china` VALUES ('140900', '忻州市', '140000');
INSERT INTO `d_china` VALUES ('140901', '忻府区', '140900');
INSERT INTO `d_china` VALUES ('140921', '定襄县', '140900');
INSERT INTO `d_china` VALUES ('140922', '五台县', '140900');
INSERT INTO `d_china` VALUES ('140923', '代县', '140900');
INSERT INTO `d_china` VALUES ('140924', '繁峙县', '140900');
INSERT INTO `d_china` VALUES ('140925', '宁武县', '140900');
INSERT INTO `d_china` VALUES ('140926', '静乐县', '140900');
INSERT INTO `d_china` VALUES ('140927', '神池县', '140900');
INSERT INTO `d_china` VALUES ('140928', '五寨县', '140900');
INSERT INTO `d_china` VALUES ('140929', '岢岚县', '140900');
INSERT INTO `d_china` VALUES ('140930', '河曲县', '140900');
INSERT INTO `d_china` VALUES ('140931', '保德县', '140900');
INSERT INTO `d_china` VALUES ('140932', '偏关县', '140900');
INSERT INTO `d_china` VALUES ('140981', '原平市', '140900');
INSERT INTO `d_china` VALUES ('141000', '临汾市', '140000');
INSERT INTO `d_china` VALUES ('141001', '市辖区', '141000');
INSERT INTO `d_china` VALUES ('141002', '尧都区', '141000');
INSERT INTO `d_china` VALUES ('141021', '曲沃县', '141000');
INSERT INTO `d_china` VALUES ('141022', '翼城县', '141000');
INSERT INTO `d_china` VALUES ('141023', '襄汾县', '141000');
INSERT INTO `d_china` VALUES ('141024', '洪洞县', '141000');
INSERT INTO `d_china` VALUES ('141025', '古县', '141000');
INSERT INTO `d_china` VALUES ('141026', '安泽县', '141000');
INSERT INTO `d_china` VALUES ('141027', '浮山县', '141000');
INSERT INTO `d_china` VALUES ('141028', '吉县', '141000');
INSERT INTO `d_china` VALUES ('141029', '乡宁县', '141000');
INSERT INTO `d_china` VALUES ('141030', '大宁县', '141000');
INSERT INTO `d_china` VALUES ('141031', '隰县', '141000');
INSERT INTO `d_china` VALUES ('141032', '永和县', '141000');
INSERT INTO `d_china` VALUES ('141033', '蒲县', '141000');
INSERT INTO `d_china` VALUES ('141034', '汾西县', '141000');
INSERT INTO `d_china` VALUES ('141081', '侯马市', '141000');
INSERT INTO `d_china` VALUES ('141082', '霍州市', '141000');
INSERT INTO `d_china` VALUES ('141100', '吕梁市', '140000');
INSERT INTO `d_china` VALUES ('141101', '市辖区', '141100');
INSERT INTO `d_china` VALUES ('141102', '离石区', '141101');
INSERT INTO `d_china` VALUES ('141121', '文水县', '141100');
INSERT INTO `d_china` VALUES ('141122', '交城县', '141100');
INSERT INTO `d_china` VALUES ('141123', '兴县', '141100');
INSERT INTO `d_china` VALUES ('141124', '临县', '141100');
INSERT INTO `d_china` VALUES ('141125', '柳林县', '141100');
INSERT INTO `d_china` VALUES ('141126', '石楼县', '141100');
INSERT INTO `d_china` VALUES ('141127', '岚县', '141100');
INSERT INTO `d_china` VALUES ('141128', '方山县', '141100');
INSERT INTO `d_china` VALUES ('141129', '中阳县', '141100');
INSERT INTO `d_china` VALUES ('141130', '交口县', '141100');
INSERT INTO `d_china` VALUES ('141181', '孝义市', '141100');
INSERT INTO `d_china` VALUES ('141182', '汾阳市', '141100');
INSERT INTO `d_china` VALUES ('150000', '内蒙古自治区', '0');
INSERT INTO `d_china` VALUES ('150100', '呼和浩特市', '150000');
INSERT INTO `d_china` VALUES ('150101', '市辖区', '150100');
INSERT INTO `d_china` VALUES ('150102', '新城区', '150101');
INSERT INTO `d_china` VALUES ('150103', '回民区', '150101');
INSERT INTO `d_china` VALUES ('150104', '玉泉区', '150101');
INSERT INTO `d_china` VALUES ('150105', '赛罕区', '150101');
INSERT INTO `d_china` VALUES ('150121', '土默特左旗', '150100');
INSERT INTO `d_china` VALUES ('150122', '托克托县', '150100');
INSERT INTO `d_china` VALUES ('150123', '和林格尔县', '150100');
INSERT INTO `d_china` VALUES ('150124', '清水河县', '150100');
INSERT INTO `d_china` VALUES ('150125', '武川县', '150100');
INSERT INTO `d_china` VALUES ('150200', '包头市', '150000');
INSERT INTO `d_china` VALUES ('150201', '市辖区', '150200');
INSERT INTO `d_china` VALUES ('150202', '东河区', '150201');
INSERT INTO `d_china` VALUES ('150203', '昆都仑区', '150201');
INSERT INTO `d_china` VALUES ('150204', '青山区', '150201');
INSERT INTO `d_china` VALUES ('150205', '石拐区', '150201');
INSERT INTO `d_china` VALUES ('150206', '白云矿区', '150201');
INSERT INTO `d_china` VALUES ('150207', '九原区', '150201');
INSERT INTO `d_china` VALUES ('150221', '土默特右旗', '150200');
INSERT INTO `d_china` VALUES ('150222', '固阳县', '150200');
INSERT INTO `d_china` VALUES ('150223', '达尔罕茂明安联合旗', '150200');
INSERT INTO `d_china` VALUES ('150300', '乌海市', '150000');
INSERT INTO `d_china` VALUES ('150301', '市辖区', '150300');
INSERT INTO `d_china` VALUES ('150302', '海勃湾区', '150301');
INSERT INTO `d_china` VALUES ('150303', '海南区', '150301');
INSERT INTO `d_china` VALUES ('150304', '乌达区', '150301');
INSERT INTO `d_china` VALUES ('150400', '赤峰市', '150000');
INSERT INTO `d_china` VALUES ('150401', '市辖区', '150400');
INSERT INTO `d_china` VALUES ('150402', '红山区', '150401');
INSERT INTO `d_china` VALUES ('150403', '元宝山区', '150401');
INSERT INTO `d_china` VALUES ('150404', '松山区', '150401');
INSERT INTO `d_china` VALUES ('150421', '阿鲁科尔沁旗', '150400');
INSERT INTO `d_china` VALUES ('150422', '巴林左旗', '150400');
INSERT INTO `d_china` VALUES ('150423', '巴林右旗', '150400');
INSERT INTO `d_china` VALUES ('150424', '林西县', '150400');
INSERT INTO `d_china` VALUES ('150425', '克什克腾旗', '150400');
INSERT INTO `d_china` VALUES ('150426', '翁牛特旗', '150400');
INSERT INTO `d_china` VALUES ('150428', '喀喇沁旗', '150400');
INSERT INTO `d_china` VALUES ('150429', '宁城县', '150400');
INSERT INTO `d_china` VALUES ('150430', '敖汉旗', '150400');
INSERT INTO `d_china` VALUES ('150500', '通辽市', '150000');
INSERT INTO `d_china` VALUES ('150501', '市辖区', '150500');
INSERT INTO `d_china` VALUES ('150502', '科尔沁区', '150501');
INSERT INTO `d_china` VALUES ('150521', '科尔沁左翼中旗', '150500');
INSERT INTO `d_china` VALUES ('150522', '科尔沁左翼后旗', '150500');
INSERT INTO `d_china` VALUES ('150523', '开鲁县', '150500');
INSERT INTO `d_china` VALUES ('150524', '库伦旗', '150500');
INSERT INTO `d_china` VALUES ('150525', '奈曼旗', '150500');
INSERT INTO `d_china` VALUES ('150526', '扎鲁特旗', '150500');
INSERT INTO `d_china` VALUES ('150581', '霍林郭勒市', '150500');
INSERT INTO `d_china` VALUES ('150600', '鄂尔多斯市', '150000');
INSERT INTO `d_china` VALUES ('150602', '东胜区', '150600');
INSERT INTO `d_china` VALUES ('150621', '达拉特旗', '150600');
INSERT INTO `d_china` VALUES ('150622', '准格尔旗', '150600');
INSERT INTO `d_china` VALUES ('150623', '鄂托克前旗', '150600');
INSERT INTO `d_china` VALUES ('150624', '鄂托克旗', '150600');
INSERT INTO `d_china` VALUES ('150625', '杭锦旗', '150600');
INSERT INTO `d_china` VALUES ('150626', '乌审旗', '150600');
INSERT INTO `d_china` VALUES ('150627', '伊金霍洛旗', '150600');
INSERT INTO `d_china` VALUES ('150700', '呼伦贝尔市', '150000');
INSERT INTO `d_china` VALUES ('150701', '市辖区', '150700');
INSERT INTO `d_china` VALUES ('150702', '海拉尔区', '150701');
INSERT INTO `d_china` VALUES ('150721', '阿荣旗', '150700');
INSERT INTO `d_china` VALUES ('150722', '莫力达瓦达斡尔族自治旗', '150700');
INSERT INTO `d_china` VALUES ('150723', '鄂伦春自治旗', '150700');
INSERT INTO `d_china` VALUES ('150724', '鄂温克族自治旗', '150700');
INSERT INTO `d_china` VALUES ('150725', '陈巴尔虎旗', '150700');
INSERT INTO `d_china` VALUES ('150726', '新巴尔虎左旗', '150700');
INSERT INTO `d_china` VALUES ('150727', '新巴尔虎右旗', '150700');
INSERT INTO `d_china` VALUES ('150781', '满洲里市', '150700');
INSERT INTO `d_china` VALUES ('150782', '牙克石市', '150700');
INSERT INTO `d_china` VALUES ('150783', '扎兰屯市', '150700');
INSERT INTO `d_china` VALUES ('150784', '额尔古纳市', '150700');
INSERT INTO `d_china` VALUES ('150785', '根河市', '150700');
INSERT INTO `d_china` VALUES ('150800', '巴彦淖尔市', '150000');
INSERT INTO `d_china` VALUES ('150801', '市辖区', '150800');
INSERT INTO `d_china` VALUES ('150802', '临河区', '150800');
INSERT INTO `d_china` VALUES ('150821', '五原县', '150800');
INSERT INTO `d_china` VALUES ('150822', '磴口县', '150800');
INSERT INTO `d_china` VALUES ('150823', '乌拉特前旗', '150800');
INSERT INTO `d_china` VALUES ('150824', '乌拉特中旗', '150800');
INSERT INTO `d_china` VALUES ('150825', '乌拉特后旗', '150800');
INSERT INTO `d_china` VALUES ('150826', '杭锦后旗', '150800');
INSERT INTO `d_china` VALUES ('150900', '乌兰察布市', '150000');
INSERT INTO `d_china` VALUES ('150901', '市辖区', '150900');
INSERT INTO `d_china` VALUES ('150902', '集宁区', '150901');
INSERT INTO `d_china` VALUES ('150921', '卓资县', '150900');
INSERT INTO `d_china` VALUES ('150922', '化德县', '150900');
INSERT INTO `d_china` VALUES ('150923', '商都县', '150900');
INSERT INTO `d_china` VALUES ('150924', '兴和县', '150900');
INSERT INTO `d_china` VALUES ('150925', '凉城县', '150900');
INSERT INTO `d_china` VALUES ('150926', '察哈尔右翼前旗', '150900');
INSERT INTO `d_china` VALUES ('150927', '察哈尔右翼中旗', '150900');
INSERT INTO `d_china` VALUES ('150928', '察哈尔右翼后旗', '150900');
INSERT INTO `d_china` VALUES ('150929', '四子王旗', '150900');
INSERT INTO `d_china` VALUES ('150981', '丰镇市', '150900');
INSERT INTO `d_china` VALUES ('152200', '兴安盟', '150000');
INSERT INTO `d_china` VALUES ('152201', '乌兰浩特市', '152200');
INSERT INTO `d_china` VALUES ('152202', '阿尔山市', '152200');
INSERT INTO `d_china` VALUES ('152221', '科尔沁右翼前旗', '152200');
INSERT INTO `d_china` VALUES ('152222', '科尔沁右翼中旗', '152200');
INSERT INTO `d_china` VALUES ('152223', '扎赉特旗', '152200');
INSERT INTO `d_china` VALUES ('152224', '突泉县', '152200');
INSERT INTO `d_china` VALUES ('152500', '锡林郭勒盟', '150000');
INSERT INTO `d_china` VALUES ('152501', '二连浩特市', '152500');
INSERT INTO `d_china` VALUES ('152502', '锡林浩特市', '152500');
INSERT INTO `d_china` VALUES ('152522', '阿巴嘎旗', '152500');
INSERT INTO `d_china` VALUES ('152523', '苏尼特左旗', '152500');
INSERT INTO `d_china` VALUES ('152524', '苏尼特右旗', '152500');
INSERT INTO `d_china` VALUES ('152525', '东乌珠穆沁旗', '152500');
INSERT INTO `d_china` VALUES ('152526', '西乌珠穆沁旗', '152500');
INSERT INTO `d_china` VALUES ('152527', '太仆寺旗', '152500');
INSERT INTO `d_china` VALUES ('152528', '镶黄旗', '152500');
INSERT INTO `d_china` VALUES ('152529', '正镶白旗', '152500');
INSERT INTO `d_china` VALUES ('152530', '正蓝旗', '152500');
INSERT INTO `d_china` VALUES ('152531', '多伦县', '152500');
INSERT INTO `d_china` VALUES ('152900', '阿拉善盟', '150000');
INSERT INTO `d_china` VALUES ('152921', '阿拉善左旗', '152900');
INSERT INTO `d_china` VALUES ('152922', '阿拉善右旗', '152900');
INSERT INTO `d_china` VALUES ('152923', '额济纳旗', '152900');
INSERT INTO `d_china` VALUES ('210000', '辽宁省', '0');
INSERT INTO `d_china` VALUES ('210100', '沈阳市', '210000');
INSERT INTO `d_china` VALUES ('210101', '市辖区', '210100');
INSERT INTO `d_china` VALUES ('210102', '和平区', '210101');
INSERT INTO `d_china` VALUES ('210103', '沈河区', '210101');
INSERT INTO `d_china` VALUES ('210104', '大东区', '210101');
INSERT INTO `d_china` VALUES ('210105', '皇姑区', '210101');
INSERT INTO `d_china` VALUES ('210106', '铁西区', '210101');
INSERT INTO `d_china` VALUES ('210111', '苏家屯区', '210101');
INSERT INTO `d_china` VALUES ('210112', '东陵区', '210101');
INSERT INTO `d_china` VALUES ('210113', '新城子区', '210101');
INSERT INTO `d_china` VALUES ('210114', '于洪区', '210101');
INSERT INTO `d_china` VALUES ('210122', '辽中县', '210100');
INSERT INTO `d_china` VALUES ('210123', '康平县', '210100');
INSERT INTO `d_china` VALUES ('210124', '法库县', '210100');
INSERT INTO `d_china` VALUES ('210181', '新民市', '210100');
INSERT INTO `d_china` VALUES ('210182', '沈北新区', '210100');
INSERT INTO `d_china` VALUES ('210200', '大连市', '210000');
INSERT INTO `d_china` VALUES ('210201', '市辖区', '210200');
INSERT INTO `d_china` VALUES ('210202', '中山区', '210201');
INSERT INTO `d_china` VALUES ('210203', '西岗区', '210201');
INSERT INTO `d_china` VALUES ('210204', '沙河口区', '210201');
INSERT INTO `d_china` VALUES ('210211', '甘井子区', '210201');
INSERT INTO `d_china` VALUES ('210212', '旅顺口区', '210201');
INSERT INTO `d_china` VALUES ('210213', '金州区', '210201');
INSERT INTO `d_china` VALUES ('210224', '长海县', '210200');
INSERT INTO `d_china` VALUES ('210281', '瓦房店市', '210200');
INSERT INTO `d_china` VALUES ('210282', '普兰店市', '210200');
INSERT INTO `d_china` VALUES ('210283', '庄河市', '210200');
INSERT INTO `d_china` VALUES ('210300', '鞍山市', '210000');
INSERT INTO `d_china` VALUES ('210301', '市辖区', '210300');
INSERT INTO `d_china` VALUES ('210302', '铁东区', '210301');
INSERT INTO `d_china` VALUES ('210303', '铁西区', '210301');
INSERT INTO `d_china` VALUES ('210304', '立山区', '210301');
INSERT INTO `d_china` VALUES ('210311', '千山区', '210301');
INSERT INTO `d_china` VALUES ('210321', '台安县', '210300');
INSERT INTO `d_china` VALUES ('210323', '岫岩满族自治县', '210300');
INSERT INTO `d_china` VALUES ('210381', '海城市', '210300');
INSERT INTO `d_china` VALUES ('210400', '抚顺市', '210000');
INSERT INTO `d_china` VALUES ('210401', '市辖区', '210400');
INSERT INTO `d_china` VALUES ('210402', '新抚区', '210401');
INSERT INTO `d_china` VALUES ('210403', '东洲区', '210401');
INSERT INTO `d_china` VALUES ('210404', '望花区', '210401');
INSERT INTO `d_china` VALUES ('210411', '顺城区', '210401');
INSERT INTO `d_china` VALUES ('210421', '抚顺县', '210400');
INSERT INTO `d_china` VALUES ('210422', '新宾满族自治县', '210400');
INSERT INTO `d_china` VALUES ('210423', '清原满族自治县', '210400');
INSERT INTO `d_china` VALUES ('210500', '本溪市', '210000');
INSERT INTO `d_china` VALUES ('210501', '市辖区', '210500');
INSERT INTO `d_china` VALUES ('210502', '平山区', '210501');
INSERT INTO `d_china` VALUES ('210503', '溪湖??', '210501');
INSERT INTO `d_china` VALUES ('210504', '明山区', '210501');
INSERT INTO `d_china` VALUES ('210505', '南芬区', '210501');
INSERT INTO `d_china` VALUES ('210521', '本溪满族自治县', '210500');
INSERT INTO `d_china` VALUES ('210522', '桓仁满族自治县', '210500');
INSERT INTO `d_china` VALUES ('210600', '丹东市', '210000');
INSERT INTO `d_china` VALUES ('210601', '市辖区', '210600');
INSERT INTO `d_china` VALUES ('210602', '元宝区', '210601');
INSERT INTO `d_china` VALUES ('210603', '振兴区', '210601');
INSERT INTO `d_china` VALUES ('210604', '振安区', '210601');
INSERT INTO `d_china` VALUES ('210624', '宽甸满族自治县', '210600');
INSERT INTO `d_china` VALUES ('210681', '东港市', '210600');
INSERT INTO `d_china` VALUES ('210682', '凤城市', '210600');
INSERT INTO `d_china` VALUES ('210700', '锦州市', '210000');
INSERT INTO `d_china` VALUES ('210701', '市辖区', '210700');
INSERT INTO `d_china` VALUES ('210702', '古塔区', '210701');
INSERT INTO `d_china` VALUES ('210703', '凌河区', '210701');
INSERT INTO `d_china` VALUES ('210711', '太和区', '210701');
INSERT INTO `d_china` VALUES ('210726', '黑山县', '210700');
INSERT INTO `d_china` VALUES ('210727', '义县', '210700');
INSERT INTO `d_china` VALUES ('210781', '凌海市', '210700');
INSERT INTO `d_china` VALUES ('210782', '北宁市', '210700');
INSERT INTO `d_china` VALUES ('210800', '营口市', '210000');
INSERT INTO `d_china` VALUES ('210801', '市辖区', '210800');
INSERT INTO `d_china` VALUES ('210802', '站前区', '210801');
INSERT INTO `d_china` VALUES ('210803', '西市区', '210801');
INSERT INTO `d_china` VALUES ('210804', '鲅鱼圈区', '210801');
INSERT INTO `d_china` VALUES ('210811', '老边区', '210801');
INSERT INTO `d_china` VALUES ('210881', '盖州市', '210800');
INSERT INTO `d_china` VALUES ('210882', '大石桥市', '210800');
INSERT INTO `d_china` VALUES ('210900', '阜新市', '210000');
INSERT INTO `d_china` VALUES ('210901', '市辖区', '210900');
INSERT INTO `d_china` VALUES ('210902', '海州区', '210901');
INSERT INTO `d_china` VALUES ('210903', '新邱区', '210901');
INSERT INTO `d_china` VALUES ('210904', '太平区', '210901');
INSERT INTO `d_china` VALUES ('210905', '清河门区', '210901');
INSERT INTO `d_china` VALUES ('210911', '细河区', '210901');
INSERT INTO `d_china` VALUES ('210921', '阜新蒙古族自治县', '210900');
INSERT INTO `d_china` VALUES ('210922', '彰武县', '210900');
INSERT INTO `d_china` VALUES ('211000', '辽阳市', '210000');
INSERT INTO `d_china` VALUES ('211001', '市辖区', '211000');
INSERT INTO `d_china` VALUES ('211002', '白塔区', '211001');
INSERT INTO `d_china` VALUES ('211003', '文圣区', '211001');
INSERT INTO `d_china` VALUES ('211004', '宏伟区', '211001');
INSERT INTO `d_china` VALUES ('211005', '弓长岭区', '211001');
INSERT INTO `d_china` VALUES ('211011', '太子河区', '211001');
INSERT INTO `d_china` VALUES ('211021', '辽阳县', '211000');
INSERT INTO `d_china` VALUES ('211081', '灯塔市', '211000');
INSERT INTO `d_china` VALUES ('211100', '盘锦市', '210000');
INSERT INTO `d_china` VALUES ('211101', '市辖区', '211100');
INSERT INTO `d_china` VALUES ('211102', '双台子区', '211101');
INSERT INTO `d_china` VALUES ('211103', '兴隆台区', '211101');
INSERT INTO `d_china` VALUES ('211121', '大洼县', '211100');
INSERT INTO `d_china` VALUES ('211122', '盘山县', '211100');
INSERT INTO `d_china` VALUES ('211200', '铁岭市', '210000');
INSERT INTO `d_china` VALUES ('211201', '市辖区', '211200');
INSERT INTO `d_china` VALUES ('211202', '银州区', '211201');
INSERT INTO `d_china` VALUES ('211204', '清河区', '211201');
INSERT INTO `d_china` VALUES ('211221', '铁岭县', '211200');
INSERT INTO `d_china` VALUES ('211223', '西丰县', '211200');
INSERT INTO `d_china` VALUES ('211224', '昌图县', '211200');
INSERT INTO `d_china` VALUES ('211281', '调兵山市', '211200');
INSERT INTO `d_china` VALUES ('211282', '开原市', '211200');
INSERT INTO `d_china` VALUES ('211300', '朝阳市', '210000');
INSERT INTO `d_china` VALUES ('211301', '市辖区', '211300');
INSERT INTO `d_china` VALUES ('211302', '双塔区', '211301');
INSERT INTO `d_china` VALUES ('211303', '龙城区', '211301');
INSERT INTO `d_china` VALUES ('211321', '朝阳县', '211300');
INSERT INTO `d_china` VALUES ('211322', '建平县', '211300');
INSERT INTO `d_china` VALUES ('211324', '喀喇沁左翼蒙古族自治县', '211300');
INSERT INTO `d_china` VALUES ('211381', '北票市', '211300');
INSERT INTO `d_china` VALUES ('211382', '凌源市', '211300');
INSERT INTO `d_china` VALUES ('211400', '葫芦岛市', '210000');
INSERT INTO `d_china` VALUES ('211401', '市辖区', '211400');
INSERT INTO `d_china` VALUES ('211402', '连山区', '211401');
INSERT INTO `d_china` VALUES ('211403', '龙港区', '211401');
INSERT INTO `d_china` VALUES ('211404', '南票区', '211401');
INSERT INTO `d_china` VALUES ('211421', '绥中县', '211400');
INSERT INTO `d_china` VALUES ('211422', '建昌县', '211400');
INSERT INTO `d_china` VALUES ('211481', '兴城市', '211400');
INSERT INTO `d_china` VALUES ('220000', '吉林省', '0');
INSERT INTO `d_china` VALUES ('220100', '长春市', '220000');
INSERT INTO `d_china` VALUES ('220101', '市辖区', '220100');
INSERT INTO `d_china` VALUES ('220102', '南关区', '220101');
INSERT INTO `d_china` VALUES ('220103', '宽城区', '220101');
INSERT INTO `d_china` VALUES ('220104', '朝阳区', '220101');
INSERT INTO `d_china` VALUES ('220105', '二道区', '220101');
INSERT INTO `d_china` VALUES ('220106', '绿园区', '220101');
INSERT INTO `d_china` VALUES ('220112', '双阳区', '220101');
INSERT INTO `d_china` VALUES ('220122', '农安县', '220100');
INSERT INTO `d_china` VALUES ('220181', '九台市', '220100');
INSERT INTO `d_china` VALUES ('220182', '榆树市', '220100');
INSERT INTO `d_china` VALUES ('220183', '德惠市', '220100');
INSERT INTO `d_china` VALUES ('220200', '吉林市', '220000');
INSERT INTO `d_china` VALUES ('220201', '市辖区', '220200');
INSERT INTO `d_china` VALUES ('220202', '昌邑区', '220201');
INSERT INTO `d_china` VALUES ('220203', '龙潭区', '220201');
INSERT INTO `d_china` VALUES ('220204', '船营区', '220201');
INSERT INTO `d_china` VALUES ('220211', '丰满区', '220201');
INSERT INTO `d_china` VALUES ('220221', '永吉县', '220200');
INSERT INTO `d_china` VALUES ('220281', '蛟河市', '220200');
INSERT INTO `d_china` VALUES ('220282', '桦甸市', '220200');
INSERT INTO `d_china` VALUES ('220283', '舒兰市', '220200');
INSERT INTO `d_china` VALUES ('220284', '磐石市', '220200');
INSERT INTO `d_china` VALUES ('220300', '四平市', '220000');
INSERT INTO `d_china` VALUES ('220301', '市辖区', '220300');
INSERT INTO `d_china` VALUES ('220302', '铁西区', '220301');
INSERT INTO `d_china` VALUES ('220303', '铁东区', '220301');
INSERT INTO `d_china` VALUES ('220322', '梨树县', '220300');
INSERT INTO `d_china` VALUES ('220323', '伊通满族自治县', '220300');
INSERT INTO `d_china` VALUES ('220381', '公主岭市', '220300');
INSERT INTO `d_china` VALUES ('220382', '双辽市', '220300');
INSERT INTO `d_china` VALUES ('220400', '辽源市', '220000');
INSERT INTO `d_china` VALUES ('220401', '市辖区', '220400');
INSERT INTO `d_china` VALUES ('220402', '龙山区', '220401');
INSERT INTO `d_china` VALUES ('220403', '西安区', '220401');
INSERT INTO `d_china` VALUES ('220421', '东丰县', '220400');
INSERT INTO `d_china` VALUES ('220422', '东辽县', '220400');
INSERT INTO `d_china` VALUES ('220500', '通化市', '220000');
INSERT INTO `d_china` VALUES ('220501', '市辖区', '220500');
INSERT INTO `d_china` VALUES ('220502', '东昌区', '220501');
INSERT INTO `d_china` VALUES ('220503', '二道江区', '220501');
INSERT INTO `d_china` VALUES ('220521', '通化县', '220500');
INSERT INTO `d_china` VALUES ('220523', '辉南县', '220500');
INSERT INTO `d_china` VALUES ('220524', '柳河县', '220500');
INSERT INTO `d_china` VALUES ('220581', '梅河口市', '220500');
INSERT INTO `d_china` VALUES ('220582', '集安市', '220500');
INSERT INTO `d_china` VALUES ('220600', '白山市', '220000');
INSERT INTO `d_china` VALUES ('220601', '市辖区', '220600');
INSERT INTO `d_china` VALUES ('220602', '八道江区', '220601');
INSERT INTO `d_china` VALUES ('220621', '抚松县', '220600');
INSERT INTO `d_china` VALUES ('220622', '靖宇县', '220600');
INSERT INTO `d_china` VALUES ('220623', '长白朝鲜族自治县', '220600');
INSERT INTO `d_china` VALUES ('220625', '江源区', '220600');
INSERT INTO `d_china` VALUES ('220681', '临江市', '220600');
INSERT INTO `d_china` VALUES ('220700', '松原市', '220000');
INSERT INTO `d_china` VALUES ('220701', '市辖区', '220700');
INSERT INTO `d_china` VALUES ('220702', '宁江区', '220701');
INSERT INTO `d_china` VALUES ('220721', '前郭尔罗斯蒙古族自治县', '220700');
INSERT INTO `d_china` VALUES ('220722', '长岭县', '220700');
INSERT INTO `d_china` VALUES ('220723', '乾安县', '220700');
INSERT INTO `d_china` VALUES ('220724', '扶余市', '220700');
INSERT INTO `d_china` VALUES ('220800', '白城市', '220000');
INSERT INTO `d_china` VALUES ('220801', '市辖区', '220800');
INSERT INTO `d_china` VALUES ('220802', '洮北区', '220800');
INSERT INTO `d_china` VALUES ('220821', '镇赉县', '220800');
INSERT INTO `d_china` VALUES ('220822', '通榆县', '220800');
INSERT INTO `d_china` VALUES ('220881', '洮南市', '220800');
INSERT INTO `d_china` VALUES ('220882', '大安市', '220800');
INSERT INTO `d_china` VALUES ('222400', '延边朝鲜族自治州', '220000');
INSERT INTO `d_china` VALUES ('222401', '延吉市', '222400');
INSERT INTO `d_china` VALUES ('222402', '图们市', '222400');
INSERT INTO `d_china` VALUES ('222403', '敦化市', '222400');
INSERT INTO `d_china` VALUES ('222404', '珲春市', '222400');
INSERT INTO `d_china` VALUES ('222405', '龙井市', '222400');
INSERT INTO `d_china` VALUES ('222406', '和龙市', '222400');
INSERT INTO `d_china` VALUES ('222424', '汪清县', '222400');
INSERT INTO `d_china` VALUES ('222426', '安图县', '222400');
INSERT INTO `d_china` VALUES ('230000', '黑龙江省', '0');
INSERT INTO `d_china` VALUES ('230100', '哈尔滨市', '230000');
INSERT INTO `d_china` VALUES ('230101', '市辖区', '230100');
INSERT INTO `d_china` VALUES ('230102', '道里区', '230101');
INSERT INTO `d_china` VALUES ('230103', '南岗区', '230101');
INSERT INTO `d_china` VALUES ('230104', '道外区', '230101');
INSERT INTO `d_china` VALUES ('230106', '香坊区', '230101');
INSERT INTO `d_china` VALUES ('230107', '动力区', '230101');
INSERT INTO `d_china` VALUES ('230108', '平房区', '230101');
INSERT INTO `d_china` VALUES ('230109', '松北区', '230101');
INSERT INTO `d_china` VALUES ('230111', '呼兰区', '230101');
INSERT INTO `d_china` VALUES ('230123', '依兰县', '230100');
INSERT INTO `d_china` VALUES ('230124', '方正县', '230100');
INSERT INTO `d_china` VALUES ('230125', '宾县', '230100');
INSERT INTO `d_china` VALUES ('230126', '巴彦县', '230100');
INSERT INTO `d_china` VALUES ('230127', '木兰县', '230100');
INSERT INTO `d_china` VALUES ('230128', '通河县', '230100');
INSERT INTO `d_china` VALUES ('230129', '延寿县', '230100');
INSERT INTO `d_china` VALUES ('230181', '阿城市', '230100');
INSERT INTO `d_china` VALUES ('230182', '双城市', '230100');
INSERT INTO `d_china` VALUES ('230183', '尚志市', '230100');
INSERT INTO `d_china` VALUES ('230184', '五常市', '230100');
INSERT INTO `d_china` VALUES ('230200', '齐齐哈尔市', '230000');
INSERT INTO `d_china` VALUES ('230201', '市辖区', '230200');
INSERT INTO `d_china` VALUES ('230202', '龙沙区', '230201');
INSERT INTO `d_china` VALUES ('230203', '建华区', '230201');
INSERT INTO `d_china` VALUES ('230204', '铁锋区', '230201');
INSERT INTO `d_china` VALUES ('230205', '昂昂溪区', '230201');
INSERT INTO `d_china` VALUES ('230206', '富拉尔基区', '230201');
INSERT INTO `d_china` VALUES ('230207', '碾子山区', '230201');
INSERT INTO `d_china` VALUES ('230208', '梅里斯达斡尔族区', '230201');
INSERT INTO `d_china` VALUES ('230221', '龙江县', '230200');
INSERT INTO `d_china` VALUES ('230223', '依安县', '230200');
INSERT INTO `d_china` VALUES ('230224', '泰来县', '230200');
INSERT INTO `d_china` VALUES ('230225', '甘南县', '230200');
INSERT INTO `d_china` VALUES ('230227', '富裕县', '230200');
INSERT INTO `d_china` VALUES ('230229', '克山县', '230200');
INSERT INTO `d_china` VALUES ('230230', '克东县', '230200');
INSERT INTO `d_china` VALUES ('230231', '拜泉县', '230200');
INSERT INTO `d_china` VALUES ('230281', '讷河市', '230200');
INSERT INTO `d_china` VALUES ('230300', '鸡西市', '230000');
INSERT INTO `d_china` VALUES ('230301', '市辖区', '230300');
INSERT INTO `d_china` VALUES ('230302', '鸡冠区', '230301');
INSERT INTO `d_china` VALUES ('230303', '恒山区', '230301');
INSERT INTO `d_china` VALUES ('230304', '滴道区', '230301');
INSERT INTO `d_china` VALUES ('230305', '梨树区', '230301');
INSERT INTO `d_china` VALUES ('230306', '城子河区', '230301');
INSERT INTO `d_china` VALUES ('230307', '麻山区', '230301');
INSERT INTO `d_china` VALUES ('230321', '鸡东县', '230300');
INSERT INTO `d_china` VALUES ('230381', '虎林市', '230300');
INSERT INTO `d_china` VALUES ('230382', '密山市', '230300');
INSERT INTO `d_china` VALUES ('230400', '鹤岗市', '230000');
INSERT INTO `d_china` VALUES ('230401', '市辖区', '230400');
INSERT INTO `d_china` VALUES ('230402', '向阳区', '230401');
INSERT INTO `d_china` VALUES ('230403', '工农区', '230401');
INSERT INTO `d_china` VALUES ('230404', '南山区', '230401');
INSERT INTO `d_china` VALUES ('230405', '兴安区', '230401');
INSERT INTO `d_china` VALUES ('230406', '东山区', '230401');
INSERT INTO `d_china` VALUES ('230407', '兴山区', '230401');
INSERT INTO `d_china` VALUES ('230421', '萝北县', '230400');
INSERT INTO `d_china` VALUES ('230422', '绥滨县', '230400');
INSERT INTO `d_china` VALUES ('230500', '双鸭山市', '230000');
INSERT INTO `d_china` VALUES ('230501', '市辖区', '230500');
INSERT INTO `d_china` VALUES ('230502', '尖山区', '230501');
INSERT INTO `d_china` VALUES ('230503', '岭东区', '230501');
INSERT INTO `d_china` VALUES ('230505', '四方台区', '230501');
INSERT INTO `d_china` VALUES ('230506', '宝山区', '230501');
INSERT INTO `d_china` VALUES ('230521', '集贤县', '230500');
INSERT INTO `d_china` VALUES ('230522', '友谊县', '230500');
INSERT INTO `d_china` VALUES ('230523', '宝清县', '230500');
INSERT INTO `d_china` VALUES ('230524', '饶河县', '230500');
INSERT INTO `d_china` VALUES ('230600', '大庆市', '230000');
INSERT INTO `d_china` VALUES ('230601', '市辖区', '230600');
INSERT INTO `d_china` VALUES ('230602', '萨尔图区', '230601');
INSERT INTO `d_china` VALUES ('230603', '龙凤区', '230601');
INSERT INTO `d_china` VALUES ('230604', '让胡路区', '230601');
INSERT INTO `d_china` VALUES ('230605', '红岗区', '230601');
INSERT INTO `d_china` VALUES ('230606', '大同区', '230601');
INSERT INTO `d_china` VALUES ('230621', '肇州县', '230600');
INSERT INTO `d_china` VALUES ('230622', '肇源县', '230600');
INSERT INTO `d_china` VALUES ('230623', '林甸县', '230600');
INSERT INTO `d_china` VALUES ('230624', '杜尔伯特蒙古族自治县', '230600');
INSERT INTO `d_china` VALUES ('230700', '伊春市', '230000');
INSERT INTO `d_china` VALUES ('230701', '市辖区', '230700');
INSERT INTO `d_china` VALUES ('230702', '伊春区', '230701');
INSERT INTO `d_china` VALUES ('230703', '南岔区', '230701');
INSERT INTO `d_china` VALUES ('230704', '友好区', '230701');
INSERT INTO `d_china` VALUES ('230705', '西林区', '230701');
INSERT INTO `d_china` VALUES ('230706', '翠峦区', '230701');
INSERT INTO `d_china` VALUES ('230707', '新青区', '230701');
INSERT INTO `d_china` VALUES ('230708', '美溪区', '230701');
INSERT INTO `d_china` VALUES ('230709', '金山屯区', '230701');
INSERT INTO `d_china` VALUES ('230710', '五营区', '230701');
INSERT INTO `d_china` VALUES ('230711', '乌马河区', '230701');
INSERT INTO `d_china` VALUES ('230712', '汤旺河区', '230701');
INSERT INTO `d_china` VALUES ('230713', '带岭区', '230701');
INSERT INTO `d_china` VALUES ('230714', '乌伊岭区', '230701');
INSERT INTO `d_china` VALUES ('230715', '红星区', '230701');
INSERT INTO `d_china` VALUES ('230716', '上甘岭区', '230701');
INSERT INTO `d_china` VALUES ('230722', '嘉荫县', '230700');
INSERT INTO `d_china` VALUES ('230781', '铁力市', '230700');
INSERT INTO `d_china` VALUES ('230800', '佳木斯市', '230000');
INSERT INTO `d_china` VALUES ('230801', '市辖区', '230800');
INSERT INTO `d_china` VALUES ('230803', '向阳区', '230801');
INSERT INTO `d_china` VALUES ('230804', '前进区', '230801');
INSERT INTO `d_china` VALUES ('230805', '东风区', '230801');
INSERT INTO `d_china` VALUES ('230811', '郊区', '230801');
INSERT INTO `d_china` VALUES ('230822', '桦南县', '230800');
INSERT INTO `d_china` VALUES ('230826', '桦川县', '230800');
INSERT INTO `d_china` VALUES ('230828', '汤原县', '230800');
INSERT INTO `d_china` VALUES ('230833', '抚远县', '230800');
INSERT INTO `d_china` VALUES ('230881', '同江市', '230800');
INSERT INTO `d_china` VALUES ('230882', '富锦市', '230800');
INSERT INTO `d_china` VALUES ('230900', '七台河市', '230000');
INSERT INTO `d_china` VALUES ('230901', '市辖区', '230900');
INSERT INTO `d_china` VALUES ('230902', '新兴区', '230901');
INSERT INTO `d_china` VALUES ('230903', '桃山区', '230901');
INSERT INTO `d_china` VALUES ('230904', '茄子河区', '230901');
INSERT INTO `d_china` VALUES ('230921', '勃利县', '230900');
INSERT INTO `d_china` VALUES ('231000', '牡丹江市', '230000');
INSERT INTO `d_china` VALUES ('231001', '市辖区', '231000');
INSERT INTO `d_china` VALUES ('231002', '东安区', '231001');
INSERT INTO `d_china` VALUES ('231003', '阳明区', '231001');
INSERT INTO `d_china` VALUES ('231004', '爱民区', '231001');
INSERT INTO `d_china` VALUES ('231005', '西安区', '231001');
INSERT INTO `d_china` VALUES ('231024', '东宁县', '231000');
INSERT INTO `d_china` VALUES ('231025', '林口县', '231000');
INSERT INTO `d_china` VALUES ('231081', '绥芬河市', '231000');
INSERT INTO `d_china` VALUES ('231083', '海林市', '231000');
INSERT INTO `d_china` VALUES ('231084', '宁安市', '231000');
INSERT INTO `d_china` VALUES ('231085', '穆棱市', '231000');
INSERT INTO `d_china` VALUES ('231100', '黑河市', '230000');
INSERT INTO `d_china` VALUES ('231101', '市辖区', '231100');
INSERT INTO `d_china` VALUES ('231102', '爱辉区', '231101');
INSERT INTO `d_china` VALUES ('231121', '嫩江县', '231100');
INSERT INTO `d_china` VALUES ('231123', '逊克县', '231100');
INSERT INTO `d_china` VALUES ('231124', '孙吴县', '231100');
INSERT INTO `d_china` VALUES ('231181', '北安市', '231100');
INSERT INTO `d_china` VALUES ('231182', '五大连池市', '231100');
INSERT INTO `d_china` VALUES ('231200', '绥化市', '230000');
INSERT INTO `d_china` VALUES ('231201', '北林区', '231200');
INSERT INTO `d_china` VALUES ('231221', '望奎县', '231200');
INSERT INTO `d_china` VALUES ('231222', '兰西县', '231200');
INSERT INTO `d_china` VALUES ('231223', '青冈县', '231200');
INSERT INTO `d_china` VALUES ('231224', '庆安县', '231200');
INSERT INTO `d_china` VALUES ('231225', '明水县', '231200');
INSERT INTO `d_china` VALUES ('231226', '绥棱县', '231200');
INSERT INTO `d_china` VALUES ('231281', '安达市', '231200');
INSERT INTO `d_china` VALUES ('231282', '肇东市', '231200');
INSERT INTO `d_china` VALUES ('231283', '海伦市', '231200');
INSERT INTO `d_china` VALUES ('232700', '大兴安岭地区', '230000');
INSERT INTO `d_china` VALUES ('232701', '加格达奇区', '232700');
INSERT INTO `d_china` VALUES ('232702', '松岭区', '232700');
INSERT INTO `d_china` VALUES ('232703', '新林区', '232700');
INSERT INTO `d_china` VALUES ('232704', '呼中区', '232700');
INSERT INTO `d_china` VALUES ('232721', '呼玛县', '232700');
INSERT INTO `d_china` VALUES ('232722', '塔河县', '232700');
INSERT INTO `d_china` VALUES ('232723', '漠河县', '232700');
INSERT INTO `d_china` VALUES ('310000', '上海市', '0');
INSERT INTO `d_china` VALUES ('310100', '黄浦区', '310000');
INSERT INTO `d_china` VALUES ('310300', '卢湾区', '310000');
INSERT INTO `d_china` VALUES ('310400', '徐汇区', '310000');
INSERT INTO `d_china` VALUES ('310500', '长宁区', '310000');
INSERT INTO `d_china` VALUES ('310600', '静安区', '310000');
INSERT INTO `d_china` VALUES ('310700', '普陀区', '310000');
INSERT INTO `d_china` VALUES ('310800', '闸北区', '310000');
INSERT INTO `d_china` VALUES ('310900', '虹口区', '310000');
INSERT INTO `d_china` VALUES ('311000', '杨浦区', '310000');
INSERT INTO `d_china` VALUES ('311200', '闵行区', '310000');
INSERT INTO `d_china` VALUES ('311300', '宝山区', '310000');
INSERT INTO `d_china` VALUES ('311400', '嘉定区', '310000');
INSERT INTO `d_china` VALUES ('311500', '浦东新区', '310000');
INSERT INTO `d_china` VALUES ('311600', '金山区', '310000');
INSERT INTO `d_china` VALUES ('311700', '松江区', '310000');
INSERT INTO `d_china` VALUES ('311800', '青浦区', '310000');
INSERT INTO `d_china` VALUES ('311900', '南汇区', '310000');
INSERT INTO `d_china` VALUES ('312000', '奉贤区', '310000');
INSERT INTO `d_china` VALUES ('313000', '崇明县', '310000');
INSERT INTO `d_china` VALUES ('320000', '江苏省', '0');
INSERT INTO `d_china` VALUES ('320100', '南京市', '320000');
INSERT INTO `d_china` VALUES ('320101', '市辖区', '320100');
INSERT INTO `d_china` VALUES ('320102', '玄武区', '320101');
INSERT INTO `d_china` VALUES ('320103', '白下区', '320101');
INSERT INTO `d_china` VALUES ('320104', '秦淮区', '320101');
INSERT INTO `d_china` VALUES ('320105', '建邺区', '320101');
INSERT INTO `d_china` VALUES ('320106', '鼓楼区', '320101');
INSERT INTO `d_china` VALUES ('320107', '下关区', '320101');
INSERT INTO `d_china` VALUES ('320111', '浦口区', '320101');
INSERT INTO `d_china` VALUES ('320113', '栖霞区', '320101');
INSERT INTO `d_china` VALUES ('320114', '雨花台区', '320101');
INSERT INTO `d_china` VALUES ('320115', '江宁区', '320101');
INSERT INTO `d_china` VALUES ('320116', '六合区', '320101');
INSERT INTO `d_china` VALUES ('320124', '溧水区', '320100');
INSERT INTO `d_china` VALUES ('320125', '高淳区', '320100');
INSERT INTO `d_china` VALUES ('320200', '无锡市', '320000');
INSERT INTO `d_china` VALUES ('320201', '市辖区', '320200');
INSERT INTO `d_china` VALUES ('320202', '崇安区', '320201');
INSERT INTO `d_china` VALUES ('320203', '南长区', '320201');
INSERT INTO `d_china` VALUES ('320204', '北塘区', '320201');
INSERT INTO `d_china` VALUES ('320205', '锡山区', '320201');
INSERT INTO `d_china` VALUES ('320206', '惠山区', '320201');
INSERT INTO `d_china` VALUES ('320211', '滨湖区', '320201');
INSERT INTO `d_china` VALUES ('320281', '江阴市', '320200');
INSERT INTO `d_china` VALUES ('320282', '宜兴市', '320200');
INSERT INTO `d_china` VALUES ('320300', '徐州市', '320000');
INSERT INTO `d_china` VALUES ('320301', '泉山区', '320300');
INSERT INTO `d_china` VALUES ('320302', '鼓楼区', '320300');
INSERT INTO `d_china` VALUES ('320303', '云龙区', '320300');
INSERT INTO `d_china` VALUES ('320304', '九里区', '320301');
INSERT INTO `d_china` VALUES ('320305', '贾汪区', '320300');
INSERT INTO `d_china` VALUES ('320321', '丰县', '320300');
INSERT INTO `d_china` VALUES ('320322', '沛县', '320300');
INSERT INTO `d_china` VALUES ('320323', '铜山县', '320300');
INSERT INTO `d_china` VALUES ('320324', '睢宁县', '320300');
INSERT INTO `d_china` VALUES ('320381', '新沂市', '320300');
INSERT INTO `d_china` VALUES ('320382', '邳州市', '320300');
INSERT INTO `d_china` VALUES ('320400', '常州市', '320000');
INSERT INTO `d_china` VALUES ('320401', '市辖区', '320400');
INSERT INTO `d_china` VALUES ('320402', '天宁区', '320401');
INSERT INTO `d_china` VALUES ('320404', '钟楼区', '320401');
INSERT INTO `d_china` VALUES ('320405', '戚墅堰区', '320401');
INSERT INTO `d_china` VALUES ('320411', '新北区', '320401');
INSERT INTO `d_china` VALUES ('320412', '武进区', '320401');
INSERT INTO `d_china` VALUES ('320481', '溧阳市', '320400');
INSERT INTO `d_china` VALUES ('320482', '金坛市', '320400');
INSERT INTO `d_china` VALUES ('320500', '苏州市', '320000');
INSERT INTO `d_china` VALUES ('320501', '市辖区', '320500');
INSERT INTO `d_china` VALUES ('320502', '沧浪区', '320501');
INSERT INTO `d_china` VALUES ('320503', '平江区', '320501');
INSERT INTO `d_china` VALUES ('320504', '金阊区', '320501');
INSERT INTO `d_china` VALUES ('320505', '虎丘区', '320501');
INSERT INTO `d_china` VALUES ('320506', '吴中区', '320501');
INSERT INTO `d_china` VALUES ('320507', '相城区', '320501');
INSERT INTO `d_china` VALUES ('320581', '常熟市', '320500');
INSERT INTO `d_china` VALUES ('320582', '张家港市', '320500');
INSERT INTO `d_china` VALUES ('320583', '昆山市', '320500');
INSERT INTO `d_china` VALUES ('320584', '吴江市', '320500');
INSERT INTO `d_china` VALUES ('320585', '太仓市', '320500');
INSERT INTO `d_china` VALUES ('320600', '南通市', '320000');
INSERT INTO `d_china` VALUES ('320601', '市辖区', '320600');
INSERT INTO `d_china` VALUES ('320602', '崇川区', '320601');
INSERT INTO `d_china` VALUES ('320611', '港闸区', '320601');
INSERT INTO `d_china` VALUES ('320621', '海安县', '320600');
INSERT INTO `d_china` VALUES ('320623', '如东县', '320600');
INSERT INTO `d_china` VALUES ('320681', '启东市', '320600');
INSERT INTO `d_china` VALUES ('320682', '如皋市', '320600');
INSERT INTO `d_china` VALUES ('320683', '通州市', '320600');
INSERT INTO `d_china` VALUES ('320684', '海门市', '320600');
INSERT INTO `d_china` VALUES ('320700', '连云港市', '320000');
INSERT INTO `d_china` VALUES ('320701', '市辖区', '320700');
INSERT INTO `d_china` VALUES ('320703', '连云区', '320701');
INSERT INTO `d_china` VALUES ('320705', '新浦区', '320701');
INSERT INTO `d_china` VALUES ('320706', '海州区', '320701');
INSERT INTO `d_china` VALUES ('320721', '赣榆县', '320700');
INSERT INTO `d_china` VALUES ('320722', '东海县', '320700');
INSERT INTO `d_china` VALUES ('320723', '灌云县', '320700');
INSERT INTO `d_china` VALUES ('320724', '灌南县', '320700');
INSERT INTO `d_china` VALUES ('320800', '淮安市', '320000');
INSERT INTO `d_china` VALUES ('320801', '市辖区', '320800');
INSERT INTO `d_china` VALUES ('320802', '清河区', '320801');
INSERT INTO `d_china` VALUES ('320803', '楚州区', '320801');
INSERT INTO `d_china` VALUES ('320804', '淮阴区', '320801');
INSERT INTO `d_china` VALUES ('320811', '清浦区', '320801');
INSERT INTO `d_china` VALUES ('320826', '涟水县', '320800');
INSERT INTO `d_china` VALUES ('320829', '洪泽县', '320800');
INSERT INTO `d_china` VALUES ('320830', '盱眙县', '320800');
INSERT INTO `d_china` VALUES ('320831', '金湖县', '320800');
INSERT INTO `d_china` VALUES ('320900', '盐城市', '320000');
INSERT INTO `d_china` VALUES ('320901', '市辖区', '320900');
INSERT INTO `d_china` VALUES ('320902', '亭湖区', '320901');
INSERT INTO `d_china` VALUES ('320903', '盐都区', '320901');
INSERT INTO `d_china` VALUES ('320921', '响水县', '320900');
INSERT INTO `d_china` VALUES ('320922', '滨海县', '320900');
INSERT INTO `d_china` VALUES ('320923', '阜宁县', '320900');
INSERT INTO `d_china` VALUES ('320924', '射阳县', '320900');
INSERT INTO `d_china` VALUES ('320925', '建湖县', '320900');
INSERT INTO `d_china` VALUES ('320981', '东台市', '320900');
INSERT INTO `d_china` VALUES ('320982', '大丰市', '320900');
INSERT INTO `d_china` VALUES ('321000', '扬州市', '320000');
INSERT INTO `d_china` VALUES ('321001', '市辖区', '321000');
INSERT INTO `d_china` VALUES ('321002', '广陵区', '321001');
INSERT INTO `d_china` VALUES ('321003', '邗江区', '321001');
INSERT INTO `d_china` VALUES ('321011', '维扬区', '321001');
INSERT INTO `d_china` VALUES ('321023', '宝应县', '321000');
INSERT INTO `d_china` VALUES ('321081', '仪征市', '321000');
INSERT INTO `d_china` VALUES ('321084', '高邮市', '321000');
INSERT INTO `d_china` VALUES ('321088', '江都市', '321000');
INSERT INTO `d_china` VALUES ('321100', '镇江市', '320000');
INSERT INTO `d_china` VALUES ('321101', '市辖区', '321100');
INSERT INTO `d_china` VALUES ('321102', '京口区', '321101');
INSERT INTO `d_china` VALUES ('321111', '润州区', '321101');
INSERT INTO `d_china` VALUES ('321112', '丹徒区', '321101');
INSERT INTO `d_china` VALUES ('321181', '丹阳市', '321100');
INSERT INTO `d_china` VALUES ('321182', '扬中市', '321100');
INSERT INTO `d_china` VALUES ('321183', '句容市', '321100');
INSERT INTO `d_china` VALUES ('321200', '泰州市', '320000');
INSERT INTO `d_china` VALUES ('321201', '市辖区', '321200');
INSERT INTO `d_china` VALUES ('321202', '海陵区', '321201');
INSERT INTO `d_china` VALUES ('321203', '高港区', '321201');
INSERT INTO `d_china` VALUES ('321281', '兴化市', '321200');
INSERT INTO `d_china` VALUES ('321282', '靖江市', '321200');
INSERT INTO `d_china` VALUES ('321283', '泰兴市', '321200');
INSERT INTO `d_china` VALUES ('321284', '姜堰市', '321200');
INSERT INTO `d_china` VALUES ('321300', '宿迁市', '320000');
INSERT INTO `d_china` VALUES ('321301', '市辖区', '321300');
INSERT INTO `d_china` VALUES ('321302', '宿城区', '321301');
INSERT INTO `d_china` VALUES ('321311', '宿豫区', '321301');
INSERT INTO `d_china` VALUES ('321322', '沭阳县', '321300');
INSERT INTO `d_china` VALUES ('321323', '泗阳县', '321300');
INSERT INTO `d_china` VALUES ('321324', '泗洪县', '321300');
INSERT INTO `d_china` VALUES ('330000', '浙江省', '0');
INSERT INTO `d_china` VALUES ('330100', '杭州市', '330000');
INSERT INTO `d_china` VALUES ('330101', '市辖区', '330100');
INSERT INTO `d_china` VALUES ('330102', '上城区', '330101');
INSERT INTO `d_china` VALUES ('330103', '下城区', '330101');
INSERT INTO `d_china` VALUES ('330104', '江干区', '330101');
INSERT INTO `d_china` VALUES ('330105', '拱墅区', '330101');
INSERT INTO `d_china` VALUES ('330106', '西湖区', '330101');
INSERT INTO `d_china` VALUES ('330108', '滨江区', '330101');
INSERT INTO `d_china` VALUES ('330109', '萧山区', '330101');
INSERT INTO `d_china` VALUES ('330110', '余杭区', '330101');
INSERT INTO `d_china` VALUES ('330122', '桐庐县', '330100');
INSERT INTO `d_china` VALUES ('330127', '淳安县', '330100');
INSERT INTO `d_china` VALUES ('330182', '建德市', '330100');
INSERT INTO `d_china` VALUES ('330183', '富阳市', '330100');
INSERT INTO `d_china` VALUES ('330185', '临安市', '330100');
INSERT INTO `d_china` VALUES ('330200', '宁波市', '330000');
INSERT INTO `d_china` VALUES ('330201', '市辖区', '330200');
INSERT INTO `d_china` VALUES ('330203', '海曙区', '330201');
INSERT INTO `d_china` VALUES ('330204', '江东区', '330201');
INSERT INTO `d_china` VALUES ('330205', '江北区', '330201');
INSERT INTO `d_china` VALUES ('330206', '北仑区', '330201');
INSERT INTO `d_china` VALUES ('330211', '镇海区', '330201');
INSERT INTO `d_china` VALUES ('330212', '鄞州区', '330201');
INSERT INTO `d_china` VALUES ('330225', '象山县', '330200');
INSERT INTO `d_china` VALUES ('330226', '宁海县', '330200');
INSERT INTO `d_china` VALUES ('330281', '余姚市', '330200');
INSERT INTO `d_china` VALUES ('330282', '慈溪市', '330200');
INSERT INTO `d_china` VALUES ('330283', '奉化市', '330200');
INSERT INTO `d_china` VALUES ('330300', '温州市', '330000');
INSERT INTO `d_china` VALUES ('330301', '市辖区', '330300');
INSERT INTO `d_china` VALUES ('330302', '鹿城区', '330301');
INSERT INTO `d_china` VALUES ('330303', '龙湾区', '330301');
INSERT INTO `d_china` VALUES ('330304', '瓯海区', '330301');
INSERT INTO `d_china` VALUES ('330322', '洞头县', '330300');
INSERT INTO `d_china` VALUES ('330324', '永嘉县', '330300');
INSERT INTO `d_china` VALUES ('330326', '平阳县', '330300');
INSERT INTO `d_china` VALUES ('330327', '苍南县', '330300');
INSERT INTO `d_china` VALUES ('330328', '文成县', '330300');
INSERT INTO `d_china` VALUES ('330329', '泰顺县', '330300');
INSERT INTO `d_china` VALUES ('330381', '瑞安市', '330300');
INSERT INTO `d_china` VALUES ('330382', '乐清市', '330300');
INSERT INTO `d_china` VALUES ('330400', '嘉兴市', '330000');
INSERT INTO `d_china` VALUES ('330401', '市辖区', '330400');
INSERT INTO `d_china` VALUES ('330402', '南湖区', '330401');
INSERT INTO `d_china` VALUES ('330411', '秀洲区', '330401');
INSERT INTO `d_china` VALUES ('330421', '嘉善县', '330400');
INSERT INTO `d_china` VALUES ('330424', '海盐县', '330400');
INSERT INTO `d_china` VALUES ('330481', '海宁市', '330400');
INSERT INTO `d_china` VALUES ('330482', '平湖市', '330400');
INSERT INTO `d_china` VALUES ('330483', '桐乡市', '330400');
INSERT INTO `d_china` VALUES ('330500', '湖州市', '330000');
INSERT INTO `d_china` VALUES ('330501', '市辖区', '330500');
INSERT INTO `d_china` VALUES ('330502', '吴兴区', '330501');
INSERT INTO `d_china` VALUES ('330503', '南浔区', '330501');
INSERT INTO `d_china` VALUES ('330521', '德清县', '330500');
INSERT INTO `d_china` VALUES ('330522', '长兴县', '330500');
INSERT INTO `d_china` VALUES ('330523', '安吉县', '330500');
INSERT INTO `d_china` VALUES ('330600', '绍兴市', '330000');
INSERT INTO `d_china` VALUES ('330601', '市辖区', '330600');
INSERT INTO `d_china` VALUES ('330602', '越城区', '330601');
INSERT INTO `d_china` VALUES ('330621', '绍兴县', '330600');
INSERT INTO `d_china` VALUES ('330624', '新昌县', '330600');
INSERT INTO `d_china` VALUES ('330681', '诸暨市', '330600');
INSERT INTO `d_china` VALUES ('330682', '上虞市', '330600');
INSERT INTO `d_china` VALUES ('330683', '嵊州市', '330600');
INSERT INTO `d_china` VALUES ('330700', '金华市', '330000');
INSERT INTO `d_china` VALUES ('330701', '市辖区', '330700');
INSERT INTO `d_china` VALUES ('330702', '婺城区', '330701');
INSERT INTO `d_china` VALUES ('330703', '金东区', '330701');
INSERT INTO `d_china` VALUES ('330723', '武义县', '330700');
INSERT INTO `d_china` VALUES ('330726', '浦江县', '330700');
INSERT INTO `d_china` VALUES ('330727', '磐安县', '330700');
INSERT INTO `d_china` VALUES ('330781', '兰溪市', '330700');
INSERT INTO `d_china` VALUES ('330782', '义乌市', '330700');
INSERT INTO `d_china` VALUES ('330783', '东阳市', '330700');
INSERT INTO `d_china` VALUES ('330784', '永康市', '330700');
INSERT INTO `d_china` VALUES ('330800', '衢州市', '330000');
INSERT INTO `d_china` VALUES ('330801', '市辖区', '330800');
INSERT INTO `d_china` VALUES ('330802', '柯城区', '330801');
INSERT INTO `d_china` VALUES ('330803', '衢江区', '330801');
INSERT INTO `d_china` VALUES ('330822', '常山县', '330800');
INSERT INTO `d_china` VALUES ('330824', '开化县', '330800');
INSERT INTO `d_china` VALUES ('330825', '龙游县', '330800');
INSERT INTO `d_china` VALUES ('330881', '江山市', '330800');
INSERT INTO `d_china` VALUES ('330900', '舟山市', '330000');
INSERT INTO `d_china` VALUES ('330901', '市辖区', '330900');
INSERT INTO `d_china` VALUES ('330902', '定海区', '330901');
INSERT INTO `d_china` VALUES ('330903', '普陀区', '330901');
INSERT INTO `d_china` VALUES ('330921', '岱山县', '330900');
INSERT INTO `d_china` VALUES ('330922', '嵊泗县', '330900');
INSERT INTO `d_china` VALUES ('331000', '台州市', '330000');
INSERT INTO `d_china` VALUES ('331001', '市辖区', '331000');
INSERT INTO `d_china` VALUES ('331002', '椒江区', '331001');
INSERT INTO `d_china` VALUES ('331003', '黄岩区', '331001');
INSERT INTO `d_china` VALUES ('331004', '路桥区', '331001');
INSERT INTO `d_china` VALUES ('331021', '玉环县', '331000');
INSERT INTO `d_china` VALUES ('331022', '三门县', '331000');
INSERT INTO `d_china` VALUES ('331023', '天台县', '331000');
INSERT INTO `d_china` VALUES ('331024', '仙居县', '331000');
INSERT INTO `d_china` VALUES ('331081', '温岭市', '331000');
INSERT INTO `d_china` VALUES ('331082', '临海市', '331000');
INSERT INTO `d_china` VALUES ('331100', '丽水市', '330000');
INSERT INTO `d_china` VALUES ('331101', '市辖区', '331100');
INSERT INTO `d_china` VALUES ('331102', '莲都区', '331101');
INSERT INTO `d_china` VALUES ('331121', '青田县', '331100');
INSERT INTO `d_china` VALUES ('331122', '缙云县', '331100');
INSERT INTO `d_china` VALUES ('331123', '遂昌县', '331100');
INSERT INTO `d_china` VALUES ('331124', '松阳县', '331100');
INSERT INTO `d_china` VALUES ('331125', '云和县', '331100');
INSERT INTO `d_china` VALUES ('331126', '庆元县', '331100');
INSERT INTO `d_china` VALUES ('331127', '景宁畲族自治县', '331100');
INSERT INTO `d_china` VALUES ('331181', '龙泉市', '331100');
INSERT INTO `d_china` VALUES ('340000', '安徽省', '0');
INSERT INTO `d_china` VALUES ('340100', '合肥市', '340000');
INSERT INTO `d_china` VALUES ('340101', '市辖区', '340100');
INSERT INTO `d_china` VALUES ('340102', '瑶海区', '340101');
INSERT INTO `d_china` VALUES ('340103', '庐阳区', '340101');
INSERT INTO `d_china` VALUES ('340104', '蜀山区', '340101');
INSERT INTO `d_china` VALUES ('340111', '包河区', '340101');
INSERT INTO `d_china` VALUES ('340121', '长丰县', '340100');
INSERT INTO `d_china` VALUES ('340122', '肥东县', '340100');
INSERT INTO `d_china` VALUES ('340123', '肥西县', '340100');
INSERT INTO `d_china` VALUES ('340124', '庐江县', '340100');
INSERT INTO `d_china` VALUES ('340181', '巢湖市', '340100');
INSERT INTO `d_china` VALUES ('340200', '芜湖市', '340000');
INSERT INTO `d_china` VALUES ('340201', '市辖区', '340200');
INSERT INTO `d_china` VALUES ('340202', '镜湖区', '340201');
INSERT INTO `d_china` VALUES ('340203', '马塘区', '340201');
INSERT INTO `d_china` VALUES ('340207', '鸠江区', '340201');
INSERT INTO `d_china` VALUES ('340221', '芜湖县', '340200');
INSERT INTO `d_china` VALUES ('340222', '繁昌县', '340200');
INSERT INTO `d_china` VALUES ('340223', '南陵县', '340200');
INSERT INTO `d_china` VALUES ('340225', '无为县', '340200');
INSERT INTO `d_china` VALUES ('340300', '蚌埠市', '340000');
INSERT INTO `d_china` VALUES ('340301', '市辖区', '340300');
INSERT INTO `d_china` VALUES ('340302', '龙子湖区', '340301');
INSERT INTO `d_china` VALUES ('340303', '蚌山区', '340301');
INSERT INTO `d_china` VALUES ('340304', '禹会区', '340301');
INSERT INTO `d_china` VALUES ('340311', '淮上区', '340301');
INSERT INTO `d_china` VALUES ('340321', '怀远县', '340300');
INSERT INTO `d_china` VALUES ('340322', '五河县', '340300');
INSERT INTO `d_china` VALUES ('340323', '固镇县', '340300');
INSERT INTO `d_china` VALUES ('340400', '淮南市', '340000');
INSERT INTO `d_china` VALUES ('340401', '市辖区', '340400');
INSERT INTO `d_china` VALUES ('340402', '大通区', '340401');
INSERT INTO `d_china` VALUES ('340403', '田家庵区', '340401');
INSERT INTO `d_china` VALUES ('340404', '谢家集区', '340401');
INSERT INTO `d_china` VALUES ('340405', '八公山区', '340401');
INSERT INTO `d_china` VALUES ('340406', '潘集区', '340401');
INSERT INTO `d_china` VALUES ('340421', '凤台县', '340400');
INSERT INTO `d_china` VALUES ('340500', '马鞍山市', '340000');
INSERT INTO `d_china` VALUES ('340501', '市辖区', '340500');
INSERT INTO `d_china` VALUES ('340502', '金家庄区', '340501');
INSERT INTO `d_china` VALUES ('340503', '花山区', '340501');
INSERT INTO `d_china` VALUES ('340504', '雨山区', '340501');
INSERT INTO `d_china` VALUES ('340521', '当涂县', '340500');
INSERT INTO `d_china` VALUES ('340522', '含山县', '340500');
INSERT INTO `d_china` VALUES ('340523', '和县', '340500');
INSERT INTO `d_china` VALUES ('340600', '淮北市', '340000');
INSERT INTO `d_china` VALUES ('340601', '市辖区', '340600');
INSERT INTO `d_china` VALUES ('340602', '杜集区', '340601');
INSERT INTO `d_china` VALUES ('340603', '相山区', '340601');
INSERT INTO `d_china` VALUES ('340604', '烈山区', '340601');
INSERT INTO `d_china` VALUES ('340621', '濉溪县', '340600');
INSERT INTO `d_china` VALUES ('340700', '铜陵市', '340000');
INSERT INTO `d_china` VALUES ('340701', '市辖区', '340700');
INSERT INTO `d_china` VALUES ('340702', '铜官山区', '340701');
INSERT INTO `d_china` VALUES ('340703', '狮子山区', '340701');
INSERT INTO `d_china` VALUES ('340711', '郊区', '340701');
INSERT INTO `d_china` VALUES ('340721', '铜陵县', '340700');
INSERT INTO `d_china` VALUES ('340800', '安庆市', '340000');
INSERT INTO `d_china` VALUES ('340801', '市辖区', '340800');
INSERT INTO `d_china` VALUES ('340802', '迎江区', '340801');
INSERT INTO `d_china` VALUES ('340803', '大观区', '340801');
INSERT INTO `d_china` VALUES ('340811', '宜秀区', '340801');
INSERT INTO `d_china` VALUES ('340822', '怀宁县', '340800');
INSERT INTO `d_china` VALUES ('340823', '枞阳县', '340800');
INSERT INTO `d_china` VALUES ('340824', '潜山县', '340800');
INSERT INTO `d_china` VALUES ('340825', '太湖县', '340800');
INSERT INTO `d_china` VALUES ('340826', '宿松县', '340800');
INSERT INTO `d_china` VALUES ('340827', '望江县', '340800');
INSERT INTO `d_china` VALUES ('340828', '岳西县', '340800');
INSERT INTO `d_china` VALUES ('340881', '桐城市', '340800');
INSERT INTO `d_china` VALUES ('341000', '黄山市', '340000');
INSERT INTO `d_china` VALUES ('341001', '黄山区', '341000');
INSERT INTO `d_china` VALUES ('341002', '屯溪区', '341000');
INSERT INTO `d_china` VALUES ('341004', '徽州区', '341000');
INSERT INTO `d_china` VALUES ('341021', '歙县', '341000');
INSERT INTO `d_china` VALUES ('341022', '休宁县', '341000');
INSERT INTO `d_china` VALUES ('341023', '黟县', '341000');
INSERT INTO `d_china` VALUES ('341024', '祁门县', '341000');
INSERT INTO `d_china` VALUES ('341091', '汤口镇', '341000');
INSERT INTO `d_china` VALUES ('341100', '滁州市', '340000');
INSERT INTO `d_china` VALUES ('341101', '市辖区', '341100');
INSERT INTO `d_china` VALUES ('341102', '琅琊区', '341101');
INSERT INTO `d_china` VALUES ('341103', '南谯区', '341101');
INSERT INTO `d_china` VALUES ('341122', '来安县', '341100');
INSERT INTO `d_china` VALUES ('341124', '全椒县', '341100');
INSERT INTO `d_china` VALUES ('341125', '定远县', '341100');
INSERT INTO `d_china` VALUES ('341126', '凤阳县', '341100');
INSERT INTO `d_china` VALUES ('341181', '天长市', '341100');
INSERT INTO `d_china` VALUES ('341182', '明光市', '341100');
INSERT INTO `d_china` VALUES ('341200', '阜阳市', '340000');
INSERT INTO `d_china` VALUES ('341201', '颍泉区', '341200');
INSERT INTO `d_china` VALUES ('341202', '颍州区', '341200');
INSERT INTO `d_china` VALUES ('341203', '颍东区', '341200');
INSERT INTO `d_china` VALUES ('341221', '临泉县', '341200');
INSERT INTO `d_china` VALUES ('341222', '太和县', '341200');
INSERT INTO `d_china` VALUES ('341225', '阜南县', '341200');
INSERT INTO `d_china` VALUES ('341226', '颍上县', '341200');
INSERT INTO `d_china` VALUES ('341282', '界首市', '341200');
INSERT INTO `d_china` VALUES ('341300', '宿州市', '340000');
INSERT INTO `d_china` VALUES ('341301', '市辖区', '341300');
INSERT INTO `d_china` VALUES ('341302', '埇桥区', '341301');
INSERT INTO `d_china` VALUES ('341321', '砀山县', '341300');
INSERT INTO `d_china` VALUES ('341322', '萧县', '341300');
INSERT INTO `d_china` VALUES ('341323', '灵璧县', '341300');
INSERT INTO `d_china` VALUES ('341324', '泗县', '341300');
INSERT INTO `d_china` VALUES ('341402', '居巢区', null);
INSERT INTO `d_china` VALUES ('341500', '六安市', '340000');
INSERT INTO `d_china` VALUES ('341501', '市辖区', '341500');
INSERT INTO `d_china` VALUES ('341502', '金安区', '341501');
INSERT INTO `d_china` VALUES ('341503', '裕安区', '341501');
INSERT INTO `d_china` VALUES ('341521', '寿县', '341500');
INSERT INTO `d_china` VALUES ('341522', '霍邱县', '341500');
INSERT INTO `d_china` VALUES ('341523', '舒城县', '341500');
INSERT INTO `d_china` VALUES ('341524', '金寨县', '341500');
INSERT INTO `d_china` VALUES ('341525', '霍山县', '341500');
INSERT INTO `d_china` VALUES ('341600', '亳州市', '340000');
INSERT INTO `d_china` VALUES ('341601', '谯城区', '341600');
INSERT INTO `d_china` VALUES ('341621', '涡阳县', '341600');
INSERT INTO `d_china` VALUES ('341622', '蒙城县', '341600');
INSERT INTO `d_china` VALUES ('341623', '利辛县', '341600');
INSERT INTO `d_china` VALUES ('341700', '池州市', '340000');
INSERT INTO `d_china` VALUES ('341701', '市辖区', '341700');
INSERT INTO `d_china` VALUES ('341702', '贵池区', '341701');
INSERT INTO `d_china` VALUES ('341721', '东至县', '341700');
INSERT INTO `d_china` VALUES ('341722', '石台县', '341700');
INSERT INTO `d_china` VALUES ('341723', '青阳县', '341700');
INSERT INTO `d_china` VALUES ('341800', '宣城市', '340000');
INSERT INTO `d_china` VALUES ('341801', '市辖区', '341800');
INSERT INTO `d_china` VALUES ('341802', '宣州区', '341801');
INSERT INTO `d_china` VALUES ('341821', '郎溪县', '341800');
INSERT INTO `d_china` VALUES ('341822', '广德县', '341800');
INSERT INTO `d_china` VALUES ('341823', '泾县', '341800');
INSERT INTO `d_china` VALUES ('341824', '绩溪县', '341800');
INSERT INTO `d_china` VALUES ('341825', '旌德县', '341800');
INSERT INTO `d_china` VALUES ('341881', '宁国市', '341800');
INSERT INTO `d_china` VALUES ('350000', '福建省', '0');
INSERT INTO `d_china` VALUES ('350100', '福州市', '350000');
INSERT INTO `d_china` VALUES ('350101', '市辖区', '350100');
INSERT INTO `d_china` VALUES ('350102', '鼓楼区', '350101');
INSERT INTO `d_china` VALUES ('350103', '台江区', '350101');
INSERT INTO `d_china` VALUES ('350104', '仓山区', '350101');
INSERT INTO `d_china` VALUES ('350105', '马尾区', '350101');
INSERT INTO `d_china` VALUES ('350111', '晋安区', '350101');
INSERT INTO `d_china` VALUES ('350121', '闽侯县', '350100');
INSERT INTO `d_china` VALUES ('350122', '连江县', '350100');
INSERT INTO `d_china` VALUES ('350123', '罗源县', '350100');
INSERT INTO `d_china` VALUES ('350124', '闽清县', '350100');
INSERT INTO `d_china` VALUES ('350125', '永泰县', '350100');
INSERT INTO `d_china` VALUES ('350128', '平潭县', '350100');
INSERT INTO `d_china` VALUES ('350181', '福清市', '350100');
INSERT INTO `d_china` VALUES ('350182', '长乐市', '350100');
INSERT INTO `d_china` VALUES ('350200', '厦门市', '350000');
INSERT INTO `d_china` VALUES ('350201', '市辖区', '350200');
INSERT INTO `d_china` VALUES ('350203', '思明区', '350201');
INSERT INTO `d_china` VALUES ('350205', '海沧区', '350201');
INSERT INTO `d_china` VALUES ('350206', '湖里区', '350201');
INSERT INTO `d_china` VALUES ('350211', '集美区', '350201');
INSERT INTO `d_china` VALUES ('350212', '同安区', '350201');
INSERT INTO `d_china` VALUES ('350213', '翔安区', '350201');
INSERT INTO `d_china` VALUES ('350300', '莆田市', '350000');
INSERT INTO `d_china` VALUES ('350301', '市辖区', '350300');
INSERT INTO `d_china` VALUES ('350302', '城厢区', '350301');
INSERT INTO `d_china` VALUES ('350303', '涵江区', '350301');
INSERT INTO `d_china` VALUES ('350304', '荔城区', '350301');
INSERT INTO `d_china` VALUES ('350305', '秀屿区', '350301');
INSERT INTO `d_china` VALUES ('350322', '仙游县', '350300');
INSERT INTO `d_china` VALUES ('350400', '三明市', '350000');
INSERT INTO `d_china` VALUES ('350401', '市辖区', '350400');
INSERT INTO `d_china` VALUES ('350402', '梅列区', '350401');
INSERT INTO `d_china` VALUES ('350403', '三元区', '350401');
INSERT INTO `d_china` VALUES ('350421', '明溪县', '350400');
INSERT INTO `d_china` VALUES ('350423', '清流县', '350400');
INSERT INTO `d_china` VALUES ('350424', '宁化县', '350400');
INSERT INTO `d_china` VALUES ('350425', '大田县', '350400');
INSERT INTO `d_china` VALUES ('350426', '尤溪县', '350400');
INSERT INTO `d_china` VALUES ('350427', '沙县', '350400');
INSERT INTO `d_china` VALUES ('350428', '将乐县', '350400');
INSERT INTO `d_china` VALUES ('350429', '泰宁县', '350400');
INSERT INTO `d_china` VALUES ('350430', '建宁县', '350400');
INSERT INTO `d_china` VALUES ('350481', '永安市', '350400');
INSERT INTO `d_china` VALUES ('350500', '泉州市', '350000');
INSERT INTO `d_china` VALUES ('350501', '市辖区', '350500');
INSERT INTO `d_china` VALUES ('350502', '鲤城区', '350501');
INSERT INTO `d_china` VALUES ('350503', '丰泽区', '350501');
INSERT INTO `d_china` VALUES ('350504', '洛江区', '350501');
INSERT INTO `d_china` VALUES ('350505', '泉港区', '350501');
INSERT INTO `d_china` VALUES ('350521', '惠安县', '350500');
INSERT INTO `d_china` VALUES ('350524', '安溪县', '350500');
INSERT INTO `d_china` VALUES ('350525', '永春县', '350500');
INSERT INTO `d_china` VALUES ('350526', '德化县', '350500');
INSERT INTO `d_china` VALUES ('350527', '金门县', '350500');
INSERT INTO `d_china` VALUES ('350581', '石狮市', '350500');
INSERT INTO `d_china` VALUES ('350582', '晋江市', '350500');
INSERT INTO `d_china` VALUES ('350583', '南安市', '350500');
INSERT INTO `d_china` VALUES ('350600', '漳州市', '350000');
INSERT INTO `d_china` VALUES ('350601', '市辖区', '350600');
INSERT INTO `d_china` VALUES ('350602', '芗城区', '350601');
INSERT INTO `d_china` VALUES ('350603', '龙文区', '350601');
INSERT INTO `d_china` VALUES ('350622', '云霄县', '350600');
INSERT INTO `d_china` VALUES ('350623', '漳浦县', '350600');
INSERT INTO `d_china` VALUES ('350624', '诏安县', '350600');
INSERT INTO `d_china` VALUES ('350625', '长泰县', '350600');
INSERT INTO `d_china` VALUES ('350626', '东山县', '350600');
INSERT INTO `d_china` VALUES ('350627', '南靖县', '350600');
INSERT INTO `d_china` VALUES ('350628', '平和县', '350600');
INSERT INTO `d_china` VALUES ('350629', '华安县', '350600');
INSERT INTO `d_china` VALUES ('350681', '龙海市', '350600');
INSERT INTO `d_china` VALUES ('350700', '南平市', '350000');
INSERT INTO `d_china` VALUES ('350701', '市辖区', '350700');
INSERT INTO `d_china` VALUES ('350702', '延平区', '350701');
INSERT INTO `d_china` VALUES ('350721', '顺昌县', '350700');
INSERT INTO `d_china` VALUES ('350722', '浦城县', '350700');
INSERT INTO `d_china` VALUES ('350723', '光泽县', '350700');
INSERT INTO `d_china` VALUES ('350724', '松溪县', '350700');
INSERT INTO `d_china` VALUES ('350725', '政和县', '350700');
INSERT INTO `d_china` VALUES ('350781', '邵武市', '350700');
INSERT INTO `d_china` VALUES ('350782', '武夷山市', '350700');
INSERT INTO `d_china` VALUES ('350783', '建瓯市', '350700');
INSERT INTO `d_china` VALUES ('350784', '建阳市', '350700');
INSERT INTO `d_china` VALUES ('350800', '龙岩市', '350000');
INSERT INTO `d_china` VALUES ('350801', '市辖区', '350800');
INSERT INTO `d_china` VALUES ('350802', '新罗区', '350801');
INSERT INTO `d_china` VALUES ('350821', '长汀县', '350800');
INSERT INTO `d_china` VALUES ('350822', '永定县', '350800');
INSERT INTO `d_china` VALUES ('350823', '上杭县', '350800');
INSERT INTO `d_china` VALUES ('350824', '武平县', '350800');
INSERT INTO `d_china` VALUES ('350825', '连城县', '350800');
INSERT INTO `d_china` VALUES ('350881', '漳平市', '350800');
INSERT INTO `d_china` VALUES ('350900', '宁德市', '350000');
INSERT INTO `d_china` VALUES ('350901', '市辖区', '350900');
INSERT INTO `d_china` VALUES ('350902', '蕉城区', '350901');
INSERT INTO `d_china` VALUES ('350921', '霞浦县', '350900');
INSERT INTO `d_china` VALUES ('350922', '古田县', '350900');
INSERT INTO `d_china` VALUES ('350923', '屏南县', '350900');
INSERT INTO `d_china` VALUES ('350924', '寿宁县', '350900');
INSERT INTO `d_china` VALUES ('350925', '周宁县', '350900');
INSERT INTO `d_china` VALUES ('350926', '柘荣县', '350900');
INSERT INTO `d_china` VALUES ('350981', '福安市', '350900');
INSERT INTO `d_china` VALUES ('350982', '福鼎市', '350900');
INSERT INTO `d_china` VALUES ('360000', '江西省', '0');
INSERT INTO `d_china` VALUES ('360100', '南昌市', '360000');
INSERT INTO `d_china` VALUES ('360101', '市辖区', '360100');
INSERT INTO `d_china` VALUES ('360102', '东湖区', '360101');
INSERT INTO `d_china` VALUES ('360103', '西湖区', '360101');
INSERT INTO `d_china` VALUES ('360104', '青云谱区', '360101');
INSERT INTO `d_china` VALUES ('360105', '湾里区', '360101');
INSERT INTO `d_china` VALUES ('360111', '青山湖区', '360101');
INSERT INTO `d_china` VALUES ('360121', '南昌县', '360100');
INSERT INTO `d_china` VALUES ('360122', '新建县', '360100');
INSERT INTO `d_china` VALUES ('360123', '安义县', '360100');
INSERT INTO `d_china` VALUES ('360124', '进贤县', '360100');
INSERT INTO `d_china` VALUES ('360200', '景德镇市', '360000');
INSERT INTO `d_china` VALUES ('360201', '市辖区', '360200');
INSERT INTO `d_china` VALUES ('360202', '昌江区', '360201');
INSERT INTO `d_china` VALUES ('360203', '珠山区', '360201');
INSERT INTO `d_china` VALUES ('360222', '浮梁县', '360200');
INSERT INTO `d_china` VALUES ('360281', '乐平市', '360200');
INSERT INTO `d_china` VALUES ('360300', '萍乡市', '360000');
INSERT INTO `d_china` VALUES ('360301', '市辖区', '360300');
INSERT INTO `d_china` VALUES ('360302', '安源区', '360301');
INSERT INTO `d_china` VALUES ('360313', '湘东区', '360301');
INSERT INTO `d_china` VALUES ('360321', '莲花县', '360300');
INSERT INTO `d_china` VALUES ('360322', '上栗县', '360300');
INSERT INTO `d_china` VALUES ('360323', '芦溪县', '360300');
INSERT INTO `d_china` VALUES ('360400', '九江市', '360000');
INSERT INTO `d_china` VALUES ('360401', '市辖区', '360400');
INSERT INTO `d_china` VALUES ('360402', '庐山区', '360401');
INSERT INTO `d_china` VALUES ('360403', '浔阳区', '360401');
INSERT INTO `d_china` VALUES ('360421', '九江县', '360400');
INSERT INTO `d_china` VALUES ('360423', '武宁县', '360400');
INSERT INTO `d_china` VALUES ('360424', '修水县', '360400');
INSERT INTO `d_china` VALUES ('360425', '永修县', '360400');
INSERT INTO `d_china` VALUES ('360426', '德安县', '360400');
INSERT INTO `d_china` VALUES ('360427', '星子县', '360400');
INSERT INTO `d_china` VALUES ('360428', '都昌县', '360400');
INSERT INTO `d_china` VALUES ('360429', '湖口县', '360400');
INSERT INTO `d_china` VALUES ('360430', '彭泽县', '360400');
INSERT INTO `d_china` VALUES ('360481', '瑞昌市', '360400');
INSERT INTO `d_china` VALUES ('360482', '共青城市', '360400');
INSERT INTO `d_china` VALUES ('360500', '新余市', '360000');
INSERT INTO `d_china` VALUES ('360501', '市辖区', '360500');
INSERT INTO `d_china` VALUES ('360502', '渝水区', '360501');
INSERT INTO `d_china` VALUES ('360521', '分宜县', '360500');
INSERT INTO `d_china` VALUES ('360600', '鹰潭市', '360000');
INSERT INTO `d_china` VALUES ('360601', '市辖区', '360600');
INSERT INTO `d_china` VALUES ('360602', '月湖区', '360601');
INSERT INTO `d_china` VALUES ('360622', '余江县', '360600');
INSERT INTO `d_china` VALUES ('360681', '贵溪市', '360600');
INSERT INTO `d_china` VALUES ('360700', '赣州市', '360000');
INSERT INTO `d_china` VALUES ('360701', '市辖区', '360700');
INSERT INTO `d_china` VALUES ('360702', '章贡区', '360701');
INSERT INTO `d_china` VALUES ('360721', '赣县', '360700');
INSERT INTO `d_china` VALUES ('360722', '信丰县', '360700');
INSERT INTO `d_china` VALUES ('360723', '大余县', '360700');
INSERT INTO `d_china` VALUES ('360724', '上犹县', '360700');
INSERT INTO `d_china` VALUES ('360725', '崇义县', '360700');
INSERT INTO `d_china` VALUES ('360726', '安远县', '360700');
INSERT INTO `d_china` VALUES ('360727', '龙南县', '360700');
INSERT INTO `d_china` VALUES ('360728', '定南县', '360700');
INSERT INTO `d_china` VALUES ('360729', '全南县', '360700');
INSERT INTO `d_china` VALUES ('360730', '宁都县', '360700');
INSERT INTO `d_china` VALUES ('360731', '于都县', '360700');
INSERT INTO `d_china` VALUES ('360732', '兴国县', '360700');
INSERT INTO `d_china` VALUES ('360733', '会昌县', '360700');
INSERT INTO `d_china` VALUES ('360734', '寻乌县', '360700');
INSERT INTO `d_china` VALUES ('360735', '石城县', '360700');
INSERT INTO `d_china` VALUES ('360781', '瑞金市', '360700');
INSERT INTO `d_china` VALUES ('360782', '南康市', '360700');
INSERT INTO `d_china` VALUES ('360800', '吉安市', '360000');
INSERT INTO `d_china` VALUES ('360801', '市辖区', '360800');
INSERT INTO `d_china` VALUES ('360802', '吉州区', '360801');
INSERT INTO `d_china` VALUES ('360803', '青原区', '360801');
INSERT INTO `d_china` VALUES ('360821', '吉安县', '360800');
INSERT INTO `d_china` VALUES ('360822', '吉水县', '360800');
INSERT INTO `d_china` VALUES ('360823', '峡江县', '360800');
INSERT INTO `d_china` VALUES ('360824', '新干县', '360800');
INSERT INTO `d_china` VALUES ('360825', '永丰县', '360800');
INSERT INTO `d_china` VALUES ('360826', '泰和县', '360800');
INSERT INTO `d_china` VALUES ('360827', '遂川县', '360800');
INSERT INTO `d_china` VALUES ('360828', '万安县', '360800');
INSERT INTO `d_china` VALUES ('360829', '安福县', '360800');
INSERT INTO `d_china` VALUES ('360830', '永新县', '360800');
INSERT INTO `d_china` VALUES ('360881', '井冈山市', '360800');
INSERT INTO `d_china` VALUES ('360900', '宜春市', '360000');
INSERT INTO `d_china` VALUES ('360901', '市辖区', '360900');
INSERT INTO `d_china` VALUES ('360902', '袁州区', '360901');
INSERT INTO `d_china` VALUES ('360921', '奉新县', '360900');
INSERT INTO `d_china` VALUES ('360922', '万载县', '360900');
INSERT INTO `d_china` VALUES ('360923', '上高县', '360900');
INSERT INTO `d_china` VALUES ('360924', '宜丰县', '360900');
INSERT INTO `d_china` VALUES ('360925', '靖安县', '360900');
INSERT INTO `d_china` VALUES ('360926', '铜鼓县', '360900');
INSERT INTO `d_china` VALUES ('360981', '丰城市', '360900');
INSERT INTO `d_china` VALUES ('360982', '樟树市', '360900');
INSERT INTO `d_china` VALUES ('360983', '高安市', '360900');
INSERT INTO `d_china` VALUES ('361000', '抚州市', '360000');
INSERT INTO `d_china` VALUES ('361001', '市辖区', '361000');
INSERT INTO `d_china` VALUES ('361002', '临川区', '361001');
INSERT INTO `d_china` VALUES ('361021', '南城县', '361000');
INSERT INTO `d_china` VALUES ('361022', '黎川县', '361000');
INSERT INTO `d_china` VALUES ('361023', '南丰县', '361000');
INSERT INTO `d_china` VALUES ('361024', '崇仁县', '361000');
INSERT INTO `d_china` VALUES ('361025', '乐安县', '361000');
INSERT INTO `d_china` VALUES ('361026', '宜黄县', '361000');
INSERT INTO `d_china` VALUES ('361027', '金溪县', '361000');
INSERT INTO `d_china` VALUES ('361028', '资溪县', '361000');
INSERT INTO `d_china` VALUES ('361029', '东乡县', '361000');
INSERT INTO `d_china` VALUES ('361030', '广昌县', '361000');
INSERT INTO `d_china` VALUES ('361100', '上饶市', '360000');
INSERT INTO `d_china` VALUES ('361101', '市辖区', '361100');
INSERT INTO `d_china` VALUES ('361102', '信州区', '361101');
INSERT INTO `d_china` VALUES ('361121', '上饶县', '361100');
INSERT INTO `d_china` VALUES ('361122', '广丰县', '361100');
INSERT INTO `d_china` VALUES ('361123', '玉山县', '361100');
INSERT INTO `d_china` VALUES ('361124', '铅山县', '361100');
INSERT INTO `d_china` VALUES ('361125', '横峰县', '361100');
INSERT INTO `d_china` VALUES ('361126', '弋阳县', '361100');
INSERT INTO `d_china` VALUES ('361127', '余干县', '361100');
INSERT INTO `d_china` VALUES ('361128', '鄱阳县', '361100');
INSERT INTO `d_china` VALUES ('361129', '万年县', '361100');
INSERT INTO `d_china` VALUES ('361130', '婺源县', '361100');
INSERT INTO `d_china` VALUES ('361181', '德兴市', '361100');
INSERT INTO `d_china` VALUES ('370000', '山东省', '0');
INSERT INTO `d_china` VALUES ('370100', '济南市', '370000');
INSERT INTO `d_china` VALUES ('370101', '市辖区', '370100');
INSERT INTO `d_china` VALUES ('370102', '历下区', '370101');
INSERT INTO `d_china` VALUES ('370103', '市中区', '370101');
INSERT INTO `d_china` VALUES ('370104', '槐荫区', '370101');
INSERT INTO `d_china` VALUES ('370105', '天桥区', '370101');
INSERT INTO `d_china` VALUES ('370112', '历城区', '370101');
INSERT INTO `d_china` VALUES ('370113', '长清区', '370101');
INSERT INTO `d_china` VALUES ('370124', '平阴县', '370100');
INSERT INTO `d_china` VALUES ('370125', '济阳县', '370100');
INSERT INTO `d_china` VALUES ('370126', '商河县', '370100');
INSERT INTO `d_china` VALUES ('370181', '章丘市', '370100');
INSERT INTO `d_china` VALUES ('370200', '青岛市', '370000');
INSERT INTO `d_china` VALUES ('370201', '市辖区', '370200');
INSERT INTO `d_china` VALUES ('370202', '市南区', '370201');
INSERT INTO `d_china` VALUES ('370203', '市北区', '370201');
INSERT INTO `d_china` VALUES ('370205', '四方区', '370201');
INSERT INTO `d_china` VALUES ('370211', '黄岛区', '370201');
INSERT INTO `d_china` VALUES ('370212', '崂山区', '370201');
INSERT INTO `d_china` VALUES ('370213', '李沧区', '370201');
INSERT INTO `d_china` VALUES ('370214', '城阳区', '370201');
INSERT INTO `d_china` VALUES ('370281', '胶州市', '370200');
INSERT INTO `d_china` VALUES ('370282', '即墨市', '370200');
INSERT INTO `d_china` VALUES ('370283', '平度市', '370200');
INSERT INTO `d_china` VALUES ('370284', '胶南市', '370200');
INSERT INTO `d_china` VALUES ('370285', '莱西市', '370200');
INSERT INTO `d_china` VALUES ('370300', '淄博市', '370000');
INSERT INTO `d_china` VALUES ('370301', '市辖区', '370300');
INSERT INTO `d_china` VALUES ('370302', '淄川区', '370301');
INSERT INTO `d_china` VALUES ('370303', '张店区', '370301');
INSERT INTO `d_china` VALUES ('370304', '博山区', '370301');
INSERT INTO `d_china` VALUES ('370305', '临淄区', '370301');
INSERT INTO `d_china` VALUES ('370306', '周村区', '370301');
INSERT INTO `d_china` VALUES ('370321', '桓台县', '370300');
INSERT INTO `d_china` VALUES ('370322', '高青县', '370300');
INSERT INTO `d_china` VALUES ('370323', '沂源县', '370300');
INSERT INTO `d_china` VALUES ('370400', '枣庄市', '370000');
INSERT INTO `d_china` VALUES ('370401', '市辖区', '370400');
INSERT INTO `d_china` VALUES ('370402', '市中区', '370401');
INSERT INTO `d_china` VALUES ('370403', '薛城区', '370401');
INSERT INTO `d_china` VALUES ('370404', '峄城区', '370401');
INSERT INTO `d_china` VALUES ('370405', '台儿庄区', '370401');
INSERT INTO `d_china` VALUES ('370406', '山亭区', '370401');
INSERT INTO `d_china` VALUES ('370481', '滕州市', '370400');
INSERT INTO `d_china` VALUES ('370500', '东营市', '370000');
INSERT INTO `d_china` VALUES ('370501', '市辖区', '370500');
INSERT INTO `d_china` VALUES ('370502', '东营区', '370501');
INSERT INTO `d_china` VALUES ('370503', '河口区', '370501');
INSERT INTO `d_china` VALUES ('370521', '垦利县', '370500');
INSERT INTO `d_china` VALUES ('370522', '利津县', '370500');
INSERT INTO `d_china` VALUES ('370523', '广饶县', '370500');
INSERT INTO `d_china` VALUES ('370600', '烟台市', '370000');
INSERT INTO `d_china` VALUES ('370601', '市辖区', '370600');
INSERT INTO `d_china` VALUES ('370602', '芝罘区', '370601');
INSERT INTO `d_china` VALUES ('370611', '福山区', '370601');
INSERT INTO `d_china` VALUES ('370612', '牟平区', '370601');
INSERT INTO `d_china` VALUES ('370613', '莱山区', '370601');
INSERT INTO `d_china` VALUES ('370634', '长岛县', '370600');
INSERT INTO `d_china` VALUES ('370681', '龙口市', '370600');
INSERT INTO `d_china` VALUES ('370682', '莱阳市', '370600');
INSERT INTO `d_china` VALUES ('370683', '莱州市', '370600');
INSERT INTO `d_china` VALUES ('370684', '蓬莱市', '370600');
INSERT INTO `d_china` VALUES ('370685', '招远市', '370600');
INSERT INTO `d_china` VALUES ('370686', '栖霞市', '370600');
INSERT INTO `d_china` VALUES ('370687', '海阳市', '370600');
INSERT INTO `d_china` VALUES ('370700', '潍坊市', '370000');
INSERT INTO `d_china` VALUES ('370701', '市辖区', '370700');
INSERT INTO `d_china` VALUES ('370702', '潍城区', '370701');
INSERT INTO `d_china` VALUES ('370703', '寒亭区', '370701');
INSERT INTO `d_china` VALUES ('370704', '坊子区', '370701');
INSERT INTO `d_china` VALUES ('370705', '奎文区', '370701');
INSERT INTO `d_china` VALUES ('370724', '临朐县', '370700');
INSERT INTO `d_china` VALUES ('370725', '昌乐县', '370700');
INSERT INTO `d_china` VALUES ('370781', '青州市', '370700');
INSERT INTO `d_china` VALUES ('370782', '诸城市', '370700');
INSERT INTO `d_china` VALUES ('370783', '寿光市', '370700');
INSERT INTO `d_china` VALUES ('370784', '安丘市', '370700');
INSERT INTO `d_china` VALUES ('370785', '高密市', '370700');
INSERT INTO `d_china` VALUES ('370786', '昌邑市', '370700');
INSERT INTO `d_china` VALUES ('370800', '济宁市', '370000');
INSERT INTO `d_china` VALUES ('370801', '市辖区', '370800');
INSERT INTO `d_china` VALUES ('370802', '市中区', '370801');
INSERT INTO `d_china` VALUES ('370811', '任城区', '370801');
INSERT INTO `d_china` VALUES ('370826', '微山县', '370800');
INSERT INTO `d_china` VALUES ('370827', '鱼台县', '370800');
INSERT INTO `d_china` VALUES ('370828', '金乡县', '370800');
INSERT INTO `d_china` VALUES ('370829', '嘉祥县', '370800');
INSERT INTO `d_china` VALUES ('370830', '汶上县', '370800');
INSERT INTO `d_china` VALUES ('370831', '泗水县', '370800');
INSERT INTO `d_china` VALUES ('370832', '梁山县', '370800');
INSERT INTO `d_china` VALUES ('370881', '曲阜市', '370800');
INSERT INTO `d_china` VALUES ('370882', '兖州市', '370800');
INSERT INTO `d_china` VALUES ('370883', '邹城市', '370800');
INSERT INTO `d_china` VALUES ('370900', '泰安市', '370000');
INSERT INTO `d_china` VALUES ('370901', '岱岳区', '370900');
INSERT INTO `d_china` VALUES ('370902', '泰山区', '370900');
INSERT INTO `d_china` VALUES ('370921', '宁阳县', '370900');
INSERT INTO `d_china` VALUES ('370923', '东平县', '370900');
INSERT INTO `d_china` VALUES ('370982', '新泰市', '370900');
INSERT INTO `d_china` VALUES ('370983', '肥城市', '370900');
INSERT INTO `d_china` VALUES ('371000', '威海市', '370000');
INSERT INTO `d_china` VALUES ('371001', '市辖区', '371000');
INSERT INTO `d_china` VALUES ('371002', '环翠区', '371001');
INSERT INTO `d_china` VALUES ('371081', '文登市', '371000');
INSERT INTO `d_china` VALUES ('371082', '荣成市', '371000');
INSERT INTO `d_china` VALUES ('371083', '乳山市', '371000');
INSERT INTO `d_china` VALUES ('371100', '日照市', '370000');
INSERT INTO `d_china` VALUES ('371101', '市辖区', '371100');
INSERT INTO `d_china` VALUES ('371102', '东港区', '371101');
INSERT INTO `d_china` VALUES ('371103', '岚山区', '371101');
INSERT INTO `d_china` VALUES ('371121', '五莲县', '371100');
INSERT INTO `d_china` VALUES ('371122', '莒县', '371100');
INSERT INTO `d_china` VALUES ('371200', '莱芜市', '370000');
INSERT INTO `d_china` VALUES ('371201', '市辖区', '371200');
INSERT INTO `d_china` VALUES ('371202', '莱城区', '371201');
INSERT INTO `d_china` VALUES ('371203', '钢城区', '371201');
INSERT INTO `d_china` VALUES ('371300', '临沂市', '370000');
INSERT INTO `d_china` VALUES ('371301', '市辖区', '371300');
INSERT INTO `d_china` VALUES ('371302', '兰山区', '371301');
INSERT INTO `d_china` VALUES ('371311', '罗庄区', '371301');
INSERT INTO `d_china` VALUES ('371312', '河东区', '371301');
INSERT INTO `d_china` VALUES ('371321', '沂南县', '371300');
INSERT INTO `d_china` VALUES ('371322', '郯城县', '371300');
INSERT INTO `d_china` VALUES ('371323', '沂水县', '371300');
INSERT INTO `d_china` VALUES ('371324', '苍山县', '371300');
INSERT INTO `d_china` VALUES ('371325', '费县', '371300');
INSERT INTO `d_china` VALUES ('371326', '平邑县', '371300');
INSERT INTO `d_china` VALUES ('371327', '莒南县', '371300');
INSERT INTO `d_china` VALUES ('371328', '蒙阴县', '371300');
INSERT INTO `d_china` VALUES ('371329', '临沭县', '371300');
INSERT INTO `d_china` VALUES ('371400', '德州市', '370000');
INSERT INTO `d_china` VALUES ('371401', '市辖区', '371400');
INSERT INTO `d_china` VALUES ('371402', '德城区', '371401');
INSERT INTO `d_china` VALUES ('371421', '陵县', '371400');
INSERT INTO `d_china` VALUES ('371422', '宁津县', '371400');
INSERT INTO `d_china` VALUES ('371423', '庆云县', '371400');
INSERT INTO `d_china` VALUES ('371424', '临邑县', '371400');
INSERT INTO `d_china` VALUES ('371425', '齐河县', '371400');
INSERT INTO `d_china` VALUES ('371426', '平原县', '371400');
INSERT INTO `d_china` VALUES ('371427', '夏津县', '371400');
INSERT INTO `d_china` VALUES ('371428', '武城县', '371400');
INSERT INTO `d_china` VALUES ('371481', '乐陵市', '371400');
INSERT INTO `d_china` VALUES ('371482', '禹城市', '371400');
INSERT INTO `d_china` VALUES ('371500', '聊城市', '370000');
INSERT INTO `d_china` VALUES ('371501', '市辖区', '371500');
INSERT INTO `d_china` VALUES ('371502', '东昌府区', '371501');
INSERT INTO `d_china` VALUES ('371521', '阳谷县', '371500');
INSERT INTO `d_china` VALUES ('371522', '莘县', '371500');
INSERT INTO `d_china` VALUES ('371523', '茌平县', '371500');
INSERT INTO `d_china` VALUES ('371524', '东阿县', '371500');
INSERT INTO `d_china` VALUES ('371525', '冠县', '371500');
INSERT INTO `d_china` VALUES ('371526', '高唐县', '371500');
INSERT INTO `d_china` VALUES ('371581', '临清市', '371500');
INSERT INTO `d_china` VALUES ('371600', '滨州市', '370000');
INSERT INTO `d_china` VALUES ('371601', '市辖区', '371600');
INSERT INTO `d_china` VALUES ('371602', '滨城区', '371601');
INSERT INTO `d_china` VALUES ('371621', '惠民县', '371600');
INSERT INTO `d_china` VALUES ('371622', '阳信县', '371600');
INSERT INTO `d_china` VALUES ('371623', '无棣县', '371600');
INSERT INTO `d_china` VALUES ('371624', '沾化县', '371600');
INSERT INTO `d_china` VALUES ('371625', '博兴县', '371600');
INSERT INTO `d_china` VALUES ('371626', '邹平县', '371600');
INSERT INTO `d_china` VALUES ('371700', '菏泽市', '370000');
INSERT INTO `d_china` VALUES ('371701', '市辖区', '371700');
INSERT INTO `d_china` VALUES ('371702', '牡丹区', '371701');
INSERT INTO `d_china` VALUES ('371721', '曹县', '371700');
INSERT INTO `d_china` VALUES ('371722', '单县', '371700');
INSERT INTO `d_china` VALUES ('371723', '成武县', '371700');
INSERT INTO `d_china` VALUES ('371724', '巨野县', '371700');
INSERT INTO `d_china` VALUES ('371725', '郓城县', '371700');
INSERT INTO `d_china` VALUES ('371726', '鄄城县', '371700');
INSERT INTO `d_china` VALUES ('371727', '定陶县', '371700');
INSERT INTO `d_china` VALUES ('371728', '东明县', '371700');
INSERT INTO `d_china` VALUES ('410000', '河南省', '0');
INSERT INTO `d_china` VALUES ('410100', '郑州市', '410000');
INSERT INTO `d_china` VALUES ('410101', '金水区', '410100');
INSERT INTO `d_china` VALUES ('410102', '中原区', '410100');
INSERT INTO `d_china` VALUES ('410103', '二七区', '410100');
INSERT INTO `d_china` VALUES ('410104', '管城回族区', '410100');
INSERT INTO `d_china` VALUES ('410106', '上街区', '410100');
INSERT INTO `d_china` VALUES ('410108', '惠济区', '410100');
INSERT INTO `d_china` VALUES ('410122', '中牟县', '410100');
INSERT INTO `d_china` VALUES ('410181', '巩义市', '410100');
INSERT INTO `d_china` VALUES ('410182', '荥阳市', '410100');
INSERT INTO `d_china` VALUES ('410183', '新密市', '410100');
INSERT INTO `d_china` VALUES ('410184', '新郑市', '410100');
INSERT INTO `d_china` VALUES ('410185', '登封市', '410100');
INSERT INTO `d_china` VALUES ('410200', '开封市', '410000');
INSERT INTO `d_china` VALUES ('410201', '市辖区', '410200');
INSERT INTO `d_china` VALUES ('410202', '龙亭区', '410201');
INSERT INTO `d_china` VALUES ('410203', '顺河回族区', '410201');
INSERT INTO `d_china` VALUES ('410204', '鼓楼区', '410201');
INSERT INTO `d_china` VALUES ('410205', '禹王台区', '410201');
INSERT INTO `d_china` VALUES ('410211', '金明区', '410201');
INSERT INTO `d_china` VALUES ('410221', '杞县', '410200');
INSERT INTO `d_china` VALUES ('410222', '通许县', '410200');
INSERT INTO `d_china` VALUES ('410223', '尉氏县', '410200');
INSERT INTO `d_china` VALUES ('410224', '开封县', '410200');
INSERT INTO `d_china` VALUES ('410225', '兰考县', '410200');
INSERT INTO `d_china` VALUES ('410300', '洛阳市', '410000');
INSERT INTO `d_china` VALUES ('410301', '市辖区', '410300');
INSERT INTO `d_china` VALUES ('410302', '老城区', '410301');
INSERT INTO `d_china` VALUES ('410303', '西工区', '410301');
INSERT INTO `d_china` VALUES ('410304', '廛河回族区', '410301');
INSERT INTO `d_china` VALUES ('410305', '涧西区', '410301');
INSERT INTO `d_china` VALUES ('410306', '吉利区', '410301');
INSERT INTO `d_china` VALUES ('410307', '洛龙区', '410301');
INSERT INTO `d_china` VALUES ('410322', '孟津县', '410300');
INSERT INTO `d_china` VALUES ('410323', '新安县', '410300');
INSERT INTO `d_china` VALUES ('410324', '栾川县', '410300');
INSERT INTO `d_china` VALUES ('410325', '嵩县', '410300');
INSERT INTO `d_china` VALUES ('410326', '汝阳县', '410300');
INSERT INTO `d_china` VALUES ('410327', '宜阳县', '410300');
INSERT INTO `d_china` VALUES ('410328', '洛宁县', '410300');
INSERT INTO `d_china` VALUES ('410329', '伊川县', '410300');
INSERT INTO `d_china` VALUES ('410381', '偃师市', '410300');
INSERT INTO `d_china` VALUES ('410400', '平顶山市', '410000');
INSERT INTO `d_china` VALUES ('410401', '市辖区', '410400');
INSERT INTO `d_china` VALUES ('410402', '新华区', '410401');
INSERT INTO `d_china` VALUES ('410403', '卫东区', '410401');
INSERT INTO `d_china` VALUES ('410404', '石龙区', '410401');
INSERT INTO `d_china` VALUES ('410411', '湛河区', '410401');
INSERT INTO `d_china` VALUES ('410421', '宝丰县', '410400');
INSERT INTO `d_china` VALUES ('410422', '叶县', '410400');
INSERT INTO `d_china` VALUES ('410423', '鲁山县', '410400');
INSERT INTO `d_china` VALUES ('410425', '郏县', '410400');
INSERT INTO `d_china` VALUES ('410481', '舞钢市', '410400');
INSERT INTO `d_china` VALUES ('410482', '汝州市', '410400');
INSERT INTO `d_china` VALUES ('410500', '安阳市', '410000');
INSERT INTO `d_china` VALUES ('410501', '市辖区', '410500');
INSERT INTO `d_china` VALUES ('410502', '文峰区', '410501');
INSERT INTO `d_china` VALUES ('410503', '北关区', '410501');
INSERT INTO `d_china` VALUES ('410505', '殷都区', '410501');
INSERT INTO `d_china` VALUES ('410506', '龙安区', '410501');
INSERT INTO `d_china` VALUES ('410522', '安阳县', '410500');
INSERT INTO `d_china` VALUES ('410523', '汤阴县', '410500');
INSERT INTO `d_china` VALUES ('410526', '滑县', '410500');
INSERT INTO `d_china` VALUES ('410527', '内黄县', '410500');
INSERT INTO `d_china` VALUES ('410581', '林州市', '410500');
INSERT INTO `d_china` VALUES ('410600', '鹤壁市', '410000');
INSERT INTO `d_china` VALUES ('410601', '市辖区', '410600');
INSERT INTO `d_china` VALUES ('410602', '鹤山区', '410601');
INSERT INTO `d_china` VALUES ('410603', '山城区', '410601');
INSERT INTO `d_china` VALUES ('410611', '淇滨区', '410601');
INSERT INTO `d_china` VALUES ('410621', '浚县', '410600');
INSERT INTO `d_china` VALUES ('410622', '淇县', '410600');
INSERT INTO `d_china` VALUES ('410700', '新乡市', '410000');
INSERT INTO `d_china` VALUES ('410701', '市辖区', '410700');
INSERT INTO `d_china` VALUES ('410702', '红旗区', '410700');
INSERT INTO `d_china` VALUES ('410703', '卫滨区', '410700');
INSERT INTO `d_china` VALUES ('410704', '凤泉区', '410700');
INSERT INTO `d_china` VALUES ('410711', '牧野区', '410700');
INSERT INTO `d_china` VALUES ('410721', '新乡县', '410700');
INSERT INTO `d_china` VALUES ('410724', '获嘉县', '410700');
INSERT INTO `d_china` VALUES ('410725', '原阳县', '410700');
INSERT INTO `d_china` VALUES ('410726', '延津县', '410700');
INSERT INTO `d_china` VALUES ('410727', '封丘县', '410700');
INSERT INTO `d_china` VALUES ('410728', '长垣县', '410700');
INSERT INTO `d_china` VALUES ('410781', '卫辉市', '410700');
INSERT INTO `d_china` VALUES ('410782', '辉县市', '410700');
INSERT INTO `d_china` VALUES ('410800', '焦作市', '410000');
INSERT INTO `d_china` VALUES ('410801', '市辖区', '410800');
INSERT INTO `d_china` VALUES ('410802', '解放区', '410801');
INSERT INTO `d_china` VALUES ('410803', '中站区', '410801');
INSERT INTO `d_china` VALUES ('410804', '马村区', '410801');
INSERT INTO `d_china` VALUES ('410811', '山阳区', '410801');
INSERT INTO `d_china` VALUES ('410821', '修武县', '410800');
INSERT INTO `d_china` VALUES ('410822', '博爱县', '410800');
INSERT INTO `d_china` VALUES ('410823', '武陟县', '410800');
INSERT INTO `d_china` VALUES ('410825', '温县', '410800');
INSERT INTO `d_china` VALUES ('410882', '沁阳市', '410800');
INSERT INTO `d_china` VALUES ('410883', '孟州市', '410800');
INSERT INTO `d_china` VALUES ('410900', '濮阳市', '410000');
INSERT INTO `d_china` VALUES ('410901', '市辖区', '410900');
INSERT INTO `d_china` VALUES ('410902', '华龙区', '410901');
INSERT INTO `d_china` VALUES ('410922', '清丰县', '410900');
INSERT INTO `d_china` VALUES ('410923', '南乐县', '410900');
INSERT INTO `d_china` VALUES ('410926', '范县', '410900');
INSERT INTO `d_china` VALUES ('410927', '台前县', '410900');
INSERT INTO `d_china` VALUES ('410928', '濮阳县', '410900');
INSERT INTO `d_china` VALUES ('411000', '许昌市', '410000');
INSERT INTO `d_china` VALUES ('411001', '市辖区', '411000');
INSERT INTO `d_china` VALUES ('411002', '魏都区', '411001');
INSERT INTO `d_china` VALUES ('411023', '许昌县', '411000');
INSERT INTO `d_china` VALUES ('411024', '鄢陵县', '411000');
INSERT INTO `d_china` VALUES ('411025', '襄城县', '411000');
INSERT INTO `d_china` VALUES ('411081', '禹州市', '411000');
INSERT INTO `d_china` VALUES ('411082', '长葛市', '411000');
INSERT INTO `d_china` VALUES ('411100', '漯河市', '410000');
INSERT INTO `d_china` VALUES ('411101', '召陵区', '411100');
INSERT INTO `d_china` VALUES ('411102', '源汇区', '411100');
INSERT INTO `d_china` VALUES ('411103', '郾城区', '411100');
INSERT INTO `d_china` VALUES ('411121', '舞阳县', '411100');
INSERT INTO `d_china` VALUES ('411122', '临颍县', '411100');
INSERT INTO `d_china` VALUES ('411200', '三门峡市', '410000');
INSERT INTO `d_china` VALUES ('411201', '市辖区', '411200');
INSERT INTO `d_china` VALUES ('411202', '湖滨区', '411201');
INSERT INTO `d_china` VALUES ('411221', '渑池县', '411200');
INSERT INTO `d_china` VALUES ('411222', '陕县', '411200');
INSERT INTO `d_china` VALUES ('411224', '卢氏县', '411200');
INSERT INTO `d_china` VALUES ('411281', '义马市', '411200');
INSERT INTO `d_china` VALUES ('411282', '灵宝市', '411200');
INSERT INTO `d_china` VALUES ('411300', '南阳市', '410000');
INSERT INTO `d_china` VALUES ('411301', '市辖区', '411300');
INSERT INTO `d_china` VALUES ('411302', '宛城区', '411301');
INSERT INTO `d_china` VALUES ('411303', '卧龙区', '411301');
INSERT INTO `d_china` VALUES ('411321', '南召县', '411300');
INSERT INTO `d_china` VALUES ('411322', '方城县', '411300');
INSERT INTO `d_china` VALUES ('411323', '西峡县', '411300');
INSERT INTO `d_china` VALUES ('411324', '镇平县', '411300');
INSERT INTO `d_china` VALUES ('411325', '内乡县', '411300');
INSERT INTO `d_china` VALUES ('411326', '淅川县', '411300');
INSERT INTO `d_china` VALUES ('411327', '社旗县', '411300');
INSERT INTO `d_china` VALUES ('411328', '唐河县', '411300');
INSERT INTO `d_china` VALUES ('411329', '新野县', '411300');
INSERT INTO `d_china` VALUES ('411330', '桐柏县', '411300');
INSERT INTO `d_china` VALUES ('411381', '邓州市', '411300');
INSERT INTO `d_china` VALUES ('411400', '商丘市', '410000');
INSERT INTO `d_china` VALUES ('411401', '市辖区', '411400');
INSERT INTO `d_china` VALUES ('411402', '梁园区', '411400');
INSERT INTO `d_china` VALUES ('411403', '睢阳区', '411400');
INSERT INTO `d_china` VALUES ('411421', '民权县', '411400');
INSERT INTO `d_china` VALUES ('411422', '睢县', '411400');
INSERT INTO `d_china` VALUES ('411423', '宁陵县', '411400');
INSERT INTO `d_china` VALUES ('411424', '柘城县', '411400');
INSERT INTO `d_china` VALUES ('411425', '虞城县', '411400');
INSERT INTO `d_china` VALUES ('411426', '夏邑县', '411400');
INSERT INTO `d_china` VALUES ('411481', '永城市', '411400');
INSERT INTO `d_china` VALUES ('411482', '新区', '411400');
INSERT INTO `d_china` VALUES ('411500', '信阳市', '410000');
INSERT INTO `d_china` VALUES ('411501', '市辖区', '411500');
INSERT INTO `d_china` VALUES ('411502', '浉河区', '411501');
INSERT INTO `d_china` VALUES ('411503', '平桥区', '411501');
INSERT INTO `d_china` VALUES ('411521', '罗山县', '411500');
INSERT INTO `d_china` VALUES ('411522', '光山县', '411500');
INSERT INTO `d_china` VALUES ('411523', '新县', '411500');
INSERT INTO `d_china` VALUES ('411524', '商城县', '411500');
INSERT INTO `d_china` VALUES ('411525', '固始县', '411500');
INSERT INTO `d_china` VALUES ('411526', '潢川县', '411500');
INSERT INTO `d_china` VALUES ('411527', '淮滨县', '411500');
INSERT INTO `d_china` VALUES ('411528', '息县', '411500');
INSERT INTO `d_china` VALUES ('411600', '周口市', '410000');
INSERT INTO `d_china` VALUES ('411601', '市辖区', '411600');
INSERT INTO `d_china` VALUES ('411602', '川汇区', '411601');
INSERT INTO `d_china` VALUES ('411621', '扶沟县', '411600');
INSERT INTO `d_china` VALUES ('411622', '西华县', '411600');
INSERT INTO `d_china` VALUES ('411623', '商水县', '411600');
INSERT INTO `d_china` VALUES ('411624', '沈丘县', '411600');
INSERT INTO `d_china` VALUES ('411625', '郸城县', '411600');
INSERT INTO `d_china` VALUES ('411626', '淮阳县', '411600');
INSERT INTO `d_china` VALUES ('411627', '太康县', '411600');
INSERT INTO `d_china` VALUES ('411628', '鹿邑县', '411600');
INSERT INTO `d_china` VALUES ('411681', '项城市', '411600');
INSERT INTO `d_china` VALUES ('411700', '驻马店市', '410000');
INSERT INTO `d_china` VALUES ('411701', '市辖区', '411700');
INSERT INTO `d_china` VALUES ('411702', '驿城区', '411701');
INSERT INTO `d_china` VALUES ('411721', '西平县', '411700');
INSERT INTO `d_china` VALUES ('411722', '上蔡县', '411700');
INSERT INTO `d_china` VALUES ('411723', '平舆县', '411700');
INSERT INTO `d_china` VALUES ('411724', '正阳县', '411700');
INSERT INTO `d_china` VALUES ('411725', '确山县', '411700');
INSERT INTO `d_china` VALUES ('411726', '泌阳县', '411700');
INSERT INTO `d_china` VALUES ('411727', '汝南县', '411700');
INSERT INTO `d_china` VALUES ('411728', '遂平县', '411700');
INSERT INTO `d_china` VALUES ('411729', '新蔡县', '411700');
INSERT INTO `d_china` VALUES ('411800', '济源市', '410000');
INSERT INTO `d_china` VALUES ('411801', '市辖区', '411800');
INSERT INTO `d_china` VALUES ('420000', '湖北省', '0');
INSERT INTO `d_china` VALUES ('420100', '武汉市', '420000');
INSERT INTO `d_china` VALUES ('420101', '市辖区', '420100');
INSERT INTO `d_china` VALUES ('420102', '江岸区', '420101');
INSERT INTO `d_china` VALUES ('420103', '江汉区', '420101');
INSERT INTO `d_china` VALUES ('420104', '硚口区', '420101');
INSERT INTO `d_china` VALUES ('420105', '汉阳区', '420101');
INSERT INTO `d_china` VALUES ('420106', '武昌区', '420101');
INSERT INTO `d_china` VALUES ('420107', '青山区', '420101');
INSERT INTO `d_china` VALUES ('420111', '洪山区', '420101');
INSERT INTO `d_china` VALUES ('420112', '东西湖区', '420101');
INSERT INTO `d_china` VALUES ('420113', '汉南区', '420101');
INSERT INTO `d_china` VALUES ('420114', '蔡甸区', '420101');
INSERT INTO `d_china` VALUES ('420115', '江夏区', '420101');
INSERT INTO `d_china` VALUES ('420116', '黄陂区', '420101');
INSERT INTO `d_china` VALUES ('420117', '新洲区', '420100');
INSERT INTO `d_china` VALUES ('420200', '黄石市', '420000');
INSERT INTO `d_china` VALUES ('420201', '市辖区', '420200');
INSERT INTO `d_china` VALUES ('420202', '黄石港区', '420201');
INSERT INTO `d_china` VALUES ('420203', '西塞山区', '420201');
INSERT INTO `d_china` VALUES ('420204', '下陆区', '420201');
INSERT INTO `d_china` VALUES ('420205', '铁山区', '420201');
INSERT INTO `d_china` VALUES ('420222', '阳新县', '420200');
INSERT INTO `d_china` VALUES ('420281', '大冶市', '420200');
INSERT INTO `d_china` VALUES ('420300', '十堰市', '420000');
INSERT INTO `d_china` VALUES ('420301', '市辖区', '420300');
INSERT INTO `d_china` VALUES ('420302', '茅箭区', '420301');
INSERT INTO `d_china` VALUES ('420303', '张湾区', '420301');
INSERT INTO `d_china` VALUES ('420321', '郧县', '420300');
INSERT INTO `d_china` VALUES ('420322', '郧西县', '420300');
INSERT INTO `d_china` VALUES ('420323', '竹山县', '420300');
INSERT INTO `d_china` VALUES ('420324', '竹溪县', '420300');
INSERT INTO `d_china` VALUES ('420325', '房县', '420300');
INSERT INTO `d_china` VALUES ('420381', '丹江口市', '420300');
INSERT INTO `d_china` VALUES ('420500', '宜昌市', '420000');
INSERT INTO `d_china` VALUES ('420501', '市辖区', '420500');
INSERT INTO `d_china` VALUES ('420502', '西陵区', '420501');
INSERT INTO `d_china` VALUES ('420503', '伍家岗区', '420501');
INSERT INTO `d_china` VALUES ('420504', '点军区', '420501');
INSERT INTO `d_china` VALUES ('420505', '猇亭区', '420501');
INSERT INTO `d_china` VALUES ('420506', '夷陵区', '420501');
INSERT INTO `d_china` VALUES ('420525', '远安县', '420500');
INSERT INTO `d_china` VALUES ('420526', '兴山县', '420500');
INSERT INTO `d_china` VALUES ('420527', '秭归县', '420500');
INSERT INTO `d_china` VALUES ('420528', '长阳土家族自治县', '420500');
INSERT INTO `d_china` VALUES ('420529', '五峰土家族自治县', '420500');
INSERT INTO `d_china` VALUES ('420581', '宜都市', '420500');
INSERT INTO `d_china` VALUES ('420582', '当阳市', '420500');
INSERT INTO `d_china` VALUES ('420583', '枝江市', '420500');
INSERT INTO `d_china` VALUES ('420600', '襄阳市', '420000');
INSERT INTO `d_china` VALUES ('420601', '市辖区', '420600');
INSERT INTO `d_china` VALUES ('420602', '襄城区', '420601');
INSERT INTO `d_china` VALUES ('420606', '樊城区', '420601');
INSERT INTO `d_china` VALUES ('420607', '襄州区', '420601');
INSERT INTO `d_china` VALUES ('420624', '南漳县', '420600');
INSERT INTO `d_china` VALUES ('420625', '谷城县', '420600');
INSERT INTO `d_china` VALUES ('420626', '保康县', '420600');
INSERT INTO `d_china` VALUES ('420682', '老河口市', '420600');
INSERT INTO `d_china` VALUES ('420683', '枣阳市', '420600');
INSERT INTO `d_china` VALUES ('420684', '宜城市', '420600');
INSERT INTO `d_china` VALUES ('420700', '鄂州市', '420000');
INSERT INTO `d_china` VALUES ('420701', '市辖区', '420700');
INSERT INTO `d_china` VALUES ('420702', '梁子湖区', '420701');
INSERT INTO `d_china` VALUES ('420703', '华容区', '420701');
INSERT INTO `d_china` VALUES ('420704', '鄂城区', '420701');
INSERT INTO `d_china` VALUES ('420800', '荆门市', '420000');
INSERT INTO `d_china` VALUES ('420801', '市辖区', '420800');
INSERT INTO `d_china` VALUES ('420802', '东宝区', '420801');
INSERT INTO `d_china` VALUES ('420804', '掇刀区', '420801');
INSERT INTO `d_china` VALUES ('420821', '京山县', '420800');
INSERT INTO `d_china` VALUES ('420822', '沙洋县', '420800');
INSERT INTO `d_china` VALUES ('420881', '钟祥市', '420800');
INSERT INTO `d_china` VALUES ('420900', '孝感市', '420000');
INSERT INTO `d_china` VALUES ('420901', '市辖区', '420900');
INSERT INTO `d_china` VALUES ('420902', '孝南区', '420901');
INSERT INTO `d_china` VALUES ('420921', '孝昌县', '420900');
INSERT INTO `d_china` VALUES ('420922', '大悟县', '420900');
INSERT INTO `d_china` VALUES ('420923', '云梦县', '420900');
INSERT INTO `d_china` VALUES ('420981', '应城市', '420900');
INSERT INTO `d_china` VALUES ('420982', '安陆市', '420900');
INSERT INTO `d_china` VALUES ('420984', '汉川市', '420900');
INSERT INTO `d_china` VALUES ('421000', '荆州市', '420000');
INSERT INTO `d_china` VALUES ('421001', '市辖区', '421000');
INSERT INTO `d_china` VALUES ('421002', '沙市区', '421001');
INSERT INTO `d_china` VALUES ('421003', '荆州区', '421001');
INSERT INTO `d_china` VALUES ('421022', '公安县', '421000');
INSERT INTO `d_china` VALUES ('421023', '监利县', '421000');
INSERT INTO `d_china` VALUES ('421024', '江陵县', '421000');
INSERT INTO `d_china` VALUES ('421081', '石首市', '421000');
INSERT INTO `d_china` VALUES ('421083', '洪湖市', '421000');
INSERT INTO `d_china` VALUES ('421087', '松滋市', '421000');
INSERT INTO `d_china` VALUES ('421100', '黄冈市', '420000');
INSERT INTO `d_china` VALUES ('421101', '市辖区', '421100');
INSERT INTO `d_china` VALUES ('421102', '黄州区', '421101');
INSERT INTO `d_china` VALUES ('421121', '团风县', '421100');
INSERT INTO `d_china` VALUES ('421122', '红安县', '421100');
INSERT INTO `d_china` VALUES ('421123', '罗田县', '421100');
INSERT INTO `d_china` VALUES ('421124', '英山县', '421100');
INSERT INTO `d_china` VALUES ('421125', '浠水县', '421100');
INSERT INTO `d_china` VALUES ('421126', '蕲春县', '421100');
INSERT INTO `d_china` VALUES ('421127', '黄梅县', '421100');
INSERT INTO `d_china` VALUES ('421181', '麻城市', '421100');
INSERT INTO `d_china` VALUES ('421182', '武穴市', '421100');
INSERT INTO `d_china` VALUES ('421200', '咸宁市', '420000');
INSERT INTO `d_china` VALUES ('421201', '市辖区', '421200');
INSERT INTO `d_china` VALUES ('421202', '咸安区', '421201');
INSERT INTO `d_china` VALUES ('421221', '嘉鱼县', '421200');
INSERT INTO `d_china` VALUES ('421222', '通城县', '421200');
INSERT INTO `d_china` VALUES ('421223', '崇阳县', '421200');
INSERT INTO `d_china` VALUES ('421224', '通山县', '421200');
INSERT INTO `d_china` VALUES ('421281', '赤壁市', '421200');
INSERT INTO `d_china` VALUES ('421300', '随州市', '420000');
INSERT INTO `d_china` VALUES ('421301', '市辖区', '421300');
INSERT INTO `d_china` VALUES ('421302', '曾都区', '421301');
INSERT INTO `d_china` VALUES ('421381', '广水市', '421300');
INSERT INTO `d_china` VALUES ('422800', '恩施土家族苗族自治州', '420000');
INSERT INTO `d_china` VALUES ('422801', '恩施市', '422800');
INSERT INTO `d_china` VALUES ('422802', '利川市', '422800');
INSERT INTO `d_china` VALUES ('422822', '建始县', '422800');
INSERT INTO `d_china` VALUES ('422823', '巴东县', '422800');
INSERT INTO `d_china` VALUES ('422825', '宣恩县', '422800');
INSERT INTO `d_china` VALUES ('422826', '咸丰县', '422800');
INSERT INTO `d_china` VALUES ('422827', '来凤县', '422800');
INSERT INTO `d_china` VALUES ('422828', '鹤峰县', '422800');
INSERT INTO `d_china` VALUES ('429000', '省直辖行政单位', '420000');
INSERT INTO `d_china` VALUES ('429004', '仙桃市', '429000');
INSERT INTO `d_china` VALUES ('429005', '潜江市', '429000');
INSERT INTO `d_china` VALUES ('429006', '天门市', '429000');
INSERT INTO `d_china` VALUES ('429021', '神农架林区', '429000');
INSERT INTO `d_china` VALUES ('430000', '湖南省', '0');
INSERT INTO `d_china` VALUES ('430100', '长沙市', '430000');
INSERT INTO `d_china` VALUES ('430101', '市辖区', '430100');
INSERT INTO `d_china` VALUES ('430102', '芙蓉区', '430101');
INSERT INTO `d_china` VALUES ('430103', '天心区', '430101');
INSERT INTO `d_china` VALUES ('430104', '岳麓区', '430101');
INSERT INTO `d_china` VALUES ('430105', '开福区', '430101');
INSERT INTO `d_china` VALUES ('430111', '雨花区', '430101');
INSERT INTO `d_china` VALUES ('430121', '长沙县', '430100');
INSERT INTO `d_china` VALUES ('430122', '望城县', '430100');
INSERT INTO `d_china` VALUES ('430124', '宁乡县', '430100');
INSERT INTO `d_china` VALUES ('430181', '浏阳市', '430100');
INSERT INTO `d_china` VALUES ('430200', '株洲市', '430000');
INSERT INTO `d_china` VALUES ('430201', '市辖区', '430200');
INSERT INTO `d_china` VALUES ('430202', '荷塘区', '430201');
INSERT INTO `d_china` VALUES ('430203', '芦淞区', '430201');
INSERT INTO `d_china` VALUES ('430204', '石峰区', '430201');
INSERT INTO `d_china` VALUES ('430211', '天元区', '430201');
INSERT INTO `d_china` VALUES ('430221', '株洲县', '430200');
INSERT INTO `d_china` VALUES ('430223', '攸县', '430200');
INSERT INTO `d_china` VALUES ('430224', '茶陵县', '430200');
INSERT INTO `d_china` VALUES ('430225', '炎陵县', '430200');
INSERT INTO `d_china` VALUES ('430281', '醴陵市', '430200');
INSERT INTO `d_china` VALUES ('430300', '湘潭市', '430000');
INSERT INTO `d_china` VALUES ('430301', '市辖区', '430300');
INSERT INTO `d_china` VALUES ('430302', '雨湖区', '430301');
INSERT INTO `d_china` VALUES ('430304', '岳塘区', '430301');
INSERT INTO `d_china` VALUES ('430321', '湘潭县', '430300');
INSERT INTO `d_china` VALUES ('430381', '湘乡市', '430300');
INSERT INTO `d_china` VALUES ('430382', '韶山市', '430300');
INSERT INTO `d_china` VALUES ('430400', '衡阳市', '430000');
INSERT INTO `d_china` VALUES ('430401', '市辖区', '430400');
INSERT INTO `d_china` VALUES ('430405', '珠晖区', '430401');
INSERT INTO `d_china` VALUES ('430406', '雁峰区', '430401');
INSERT INTO `d_china` VALUES ('430407', '石鼓区', '430401');
INSERT INTO `d_china` VALUES ('430408', '蒸湘区', '430401');
INSERT INTO `d_china` VALUES ('430412', '南岳区', '430401');
INSERT INTO `d_china` VALUES ('430421', '衡阳县', '430400');
INSERT INTO `d_china` VALUES ('430422', '衡南县', '430400');
INSERT INTO `d_china` VALUES ('430423', '衡山县', '430400');
INSERT INTO `d_china` VALUES ('430424', '衡东县', '430400');
INSERT INTO `d_china` VALUES ('430426', '祁东县', '430400');
INSERT INTO `d_china` VALUES ('430481', '耒阳市', '430400');
INSERT INTO `d_china` VALUES ('430482', '常宁市', '430400');
INSERT INTO `d_china` VALUES ('430500', '邵阳市', '430000');
INSERT INTO `d_china` VALUES ('430501', '市辖区', '430500');
INSERT INTO `d_china` VALUES ('430502', '双清区', '430501');
INSERT INTO `d_china` VALUES ('430503', '大祥区', '430501');
INSERT INTO `d_china` VALUES ('430511', '北塔区', '430501');
INSERT INTO `d_china` VALUES ('430521', '邵东县', '430500');
INSERT INTO `d_china` VALUES ('430522', '新邵县', '430500');
INSERT INTO `d_china` VALUES ('430523', '邵阳县', '430500');
INSERT INTO `d_china` VALUES ('430524', '隆回县', '430500');
INSERT INTO `d_china` VALUES ('430525', '洞口县', '430500');
INSERT INTO `d_china` VALUES ('430527', '绥宁县', '430500');
INSERT INTO `d_china` VALUES ('430528', '新宁县', '430500');
INSERT INTO `d_china` VALUES ('430529', '城步苗族自治县', '430500');
INSERT INTO `d_china` VALUES ('430581', '武冈市', '430500');
INSERT INTO `d_china` VALUES ('430600', '岳阳市', '430000');
INSERT INTO `d_china` VALUES ('430601', '市辖区', '430600');
INSERT INTO `d_china` VALUES ('430602', '岳阳楼区', '430601');
INSERT INTO `d_china` VALUES ('430603', '云溪区', '430601');
INSERT INTO `d_china` VALUES ('430611', '君山区', '430601');
INSERT INTO `d_china` VALUES ('430621', '岳阳县', '430600');
INSERT INTO `d_china` VALUES ('430623', '华容县', '430600');
INSERT INTO `d_china` VALUES ('430624', '湘阴县', '430600');
INSERT INTO `d_china` VALUES ('430626', '平江县', '430600');
INSERT INTO `d_china` VALUES ('430681', '汨罗市', '430600');
INSERT INTO `d_china` VALUES ('430682', '临湘市', '430600');
INSERT INTO `d_china` VALUES ('430700', '常德市', '430000');
INSERT INTO `d_china` VALUES ('430701', '市辖区', '430700');
INSERT INTO `d_china` VALUES ('430702', '武陵区', '430701');
INSERT INTO `d_china` VALUES ('430703', '鼎城区', '430701');
INSERT INTO `d_china` VALUES ('430721', '安乡县', '430700');
INSERT INTO `d_china` VALUES ('430722', '汉寿县', '430700');
INSERT INTO `d_china` VALUES ('430723', '澧县', '430700');
INSERT INTO `d_china` VALUES ('430724', '临澧县', '430700');
INSERT INTO `d_china` VALUES ('430725', '桃源县', '430700');
INSERT INTO `d_china` VALUES ('430726', '石门县', '430700');
INSERT INTO `d_china` VALUES ('430781', '津市市', '430700');
INSERT INTO `d_china` VALUES ('430800', '张家界市', '430000');
INSERT INTO `d_china` VALUES ('430801', '市辖区', '430800');
INSERT INTO `d_china` VALUES ('430802', '永定区', '430801');
INSERT INTO `d_china` VALUES ('430811', '武陵源区', '430801');
INSERT INTO `d_china` VALUES ('430821', '慈利县', '430800');
INSERT INTO `d_china` VALUES ('430822', '桑植县', '430800');
INSERT INTO `d_china` VALUES ('430900', '益阳市', '430000');
INSERT INTO `d_china` VALUES ('430901', '市辖区', '430900');
INSERT INTO `d_china` VALUES ('430902', '资阳区', '430901');
INSERT INTO `d_china` VALUES ('430903', '赫山区', '430901');
INSERT INTO `d_china` VALUES ('430921', '南县', '430900');
INSERT INTO `d_china` VALUES ('430922', '桃江县', '430900');
INSERT INTO `d_china` VALUES ('430923', '安化县', '430900');
INSERT INTO `d_china` VALUES ('430981', '沅江市', '430900');
INSERT INTO `d_china` VALUES ('431000', '郴州市', '430000');
INSERT INTO `d_china` VALUES ('431001', '市辖区', '431000');
INSERT INTO `d_china` VALUES ('431002', '北湖区', '431001');
INSERT INTO `d_china` VALUES ('431003', '苏仙区', '431001');
INSERT INTO `d_china` VALUES ('431021', '桂阳县', '431000');
INSERT INTO `d_china` VALUES ('431022', '宜章县', '431000');
INSERT INTO `d_china` VALUES ('431023', '永兴县', '431000');
INSERT INTO `d_china` VALUES ('431024', '嘉禾县', '431000');
INSERT INTO `d_china` VALUES ('431025', '临武县', '431000');
INSERT INTO `d_china` VALUES ('431026', '汝城县', '431000');
INSERT INTO `d_china` VALUES ('431027', '桂东县', '431000');
INSERT INTO `d_china` VALUES ('431028', '安仁县', '431000');
INSERT INTO `d_china` VALUES ('431081', '资兴市', '431000');
INSERT INTO `d_china` VALUES ('431100', '永州市', '430000');
INSERT INTO `d_china` VALUES ('431101', '市辖区', '431100');
INSERT INTO `d_china` VALUES ('431102', '零陵区', '431101');
INSERT INTO `d_china` VALUES ('431103', '冷水滩区', '431101');
INSERT INTO `d_china` VALUES ('431121', '祁阳县', '431100');
INSERT INTO `d_china` VALUES ('431122', '东安县', '431100');
INSERT INTO `d_china` VALUES ('431123', '双牌县', '431100');
INSERT INTO `d_china` VALUES ('431124', '道县', '431100');
INSERT INTO `d_china` VALUES ('431125', '江永县', '431100');
INSERT INTO `d_china` VALUES ('431126', '宁远县', '431100');
INSERT INTO `d_china` VALUES ('431127', '蓝山县', '431100');
INSERT INTO `d_china` VALUES ('431128', '新田县', '431100');
INSERT INTO `d_china` VALUES ('431129', '江华瑶族自治县', '431100');
INSERT INTO `d_china` VALUES ('431200', '怀化市', '430000');
INSERT INTO `d_china` VALUES ('431201', '市辖区', '431200');
INSERT INTO `d_china` VALUES ('431202', '鹤城区', '431201');
INSERT INTO `d_china` VALUES ('431221', '中方县', '431200');
INSERT INTO `d_china` VALUES ('431222', '沅陵县', '431200');
INSERT INTO `d_china` VALUES ('431223', '辰溪县', '431200');
INSERT INTO `d_china` VALUES ('431224', '溆浦县', '431200');
INSERT INTO `d_china` VALUES ('431225', '会同县', '431200');
INSERT INTO `d_china` VALUES ('431226', '麻阳苗族自治县', '431200');
INSERT INTO `d_china` VALUES ('431227', '新晃侗族自治县', '431200');
INSERT INTO `d_china` VALUES ('431228', '芷江侗族自治县', '431200');
INSERT INTO `d_china` VALUES ('431229', '靖州苗族侗族自治县', '431200');
INSERT INTO `d_china` VALUES ('431230', '通道侗族自治县', '431200');
INSERT INTO `d_china` VALUES ('431281', '洪江市', '431200');
INSERT INTO `d_china` VALUES ('431300', '娄底市', '430000');
INSERT INTO `d_china` VALUES ('431301', '市辖区', '431300');
INSERT INTO `d_china` VALUES ('431302', '娄星区', '431301');
INSERT INTO `d_china` VALUES ('431321', '双峰县', '431300');
INSERT INTO `d_china` VALUES ('431322', '新化县', '431300');
INSERT INTO `d_china` VALUES ('431381', '冷水江市', '431300');
INSERT INTO `d_china` VALUES ('431382', '涟源市', '431300');
INSERT INTO `d_china` VALUES ('433100', '湘西土家族苗族自治州', '430000');
INSERT INTO `d_china` VALUES ('433101', '吉首市', '433100');
INSERT INTO `d_china` VALUES ('433122', '泸溪县', '433100');
INSERT INTO `d_china` VALUES ('433123', '凤凰县', '433100');
INSERT INTO `d_china` VALUES ('433124', '花垣县', '433100');
INSERT INTO `d_china` VALUES ('433125', '保靖县', '433100');
INSERT INTO `d_china` VALUES ('433126', '古丈县', '433100');
INSERT INTO `d_china` VALUES ('433127', '永顺县', '433100');
INSERT INTO `d_china` VALUES ('433130', '龙山县', '433100');
INSERT INTO `d_china` VALUES ('440000', '广东省', '0');
INSERT INTO `d_china` VALUES ('440100', '广州市', '440000');
INSERT INTO `d_china` VALUES ('440101', '市辖区', '440100');
INSERT INTO `d_china` VALUES ('440103', '荔湾区', '440101');
INSERT INTO `d_china` VALUES ('440104', '越秀区', '440101');
INSERT INTO `d_china` VALUES ('440105', '海珠区', '440101');
INSERT INTO `d_china` VALUES ('440106', '天河区', '440101');
INSERT INTO `d_china` VALUES ('440111', '白云区', '440101');
INSERT INTO `d_china` VALUES ('440112', '黄埔区', '440101');
INSERT INTO `d_china` VALUES ('440113', '番禺区', '440101');
INSERT INTO `d_china` VALUES ('440114', '花都区', '440101');
INSERT INTO `d_china` VALUES ('440115', '南沙区', '440101');
INSERT INTO `d_china` VALUES ('440116', '萝岗区', '440101');
INSERT INTO `d_china` VALUES ('440183', '增城市', '440100');
INSERT INTO `d_china` VALUES ('440184', '从化市', '440100');
INSERT INTO `d_china` VALUES ('440200', '韶关市', '440000');
INSERT INTO `d_china` VALUES ('440201', '市辖区', '440200');
INSERT INTO `d_china` VALUES ('440203', '武江区', '440201');
INSERT INTO `d_china` VALUES ('440204', '浈江区', '440201');
INSERT INTO `d_china` VALUES ('440205', '曲江区', '440201');
INSERT INTO `d_china` VALUES ('440222', '始兴县', '440200');
INSERT INTO `d_china` VALUES ('440224', '仁化县', '440200');
INSERT INTO `d_china` VALUES ('440229', '翁源县', '440200');
INSERT INTO `d_china` VALUES ('440232', '乳源瑶族自治县', '440200');
INSERT INTO `d_china` VALUES ('440233', '新丰县', '440200');
INSERT INTO `d_china` VALUES ('440281', '乐昌市', '440200');
INSERT INTO `d_china` VALUES ('440282', '南雄市', '440200');
INSERT INTO `d_china` VALUES ('440300', '深圳市', '440000');
INSERT INTO `d_china` VALUES ('440301', '市辖区', '440300');
INSERT INTO `d_china` VALUES ('440303', '罗湖区', '440301');
INSERT INTO `d_china` VALUES ('440304', '福田区', '440301');
INSERT INTO `d_china` VALUES ('440305', '南山区', '440301');
INSERT INTO `d_china` VALUES ('440306', '宝安区', '440301');
INSERT INTO `d_china` VALUES ('440307', '龙岗区', '440301');
INSERT INTO `d_china` VALUES ('440308', '盐田区', '440301');
INSERT INTO `d_china` VALUES ('440400', '珠海市', '440000');
INSERT INTO `d_china` VALUES ('440401', '市辖区', '440400');
INSERT INTO `d_china` VALUES ('440402', '香洲区', '440401');
INSERT INTO `d_china` VALUES ('440403', '斗门区', '440401');
INSERT INTO `d_china` VALUES ('440404', '金湾区', '440401');
INSERT INTO `d_china` VALUES ('440500', '汕头市', '440000');
INSERT INTO `d_china` VALUES ('440501', '市辖区', '440500');
INSERT INTO `d_china` VALUES ('440507', '龙湖区', '440501');
INSERT INTO `d_china` VALUES ('440511', '金平区', '440501');
INSERT INTO `d_china` VALUES ('440512', '濠江区', '440501');
INSERT INTO `d_china` VALUES ('440513', '潮阳区', '440501');
INSERT INTO `d_china` VALUES ('440514', '潮南区', '440501');
INSERT INTO `d_china` VALUES ('440515', '澄海区', '440501');
INSERT INTO `d_china` VALUES ('440523', '南澳县', '440500');
INSERT INTO `d_china` VALUES ('440600', '佛山市', '440000');
INSERT INTO `d_china` VALUES ('440601', '市辖区', '440600');
INSERT INTO `d_china` VALUES ('440604', '禅城区', '440600');
INSERT INTO `d_china` VALUES ('440605', '南海区', '440600');
INSERT INTO `d_china` VALUES ('440606', '顺德区', '440600');
INSERT INTO `d_china` VALUES ('440607', '三水区', '440600');
INSERT INTO `d_china` VALUES ('440608', '高明区', '440600');
INSERT INTO `d_china` VALUES ('440700', '江门市', '440000');
INSERT INTO `d_china` VALUES ('440701', '市辖区', '440700');
INSERT INTO `d_china` VALUES ('440703', '蓬江区', '440701');
INSERT INTO `d_china` VALUES ('440704', '江海区', '440701');
INSERT INTO `d_china` VALUES ('440705', '新会区', '440701');
INSERT INTO `d_china` VALUES ('440781', '台山市', '440700');
INSERT INTO `d_china` VALUES ('440783', '开平市', '440700');
INSERT INTO `d_china` VALUES ('440784', '鹤山市', '440700');
INSERT INTO `d_china` VALUES ('440785', '恩平市', '440700');
INSERT INTO `d_china` VALUES ('440800', '湛江市', '440000');
INSERT INTO `d_china` VALUES ('440801', '市辖区', '440800');
INSERT INTO `d_china` VALUES ('440802', '赤坎区', '440801');
INSERT INTO `d_china` VALUES ('440803', '霞山区', '440801');
INSERT INTO `d_china` VALUES ('440804', '坡头区', '440801');
INSERT INTO `d_china` VALUES ('440811', '麻章区', '440801');
INSERT INTO `d_china` VALUES ('440823', '遂溪县', '440800');
INSERT INTO `d_china` VALUES ('440825', '徐闻县', '440800');
INSERT INTO `d_china` VALUES ('440881', '廉江市', '440800');
INSERT INTO `d_china` VALUES ('440882', '雷州市', '440800');
INSERT INTO `d_china` VALUES ('440883', '吴川市', '440800');
INSERT INTO `d_china` VALUES ('440900', '茂名市', '440000');
INSERT INTO `d_china` VALUES ('440901', '市辖区', '440900');
INSERT INTO `d_china` VALUES ('440902', '茂南区', '440901');
INSERT INTO `d_china` VALUES ('440903', '茂港区', '440901');
INSERT INTO `d_china` VALUES ('440923', '电白县', '440900');
INSERT INTO `d_china` VALUES ('440981', '高州市', '440900');
INSERT INTO `d_china` VALUES ('440982', '化州市', '440900');
INSERT INTO `d_china` VALUES ('440983', '信宜市', '440900');
INSERT INTO `d_china` VALUES ('441200', '肇庆市', '440000');
INSERT INTO `d_china` VALUES ('441201', '市辖区', '441200');
INSERT INTO `d_china` VALUES ('441202', '端州区', '441201');
INSERT INTO `d_china` VALUES ('441203', '鼎湖区', '441201');
INSERT INTO `d_china` VALUES ('441223', '广宁县', '441200');
INSERT INTO `d_china` VALUES ('441224', '怀集县', '441200');
INSERT INTO `d_china` VALUES ('441225', '封开县', '441200');
INSERT INTO `d_china` VALUES ('441226', '德庆县', '441200');
INSERT INTO `d_china` VALUES ('441283', '高要市', '441200');
INSERT INTO `d_china` VALUES ('441284', '四会市', '441200');
INSERT INTO `d_china` VALUES ('441300', '惠州市', '440000');
INSERT INTO `d_china` VALUES ('441301', '市辖区', '441300');
INSERT INTO `d_china` VALUES ('441302', '惠城区', '441301');
INSERT INTO `d_china` VALUES ('441303', '惠阳区', '441301');
INSERT INTO `d_china` VALUES ('441322', '博罗县', '441300');
INSERT INTO `d_china` VALUES ('441323', '惠东县', '441300');
INSERT INTO `d_china` VALUES ('441324', '龙门县', '441300');
INSERT INTO `d_china` VALUES ('441400', '梅州市', '440000');
INSERT INTO `d_china` VALUES ('441401', '市辖区', '441400');
INSERT INTO `d_china` VALUES ('441402', '梅江区', '441401');
INSERT INTO `d_china` VALUES ('441421', '梅县', '441400');
INSERT INTO `d_china` VALUES ('441422', '大埔县', '441400');
INSERT INTO `d_china` VALUES ('441423', '丰顺县', '441400');
INSERT INTO `d_china` VALUES ('441424', '五华县', '441400');
INSERT INTO `d_china` VALUES ('441426', '平远县', '441400');
INSERT INTO `d_china` VALUES ('441427', '蕉岭县', '441400');
INSERT INTO `d_china` VALUES ('441481', '兴宁市', '441400');
INSERT INTO `d_china` VALUES ('441500', '汕尾市', '440000');
INSERT INTO `d_china` VALUES ('441501', '市辖区', '441500');
INSERT INTO `d_china` VALUES ('441502', '城区', '441501');
INSERT INTO `d_china` VALUES ('441521', '海丰县', '441500');
INSERT INTO `d_china` VALUES ('441523', '陆河县', '441500');
INSERT INTO `d_china` VALUES ('441581', '陆丰市', '441500');
INSERT INTO `d_china` VALUES ('441600', '河源市', '440000');
INSERT INTO `d_china` VALUES ('441601', '市辖区', '441600');
INSERT INTO `d_china` VALUES ('441602', '源城区', '441601');
INSERT INTO `d_china` VALUES ('441621', '紫金县', '441600');
INSERT INTO `d_china` VALUES ('441622', '龙川县', '441600');
INSERT INTO `d_china` VALUES ('441623', '连平县', '441600');
INSERT INTO `d_china` VALUES ('441624', '和平县', '441600');
INSERT INTO `d_china` VALUES ('441625', '东源县', '441600');
INSERT INTO `d_china` VALUES ('441700', '阳江市', '440000');
INSERT INTO `d_china` VALUES ('441701', '市辖区', '441700');
INSERT INTO `d_china` VALUES ('441702', '江城区', '441701');
INSERT INTO `d_china` VALUES ('441721', '阳西县', '441700');
INSERT INTO `d_china` VALUES ('441723', '阳东县', '441700');
INSERT INTO `d_china` VALUES ('441781', '阳春市', '441700');
INSERT INTO `d_china` VALUES ('441800', '清远市', '440000');
INSERT INTO `d_china` VALUES ('441801', '市辖区', '441800');
INSERT INTO `d_china` VALUES ('441802', '清城区', '441801');
INSERT INTO `d_china` VALUES ('441821', '佛冈县', '441800');
INSERT INTO `d_china` VALUES ('441823', '阳山县', '441800');
INSERT INTO `d_china` VALUES ('441825', '连山壮族瑶族自治县', '441800');
INSERT INTO `d_china` VALUES ('441826', '连南瑶族自治县', '441800');
INSERT INTO `d_china` VALUES ('441827', '清新县', '441800');
INSERT INTO `d_china` VALUES ('441881', '英德市', '441800');
INSERT INTO `d_china` VALUES ('441882', '连州市', '441800');
INSERT INTO `d_china` VALUES ('441900', '东莞市', '440000');
INSERT INTO `d_china` VALUES ('442000', '中山市', '440000');
INSERT INTO `d_china` VALUES ('445100', '潮州市', '440000');
INSERT INTO `d_china` VALUES ('445101', '市辖区', '445100');
INSERT INTO `d_china` VALUES ('445102', '湘桥区', '445101');
INSERT INTO `d_china` VALUES ('445121', '潮安区', '445100');
INSERT INTO `d_china` VALUES ('445122', '饶平县', '445100');
INSERT INTO `d_china` VALUES ('445200', '揭阳市', '440000');
INSERT INTO `d_china` VALUES ('445201', '市辖区', '445200');
INSERT INTO `d_china` VALUES ('445202', '榕城区', '445201');
INSERT INTO `d_china` VALUES ('445221', '揭东县', '445200');
INSERT INTO `d_china` VALUES ('445222', '揭西县', '445200');
INSERT INTO `d_china` VALUES ('445224', '惠来县', '445200');
INSERT INTO `d_china` VALUES ('445281', '普宁市', '445200');
INSERT INTO `d_china` VALUES ('445300', '云浮市', '440000');
INSERT INTO `d_china` VALUES ('445301', '市辖区', '445300');
INSERT INTO `d_china` VALUES ('445302', '云城区', '445301');
INSERT INTO `d_china` VALUES ('445321', '新兴县', '445300');
INSERT INTO `d_china` VALUES ('445322', '郁南县', '445300');
INSERT INTO `d_china` VALUES ('445323', '云安县', '445300');
INSERT INTO `d_china` VALUES ('445381', '罗定市', '445300');
INSERT INTO `d_china` VALUES ('450000', '广西壮族自治区', '0');
INSERT INTO `d_china` VALUES ('450100', '南宁市', '450000');
INSERT INTO `d_china` VALUES ('450101', '市辖区', '450100');
INSERT INTO `d_china` VALUES ('450102', '兴宁区', '450101');
INSERT INTO `d_china` VALUES ('450103', '青秀区', '450101');
INSERT INTO `d_china` VALUES ('450105', '江南区', '450101');
INSERT INTO `d_china` VALUES ('450107', '西乡塘区', '450101');
INSERT INTO `d_china` VALUES ('450108', '良庆区', '450101');
INSERT INTO `d_china` VALUES ('450109', '邕宁区', '450101');
INSERT INTO `d_china` VALUES ('450122', '武鸣县', '450100');
INSERT INTO `d_china` VALUES ('450123', '隆安县', '450100');
INSERT INTO `d_china` VALUES ('450124', '马山县', '450100');
INSERT INTO `d_china` VALUES ('450125', '上林县', '450100');
INSERT INTO `d_china` VALUES ('450126', '宾阳县', '450100');
INSERT INTO `d_china` VALUES ('450127', '横县', '450100');
INSERT INTO `d_china` VALUES ('450200', '柳州市', '450000');
INSERT INTO `d_china` VALUES ('450201', '市辖区', '450200');
INSERT INTO `d_china` VALUES ('450202', '城中区', '450201');
INSERT INTO `d_china` VALUES ('450203', '鱼峰区', '450201');
INSERT INTO `d_china` VALUES ('450204', '柳南区', '450201');
INSERT INTO `d_china` VALUES ('450205', '柳北区', '450201');
INSERT INTO `d_china` VALUES ('450221', '柳江县', '450200');
INSERT INTO `d_china` VALUES ('450222', '柳城县', '450200');
INSERT INTO `d_china` VALUES ('450223', '鹿寨县', '450200');
INSERT INTO `d_china` VALUES ('450224', '融安县', '450200');
INSERT INTO `d_china` VALUES ('450225', '融水苗族自治县', '450200');
INSERT INTO `d_china` VALUES ('450226', '三江侗族自治县', '450200');
INSERT INTO `d_china` VALUES ('450300', '桂林市', '450000');
INSERT INTO `d_china` VALUES ('450301', '市辖区', '450300');
INSERT INTO `d_china` VALUES ('450302', '秀峰区', '450301');
INSERT INTO `d_china` VALUES ('450303', '叠彩区', '450301');
INSERT INTO `d_china` VALUES ('450304', '象山区', '450301');
INSERT INTO `d_china` VALUES ('450305', '七星区', '450301');
INSERT INTO `d_china` VALUES ('450311', '雁山区', '450301');
INSERT INTO `d_china` VALUES ('450321', '阳朔县', '450300');
INSERT INTO `d_china` VALUES ('450322', '临桂区', '450300');
INSERT INTO `d_china` VALUES ('450323', '灵川县', '450300');
INSERT INTO `d_china` VALUES ('450324', '全州县', '450300');
INSERT INTO `d_china` VALUES ('450325', '兴安县', '450300');
INSERT INTO `d_china` VALUES ('450326', '永福县', '450300');
INSERT INTO `d_china` VALUES ('450327', '灌阳县', '450300');
INSERT INTO `d_china` VALUES ('450328', '龙胜各族自治县', '450300');
INSERT INTO `d_china` VALUES ('450329', '资源县', '450300');
INSERT INTO `d_china` VALUES ('450330', '平乐县', '450300');
INSERT INTO `d_china` VALUES ('450331', '荔浦县', '450300');
INSERT INTO `d_china` VALUES ('450332', '恭城瑶族自治县', '450300');
INSERT INTO `d_china` VALUES ('450400', '梧州市', '450000');
INSERT INTO `d_china` VALUES ('450401', '市辖区', '450400');
INSERT INTO `d_china` VALUES ('450403', '万秀区', '450401');
INSERT INTO `d_china` VALUES ('450404', '蝶山区', '450401');
INSERT INTO `d_china` VALUES ('450405', '长洲区', '450401');
INSERT INTO `d_china` VALUES ('450421', '苍梧县', '450400');
INSERT INTO `d_china` VALUES ('450422', '藤县', '450400');
INSERT INTO `d_china` VALUES ('450423', '蒙山县', '450400');
INSERT INTO `d_china` VALUES ('450481', '岑溪市', '450400');
INSERT INTO `d_china` VALUES ('450500', '北海市', '450000');
INSERT INTO `d_china` VALUES ('450501', '市辖区', '450500');
INSERT INTO `d_china` VALUES ('450502', '海城区', '450501');
INSERT INTO `d_china` VALUES ('450503', '银海区', '450501');
INSERT INTO `d_china` VALUES ('450512', '铁山港区', '450501');
INSERT INTO `d_china` VALUES ('450521', '合浦县', '450500');
INSERT INTO `d_china` VALUES ('450600', '防城港市', '450000');
INSERT INTO `d_china` VALUES ('450601', '市辖区', '450600');
INSERT INTO `d_china` VALUES ('450602', '港口区', '450601');
INSERT INTO `d_china` VALUES ('450603', '防城区', '450601');
INSERT INTO `d_china` VALUES ('450621', '上思县', '450600');
INSERT INTO `d_china` VALUES ('450681', '东兴市', '450600');
INSERT INTO `d_china` VALUES ('450700', '钦州市', '450000');
INSERT INTO `d_china` VALUES ('450701', '市辖区', '450700');
INSERT INTO `d_china` VALUES ('450702', '钦南区', '450700');
INSERT INTO `d_china` VALUES ('450703', '钦北区', '450700');
INSERT INTO `d_china` VALUES ('450721', '灵山县', '450700');
INSERT INTO `d_china` VALUES ('450722', '浦北县', '450700');
INSERT INTO `d_china` VALUES ('450800', '贵港市', '450000');
INSERT INTO `d_china` VALUES ('450801', '市辖区', '450800');
INSERT INTO `d_china` VALUES ('450802', '港北区', '450801');
INSERT INTO `d_china` VALUES ('450803', '港南区', '450801');
INSERT INTO `d_china` VALUES ('450804', '覃塘区', '450801');
INSERT INTO `d_china` VALUES ('450821', '平南县', '450800');
INSERT INTO `d_china` VALUES ('450881', '桂平市', '450800');
INSERT INTO `d_china` VALUES ('450900', '玉林市', '450000');
INSERT INTO `d_china` VALUES ('450901', '市辖区', '450900');
INSERT INTO `d_china` VALUES ('450902', '玉州区', '450901');
INSERT INTO `d_china` VALUES ('450921', '容县', '450900');
INSERT INTO `d_china` VALUES ('450922', '陆川县', '450900');
INSERT INTO `d_china` VALUES ('450923', '博白县', '450900');
INSERT INTO `d_china` VALUES ('450924', '兴业县', '450900');
INSERT INTO `d_china` VALUES ('450981', '北流市', '450900');
INSERT INTO `d_china` VALUES ('451000', '百色市', '450000');
INSERT INTO `d_china` VALUES ('451001', '市辖区', '451000');
INSERT INTO `d_china` VALUES ('451002', '右江区', '451001');
INSERT INTO `d_china` VALUES ('451021', '田阳县', '451000');
INSERT INTO `d_china` VALUES ('451022', '田东县', '451000');
INSERT INTO `d_china` VALUES ('451023', '平果县', '451000');
INSERT INTO `d_china` VALUES ('451024', '德保县', '451000');
INSERT INTO `d_china` VALUES ('451025', '靖西县', '451000');
INSERT INTO `d_china` VALUES ('451026', '那坡县', '451000');
INSERT INTO `d_china` VALUES ('451027', '凌云县', '451000');
INSERT INTO `d_china` VALUES ('451028', '乐业县', '451000');
INSERT INTO `d_china` VALUES ('451029', '田林县', '451000');
INSERT INTO `d_china` VALUES ('451030', '西林县', '451000');
INSERT INTO `d_china` VALUES ('451031', '隆林各族自治县', '451000');
INSERT INTO `d_china` VALUES ('451100', '贺州市', '450000');
INSERT INTO `d_china` VALUES ('451101', '市辖区', '451100');
INSERT INTO `d_china` VALUES ('451102', '八步区', '451101');
INSERT INTO `d_china` VALUES ('451121', '昭平县', '451100');
INSERT INTO `d_china` VALUES ('451122', '钟山县', '451100');
INSERT INTO `d_china` VALUES ('451123', '富川瑶族自治县', '451100');
INSERT INTO `d_china` VALUES ('451200', '河池市', '450000');
INSERT INTO `d_china` VALUES ('451201', '市辖区', '451200');
INSERT INTO `d_china` VALUES ('451202', '金城江区', '451201');
INSERT INTO `d_china` VALUES ('451221', '南丹县', '451200');
INSERT INTO `d_china` VALUES ('451222', '天峨县', '451200');
INSERT INTO `d_china` VALUES ('451223', '凤山县', '451200');
INSERT INTO `d_china` VALUES ('451224', '东兰县', '451200');
INSERT INTO `d_china` VALUES ('451225', '罗城仫佬族自治县', '451200');
INSERT INTO `d_china` VALUES ('451226', '环江毛南族自治县', '451200');
INSERT INTO `d_china` VALUES ('451227', '巴马瑶族自治县', '451200');
INSERT INTO `d_china` VALUES ('451228', '都安瑶族自治县', '451200');
INSERT INTO `d_china` VALUES ('451229', '大化瑶族自治县', '451200');
INSERT INTO `d_china` VALUES ('451281', '宜州市', '451200');
INSERT INTO `d_china` VALUES ('451300', '来宾市', '450000');
INSERT INTO `d_china` VALUES ('451301', '市辖区', '451300');
INSERT INTO `d_china` VALUES ('451302', '兴宾区', '451301');
INSERT INTO `d_china` VALUES ('451321', '忻城县', '451300');
INSERT INTO `d_china` VALUES ('451322', '象州县', '451300');
INSERT INTO `d_china` VALUES ('451323', '武宣县', '451300');
INSERT INTO `d_china` VALUES ('451324', '金秀瑶族自治县', '451300');
INSERT INTO `d_china` VALUES ('451381', '合山市', '451300');
INSERT INTO `d_china` VALUES ('451400', '崇左市', '450000');
INSERT INTO `d_china` VALUES ('451401', '市辖区', '451400');
INSERT INTO `d_china` VALUES ('451402', '江洲区', '451401');
INSERT INTO `d_china` VALUES ('451421', '扶绥县', '451400');
INSERT INTO `d_china` VALUES ('451422', '宁明县', '451400');
INSERT INTO `d_china` VALUES ('451423', '龙州县', '451400');
INSERT INTO `d_china` VALUES ('451424', '大新县', '451400');
INSERT INTO `d_china` VALUES ('451425', '天等县', '451400');
INSERT INTO `d_china` VALUES ('451481', '凭祥市', '451400');
INSERT INTO `d_china` VALUES ('460000', '海南省', '0');
INSERT INTO `d_china` VALUES ('460100', '海口市', '460000');
INSERT INTO `d_china` VALUES ('460101', '市辖区', '460100');
INSERT INTO `d_china` VALUES ('460105', '秀英区', '460101');
INSERT INTO `d_china` VALUES ('460106', '龙华区', '460101');
INSERT INTO `d_china` VALUES ('460107', '琼山区', '460101');
INSERT INTO `d_china` VALUES ('460108', '美兰区', '460101');
INSERT INTO `d_china` VALUES ('460200', '三亚市', '460000');
INSERT INTO `d_china` VALUES ('460201', '市辖区', '460200');
INSERT INTO `d_china` VALUES ('469000', '省直辖县级行政单位', '460000');
INSERT INTO `d_china` VALUES ('469001', '五指山市', '469000');
INSERT INTO `d_china` VALUES ('469002', '琼海市', '469000');
INSERT INTO `d_china` VALUES ('469003', '儋州市', '469000');
INSERT INTO `d_china` VALUES ('469005', '文昌市', '469000');
INSERT INTO `d_china` VALUES ('469006', '万宁市', '469000');
INSERT INTO `d_china` VALUES ('469007', '东方市', '469000');
INSERT INTO `d_china` VALUES ('469025', '定安县', '469000');
INSERT INTO `d_china` VALUES ('469026', '屯昌县', '469000');
INSERT INTO `d_china` VALUES ('469027', '澄迈县', '469000');
INSERT INTO `d_china` VALUES ('469028', '临高县', '469000');
INSERT INTO `d_china` VALUES ('469030', '白沙黎族自治县', '469000');
INSERT INTO `d_china` VALUES ('469031', '昌江黎族自治县', '469000');
INSERT INTO `d_china` VALUES ('469033', '乐东黎族自治县', '469000');
INSERT INTO `d_china` VALUES ('469034', '陵水黎族自治县', '469000');
INSERT INTO `d_china` VALUES ('469035', '保亭黎族苗族自治县', '469000');
INSERT INTO `d_china` VALUES ('469036', '琼中黎族苗族自治县', '469000');
INSERT INTO `d_china` VALUES ('469037', '西沙群岛', '469000');
INSERT INTO `d_china` VALUES ('469038', '南沙群岛', '469000');
INSERT INTO `d_china` VALUES ('469039', '中沙群岛的岛礁及其海域', '469000');
INSERT INTO `d_china` VALUES ('500000', '重庆市', '0');
INSERT INTO `d_china` VALUES ('500100', '万州区', '500000');
INSERT INTO `d_china` VALUES ('500101', '万州区', '500100');
INSERT INTO `d_china` VALUES ('500200', '涪陵区', '500000');
INSERT INTO `d_china` VALUES ('500201', '涪陵区', '500200');
INSERT INTO `d_china` VALUES ('500300', '渝中区', '500000');
INSERT INTO `d_china` VALUES ('500301', '渝中区', '500300');
INSERT INTO `d_china` VALUES ('500400', '大渡口区', '500000');
INSERT INTO `d_china` VALUES ('500401', '大渡口区', '500400');
INSERT INTO `d_china` VALUES ('500500', '江北区', '500000');
INSERT INTO `d_china` VALUES ('500501', '江北区', '500500');
INSERT INTO `d_china` VALUES ('500600', '沙坪坝区', '500000');
INSERT INTO `d_china` VALUES ('500601', '沙坪坝区', '500600');
INSERT INTO `d_china` VALUES ('500700', '九龙坡区', '500000');
INSERT INTO `d_china` VALUES ('500701', '九龙坡区', '500700');
INSERT INTO `d_china` VALUES ('500800', '南岸区', '500000');
INSERT INTO `d_china` VALUES ('500801', '南岸区', '500800');
INSERT INTO `d_china` VALUES ('500900', '北碚区', '500000');
INSERT INTO `d_china` VALUES ('500901', '北碚区', '500900');
INSERT INTO `d_china` VALUES ('501000', '万盛区', '500000');
INSERT INTO `d_china` VALUES ('501001', '万盛区', '501000');
INSERT INTO `d_china` VALUES ('501100', '双桥区', '500000');
INSERT INTO `d_china` VALUES ('501101', '双桥区', '501100');
INSERT INTO `d_china` VALUES ('501200', '渝北区', '500000');
INSERT INTO `d_china` VALUES ('501201', '渝北区', '501200');
INSERT INTO `d_china` VALUES ('501300', '巴南区', '500000');
INSERT INTO `d_china` VALUES ('501301', '巴南区', '501300');
INSERT INTO `d_china` VALUES ('501400', '黔江区', '500000');
INSERT INTO `d_china` VALUES ('501401', '黔江区', '501400');
INSERT INTO `d_china` VALUES ('501500', '长寿区', '500000');
INSERT INTO `d_china` VALUES ('501501', '长寿区', '501500');
INSERT INTO `d_china` VALUES ('502200', '綦江区', '500000');
INSERT INTO `d_china` VALUES ('502201', '綦江区', '502200');
INSERT INTO `d_china` VALUES ('502300', '潼南县', '500000');
INSERT INTO `d_china` VALUES ('502301', '潼南县', '502300');
INSERT INTO `d_china` VALUES ('502400', '铜梁县', '500000');
INSERT INTO `d_china` VALUES ('502401', '铜梁县', '502400');
INSERT INTO `d_china` VALUES ('502500', '大足区', '500000');
INSERT INTO `d_china` VALUES ('502501', '大足区', '502500');
INSERT INTO `d_china` VALUES ('502600', '荣昌县', '500000');
INSERT INTO `d_china` VALUES ('502601', '荣昌县', '502600');
INSERT INTO `d_china` VALUES ('502700', '璧山县', '500000');
INSERT INTO `d_china` VALUES ('502701', '璧山县', '502700');
INSERT INTO `d_china` VALUES ('502800', '梁平县', '500000');
INSERT INTO `d_china` VALUES ('502801', '梁平县', '502800');
INSERT INTO `d_china` VALUES ('502900', '城口县', '500000');
INSERT INTO `d_china` VALUES ('502901', '城口县', '502900');
INSERT INTO `d_china` VALUES ('503000', '丰都县', '500000');
INSERT INTO `d_china` VALUES ('503001', '丰都县', '503000');
INSERT INTO `d_china` VALUES ('503100', '垫江县', '500000');
INSERT INTO `d_china` VALUES ('503101', '垫江县', '503100');
INSERT INTO `d_china` VALUES ('503200', '武隆县', '500000');
INSERT INTO `d_china` VALUES ('503201', '武隆县', '503200');
INSERT INTO `d_china` VALUES ('503300', '忠县', '500000');
INSERT INTO `d_china` VALUES ('503301', '忠县', '503300');
INSERT INTO `d_china` VALUES ('503400', '开县', '500000');
INSERT INTO `d_china` VALUES ('503401', '开县', '503400');
INSERT INTO `d_china` VALUES ('503500', '云阳县', '500000');
INSERT INTO `d_china` VALUES ('503501', '云阳县', '503500');
INSERT INTO `d_china` VALUES ('503600', '奉节县', '500000');
INSERT INTO `d_china` VALUES ('503601', '奉节县', '503600');
INSERT INTO `d_china` VALUES ('503700', '巫山县', '500000');
INSERT INTO `d_china` VALUES ('503701', '巫山县', '503700');
INSERT INTO `d_china` VALUES ('503800', '巫溪县', '500000');
INSERT INTO `d_china` VALUES ('503801', '巫溪县', '503800');
INSERT INTO `d_china` VALUES ('504000', '石柱县', '500000');
INSERT INTO `d_china` VALUES ('504001', '石柱县', '504000');
INSERT INTO `d_china` VALUES ('504100', '秀山县', '500000');
INSERT INTO `d_china` VALUES ('504101', '秀山县', '504100');
INSERT INTO `d_china` VALUES ('504200', '酉阳县', '500000');
INSERT INTO `d_china` VALUES ('504201', '酉阳县', '504200');
INSERT INTO `d_china` VALUES ('504300', '彭水县', '500000');
INSERT INTO `d_china` VALUES ('504301', '彭水县', '504300');
INSERT INTO `d_china` VALUES ('508100', '江津区', '500000');
INSERT INTO `d_china` VALUES ('508101', '江津区', '508100');
INSERT INTO `d_china` VALUES ('508200', '合川区', '500000');
INSERT INTO `d_china` VALUES ('508201', '合川区', '508200');
INSERT INTO `d_china` VALUES ('508300', '永川区', '500000');
INSERT INTO `d_china` VALUES ('508301', '永川区', '508300');
INSERT INTO `d_china` VALUES ('508400', '南川区', '500000');
INSERT INTO `d_china` VALUES ('508401', '南川区', '508400');
INSERT INTO `d_china` VALUES ('510000', '四川省', '0');
INSERT INTO `d_china` VALUES ('510100', '成都市', '510000');
INSERT INTO `d_china` VALUES ('510101', '市辖区', '510100');
INSERT INTO `d_china` VALUES ('510104', '锦江区', '510101');
INSERT INTO `d_china` VALUES ('510105', '青羊区', '510101');
INSERT INTO `d_china` VALUES ('510106', '金牛区', '510101');
INSERT INTO `d_china` VALUES ('510107', '武侯区', '510101');
INSERT INTO `d_china` VALUES ('510108', '成华区', '510101');
INSERT INTO `d_china` VALUES ('510112', '龙泉驿区', '510100');
INSERT INTO `d_china` VALUES ('510113', '青白江区', '510101');
INSERT INTO `d_china` VALUES ('510114', '新都区', '510101');
INSERT INTO `d_china` VALUES ('510115', '温江区', '510101');
INSERT INTO `d_china` VALUES ('510121', '金堂县', '510100');
INSERT INTO `d_china` VALUES ('510122', '双流县', '510100');
INSERT INTO `d_china` VALUES ('510124', '郫县', '510100');
INSERT INTO `d_china` VALUES ('510129', '大邑县', '510100');
INSERT INTO `d_china` VALUES ('510131', '蒲江县', '510100');
INSERT INTO `d_china` VALUES ('510132', '新津县', '510100');
INSERT INTO `d_china` VALUES ('510181', '都江堰市', '510100');
INSERT INTO `d_china` VALUES ('510182', '彭州市', '510100');
INSERT INTO `d_china` VALUES ('510183', '邛崃市', '510100');
INSERT INTO `d_china` VALUES ('510184', '崇州市', '510100');
INSERT INTO `d_china` VALUES ('510300', '自贡市', '510000');
INSERT INTO `d_china` VALUES ('510301', '市辖区', '510300');
INSERT INTO `d_china` VALUES ('510302', '自流井区', '510301');
INSERT INTO `d_china` VALUES ('510303', '贡井区', '510301');
INSERT INTO `d_china` VALUES ('510304', '大安区', '510301');
INSERT INTO `d_china` VALUES ('510311', '沿滩区', '510301');
INSERT INTO `d_china` VALUES ('510321', '荣县', '510300');
INSERT INTO `d_china` VALUES ('510322', '富顺县', '510300');
INSERT INTO `d_china` VALUES ('510400', '攀枝花市', '510000');
INSERT INTO `d_china` VALUES ('510401', '市辖区', '510400');
INSERT INTO `d_china` VALUES ('510402', '东区', '510401');
INSERT INTO `d_china` VALUES ('510403', '西区', '510401');
INSERT INTO `d_china` VALUES ('510411', '仁和区', '510401');
INSERT INTO `d_china` VALUES ('510421', '米易县', '510400');
INSERT INTO `d_china` VALUES ('510422', '盐边县', '510400');
INSERT INTO `d_china` VALUES ('510500', '泸州市', '510000');
INSERT INTO `d_china` VALUES ('510501', '市辖区', '510500');
INSERT INTO `d_china` VALUES ('510502', '江阳区', '510501');
INSERT INTO `d_china` VALUES ('510503', '纳溪区', '510501');
INSERT INTO `d_china` VALUES ('510504', '龙马潭区', '510501');
INSERT INTO `d_china` VALUES ('510521', '泸县', '510500');
INSERT INTO `d_china` VALUES ('510522', '合江县', '510500');
INSERT INTO `d_china` VALUES ('510524', '叙永县', '510500');
INSERT INTO `d_china` VALUES ('510525', '古蔺县', '510500');
INSERT INTO `d_china` VALUES ('510600', '德阳市', '510000');
INSERT INTO `d_china` VALUES ('510601', '市辖区', '510600');
INSERT INTO `d_china` VALUES ('510603', '旌阳区', '510601');
INSERT INTO `d_china` VALUES ('510623', '中江县', '510600');
INSERT INTO `d_china` VALUES ('510626', '罗江县', '510600');
INSERT INTO `d_china` VALUES ('510681', '广汉市', '510600');
INSERT INTO `d_china` VALUES ('510682', '什邡市', '510600');
INSERT INTO `d_china` VALUES ('510683', '绵竹市', '510600');
INSERT INTO `d_china` VALUES ('510700', '绵阳市', '510000');
INSERT INTO `d_china` VALUES ('510701', '市辖区', '510700');
INSERT INTO `d_china` VALUES ('510703', '涪城区', '510701');
INSERT INTO `d_china` VALUES ('510704', '游仙区', '510701');
INSERT INTO `d_china` VALUES ('510722', '三台县', '510700');
INSERT INTO `d_china` VALUES ('510723', '盐亭县', '510700');
INSERT INTO `d_china` VALUES ('510724', '安县', '510700');
INSERT INTO `d_china` VALUES ('510725', '梓潼县', '510700');
INSERT INTO `d_china` VALUES ('510726', '北川羌族自治县', '510700');
INSERT INTO `d_china` VALUES ('510727', '平武县', '510700');
INSERT INTO `d_china` VALUES ('510781', '江油市', '510700');
INSERT INTO `d_china` VALUES ('510800', '广元市', '510000');
INSERT INTO `d_china` VALUES ('510801', '市辖区', '510800');
INSERT INTO `d_china` VALUES ('510802', '市中区', '510801');
INSERT INTO `d_china` VALUES ('510811', '元坝区', '510801');
INSERT INTO `d_china` VALUES ('510812', '朝天区', '510801');
INSERT INTO `d_china` VALUES ('510821', '旺苍县', '510800');
INSERT INTO `d_china` VALUES ('510822', '青川县', '510800');
INSERT INTO `d_china` VALUES ('510823', '剑阁县', '510800');
INSERT INTO `d_china` VALUES ('510824', '苍溪县', '510800');
INSERT INTO `d_china` VALUES ('510900', '遂宁市', '510000');
INSERT INTO `d_china` VALUES ('510901', '市辖区', '510900');
INSERT INTO `d_china` VALUES ('510903', '船山区', '510901');
INSERT INTO `d_china` VALUES ('510904', '安居区', '510901');
INSERT INTO `d_china` VALUES ('510921', '蓬溪县', '510900');
INSERT INTO `d_china` VALUES ('510922', '射洪县', '510900');
INSERT INTO `d_china` VALUES ('510923', '大英县', '510900');
INSERT INTO `d_china` VALUES ('511000', '内江市', '510000');
INSERT INTO `d_china` VALUES ('511001', '市辖区', '511000');
INSERT INTO `d_china` VALUES ('511002', '市中区', '511001');
INSERT INTO `d_china` VALUES ('511011', '东兴区', '511001');
INSERT INTO `d_china` VALUES ('511024', '威远县', '511000');
INSERT INTO `d_china` VALUES ('511025', '资中县', '511000');
INSERT INTO `d_china` VALUES ('511028', '隆昌县', '511000');
INSERT INTO `d_china` VALUES ('511100', '乐山市', '510000');
INSERT INTO `d_china` VALUES ('511101', '市辖区', '511100');
INSERT INTO `d_china` VALUES ('511102', '市中区', '511101');
INSERT INTO `d_china` VALUES ('511111', '沙湾区', '511101');
INSERT INTO `d_china` VALUES ('511112', '五通桥区', '511101');
INSERT INTO `d_china` VALUES ('511113', '金口河区', '511101');
INSERT INTO `d_china` VALUES ('511123', '犍为县', '511100');
INSERT INTO `d_china` VALUES ('511124', '井研县', '511100');
INSERT INTO `d_china` VALUES ('511126', '夹江县', '511100');
INSERT INTO `d_china` VALUES ('511129', '沐川县', '511100');
INSERT INTO `d_china` VALUES ('511132', '峨边彝族自治县', '511100');
INSERT INTO `d_china` VALUES ('511133', '马边彝族自治县', '511100');
INSERT INTO `d_china` VALUES ('511181', '峨眉山市', '511100');
INSERT INTO `d_china` VALUES ('511300', '南充市', '510000');
INSERT INTO `d_china` VALUES ('511301', '市辖区', '511300');
INSERT INTO `d_china` VALUES ('511302', '顺庆区', '511301');
INSERT INTO `d_china` VALUES ('511303', '高坪区', '511301');
INSERT INTO `d_china` VALUES ('511304', '嘉陵区', '511301');
INSERT INTO `d_china` VALUES ('511321', '南部县', '511300');
INSERT INTO `d_china` VALUES ('511322', '营山县', '511300');
INSERT INTO `d_china` VALUES ('511323', '蓬安县', '511300');
INSERT INTO `d_china` VALUES ('511324', '仪陇县', '511300');
INSERT INTO `d_china` VALUES ('511325', '西充县', '511300');
INSERT INTO `d_china` VALUES ('511381', '阆中市', '511300');
INSERT INTO `d_china` VALUES ('511400', '眉山市', '510000');
INSERT INTO `d_china` VALUES ('511401', '市辖区', '511400');
INSERT INTO `d_china` VALUES ('511402', '东坡区', '511401');
INSERT INTO `d_china` VALUES ('511421', '仁寿县', '511400');
INSERT INTO `d_china` VALUES ('511422', '彭山县', '511400');
INSERT INTO `d_china` VALUES ('511423', '洪雅县', '511400');
INSERT INTO `d_china` VALUES ('511424', '丹棱县', '511400');
INSERT INTO `d_china` VALUES ('511425', '青神县', '511400');
INSERT INTO `d_china` VALUES ('511500', '宜宾市', '510000');
INSERT INTO `d_china` VALUES ('511501', '市辖区', '511500');
INSERT INTO `d_china` VALUES ('511502', '翠屏区', '511500');
INSERT INTO `d_china` VALUES ('511521', '宜宾县', '511500');
INSERT INTO `d_china` VALUES ('511522', '南溪县', '511500');
INSERT INTO `d_china` VALUES ('511523', '江安县', '511500');
INSERT INTO `d_china` VALUES ('511524', '长宁县', '511500');
INSERT INTO `d_china` VALUES ('511525', '高县', '511500');
INSERT INTO `d_china` VALUES ('511526', '珙县', '511500');
INSERT INTO `d_china` VALUES ('511527', '筠连县', '511500');
INSERT INTO `d_china` VALUES ('511528', '兴文县', '511500');
INSERT INTO `d_china` VALUES ('511529', '屏山县', '511500');
INSERT INTO `d_china` VALUES ('511600', '广安市', '510000');
INSERT INTO `d_china` VALUES ('511601', '市辖区', '511600');
INSERT INTO `d_china` VALUES ('511602', '广安区', '511601');
INSERT INTO `d_china` VALUES ('511621', '岳池县', '511600');
INSERT INTO `d_china` VALUES ('511622', '武胜县', '511600');
INSERT INTO `d_china` VALUES ('511623', '邻水县', '511600');
INSERT INTO `d_china` VALUES ('511681', '华蓥市', '511600');
INSERT INTO `d_china` VALUES ('511682', '广安区', '511600');
INSERT INTO `d_china` VALUES ('511700', '达州市', '510000');
INSERT INTO `d_china` VALUES ('511701', '市辖区', '511700');
INSERT INTO `d_china` VALUES ('511702', '通川区', '511701');
INSERT INTO `d_china` VALUES ('511721', '达川区', '511700');
INSERT INTO `d_china` VALUES ('511722', '宣汉县', '511700');
INSERT INTO `d_china` VALUES ('511723', '开江县', '511700');
INSERT INTO `d_china` VALUES ('511724', '大竹县', '511700');
INSERT INTO `d_china` VALUES ('511725', '渠县', '511700');
INSERT INTO `d_china` VALUES ('511781', '万源市', '511700');
INSERT INTO `d_china` VALUES ('511800', '雅安市', '510000');
INSERT INTO `d_china` VALUES ('511801', '雨城区', '511800');
INSERT INTO `d_china` VALUES ('511802', '雨城区', '511801');
INSERT INTO `d_china` VALUES ('511821', '名山区', '511800');
INSERT INTO `d_china` VALUES ('511822', '荥经县', '511800');
INSERT INTO `d_china` VALUES ('511823', '汉源县', '511800');
INSERT INTO `d_china` VALUES ('511824', '石棉县', '511800');
INSERT INTO `d_china` VALUES ('511825', '天全县', '511800');
INSERT INTO `d_china` VALUES ('511826', '芦山县', '511800');
INSERT INTO `d_china` VALUES ('511827', '宝兴县', '511800');
INSERT INTO `d_china` VALUES ('511900', '巴中市', '510000');
INSERT INTO `d_china` VALUES ('511901', '市辖区', '511900');
INSERT INTO `d_china` VALUES ('511902', '巴州区', '511901');
INSERT INTO `d_china` VALUES ('511921', '通江县', '511900');
INSERT INTO `d_china` VALUES ('511922', '南江县', '511900');
INSERT INTO `d_china` VALUES ('511923', '平昌县', '511900');
INSERT INTO `d_china` VALUES ('512000', '资阳市', '510000');
INSERT INTO `d_china` VALUES ('512001', '市辖区', '512000');
INSERT INTO `d_china` VALUES ('512002', '雁江区', '512001');
INSERT INTO `d_china` VALUES ('512021', '安岳县', '512000');
INSERT INTO `d_china` VALUES ('512022', '乐至县', '512000');
INSERT INTO `d_china` VALUES ('512081', '简阳市', '512000');
INSERT INTO `d_china` VALUES ('513200', '阿坝藏族羌族自治州', '510000');
INSERT INTO `d_china` VALUES ('513221', '汶川县', '513200');
INSERT INTO `d_china` VALUES ('513222', '理县', '513200');
INSERT INTO `d_china` VALUES ('513223', '茂县', '513200');
INSERT INTO `d_china` VALUES ('513224', '松潘县', '513200');
INSERT INTO `d_china` VALUES ('513225', '九寨沟县', '513200');
INSERT INTO `d_china` VALUES ('513226', '金川县', '513200');
INSERT INTO `d_china` VALUES ('513227', '小金县', '513200');
INSERT INTO `d_china` VALUES ('513228', '黑水县', '513200');
INSERT INTO `d_china` VALUES ('513229', '马尔康县', '513200');
INSERT INTO `d_china` VALUES ('513230', '壤塘县', '513200');
INSERT INTO `d_china` VALUES ('513231', '阿坝县', '513200');
INSERT INTO `d_china` VALUES ('513232', '若尔盖县', '513200');
INSERT INTO `d_china` VALUES ('513233', '红原县', '513200');
INSERT INTO `d_china` VALUES ('513300', '甘孜藏族自治州', '510000');
INSERT INTO `d_china` VALUES ('513321', '康定县', '513300');
INSERT INTO `d_china` VALUES ('513322', '泸定县', '513300');
INSERT INTO `d_china` VALUES ('513323', '丹巴县', '513300');
INSERT INTO `d_china` VALUES ('513324', '九龙县', '513300');
INSERT INTO `d_china` VALUES ('513325', '雅江县', '513300');
INSERT INTO `d_china` VALUES ('513326', '道孚县', '513300');
INSERT INTO `d_china` VALUES ('513327', '炉霍县', '513300');
INSERT INTO `d_china` VALUES ('513328', '甘孜县', '513300');
INSERT INTO `d_china` VALUES ('513329', '新龙县', '513300');
INSERT INTO `d_china` VALUES ('513330', '德格县', '513300');
INSERT INTO `d_china` VALUES ('513331', '白玉县', '513300');
INSERT INTO `d_china` VALUES ('513332', '石渠县', '513300');
INSERT INTO `d_china` VALUES ('513333', '色达县', '513300');
INSERT INTO `d_china` VALUES ('513334', '理塘县', '513300');
INSERT INTO `d_china` VALUES ('513335', '巴塘县', '513300');
INSERT INTO `d_china` VALUES ('513336', '乡城县', '513300');
INSERT INTO `d_china` VALUES ('513337', '稻城县', '513300');
INSERT INTO `d_china` VALUES ('513338', '得荣县', '513300');
INSERT INTO `d_china` VALUES ('513400', '凉山彝族自治州', '510000');
INSERT INTO `d_china` VALUES ('513401', '西昌市', '513400');
INSERT INTO `d_china` VALUES ('513422', '木里藏族自治县', '513400');
INSERT INTO `d_china` VALUES ('513423', '盐源县', '513400');
INSERT INTO `d_china` VALUES ('513424', '德昌县', '513400');
INSERT INTO `d_china` VALUES ('513425', '会理县', '513400');
INSERT INTO `d_china` VALUES ('513426', '会东县', '513400');
INSERT INTO `d_china` VALUES ('513427', '宁南县', '513400');
INSERT INTO `d_china` VALUES ('513428', '普格县', '513400');
INSERT INTO `d_china` VALUES ('513429', '布拖县', '513400');
INSERT INTO `d_china` VALUES ('513430', '金阳县', '513400');
INSERT INTO `d_china` VALUES ('513431', '昭觉县', '513400');
INSERT INTO `d_china` VALUES ('513432', '喜德县', '513400');
INSERT INTO `d_china` VALUES ('513433', '冕宁县', '513400');
INSERT INTO `d_china` VALUES ('513434', '越西县', '513400');
INSERT INTO `d_china` VALUES ('513435', '甘洛县', '513400');
INSERT INTO `d_china` VALUES ('513436', '美姑县', '513400');
INSERT INTO `d_china` VALUES ('513437', '雷波县', '513400');
INSERT INTO `d_china` VALUES ('520000', '贵州省', '0');
INSERT INTO `d_china` VALUES ('520100', '贵阳市', '520000');
INSERT INTO `d_china` VALUES ('520101', '市辖区', '520100');
INSERT INTO `d_china` VALUES ('520102', '南明区', '520101');
INSERT INTO `d_china` VALUES ('520103', '云岩区', '520101');
INSERT INTO `d_china` VALUES ('520111', '花溪区', '520101');
INSERT INTO `d_china` VALUES ('520112', '乌当区', '520100');
INSERT INTO `d_china` VALUES ('520113', '白云区', '520101');
INSERT INTO `d_china` VALUES ('520114', '小河区', '520101');
INSERT INTO `d_china` VALUES ('520121', '开阳县', '520100');
INSERT INTO `d_china` VALUES ('520122', '息烽县', '520100');
INSERT INTO `d_china` VALUES ('520123', '修文县', '520100');
INSERT INTO `d_china` VALUES ('520181', '清镇市', '520100');
INSERT INTO `d_china` VALUES ('520200', '六盘水市', '520000');
INSERT INTO `d_china` VALUES ('520201', '钟山区', '520200');
INSERT INTO `d_china` VALUES ('520203', '六枝特区', '520200');
INSERT INTO `d_china` VALUES ('520221', '水城县', '520200');
INSERT INTO `d_china` VALUES ('520222', '盘县', '520200');
INSERT INTO `d_china` VALUES ('520300', '遵义市', '520000');
INSERT INTO `d_china` VALUES ('520301', '市辖区', '520300');
INSERT INTO `d_china` VALUES ('520302', '红花岗区', '520301');
INSERT INTO `d_china` VALUES ('520303', '汇川区', '520301');
INSERT INTO `d_china` VALUES ('520321', '遵义县', '520300');
INSERT INTO `d_china` VALUES ('520322', '桐梓县', '520300');
INSERT INTO `d_china` VALUES ('520323', '绥阳县', '520300');
INSERT INTO `d_china` VALUES ('520324', '正安县', '520300');
INSERT INTO `d_china` VALUES ('520325', '道真仡佬族苗族自治县', '520300');
INSERT INTO `d_china` VALUES ('520326', '务川仡佬族苗族自治县', '520300');
INSERT INTO `d_china` VALUES ('520327', '凤冈县', '520300');
INSERT INTO `d_china` VALUES ('520328', '湄潭县', '520300');
INSERT INTO `d_china` VALUES ('520329', '余庆县', '520300');
INSERT INTO `d_china` VALUES ('520330', '习水县', '520300');
INSERT INTO `d_china` VALUES ('520381', '赤水市', '520300');
INSERT INTO `d_china` VALUES ('520382', '仁怀市', '520300');
INSERT INTO `d_china` VALUES ('520400', '安顺市', '520000');
INSERT INTO `d_china` VALUES ('520401', '市辖区', '520400');
INSERT INTO `d_china` VALUES ('520402', '西秀区', '520401');
INSERT INTO `d_china` VALUES ('520421', '平坝县', '520400');
INSERT INTO `d_china` VALUES ('520422', '普定县', '520400');
INSERT INTO `d_china` VALUES ('520423', '镇宁布依族苗族自治县', '520400');
INSERT INTO `d_china` VALUES ('520424', '关岭布依族苗族自治县', '520400');
INSERT INTO `d_china` VALUES ('520425', '紫云苗族布依族自治县', '520400');
INSERT INTO `d_china` VALUES ('522200', '铜仁市', '520000');
INSERT INTO `d_china` VALUES ('522201', '碧江区', '522200');
INSERT INTO `d_china` VALUES ('522222', '江口县', '522200');
INSERT INTO `d_china` VALUES ('522223', '玉屏侗族自治县', '522200');
INSERT INTO `d_china` VALUES ('522224', '石阡县', '522200');
INSERT INTO `d_china` VALUES ('522225', '思南县', '522200');
INSERT INTO `d_china` VALUES ('522226', '印江土家族苗族自治县', '522200');
INSERT INTO `d_china` VALUES ('522227', '德江县', '522200');
INSERT INTO `d_china` VALUES ('522228', '沿河土家族自治县', '522200');
INSERT INTO `d_china` VALUES ('522229', '松桃苗族自治县', '522200');
INSERT INTO `d_china` VALUES ('522230', '万山区', '522200');
INSERT INTO `d_china` VALUES ('522300', '黔西南布依族苗族自治州', '520000');
INSERT INTO `d_china` VALUES ('522301', '兴义市', '522300');
INSERT INTO `d_china` VALUES ('522322', '兴仁县', '522300');
INSERT INTO `d_china` VALUES ('522323', '普安县', '522300');
INSERT INTO `d_china` VALUES ('522324', '晴隆县', '522300');
INSERT INTO `d_china` VALUES ('522325', '贞丰县', '522300');
INSERT INTO `d_china` VALUES ('522326', '望谟县', '522300');
INSERT INTO `d_china` VALUES ('522327', '册亨县', '522300');
INSERT INTO `d_china` VALUES ('522328', '安龙县', '522300');
INSERT INTO `d_china` VALUES ('522400', '毕节市', '520000');
INSERT INTO `d_china` VALUES ('522401', '七星关区', '522400');
INSERT INTO `d_china` VALUES ('522422', '大方县', '522400');
INSERT INTO `d_china` VALUES ('522423', '黔西县', '522400');
INSERT INTO `d_china` VALUES ('522424', '金沙县', '522400');
INSERT INTO `d_china` VALUES ('522425', '织金县', '522400');
INSERT INTO `d_china` VALUES ('522426', '纳雍县', '522400');
INSERT INTO `d_china` VALUES ('522427', '威宁彝族回族苗族自治县', '522400');
INSERT INTO `d_china` VALUES ('522428', '赫章县', '522400');
INSERT INTO `d_china` VALUES ('522600', '黔东南苗族侗族自治州', '520000');
INSERT INTO `d_china` VALUES ('522601', '凯里市', '522600');
INSERT INTO `d_china` VALUES ('522622', '黄平县', '522600');
INSERT INTO `d_china` VALUES ('522623', '施秉县', '522600');
INSERT INTO `d_china` VALUES ('522624', '三穗县', '522600');
INSERT INTO `d_china` VALUES ('522625', '镇远县', '522600');
INSERT INTO `d_china` VALUES ('522626', '岑巩县', '522600');
INSERT INTO `d_china` VALUES ('522627', '天柱县', '522600');
INSERT INTO `d_china` VALUES ('522628', '锦屏县', '522600');
INSERT INTO `d_china` VALUES ('522629', '剑河县', '522600');
INSERT INTO `d_china` VALUES ('522630', '台江县', '522600');
INSERT INTO `d_china` VALUES ('522631', '黎平县', '522600');
INSERT INTO `d_china` VALUES ('522632', '榕江县', '522600');
INSERT INTO `d_china` VALUES ('522633', '从江县', '522600');
INSERT INTO `d_china` VALUES ('522634', '雷山县', '522600');
INSERT INTO `d_china` VALUES ('522635', '麻江县', '522600');
INSERT INTO `d_china` VALUES ('522636', '丹寨县', '522600');
INSERT INTO `d_china` VALUES ('522700', '黔南布依族苗族自治州', '520000');
INSERT INTO `d_china` VALUES ('522701', '都匀市', '522700');
INSERT INTO `d_china` VALUES ('522702', '福泉市', '522700');
INSERT INTO `d_china` VALUES ('522722', '荔波县', '522700');
INSERT INTO `d_china` VALUES ('522723', '贵定县', '522700');
INSERT INTO `d_china` VALUES ('522725', '瓮安县', '522700');
INSERT INTO `d_china` VALUES ('522726', '独山县', '522700');
INSERT INTO `d_china` VALUES ('522727', '平塘县', '522700');
INSERT INTO `d_china` VALUES ('522728', '罗甸县', '522700');
INSERT INTO `d_china` VALUES ('522729', '长顺县', '522700');
INSERT INTO `d_china` VALUES ('522730', '龙里县', '522700');
INSERT INTO `d_china` VALUES ('522731', '惠水县', '522700');
INSERT INTO `d_china` VALUES ('522732', '三都水族自治县', '522700');
INSERT INTO `d_china` VALUES ('530000', '云南省', '0');
INSERT INTO `d_china` VALUES ('530100', '昆明市', '530000');
INSERT INTO `d_china` VALUES ('530101', '市辖区', '530100');
INSERT INTO `d_china` VALUES ('530102', '五华区', '530101');
INSERT INTO `d_china` VALUES ('530103', '盘龙区', '530101');
INSERT INTO `d_china` VALUES ('530111', '官渡区', '530101');
INSERT INTO `d_china` VALUES ('530112', '西山区', '530101');
INSERT INTO `d_china` VALUES ('530113', '东川区', '530101');
INSERT INTO `d_china` VALUES ('530121', '呈贡县', '530100');
INSERT INTO `d_china` VALUES ('530122', '晋宁县', '530100');
INSERT INTO `d_china` VALUES ('530124', '富民县', '530100');
INSERT INTO `d_china` VALUES ('530125', '宜良县', '530100');
INSERT INTO `d_china` VALUES ('530126', '石林彝族自治县', '530100');
INSERT INTO `d_china` VALUES ('530127', '嵩明县', '530100');
INSERT INTO `d_china` VALUES ('530128', '禄劝彝族苗族自治县', '530100');
INSERT INTO `d_china` VALUES ('530129', '寻甸回族彝族自治县', '530100');
INSERT INTO `d_china` VALUES ('530181', '安宁市', '530100');
INSERT INTO `d_china` VALUES ('530300', '曲靖市', '530000');
INSERT INTO `d_china` VALUES ('530301', '市辖区', '530300');
INSERT INTO `d_china` VALUES ('530302', '麒麟区', '530301');
INSERT INTO `d_china` VALUES ('530321', '马龙县', '530300');
INSERT INTO `d_china` VALUES ('530322', '陆良县', '530300');
INSERT INTO `d_china` VALUES ('530323', '师宗县', '530300');
INSERT INTO `d_china` VALUES ('530324', '罗平县', '530300');
INSERT INTO `d_china` VALUES ('530325', '富源县', '530300');
INSERT INTO `d_china` VALUES ('530326', '会泽县', '530300');
INSERT INTO `d_china` VALUES ('530328', '沾益县', '530300');
INSERT INTO `d_china` VALUES ('530381', '宣威市', '530300');
INSERT INTO `d_china` VALUES ('530400', '玉溪市', '530000');
INSERT INTO `d_china` VALUES ('530401', '市辖区', '530400');
INSERT INTO `d_china` VALUES ('530402', '红塔区', '530401');
INSERT INTO `d_china` VALUES ('530421', '江川县', '530400');
INSERT INTO `d_china` VALUES ('530422', '澄江县', '530400');
INSERT INTO `d_china` VALUES ('530423', '通海县', '530400');
INSERT INTO `d_china` VALUES ('530424', '华宁县', '530400');
INSERT INTO `d_china` VALUES ('530425', '易门县', '530400');
INSERT INTO `d_china` VALUES ('530426', '峨山彝族自治县', '530400');
INSERT INTO `d_china` VALUES ('530427', '新平彝族傣族自治县', '530400');
INSERT INTO `d_china` VALUES ('530428', '元江哈尼族彝族傣族自治县', '530400');
INSERT INTO `d_china` VALUES ('530500', '保山市', '530000');
INSERT INTO `d_china` VALUES ('530501', '市辖区', '530500');
INSERT INTO `d_china` VALUES ('530502', '隆阳区', '530500');
INSERT INTO `d_china` VALUES ('530521', '施甸县', '530500');
INSERT INTO `d_china` VALUES ('530522', '腾冲县', '530500');
INSERT INTO `d_china` VALUES ('530523', '龙陵县', '530500');
INSERT INTO `d_china` VALUES ('530524', '昌宁县', '530500');
INSERT INTO `d_china` VALUES ('530600', '昭通市', '530000');
INSERT INTO `d_china` VALUES ('530601', '市辖区', '530600');
INSERT INTO `d_china` VALUES ('530602', '昭阳区', '530601');
INSERT INTO `d_china` VALUES ('530621', '鲁甸县', '530600');
INSERT INTO `d_china` VALUES ('530622', '巧家县', '530600');
INSERT INTO `d_china` VALUES ('530623', '盐津县', '530600');
INSERT INTO `d_china` VALUES ('530624', '大关县', '530600');
INSERT INTO `d_china` VALUES ('530625', '永善县', '530600');
INSERT INTO `d_china` VALUES ('530626', '绥江县', '530600');
INSERT INTO `d_china` VALUES ('530627', '镇雄县', '530600');
INSERT INTO `d_china` VALUES ('530628', '彝良县', '530600');
INSERT INTO `d_china` VALUES ('530629', '威信县', '530600');
INSERT INTO `d_china` VALUES ('530630', '水富县', '530600');
INSERT INTO `d_china` VALUES ('530700', '丽江市', '530000');
INSERT INTO `d_china` VALUES ('530701', '市辖区', '530700');
INSERT INTO `d_china` VALUES ('530702', '古城区', '530701');
INSERT INTO `d_china` VALUES ('530721', '玉龙纳西族自治县', '530700');
INSERT INTO `d_china` VALUES ('530722', '永胜县', '530700');
INSERT INTO `d_china` VALUES ('530723', '华坪县', '530700');
INSERT INTO `d_china` VALUES ('530724', '宁蒗彝族自治县', '530700');
INSERT INTO `d_china` VALUES ('530800', '普洱市', '530000');
INSERT INTO `d_china` VALUES ('530801', '市辖区', '530800');
INSERT INTO `d_china` VALUES ('530802', '翠云区', '530801');
INSERT INTO `d_china` VALUES ('530821', '宁洱哈尼族彝族自治县', '530800');
INSERT INTO `d_china` VALUES ('530822', '墨江哈尼族自治县', '530800');
INSERT INTO `d_china` VALUES ('530823', '景东彝族自治县', '530800');
INSERT INTO `d_china` VALUES ('530824', '景谷傣族彝族自治县', '530800');
INSERT INTO `d_china` VALUES ('530825', '镇沅彝族哈尼族拉祜族自治县', '530800');
INSERT INTO `d_china` VALUES ('530826', '江城哈尼族彝族自治县', '530800');
INSERT INTO `d_china` VALUES ('530827', '孟连傣族拉祜族佤族自治县', '530800');
INSERT INTO `d_china` VALUES ('530828', '澜沧拉祜族自治县', '530800');
INSERT INTO `d_china` VALUES ('530829', '西盟佤族自治县', '530800');
INSERT INTO `d_china` VALUES ('530900', '临沧市', '530000');
INSERT INTO `d_china` VALUES ('530901', '市辖区', '530900');
INSERT INTO `d_china` VALUES ('530902', '临翔区', '530901');
INSERT INTO `d_china` VALUES ('530921', '凤庆县', '530900');
INSERT INTO `d_china` VALUES ('530922', '云县', '530900');
INSERT INTO `d_china` VALUES ('530923', '永德县', '530900');
INSERT INTO `d_china` VALUES ('530924', '镇康县', '530900');
INSERT INTO `d_china` VALUES ('530925', '双江拉祜族佤族布朗族傣族自治县', '530900');
INSERT INTO `d_china` VALUES ('530926', '耿马傣族佤族自治县', '530900');
INSERT INTO `d_china` VALUES ('530927', '沧源佤族自治县', '530900');
INSERT INTO `d_china` VALUES ('532300', '楚雄彝族自治州', '530000');
INSERT INTO `d_china` VALUES ('532301', '楚雄市', '532300');
INSERT INTO `d_china` VALUES ('532322', '双柏县', '532300');
INSERT INTO `d_china` VALUES ('532323', '牟定县', '532300');
INSERT INTO `d_china` VALUES ('532324', '南华县', '532300');
INSERT INTO `d_china` VALUES ('532325', '姚安县', '532300');
INSERT INTO `d_china` VALUES ('532326', '大姚县', '532300');
INSERT INTO `d_china` VALUES ('532327', '永仁县', '532300');
INSERT INTO `d_china` VALUES ('532328', '元谋县', '532300');
INSERT INTO `d_china` VALUES ('532329', '武定县', '532300');
INSERT INTO `d_china` VALUES ('532331', '禄丰县', '532300');
INSERT INTO `d_china` VALUES ('532500', '红河哈尼族彝族自治州', '530000');
INSERT INTO `d_china` VALUES ('532501', '个旧市', '532500');
INSERT INTO `d_china` VALUES ('532502', '开远市', '532500');
INSERT INTO `d_china` VALUES ('532522', '蒙自市', '532500');
INSERT INTO `d_china` VALUES ('532523', '屏边苗族自治县', '532500');
INSERT INTO `d_china` VALUES ('532524', '建水县', '532500');
INSERT INTO `d_china` VALUES ('532525', '石屏县', '532500');
INSERT INTO `d_china` VALUES ('532526', '弥勒市', '532500');
INSERT INTO `d_china` VALUES ('532527', '泸西县', '532500');
INSERT INTO `d_china` VALUES ('532528', '元阳县', '532500');
INSERT INTO `d_china` VALUES ('532529', '红河县', '532500');
INSERT INTO `d_china` VALUES ('532530', '金平苗族瑶族傣族自治县', '532500');
INSERT INTO `d_china` VALUES ('532531', '绿春县', '532500');
INSERT INTO `d_china` VALUES ('532532', '河口瑶族自治县', '532500');
INSERT INTO `d_china` VALUES ('532600', '文山壮族苗族自治州', '530000');
INSERT INTO `d_china` VALUES ('532621', '文山市', '532600');
INSERT INTO `d_china` VALUES ('532622', '砚山县', '532600');
INSERT INTO `d_china` VALUES ('532623', '西畴县', '532600');
INSERT INTO `d_china` VALUES ('532624', '麻栗坡县', '532600');
INSERT INTO `d_china` VALUES ('532625', '马关县', '532600');
INSERT INTO `d_china` VALUES ('532626', '丘北县', '532600');
INSERT INTO `d_china` VALUES ('532627', '广南县', '532600');
INSERT INTO `d_china` VALUES ('532628', '富宁县', '532600');
INSERT INTO `d_china` VALUES ('532800', '西双版纳傣族自治州', '530000');
INSERT INTO `d_china` VALUES ('532801', '景洪市', '532800');
INSERT INTO `d_china` VALUES ('532822', '勐海县', '532800');
INSERT INTO `d_china` VALUES ('532823', '勐腊县', '532800');
INSERT INTO `d_china` VALUES ('532900', '大理白族自治州', '530000');
INSERT INTO `d_china` VALUES ('532901', '大理市', '532900');
INSERT INTO `d_china` VALUES ('532922', '漾濞彝族自治县', '532900');
INSERT INTO `d_china` VALUES ('532923', '祥云县', '532900');
INSERT INTO `d_china` VALUES ('532924', '宾川县', '532900');
INSERT INTO `d_china` VALUES ('532925', '弥渡县', '532900');
INSERT INTO `d_china` VALUES ('532926', '南涧彝族自治县', '532900');
INSERT INTO `d_china` VALUES ('532927', '巍山彝族回族自治县', '532900');
INSERT INTO `d_china` VALUES ('532928', '永平县', '532900');
INSERT INTO `d_china` VALUES ('532929', '云龙县', '532900');
INSERT INTO `d_china` VALUES ('532930', '洱源县', '532900');
INSERT INTO `d_china` VALUES ('532931', '剑川县', '532900');
INSERT INTO `d_china` VALUES ('532932', '鹤庆县', '532900');
INSERT INTO `d_china` VALUES ('533100', '德宏傣族景颇族自治州', '530000');
INSERT INTO `d_china` VALUES ('533102', '瑞丽市', '533100');
INSERT INTO `d_china` VALUES ('533103', '潞西市', '533100');
INSERT INTO `d_china` VALUES ('533122', '梁河县', '533100');
INSERT INTO `d_china` VALUES ('533123', '盈江县', '533100');
INSERT INTO `d_china` VALUES ('533124', '陇川县', '533100');
INSERT INTO `d_china` VALUES ('533300', '怒江傈僳族自治州', '530000');
INSERT INTO `d_china` VALUES ('533321', '泸水县', '533300');
INSERT INTO `d_china` VALUES ('533323', '福贡县', '533300');
INSERT INTO `d_china` VALUES ('533324', '贡山独龙族怒族自治县', '533300');
INSERT INTO `d_china` VALUES ('533325', '兰坪白族普米族自治县', '533300');
INSERT INTO `d_china` VALUES ('533400', '迪庆藏族自治州', '530000');
INSERT INTO `d_china` VALUES ('533421', '香格里拉县', '533400');
INSERT INTO `d_china` VALUES ('533422', '德钦县', '533400');
INSERT INTO `d_china` VALUES ('533423', '维西傈僳族自治县', '533400');
INSERT INTO `d_china` VALUES ('540000', '西藏自治区', '0');
INSERT INTO `d_china` VALUES ('540100', '拉萨市', '540000');
INSERT INTO `d_china` VALUES ('540101', '市辖区', '540100');
INSERT INTO `d_china` VALUES ('540102', '城关区', '540101');
INSERT INTO `d_china` VALUES ('540121', '林周县', '540100');
INSERT INTO `d_china` VALUES ('540122', '当雄县', '540100');
INSERT INTO `d_china` VALUES ('540123', '尼木县', '540100');
INSERT INTO `d_china` VALUES ('540124', '曲水县', '540100');
INSERT INTO `d_china` VALUES ('540125', '堆龙德庆县', '540100');
INSERT INTO `d_china` VALUES ('540126', '达孜县', '540100');
INSERT INTO `d_china` VALUES ('540127', '墨竹工卡县', '540100');
INSERT INTO `d_china` VALUES ('542100', '昌都地区', '540000');
INSERT INTO `d_china` VALUES ('542121', '昌都县', '542100');
INSERT INTO `d_china` VALUES ('542122', '江达县', '542100');
INSERT INTO `d_china` VALUES ('542123', '贡觉县', '542100');
INSERT INTO `d_china` VALUES ('542124', '类乌齐县', '542100');
INSERT INTO `d_china` VALUES ('542125', '丁青县', '542100');
INSERT INTO `d_china` VALUES ('542126', '察雅县', '542100');
INSERT INTO `d_china` VALUES ('542127', '八宿县', '542100');
INSERT INTO `d_china` VALUES ('542128', '左贡县', '542100');
INSERT INTO `d_china` VALUES ('542129', '芒康县', '542100');
INSERT INTO `d_china` VALUES ('542132', '洛隆县', '542100');
INSERT INTO `d_china` VALUES ('542133', '边坝县', '542100');
INSERT INTO `d_china` VALUES ('542200', '山南地区', '540000');
INSERT INTO `d_china` VALUES ('542221', '乃东县', '542200');
INSERT INTO `d_china` VALUES ('542222', '扎囊县', '542200');
INSERT INTO `d_china` VALUES ('542223', '贡嘎县', '542200');
INSERT INTO `d_china` VALUES ('542224', '桑日县', '542200');
INSERT INTO `d_china` VALUES ('542225', '琼结县', '542200');
INSERT INTO `d_china` VALUES ('542226', '曲松县', '542200');
INSERT INTO `d_china` VALUES ('542227', '措美县', '542200');
INSERT INTO `d_china` VALUES ('542228', '洛扎县', '542200');
INSERT INTO `d_china` VALUES ('542229', '加查县', '542200');
INSERT INTO `d_china` VALUES ('542231', '隆子县', '542200');
INSERT INTO `d_china` VALUES ('542232', '错那县', '542200');
INSERT INTO `d_china` VALUES ('542233', '浪卡子县', '542200');
INSERT INTO `d_china` VALUES ('542300', '日喀则地区', '540000');
INSERT INTO `d_china` VALUES ('542301', '日喀则市', '542300');
INSERT INTO `d_china` VALUES ('542322', '南木林县', '542300');
INSERT INTO `d_china` VALUES ('542323', '江孜县', '542300');
INSERT INTO `d_china` VALUES ('542324', '定日县', '542300');
INSERT INTO `d_china` VALUES ('542325', '萨迦县', '542300');
INSERT INTO `d_china` VALUES ('542326', '拉孜县', '542300');
INSERT INTO `d_china` VALUES ('542327', '昂仁县', '542300');
INSERT INTO `d_china` VALUES ('542328', '谢通门县', '542300');
INSERT INTO `d_china` VALUES ('542329', '白朗县', '542300');
INSERT INTO `d_china` VALUES ('542330', '仁布县', '542300');
INSERT INTO `d_china` VALUES ('542331', '康马县', '542300');
INSERT INTO `d_china` VALUES ('542332', '定结县', '542300');
INSERT INTO `d_china` VALUES ('542333', '仲巴县', '542300');
INSERT INTO `d_china` VALUES ('542334', '亚东县', '542300');
INSERT INTO `d_china` VALUES ('542335', '吉隆县', '542300');
INSERT INTO `d_china` VALUES ('542336', '聂拉木县', '542300');
INSERT INTO `d_china` VALUES ('542337', '萨嘎县', '542300');
INSERT INTO `d_china` VALUES ('542338', '岗巴县', '542300');
INSERT INTO `d_china` VALUES ('542400', '那曲地区', '540000');
INSERT INTO `d_china` VALUES ('542421', '那曲县', '542400');
INSERT INTO `d_china` VALUES ('542422', '嘉黎县', '542400');
INSERT INTO `d_china` VALUES ('542423', '比如县', '542400');
INSERT INTO `d_china` VALUES ('542424', '聂荣县', '542400');
INSERT INTO `d_china` VALUES ('542425', '安多县', '542400');
INSERT INTO `d_china` VALUES ('542426', '申扎县', '542400');
INSERT INTO `d_china` VALUES ('542427', '索县', '542400');
INSERT INTO `d_china` VALUES ('542428', '班戈县', '542400');
INSERT INTO `d_china` VALUES ('542429', '巴青县', '542400');
INSERT INTO `d_china` VALUES ('542430', '尼玛县', '542400');
INSERT INTO `d_china` VALUES ('542500', '阿里地区', '540000');
INSERT INTO `d_china` VALUES ('542521', '普兰县', '542500');
INSERT INTO `d_china` VALUES ('542522', '札达县', '542500');
INSERT INTO `d_china` VALUES ('542523', '噶尔县', '542500');
INSERT INTO `d_china` VALUES ('542524', '日土县', '542500');
INSERT INTO `d_china` VALUES ('542525', '革吉县', '542500');
INSERT INTO `d_china` VALUES ('542526', '改则县', '542500');
INSERT INTO `d_china` VALUES ('542527', '措勤县', '542500');
INSERT INTO `d_china` VALUES ('542600', '林芝地区', '540000');
INSERT INTO `d_china` VALUES ('542621', '林芝县', '542600');
INSERT INTO `d_china` VALUES ('542622', '工布江达县', '542600');
INSERT INTO `d_china` VALUES ('542623', '米林县', '542600');
INSERT INTO `d_china` VALUES ('542624', '墨脱县', '542600');
INSERT INTO `d_china` VALUES ('542625', '波密县', '542600');
INSERT INTO `d_china` VALUES ('542626', '察隅县', '542600');
INSERT INTO `d_china` VALUES ('542627', '朗县', '542600');
INSERT INTO `d_china` VALUES ('610000', '陕西省', '0');
INSERT INTO `d_china` VALUES ('610100', '西安市', '610000');
INSERT INTO `d_china` VALUES ('610101', '长安区', '610100');
INSERT INTO `d_china` VALUES ('610102', '新城区', '610100');
INSERT INTO `d_china` VALUES ('610103', '碑林区', '610100');
INSERT INTO `d_china` VALUES ('610104', '莲湖区', '610100');
INSERT INTO `d_china` VALUES ('610111', '灞桥区', '610100');
INSERT INTO `d_china` VALUES ('610112', '未央区', '610100');
INSERT INTO `d_china` VALUES ('610113', '雁塔区', '610100');
INSERT INTO `d_china` VALUES ('610114', '阎良区', '610100');
INSERT INTO `d_china` VALUES ('610115', '临潼区', '610100');
INSERT INTO `d_china` VALUES ('610122', '蓝田县', '610100');
INSERT INTO `d_china` VALUES ('610124', '周至县', '610100');
INSERT INTO `d_china` VALUES ('610125', '户县', '610100');
INSERT INTO `d_china` VALUES ('610126', '高陵县', '610100');
INSERT INTO `d_china` VALUES ('610200', '铜川市', '610000');
INSERT INTO `d_china` VALUES ('610201', '市辖区', '610200');
INSERT INTO `d_china` VALUES ('610202', '王益区', '610201');
INSERT INTO `d_china` VALUES ('610203', '印台区', '610201');
INSERT INTO `d_china` VALUES ('610204', '耀州区', '610201');
INSERT INTO `d_china` VALUES ('610222', '宜君县', '610200');
INSERT INTO `d_china` VALUES ('610300', '宝鸡市', '610000');
INSERT INTO `d_china` VALUES ('610301', '市辖区', '610300');
INSERT INTO `d_china` VALUES ('610302', '渭滨区', '610301');
INSERT INTO `d_china` VALUES ('610303', '金台区', '610301');
INSERT INTO `d_china` VALUES ('610304', '陈仓区', '610301');
INSERT INTO `d_china` VALUES ('610322', '凤翔县', '610300');
INSERT INTO `d_china` VALUES ('610323', '岐山县', '610300');
INSERT INTO `d_china` VALUES ('610324', '扶风县', '610300');
INSERT INTO `d_china` VALUES ('610326', '眉县', '610300');
INSERT INTO `d_china` VALUES ('610327', '陇县', '610300');
INSERT INTO `d_china` VALUES ('610328', '千阳县', '610300');
INSERT INTO `d_china` VALUES ('610329', '麟游县', '610300');
INSERT INTO `d_china` VALUES ('610330', '凤县', '610300');
INSERT INTO `d_china` VALUES ('610331', '太白县', '610300');
INSERT INTO `d_china` VALUES ('610400', '咸阳市', '610000');
INSERT INTO `d_china` VALUES ('610401', '市辖区', '610400');
INSERT INTO `d_china` VALUES ('610402', '秦都区', '610401');
INSERT INTO `d_china` VALUES ('610404', '渭城区', '610401');
INSERT INTO `d_china` VALUES ('610422', '三原县', '610400');
INSERT INTO `d_china` VALUES ('610423', '泾阳县', '610400');
INSERT INTO `d_china` VALUES ('610424', '乾县', '610400');
INSERT INTO `d_china` VALUES ('610425', '礼泉县', '610400');
INSERT INTO `d_china` VALUES ('610426', '永寿县', '610400');
INSERT INTO `d_china` VALUES ('610427', '彬县', '610400');
INSERT INTO `d_china` VALUES ('610428', '长武县', '610400');
INSERT INTO `d_china` VALUES ('610429', '旬邑县', '610400');
INSERT INTO `d_china` VALUES ('610430', '淳化县', '610400');
INSERT INTO `d_china` VALUES ('610431', '武功县', '610400');
INSERT INTO `d_china` VALUES ('610481', '兴平市', '610400');
INSERT INTO `d_china` VALUES ('610500', '渭南市', '610000');
INSERT INTO `d_china` VALUES ('610501', '市辖区', '610500');
INSERT INTO `d_china` VALUES ('610502', '临渭区', '610501');
INSERT INTO `d_china` VALUES ('610521', '华县', '610500');
INSERT INTO `d_china` VALUES ('610522', '潼关县', '610500');
INSERT INTO `d_china` VALUES ('610523', '大荔县', '610500');
INSERT INTO `d_china` VALUES ('610524', '合阳县', '610500');
INSERT INTO `d_china` VALUES ('610525', '澄城县', '610500');
INSERT INTO `d_china` VALUES ('610526', '蒲城县', '610500');
INSERT INTO `d_china` VALUES ('610527', '白水县', '610500');
INSERT INTO `d_china` VALUES ('610528', '富平县', '610500');
INSERT INTO `d_china` VALUES ('610581', '韩城市', '610500');
INSERT INTO `d_china` VALUES ('610582', '华阴市', '610500');
INSERT INTO `d_china` VALUES ('610600', '延安市', '610000');
INSERT INTO `d_china` VALUES ('610601', '市辖区', '610600');
INSERT INTO `d_china` VALUES ('610602', '宝塔区', '610601');
INSERT INTO `d_china` VALUES ('610621', '延长县', '610600');
INSERT INTO `d_china` VALUES ('610622', '延川县', '610600');
INSERT INTO `d_china` VALUES ('610623', '子长县', '610600');
INSERT INTO `d_china` VALUES ('610624', '安塞县', '610600');
INSERT INTO `d_china` VALUES ('610625', '志丹县', '610600');
INSERT INTO `d_china` VALUES ('610626', '吴起县', '610600');
INSERT INTO `d_china` VALUES ('610627', '甘泉县', '610600');
INSERT INTO `d_china` VALUES ('610628', '富县', '610600');
INSERT INTO `d_china` VALUES ('610629', '洛川县', '610600');
INSERT INTO `d_china` VALUES ('610630', '宜川县', '610600');
INSERT INTO `d_china` VALUES ('610631', '黄龙县', '610600');
INSERT INTO `d_china` VALUES ('610632', '黄陵县', '610600');
INSERT INTO `d_china` VALUES ('610700', '汉中市', '610000');
INSERT INTO `d_china` VALUES ('610701', '市辖区', '610700');
INSERT INTO `d_china` VALUES ('610702', '汉台区', '610701');
INSERT INTO `d_china` VALUES ('610721', '南郑县', '610700');
INSERT INTO `d_china` VALUES ('610722', '城固县', '610700');
INSERT INTO `d_china` VALUES ('610723', '洋县', '610700');
INSERT INTO `d_china` VALUES ('610724', '西乡县', '610700');
INSERT INTO `d_china` VALUES ('610725', '勉县', '610700');
INSERT INTO `d_china` VALUES ('610726', '宁强县', '610700');
INSERT INTO `d_china` VALUES ('610727', '略阳县', '610700');
INSERT INTO `d_china` VALUES ('610728', '镇巴县', '610700');
INSERT INTO `d_china` VALUES ('610729', '留坝县', '610700');
INSERT INTO `d_china` VALUES ('610730', '佛坪县', '610700');
INSERT INTO `d_china` VALUES ('610800', '榆林市', '610000');
INSERT INTO `d_china` VALUES ('610801', '市辖区', '610800');
INSERT INTO `d_china` VALUES ('610802', '榆阳区', '610800');
INSERT INTO `d_china` VALUES ('610821', '神木县', '610800');
INSERT INTO `d_china` VALUES ('610822', '府谷县', '610800');
INSERT INTO `d_china` VALUES ('610823', '横山县', '610800');
INSERT INTO `d_china` VALUES ('610824', '靖边县', '610800');
INSERT INTO `d_china` VALUES ('610825', '定边县', '610800');
INSERT INTO `d_china` VALUES ('610826', '绥德县', '610800');
INSERT INTO `d_china` VALUES ('610827', '米脂县', '610800');
INSERT INTO `d_china` VALUES ('610828', '佳县', '610800');
INSERT INTO `d_china` VALUES ('610829', '吴堡县', '610800');
INSERT INTO `d_china` VALUES ('610830', '清涧县', '610800');
INSERT INTO `d_china` VALUES ('610831', '子洲县', '610800');
INSERT INTO `d_china` VALUES ('610900', '安康市', '610000');
INSERT INTO `d_china` VALUES ('610901', '市辖区', '610900');
INSERT INTO `d_china` VALUES ('610902', '汉滨区', '610901');
INSERT INTO `d_china` VALUES ('610921', '汉阴县', '610900');
INSERT INTO `d_china` VALUES ('610922', '石泉县', '610900');
INSERT INTO `d_china` VALUES ('610923', '宁陕县', '610900');
INSERT INTO `d_china` VALUES ('610924', '紫阳县', '610900');
INSERT INTO `d_china` VALUES ('610925', '岚皋县', '610900');
INSERT INTO `d_china` VALUES ('610926', '平利县', '610900');
INSERT INTO `d_china` VALUES ('610927', '镇坪县', '610900');
INSERT INTO `d_china` VALUES ('610928', '旬阳县', '610900');
INSERT INTO `d_china` VALUES ('610929', '白河县', '610900');
INSERT INTO `d_china` VALUES ('611000', '商洛市', '610000');
INSERT INTO `d_china` VALUES ('611001', '市辖区', '611000');
INSERT INTO `d_china` VALUES ('611002', '商州区', '611001');
INSERT INTO `d_china` VALUES ('611021', '洛南县', '611000');
INSERT INTO `d_china` VALUES ('611022', '丹凤县', '611000');
INSERT INTO `d_china` VALUES ('611023', '商南县', '611000');
INSERT INTO `d_china` VALUES ('611024', '山阳县', '611000');
INSERT INTO `d_china` VALUES ('611025', '镇安县', '611000');
INSERT INTO `d_china` VALUES ('611026', '柞水县', '611000');
INSERT INTO `d_china` VALUES ('611100', '杨凌示范区', '610000');
INSERT INTO `d_china` VALUES ('611103', '杨凌区', '611100');
INSERT INTO `d_china` VALUES ('620000', '甘肃省', '0');
INSERT INTO `d_china` VALUES ('620100', '兰州市', '620000');
INSERT INTO `d_china` VALUES ('620101', '市辖区', '620100');
INSERT INTO `d_china` VALUES ('620102', '城关区', '620101');
INSERT INTO `d_china` VALUES ('620103', '七里河区', '620101');
INSERT INTO `d_china` VALUES ('620104', '西固区', '620101');
INSERT INTO `d_china` VALUES ('620105', '安宁区', '620101');
INSERT INTO `d_china` VALUES ('620111', '红古区', '620101');
INSERT INTO `d_china` VALUES ('620121', '永登县', '620100');
INSERT INTO `d_china` VALUES ('620122', '皋兰县', '620100');
INSERT INTO `d_china` VALUES ('620123', '榆中县', '620100');
INSERT INTO `d_china` VALUES ('620200', '嘉峪关市', '620000');
INSERT INTO `d_china` VALUES ('620201', '市辖区', '620200');
INSERT INTO `d_china` VALUES ('620300', '金昌市', '620000');
INSERT INTO `d_china` VALUES ('620301', '金川区', '620300');
INSERT INTO `d_china` VALUES ('620321', '永昌县', '620300');
INSERT INTO `d_china` VALUES ('620400', '白银市', '620000');
INSERT INTO `d_china` VALUES ('620401', '市辖区', '620400');
INSERT INTO `d_china` VALUES ('620402', '白银区', '620401');
INSERT INTO `d_china` VALUES ('620403', '平川区', '620401');
INSERT INTO `d_china` VALUES ('620421', '靖远县', '620400');
INSERT INTO `d_china` VALUES ('620422', '会宁县', '620400');
INSERT INTO `d_china` VALUES ('620423', '景泰县', '620400');
INSERT INTO `d_china` VALUES ('620500', '天水市', '620000');
INSERT INTO `d_china` VALUES ('620501', '麦积区', '620500');
INSERT INTO `d_china` VALUES ('620502', '秦州区', '620500');
INSERT INTO `d_china` VALUES ('620521', '清水县', '620500');
INSERT INTO `d_china` VALUES ('620522', '秦安县', '620500');
INSERT INTO `d_china` VALUES ('620523', '甘谷县', '620500');
INSERT INTO `d_china` VALUES ('620524', '武山县', '620500');
INSERT INTO `d_china` VALUES ('620525', '张家川回族自治县', '620500');
INSERT INTO `d_china` VALUES ('620600', '武威市', '620000');
INSERT INTO `d_china` VALUES ('620601', '市辖区', '620600');
INSERT INTO `d_china` VALUES ('620602', '凉州区', '620601');
INSERT INTO `d_china` VALUES ('620621', '民勤县', '620600');
INSERT INTO `d_china` VALUES ('620622', '古浪县', '620600');
INSERT INTO `d_china` VALUES ('620623', '天祝藏族自治县', '620600');
INSERT INTO `d_china` VALUES ('620700', '张掖市', '620000');
INSERT INTO `d_china` VALUES ('620701', '市辖区', '620700');
INSERT INTO `d_china` VALUES ('620702', '甘州区', '620701');
INSERT INTO `d_china` VALUES ('620721', '肃南裕固族自治县', '620700');
INSERT INTO `d_china` VALUES ('620722', '民乐县', '620700');
INSERT INTO `d_china` VALUES ('620723', '临泽县', '620700');
INSERT INTO `d_china` VALUES ('620724', '高台县', '620700');
INSERT INTO `d_china` VALUES ('620725', '山丹县', '620700');
INSERT INTO `d_china` VALUES ('620800', '平凉市', '620000');
INSERT INTO `d_china` VALUES ('620801', '市辖区', '620800');
INSERT INTO `d_china` VALUES ('620802', '崆峒区', '620801');
INSERT INTO `d_china` VALUES ('620821', '泾川县', '620800');
INSERT INTO `d_china` VALUES ('620822', '灵台县', '620800');
INSERT INTO `d_china` VALUES ('620823', '崇信县', '620800');
INSERT INTO `d_china` VALUES ('620824', '华亭县', '620800');
INSERT INTO `d_china` VALUES ('620825', '庄浪县', '620800');
INSERT INTO `d_china` VALUES ('620826', '静宁县', '620800');
INSERT INTO `d_china` VALUES ('620900', '酒泉市', '620000');
INSERT INTO `d_china` VALUES ('620901', '市辖区', '620900');
INSERT INTO `d_china` VALUES ('620902', '肃州区', '620901');
INSERT INTO `d_china` VALUES ('620921', '金塔县', '620900');
INSERT INTO `d_china` VALUES ('620922', '瓜洲县', '620900');
INSERT INTO `d_china` VALUES ('620923', '肃北蒙古族自治县', '620900');
INSERT INTO `d_china` VALUES ('620924', '阿克塞哈萨克族自治县', '620900');
INSERT INTO `d_china` VALUES ('620981', '玉门市', '620900');
INSERT INTO `d_china` VALUES ('620982', '敦煌市', '620900');
INSERT INTO `d_china` VALUES ('621000', '庆阳市', '620000');
INSERT INTO `d_china` VALUES ('621001', '市辖区', '621000');
INSERT INTO `d_china` VALUES ('621002', '西峰区', '621001');
INSERT INTO `d_china` VALUES ('621021', '庆城县', '621000');
INSERT INTO `d_china` VALUES ('621022', '环县', '621000');
INSERT INTO `d_china` VALUES ('621023', '华池县', '621000');
INSERT INTO `d_china` VALUES ('621024', '合水县', '621000');
INSERT INTO `d_china` VALUES ('621025', '正宁县', '621000');
INSERT INTO `d_china` VALUES ('621026', '宁县', '621000');
INSERT INTO `d_china` VALUES ('621027', '镇原县', '621000');
INSERT INTO `d_china` VALUES ('621100', '定西市', '620000');
INSERT INTO `d_china` VALUES ('621101', '市辖区', '621100');
INSERT INTO `d_china` VALUES ('621102', '安定区', '621101');
INSERT INTO `d_china` VALUES ('621121', '通渭县', '621100');
INSERT INTO `d_china` VALUES ('621122', '陇西县', '621100');
INSERT INTO `d_china` VALUES ('621123', '渭源县', '621100');
INSERT INTO `d_china` VALUES ('621124', '临洮县', '621100');
INSERT INTO `d_china` VALUES ('621125', '漳县', '621100');
INSERT INTO `d_china` VALUES ('621126', '岷县', '621100');
INSERT INTO `d_china` VALUES ('621200', '陇南市', '620000');
INSERT INTO `d_china` VALUES ('621201', '武都区', '621200');
INSERT INTO `d_china` VALUES ('621221', '成县', '621200');
INSERT INTO `d_china` VALUES ('621222', '文县', '621200');
INSERT INTO `d_china` VALUES ('621223', '宕昌县', '621200');
INSERT INTO `d_china` VALUES ('621224', '康县', '621200');
INSERT INTO `d_china` VALUES ('621225', '西和县', '621200');
INSERT INTO `d_china` VALUES ('621226', '礼县', '621200');
INSERT INTO `d_china` VALUES ('621227', '徽县', '621200');
INSERT INTO `d_china` VALUES ('621228', '两当县', '621200');
INSERT INTO `d_china` VALUES ('622900', '临夏回族自治州', '620000');
INSERT INTO `d_china` VALUES ('622901', '临夏市', '622900');
INSERT INTO `d_china` VALUES ('622921', '临夏县', '622900');
INSERT INTO `d_china` VALUES ('622922', '康乐县', '622900');
INSERT INTO `d_china` VALUES ('622923', '永靖县', '622900');
INSERT INTO `d_china` VALUES ('622924', '广河县', '622900');
INSERT INTO `d_china` VALUES ('622925', '和政县', '622900');
INSERT INTO `d_china` VALUES ('622926', '东乡族自治县', '622900');
INSERT INTO `d_china` VALUES ('622927', '积石山保安族东乡族撒拉族自治县', '622900');
INSERT INTO `d_china` VALUES ('623000', '甘南藏族自治州', '620000');
INSERT INTO `d_china` VALUES ('623001', '合作市', '623000');
INSERT INTO `d_china` VALUES ('623021', '临潭县', '623000');
INSERT INTO `d_china` VALUES ('623022', '卓尼县', '623000');
INSERT INTO `d_china` VALUES ('623023', '舟曲县', '623000');
INSERT INTO `d_china` VALUES ('623024', '迭部县', '623000');
INSERT INTO `d_china` VALUES ('623025', '玛曲县', '623000');
INSERT INTO `d_china` VALUES ('623026', '碌曲县', '623000');
INSERT INTO `d_china` VALUES ('623027', '夏河县', '623000');
INSERT INTO `d_china` VALUES ('630000', '青海省', '0');
INSERT INTO `d_china` VALUES ('630100', '西宁市', '630000');
INSERT INTO `d_china` VALUES ('630101', '市辖区', '630100');
INSERT INTO `d_china` VALUES ('630102', '城东区', '630101');
INSERT INTO `d_china` VALUES ('630103', '城中区', '630101');
INSERT INTO `d_china` VALUES ('630104', '城西区', '630101');
INSERT INTO `d_china` VALUES ('630105', '城北区', '630101');
INSERT INTO `d_china` VALUES ('630121', '大通回族土族自治县', '630100');
INSERT INTO `d_china` VALUES ('630122', '湟中县', '630100');
INSERT INTO `d_china` VALUES ('630123', '湟源县', '630100');
INSERT INTO `d_china` VALUES ('632100', '海东市', '630000');
INSERT INTO `d_china` VALUES ('632121', '平安县', '632100');
INSERT INTO `d_china` VALUES ('632122', '民和回族土族自治县', '632100');
INSERT INTO `d_china` VALUES ('632123', '乐都区', '632100');
INSERT INTO `d_china` VALUES ('632126', '互助土族自治县', '632100');
INSERT INTO `d_china` VALUES ('632127', '化隆回族自治县', '632100');
INSERT INTO `d_china` VALUES ('632128', '循化撒拉族自治县', '632100');
INSERT INTO `d_china` VALUES ('632200', '海北藏族自治州', '630000');
INSERT INTO `d_china` VALUES ('632221', '门源回族自治县', '632200');
INSERT INTO `d_china` VALUES ('632222', '祁连县', '632200');
INSERT INTO `d_china` VALUES ('632223', '海晏县', '632200');
INSERT INTO `d_china` VALUES ('632224', '刚察县', '632200');
INSERT INTO `d_china` VALUES ('632300', '黄南藏族自治州', '630000');
INSERT INTO `d_china` VALUES ('632321', '同仁县', '632300');
INSERT INTO `d_china` VALUES ('632322', '尖扎县', '632300');
INSERT INTO `d_china` VALUES ('632323', '泽库县', '632300');
INSERT INTO `d_china` VALUES ('632324', '河南蒙古族自治县', '632300');
INSERT INTO `d_china` VALUES ('632500', '海南藏族自治州', '630000');
INSERT INTO `d_china` VALUES ('632521', '共和县', '632500');
INSERT INTO `d_china` VALUES ('632522', '同德县', '632500');
INSERT INTO `d_china` VALUES ('632523', '贵德县', '632500');
INSERT INTO `d_china` VALUES ('632524', '兴海县', '632500');
INSERT INTO `d_china` VALUES ('632525', '贵南县', '632500');
INSERT INTO `d_china` VALUES ('632600', '果洛藏族自治州', '630000');
INSERT INTO `d_china` VALUES ('632621', '玛沁县', '632600');
INSERT INTO `d_china` VALUES ('632622', '班玛县', '632600');
INSERT INTO `d_china` VALUES ('632623', '甘德县', '632600');
INSERT INTO `d_china` VALUES ('632624', '达日县', '632600');
INSERT INTO `d_china` VALUES ('632625', '久治县', '632600');
INSERT INTO `d_china` VALUES ('632626', '玛多县', '632600');
INSERT INTO `d_china` VALUES ('632700', '玉树藏族自治州', '630000');
INSERT INTO `d_china` VALUES ('632721', '玉树县', '632700');
INSERT INTO `d_china` VALUES ('632722', '杂多县', '632700');
INSERT INTO `d_china` VALUES ('632723', '称多县', '632700');
INSERT INTO `d_china` VALUES ('632724', '治多县', '632700');
INSERT INTO `d_china` VALUES ('632725', '囊谦县', '632700');
INSERT INTO `d_china` VALUES ('632726', '曲麻莱县', '632700');
INSERT INTO `d_china` VALUES ('632800', '海西蒙古族藏族自治州', '630000');
INSERT INTO `d_china` VALUES ('632801', '格尔木市', '632800');
INSERT INTO `d_china` VALUES ('632802', '德令哈市', '632800');
INSERT INTO `d_china` VALUES ('632821', '乌兰县', '632800');
INSERT INTO `d_china` VALUES ('632822', '都兰县', '632800');
INSERT INTO `d_china` VALUES ('632823', '天峻县', '632800');
INSERT INTO `d_china` VALUES ('640000', '宁夏回族自治区', '0');
INSERT INTO `d_china` VALUES ('640100', '银川市', '640000');
INSERT INTO `d_china` VALUES ('640104', '兴庆区', '640100');
INSERT INTO `d_china` VALUES ('640105', '西夏区', '640100');
INSERT INTO `d_china` VALUES ('640106', '金凤区', '640100');
INSERT INTO `d_china` VALUES ('640121', '永宁县', '640100');
INSERT INTO `d_china` VALUES ('640122', '贺兰县', '640100');
INSERT INTO `d_china` VALUES ('640181', '灵武市', '640100');
INSERT INTO `d_china` VALUES ('640200', '石嘴山市', '640000');
INSERT INTO `d_china` VALUES ('640202', '大武口区', '640200');
INSERT INTO `d_china` VALUES ('640205', '惠农县', '640200');
INSERT INTO `d_china` VALUES ('640221', '平罗县', '640200');
INSERT INTO `d_china` VALUES ('640300', '吴忠市', '640000');
INSERT INTO `d_china` VALUES ('640301', '红寺堡区', '640300');
INSERT INTO `d_china` VALUES ('640302', '利通区', '640300');
INSERT INTO `d_china` VALUES ('640323', '盐池县', '640300');
INSERT INTO `d_china` VALUES ('640324', '同心县', '640300');
INSERT INTO `d_china` VALUES ('640381', '青铜峡市', '640300');
INSERT INTO `d_china` VALUES ('640400', '固原市', '640000');
INSERT INTO `d_china` VALUES ('640401', '市辖区', '640400');
INSERT INTO `d_china` VALUES ('640402', '原州区', '640400');
INSERT INTO `d_china` VALUES ('640422', '西吉县', '640400');
INSERT INTO `d_china` VALUES ('640423', '隆德县', '640400');
INSERT INTO `d_china` VALUES ('640424', '泾源县', '640400');
INSERT INTO `d_china` VALUES ('640425', '彭阳县', '640400');
INSERT INTO `d_china` VALUES ('640500', '中卫市', '640000');
INSERT INTO `d_china` VALUES ('640501', '市辖区', '640500');
INSERT INTO `d_china` VALUES ('640502', '沙坡头区', '640500');
INSERT INTO `d_china` VALUES ('640521', '中宁县', '640500');
INSERT INTO `d_china` VALUES ('640522', '海原县', '640500');
INSERT INTO `d_china` VALUES ('650000', '新疆维吾尔自治区', '0');
INSERT INTO `d_china` VALUES ('650100', '乌鲁木齐市', '650000');
INSERT INTO `d_china` VALUES ('650101', '市辖区', '650100');
INSERT INTO `d_china` VALUES ('650102', '天山区', '650101');
INSERT INTO `d_china` VALUES ('650103', '沙依巴克区', '650101');
INSERT INTO `d_china` VALUES ('650104', '新市区', '650101');
INSERT INTO `d_china` VALUES ('650105', '水磨沟区', '650101');
INSERT INTO `d_china` VALUES ('650106', '头屯河区', '650101');
INSERT INTO `d_china` VALUES ('650107', '达坂城区', '650101');
INSERT INTO `d_china` VALUES ('650108', '东山区', '650101');
INSERT INTO `d_china` VALUES ('650121', '乌鲁木齐县', '650100');
INSERT INTO `d_china` VALUES ('650200', '克拉玛依市', '650000');
INSERT INTO `d_china` VALUES ('650201', '市辖区', '650200');
INSERT INTO `d_china` VALUES ('650202', '独山子区', '650201');
INSERT INTO `d_china` VALUES ('650203', '克拉玛依区', '650201');
INSERT INTO `d_china` VALUES ('650204', '白碱滩区', '650201');
INSERT INTO `d_china` VALUES ('650205', '乌尔禾区', '650201');
INSERT INTO `d_china` VALUES ('652100', '吐鲁番地区', '650000');
INSERT INTO `d_china` VALUES ('652101', '吐鲁番市', '652100');
INSERT INTO `d_china` VALUES ('652122', '鄯善县', '652100');
INSERT INTO `d_china` VALUES ('652123', '托克逊县', '652100');
INSERT INTO `d_china` VALUES ('652200', '哈密地区', '650000');
INSERT INTO `d_china` VALUES ('652201', '哈密市', '652200');
INSERT INTO `d_china` VALUES ('652222', '巴里坤哈萨克自治县', '652200');
INSERT INTO `d_china` VALUES ('652223', '伊吾县', '652200');
INSERT INTO `d_china` VALUES ('652300', '昌吉回族自治州', '650000');
INSERT INTO `d_china` VALUES ('652301', '昌吉市', '652300');
INSERT INTO `d_china` VALUES ('652302', '阜康市', '652300');
INSERT INTO `d_china` VALUES ('652303', '米泉市', '652300');
INSERT INTO `d_china` VALUES ('652323', '呼图壁县', '652300');
INSERT INTO `d_china` VALUES ('652324', '玛纳斯县', '652300');
INSERT INTO `d_china` VALUES ('652325', '奇台县', '652300');
INSERT INTO `d_china` VALUES ('652327', '吉木萨尔县', '652300');
INSERT INTO `d_china` VALUES ('652328', '木垒哈萨克自治县', '652300');
INSERT INTO `d_china` VALUES ('652700', '博尔塔拉蒙古自治州', '650000');
INSERT INTO `d_china` VALUES ('652701', '博乐市', '652700');
INSERT INTO `d_china` VALUES ('652722', '精河县', '652700');
INSERT INTO `d_china` VALUES ('652723', '温泉县', '652700');
INSERT INTO `d_china` VALUES ('652800', '巴音郭楞蒙古自治州', '650000');
INSERT INTO `d_china` VALUES ('652801', '库尔勒市', '652800');
INSERT INTO `d_china` VALUES ('652822', '轮台县', '652800');
INSERT INTO `d_china` VALUES ('652823', '尉犁县', '652800');
INSERT INTO `d_china` VALUES ('652824', '若羌县', '652800');
INSERT INTO `d_china` VALUES ('652825', '且末县', '652800');
INSERT INTO `d_china` VALUES ('652826', '焉耆回族自治县', '652800');
INSERT INTO `d_china` VALUES ('652827', '和静县', '652800');
INSERT INTO `d_china` VALUES ('652828', '和硕县', '652800');
INSERT INTO `d_china` VALUES ('652829', '博湖县', '652800');
INSERT INTO `d_china` VALUES ('652900', '阿克苏地区', '650000');
INSERT INTO `d_china` VALUES ('652901', '阿克苏市', '652900');
INSERT INTO `d_china` VALUES ('652922', '温宿县', '652900');
INSERT INTO `d_china` VALUES ('652923', '库车县', '652900');
INSERT INTO `d_china` VALUES ('652924', '沙雅县', '652900');
INSERT INTO `d_china` VALUES ('652925', '新和县', '652900');
INSERT INTO `d_china` VALUES ('652926', '拜城县', '652900');
INSERT INTO `d_china` VALUES ('652927', '乌什县', '652900');
INSERT INTO `d_china` VALUES ('652928', '阿瓦提县', '652900');
INSERT INTO `d_china` VALUES ('652929', '柯坪县', '652900');
INSERT INTO `d_china` VALUES ('653000', '克孜勒苏柯尔克孜自治州', '650000');
INSERT INTO `d_china` VALUES ('653001', '阿图什市', '653000');
INSERT INTO `d_china` VALUES ('653022', '阿克陶县', '653000');
INSERT INTO `d_china` VALUES ('653023', '阿合奇县', '653000');
INSERT INTO `d_china` VALUES ('653024', '乌恰县', '653000');
INSERT INTO `d_china` VALUES ('653100', '喀什地区', '650000');
INSERT INTO `d_china` VALUES ('653101', '喀什市', '653100');
INSERT INTO `d_china` VALUES ('653121', '疏附县', '653100');
INSERT INTO `d_china` VALUES ('653122', '疏勒县', '653100');
INSERT INTO `d_china` VALUES ('653123', '英吉沙县', '653100');
INSERT INTO `d_china` VALUES ('653124', '泽普县', '653100');
INSERT INTO `d_china` VALUES ('653125', '莎车县', '653100');
INSERT INTO `d_china` VALUES ('653126', '叶城县', '653100');
INSERT INTO `d_china` VALUES ('653127', '麦盖提县', '653100');
INSERT INTO `d_china` VALUES ('653128', '岳普湖县', '653100');
INSERT INTO `d_china` VALUES ('653129', '伽师县', '653100');
INSERT INTO `d_china` VALUES ('653130', '巴楚县', '653100');
INSERT INTO `d_china` VALUES ('653131', '塔什库尔干塔吉克自治县', '653100');
INSERT INTO `d_china` VALUES ('653200', '和田地区', '650000');
INSERT INTO `d_china` VALUES ('653201', '和田市', '653200');
INSERT INTO `d_china` VALUES ('653221', '和田县', '653200');
INSERT INTO `d_china` VALUES ('653222', '墨玉县', '653200');
INSERT INTO `d_china` VALUES ('653223', '皮山县', '653200');
INSERT INTO `d_china` VALUES ('653224', '洛浦县', '653200');
INSERT INTO `d_china` VALUES ('653225', '策勒县', '653200');
INSERT INTO `d_china` VALUES ('653226', '于田县', '653200');
INSERT INTO `d_china` VALUES ('653227', '民丰县', '653200');
INSERT INTO `d_china` VALUES ('654000', '伊犁哈萨克自治州', '650000');
INSERT INTO `d_china` VALUES ('654002', '伊宁市', '654000');
INSERT INTO `d_china` VALUES ('654003', '奎屯市', '654000');
INSERT INTO `d_china` VALUES ('654021', '伊宁县', '654000');
INSERT INTO `d_china` VALUES ('654022', '察布查尔锡伯自治县', '654000');
INSERT INTO `d_china` VALUES ('654023', '霍城县', '654000');
INSERT INTO `d_china` VALUES ('654024', '巩留县', '654000');
INSERT INTO `d_china` VALUES ('654025', '新源县', '654000');
INSERT INTO `d_china` VALUES ('654026', '昭苏县', '654000');
INSERT INTO `d_china` VALUES ('654027', '特克斯县', '654000');
INSERT INTO `d_china` VALUES ('654028', '尼勒克县', '654000');
INSERT INTO `d_china` VALUES ('654200', '塔城地区', '650000');
INSERT INTO `d_china` VALUES ('654201', '塔城市', '654200');
INSERT INTO `d_china` VALUES ('654202', '乌苏市', '654200');
INSERT INTO `d_china` VALUES ('654221', '额敏县', '654200');
INSERT INTO `d_china` VALUES ('654223', '沙湾县', '654200');
INSERT INTO `d_china` VALUES ('654224', '托里县', '654200');
INSERT INTO `d_china` VALUES ('654225', '裕民县', '654200');
INSERT INTO `d_china` VALUES ('654226', '和布克赛尔蒙古自治县', '654200');
INSERT INTO `d_china` VALUES ('654300', '阿勒泰地区', '650000');
INSERT INTO `d_china` VALUES ('654301', '阿勒泰市', '654300');
INSERT INTO `d_china` VALUES ('654321', '布尔津县', '654300');
INSERT INTO `d_china` VALUES ('654322', '富蕴县', '654300');
INSERT INTO `d_china` VALUES ('654323', '福海县', '654300');
INSERT INTO `d_china` VALUES ('654324', '哈巴河县', '654300');
INSERT INTO `d_china` VALUES ('654325', '青河县', '654300');
INSERT INTO `d_china` VALUES ('654326', '吉木乃县', '654300');
INSERT INTO `d_china` VALUES ('659000', '省直辖行政单位', '650000');
INSERT INTO `d_china` VALUES ('659001', '石河子市', '659000');
INSERT INTO `d_china` VALUES ('659002', '阿拉尔市', '659000');
INSERT INTO `d_china` VALUES ('659003', '图木舒克市', '659000');
INSERT INTO `d_china` VALUES ('659004', '五家渠市', '659000');
INSERT INTO `d_china` VALUES ('990000', '新疆建设兵团', '0');
INSERT INTO `d_china` VALUES ('990100', '第一师', '990000');
INSERT INTO `d_china` VALUES ('990200', '第二师', '990000');
INSERT INTO `d_china` VALUES ('990300', '第三师', '990000');
INSERT INTO `d_china` VALUES ('990400', '第四师', '990000');
INSERT INTO `d_china` VALUES ('990500', '第五师', '990000');
INSERT INTO `d_china` VALUES ('990600', '第六师', '990000');
INSERT INTO `d_china` VALUES ('990700', '第七师', '990000');
INSERT INTO `d_china` VALUES ('990800', '第八师', '990000');
INSERT INTO `d_china` VALUES ('990900', '第九师', '990000');
INSERT INTO `d_china` VALUES ('991000', '第十师', '990000');
INSERT INTO `d_china` VALUES ('991100', '建工师', '990000');
INSERT INTO `d_china` VALUES ('991200', '第十二师', '990000');
INSERT INTO `d_china` VALUES ('991300', '第十三师', '990000');
INSERT INTO `d_china` VALUES ('991400', '第十四师', '990000');

-- ----------------------------
-- Table structure for `d_coast`
-- ----------------------------
DROP TABLE IF EXISTS `d_coast`;
CREATE TABLE `d_coast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(2) DEFAULT NULL COMMENT '短信通知（1：h5  2 app  3 提现成功 4 还款成功）\r\n短信营销（5：商户未完善资料 6：商户未续借 7 还款前一天 8 还款当天）\r\n短信催收（9：催收1-3 10：催收4-7 11：催收8-15）\r\n风控实名（12：人脸识别 13：身份证 14 人脸对比）\r\n风控淘宝 15\r\n风控运营商 16\r\n其他 17',
  `create_time` int(11) DEFAULT NULL COMMENT '时间',
  `amount` varchar(255) DEFAULT NULL COMMENT '金额 ',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `mem_id` int(11) DEFAULT NULL COMMENT '渠道id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=543 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_coast
-- ----------------------------
INSERT INTO `d_coast` VALUES ('534', '2', '1553064281', '0.05', '1000000', '1');
INSERT INTO `d_coast` VALUES ('535', '2', '1553065184', '0.05', '1', '1');
INSERT INTO `d_coast` VALUES ('536', '2', '1553065344', '0.05', '1', '1');
INSERT INTO `d_coast` VALUES ('537', '2', '1553065469', '0.05', '1', '1');
INSERT INTO `d_coast` VALUES ('538', '2', '1553065703', '0.05', '1', '1');
INSERT INTO `d_coast` VALUES ('539', '2', '1553066214', '0.05', '1', '1');
INSERT INTO `d_coast` VALUES ('540', '2', '1553066358', '0.05', '1', '1');
INSERT INTO `d_coast` VALUES ('541', '2', '1553070543', '0.05', '1', '1');
INSERT INTO `d_coast` VALUES ('542', '2', '1553071534', '0.05', '1000000', '1');

-- ----------------------------
-- Table structure for `d_config`
-- ----------------------------
DROP TABLE IF EXISTS `d_config`;
CREATE TABLE `d_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text NOT NULL COMMENT '变量值',
  `content` text NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统配置';

-- ----------------------------
-- Records of d_config
-- ----------------------------
INSERT INTO `d_config` VALUES ('1', 'name', 'basic', 'Site name', '请填写站点名称', 'string', '现金贷管理系统', '', 'required', '');
INSERT INTO `d_config` VALUES ('2', 'beian', 'basic', 'Beian', '粤ICP备15054802号-4', 'string', '', '', '', '');
INSERT INTO `d_config` VALUES ('3', 'cdnurl', 'basic', 'Cdn url', '如果静态资源使用第三方云储存请配置该值', 'string', '', '', '', '');
INSERT INTO `d_config` VALUES ('4', 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '1.0.1', '', 'required', '');
INSERT INTO `d_config` VALUES ('5', 'timezone', 'basic', 'Timezone', '', 'string', 'Asia/Shanghai', '', 'required', '');
INSERT INTO `d_config` VALUES ('6', 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', '');
INSERT INTO `d_config` VALUES ('7', 'languages', 'basic', 'Languages', '', 'array', '{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}', '', 'required', '');
INSERT INTO `d_config` VALUES ('8', 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', 'dashboard', '', 'required', '');
INSERT INTO `d_config` VALUES ('9', 'categorytype', 'dictionary', 'Category type', '', 'array', '{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}', '', '', '');
INSERT INTO `d_config` VALUES ('10', 'configgroup', 'dictionary', 'Config group', '', 'array', '{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}', '', '', '');
INSERT INTO `d_config` VALUES ('11', 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '1', '[\"Please select\",\"SMTP\",\"Mail\"]', '', '');
INSERT INTO `d_config` VALUES ('12', 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', 'smtp.qq.com', '', '', '');
INSERT INTO `d_config` VALUES ('13', 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '465', '', '', '');
INSERT INTO `d_config` VALUES ('14', 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '10000', '', '', '');
INSERT INTO `d_config` VALUES ('15', 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码）', 'string', 'password', '', '', '');
INSERT INTO `d_config` VALUES ('16', 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '2', '[\"None\",\"TLS\",\"SSL\"]', '', '');
INSERT INTO `d_config` VALUES ('17', 'mail_from', 'email', 'Mail from', '', 'string', '10000@qq.com', '', '', '');

-- ----------------------------
-- Table structure for `d_credit_report`
-- ----------------------------
DROP TABLE IF EXISTS `d_credit_report`;
CREATE TABLE `d_credit_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `content` longtext,
  `result_content` longtext,
  `flowno` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_credit_report
-- ----------------------------

-- ----------------------------
-- Table structure for `d_crontab`
-- ----------------------------
DROP TABLE IF EXISTS `d_crontab`;
CREATE TABLE `d_crontab` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` varchar(10) NOT NULL DEFAULT '' COMMENT '事件类型',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '事件标题',
  `content` text NOT NULL COMMENT '事件内容',
  `schedule` varchar(100) NOT NULL DEFAULT '' COMMENT 'Crontab格式',
  `sleep` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '延迟秒数执行',
  `maximums` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大执行次数 0为不限',
  `executes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '已经执行的次数',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `begintime` int(10) NOT NULL DEFAULT '0' COMMENT '开始时间',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '结束时间',
  `executetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后执行时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` enum('completed','expired','hidden','normal') NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='定时任务表';

-- ----------------------------
-- Records of d_crontab
-- ----------------------------
INSERT INTO `d_crontab` VALUES ('1', 'url', '请求FastAdmin', 'http://www.fastadmin.net', '* * * * *', '0', '0', '13548', '1497070825', '1501253101', '1483200000', '1546272000', '1501253101', '1', 'normal');
INSERT INTO `d_crontab` VALUES ('2', 'url', '查询一条SQL', '/admin/sms/business/send', '40 14 27 1 *', '0', '23', '13548', '1497071095', '1548571125', '1483200000', '1546272000', '1501253101', '2', 'normal');

-- ----------------------------
-- Table structure for `d_decision`
-- ----------------------------
DROP TABLE IF EXISTS `d_decision`;
CREATE TABLE `d_decision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_decision
-- ----------------------------

-- ----------------------------
-- Table structure for `d_device`
-- ----------------------------
DROP TABLE IF EXISTS `d_device`;
CREATE TABLE `d_device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `tokenKey` varchar(255) DEFAULT NULL,
  `content` longtext COMMENT '设备信息',
  `createtime` int(10) DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid, platform, tokenKey` (`uid`,`platform`,`tokenKey`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_device
-- ----------------------------

-- ----------------------------
-- Table structure for `d_duotou`
-- ----------------------------
DROP TABLE IF EXISTS `d_duotou`;
CREATE TABLE `d_duotou` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_duotou
-- ----------------------------

-- ----------------------------
-- Table structure for `d_ems`
-- ----------------------------
DROP TABLE IF EXISTS `d_ems`;
CREATE TABLE `d_ems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) NOT NULL DEFAULT '' COMMENT '事件',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '邮箱',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='邮箱验证码表';

-- ----------------------------
-- Records of d_ems
-- ----------------------------

-- ----------------------------
-- Table structure for `d_examine_config`
-- ----------------------------
DROP TABLE IF EXISTS `d_examine_config`;
CREATE TABLE `d_examine_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `min_age` int(3) DEFAULT NULL COMMENT '最少年龄',
  `max_age` int(3) DEFAULT NULL COMMENT '最大年龄',
  `score` int(11) DEFAULT NULL COMMENT '芝麻积分',
  `break_faith` tinyint(2) DEFAULT '2' COMMENT '1 失信  2 不失信',
  `area` varchar(255) DEFAULT NULL COMMENT '地区',
  `is_get` tinyint(2) DEFAULT NULL COMMENT '1 强制获取  2  不强制获取',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_examine_config
-- ----------------------------
INSERT INTO `d_examine_config` VALUES ('1', '1', '100', '68', '1', '420100', '1');

-- ----------------------------
-- Table structure for `d_examine_way`
-- ----------------------------
DROP TABLE IF EXISTS `d_examine_way`;
CREATE TABLE `d_examine_way` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `way` tinyint(2) DEFAULT '1' COMMENT '1 自动分配 2 手动分配',
  `set_time` int(11) DEFAULT NULL COMMENT '设置时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_examine_way
-- ----------------------------

-- ----------------------------
-- Table structure for `d_expect_config`
-- ----------------------------
DROP TABLE IF EXISTS `d_expect_config`;
CREATE TABLE `d_expect_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_open` tinyint(2) DEFAULT '1' COMMENT '1 关闭 2 开启',
  `charge` varchar(255) DEFAULT NULL COMMENT '手续费',
  `num` int(11) DEFAULT NULL COMMENT '天数',
  `expect` tinyint(2) DEFAULT '2' COMMENT '1展期手续费　 2展期手续费+逾期罚息',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL,
  `min_num` int(11) DEFAULT '1' COMMENT '展期最少天数',
  `min_rate` varchar(255) DEFAULT NULL COMMENT '展期日费用',
  `max_rate` varchar(255) DEFAULT NULL COMMENT '展期最大金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_expect_config
-- ----------------------------
INSERT INTO `d_expect_config` VALUES ('1', '2', '1', '7', '2', '1', '1550805273', '1', '10', '40');

-- ----------------------------
-- Table structure for `d_mem_account`
-- ----------------------------
DROP TABLE IF EXISTS `d_mem_account`;
CREATE TABLE `d_mem_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `mem_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `balance` decimal(8,2) DEFAULT NULL COMMENT '余额',
  `createtime` int(11) DEFAULT NULL COMMENT '插入时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户账户表';

-- ----------------------------
-- Records of d_mem_account
-- ----------------------------
INSERT INTO `d_mem_account` VALUES ('7', '1', '0.55', '1552458983');

-- ----------------------------
-- Table structure for `d_mem_account_record`
-- ----------------------------
DROP TABLE IF EXISTS `d_mem_account_record`;
CREATE TABLE `d_mem_account_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `mem_id` int(11) DEFAULT NULL COMMENT '用户账户ID',
  `amount` decimal(8,0) DEFAULT NULL COMMENT '变更金额',
  `type` varchar(10) DEFAULT NULL COMMENT '变更类型 I:支出 O:收入',
  `before_amount` decimal(8,0) DEFAULT NULL COMMENT '变更前金额',
  `after_amount` decimal(10,0) DEFAULT NULL COMMENT '变更后金额',
  `status` int(1) DEFAULT NULL COMMENT '变更状态 1:成功 2:失败',
  `createtime` int(11) DEFAULT NULL COMMENT '变更时间',
  `code` varchar(255) DEFAULT NULL COMMENT '收入对应订单号支出对应支出统计id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IDX_ACCOUNT_ID` (`mem_id`) USING BTREE,
  KEY `IDX_TYPE` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='账户变更表';

-- ----------------------------
-- Records of d_mem_account_record
-- ----------------------------

-- ----------------------------
-- Table structure for `d_mem_cash`
-- ----------------------------
DROP TABLE IF EXISTS `d_mem_cash`;
CREATE TABLE `d_mem_cash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mem_id` int(11) DEFAULT NULL COMMENT '用户id',
  `order_id` varchar(255) DEFAULT NULL COMMENT '订单id',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `account` varchar(255) DEFAULT NULL COMMENT '支付宝账号或者openid',
  `real_name` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `amount` double(10,2) DEFAULT NULL COMMENT '提现金额',
  `status` tinyint(2) DEFAULT NULL COMMENT '订单状态 1 待处理 2 成功 3 失败',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `type` tinyint(2) DEFAULT NULL COMMENT '1：微信  2 支付宝',
  `real_amount` double(10,2) DEFAULT NULL COMMENT '时间扣除金额',
  `memo` varchar(255) DEFAULT NULL COMMENT '备注',
  `remark` varchar(255) DEFAULT NULL COMMENT '支付宝订单号',
  `product_name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `product_desc` varchar(255) DEFAULT NULL COMMENT '商品描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_mem_cash
-- ----------------------------
INSERT INTO `d_mem_cash` VALUES ('1', '1', '781626de5931cc980191143f1fd29b7f', '充值：2000元', '', '', '2000.00', '1', '1553046413', '1553046413', '2', '2000.00', null, null, '', '');
INSERT INTO `d_mem_cash` VALUES ('2', '1', '9566e6f2a4863d8abfaf0959a97533f0', '充值：2000元', '', '', '2000.00', '1', '1553053875', '1553053875', '2', '2000.00', null, null, '', '');
INSERT INTO `d_mem_cash` VALUES ('3', '1', '3d3fc77f8b3fb358003929e46b4cd55c', '充值：2000元', '', '', '2000.00', '1', '1553053928', '1553053928', '2', '2000.00', null, null, '', '');
INSERT INTO `d_mem_cash` VALUES ('4', '1', 'e9f3e84cf8d25df36fc9d9a777d80fdc', '充值：2000元', '', '', '2000.00', '1', '1553053970', '1553053970', '2', '2000.00', null, null, '', '');
INSERT INTO `d_mem_cash` VALUES ('5', '1', '7671927db07e18b38b1072a3aba09f32', '充值：2000元', '', '', '2000.00', '1', '1553064423', '1553064423', '2', '2000.00', null, null, '', '');
INSERT INTO `d_mem_cash` VALUES ('6', '1', '4e3024e9b245a5c1ef7b836eb111f116', '充值：1元', '', '', '1.00', '2', '1553064424', '1553064424', '2', '1.00', '成功', null, '', '');

-- ----------------------------
-- Table structure for `d_message`
-- ----------------------------
DROP TABLE IF EXISTS `d_message`;
CREATE TABLE `d_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` varchar(255) DEFAULT NULL COMMENT '消息内容',
  `status` tinyint(2) DEFAULT '2' COMMENT '1 已阅  2 未阅读',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_message
-- ----------------------------

-- ----------------------------
-- Table structure for `d_mobile_code_log`
-- ----------------------------
DROP TABLE IF EXISTS `d_mobile_code_log`;
CREATE TABLE `d_mobile_code_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id关键字',
  `mobile` varchar(50) DEFAULT NULL COMMENT '手机号码',
  `send_time` int(11) NOT NULL DEFAULT '0' COMMENT '发送时间',
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '验证码',
  `count` int(3) NOT NULL DEFAULT '0' COMMENT '发送次数',
  `expire_time` int(11) NOT NULL DEFAULT '0' COMMENT '过期时间',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='手机验证码发送日志';

-- ----------------------------
-- Records of d_mobile_code_log
-- ----------------------------
INSERT INTO `d_mobile_code_log` VALUES ('1', '18618106717', '1553071534', '9264', '13', '1553071594', '0', '0');

-- ----------------------------
-- Table structure for `d_msg`
-- ----------------------------
DROP TABLE IF EXISTS `d_msg`;
CREATE TABLE `d_msg` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `msg` varchar(255) DEFAULT NULL COMMENT '通知内容',
  `status` tinyint(3) DEFAULT NULL COMMENT '状态 0 待发送 1 已发送 2 发送失败 3 已读',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `aid` int(11) DEFAULT NULL COMMENT '发送人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_msg
-- ----------------------------

-- ----------------------------
-- Table structure for `d_order`
-- ----------------------------
DROP TABLE IF EXISTS `d_order`;
CREATE TABLE `d_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `code` varchar(255) DEFAULT NULL COMMENT '订单识别码',
  `uid` int(11) DEFAULT '0' COMMENT '申请人ID',
  `amount` double(11,2) DEFAULT '0.00' COMMENT '借款金额',
  `pay` double(11,2) DEFAULT '0.00' COMMENT '应还金额',
  `cost` double(11,2) DEFAULT '0.00' COMMENT '利息',
  `overcost` double(11,2) DEFAULT '0.00' COMMENT '逾期金额',
  `overday` int(11) DEFAULT '0' COMMENT '逾期天数',
  `createtime` int(10) DEFAULT '0' COMMENT '订单创建时间',
  `starttime` int(10) DEFAULT '0' COMMENT '订单开始时间',
  `endtime` int(10) DEFAULT '0' COMMENT '订单结束时间',
  `rollnum` int(11) DEFAULT '0' COMMENT '续期次数',
  `status` tinyint(3) DEFAULT '0' COMMENT '订单状态  0 待审核 1 资料审核 2 资料审核通过（资料） 3 放款审核 4 放款审核通过 5 审核通过  6 待放款（财务复审通过） 7 放款中 8 已放款（还款中） 9 已还款 10 逾期（废弃） 11未通过 12 机审失败 13机审成功 14 资料审核失败 15 财务审核失败 16 放款失败 17人工审核',
  `dcid` int(11) DEFAULT '0' COMMENT '资料审核员',
  `allotdcid` int(11) DEFAULT '0' COMMENT '分配的资料审核员',
  `fcid` int(11) DEFAULT '0' COMMENT '财务放款审核员',
  `allotfcid` int(11) DEFAULT '0' COMMENT '财务分配审核员',
  `cycle` int(11) DEFAULT NULL COMMENT ' 周期',
  `rem` varchar(255) DEFAULT NULL COMMENT '备注',
  `type` tinyint(2) DEFAULT NULL COMMENT '1 首借  2 续借',
  `fk_time` int(11) DEFAULT NULL COMMENT '放款时间',
  `futporderno` varchar(255) DEFAULT NULL COMMENT '退票流水号',
  `fuorderno` varchar(255) DEFAULT NULL COMMENT '富友流水号',
  `over_rem` varchar(255) DEFAULT NULL COMMENT '催收备注',
  `over_mem` int(11) DEFAULT NULL COMMENT '催收人员',
  `fk_time_detail` int(11) DEFAULT NULL COMMENT '放款时间到秒',
  `fy_code` varchar(255) DEFAULT NULL COMMENT '富友流水号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_order
-- ----------------------------

-- ----------------------------
-- Table structure for `d_order_repay`
-- ----------------------------
DROP TABLE IF EXISTS `d_order_repay`;
CREATE TABLE `d_order_repay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `repay_time` int(11) DEFAULT NULL COMMENT '还款日期',
  `total_amount` varchar(255) DEFAULT NULL COMMENT '还款总额',
  `corpus` varchar(255) DEFAULT NULL COMMENT ' 本金',
  `accrual` varchar(255) DEFAULT NULL COMMENT '利息',
  `status` tinyint(2) DEFAULT NULL COMMENT '订单状态1 待处理 2  正常还款 3 逾期 4逾期还款 5 续期 6 展期  7逾期续期 8逾期展期 ',
  `order_id` int(11) DEFAULT NULL COMMENT '订单号',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL COMMENT '修改日期',
  `penalty` varchar(255) DEFAULT '0' COMMENT '逾期违约金',
  `real_amount` varchar(255) DEFAULT '0' COMMENT '实际还款金额',
  `over_amount` varchar(255) DEFAULT '0' COMMENT '续期手续费',
  `zq_amount` varchar(255) DEFAULT '0' COMMENT '展期手续费',
  `order_code` varchar(255) DEFAULT NULL COMMENT '订单识别码',
  `pay_order_id` varchar(255) DEFAULT NULL COMMENT '支付商订单号',
  `pay_status` tinyint(2) DEFAULT '1' COMMENT '还款状态  1 待处理  2 成功  3 失败',
  `real_time` int(11) DEFAULT NULL COMMENT '实际还款时间',
  `zq_time` int(11) DEFAULT NULL COMMENT '展期还款日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_order_repay
-- ----------------------------

-- ----------------------------
-- Table structure for `d_order_tail`
-- ----------------------------
DROP TABLE IF EXISTS `d_order_tail`;
CREATE TABLE `d_order_tail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT '0' COMMENT '订单ID',
  `status` tinyint(4) DEFAULT NULL COMMENT '订单状态',
  `uid` int(11) DEFAULT NULL COMMENT '操作人',
  `createtime` int(10) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_order_tail
-- ----------------------------

-- ----------------------------
-- Table structure for `d_order_type`
-- ----------------------------
DROP TABLE IF EXISTS `d_order_type`;
CREATE TABLE `d_order_type` (
  `typeid` int(11) NOT NULL COMMENT 'ID',
  `name` varchar(255) DEFAULT NULL COMMENT '状态名称',
  PRIMARY KEY (`typeid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_order_type
-- ----------------------------
INSERT INTO `d_order_type` VALUES ('0', '待审核');
INSERT INTO `d_order_type` VALUES ('1', '资料审核');
INSERT INTO `d_order_type` VALUES ('2', '资料审核通过');
INSERT INTO `d_order_type` VALUES ('3', '放款审核');
INSERT INTO `d_order_type` VALUES ('4', '放款审核通过');
INSERT INTO `d_order_type` VALUES ('5', '审核通过');
INSERT INTO `d_order_type` VALUES ('6', '待放款');
INSERT INTO `d_order_type` VALUES ('7', '放款中');
INSERT INTO `d_order_type` VALUES ('8', '已放款');
INSERT INTO `d_order_type` VALUES ('9', '已还款');
INSERT INTO `d_order_type` VALUES ('10', '已逾期');
INSERT INTO `d_order_type` VALUES ('11', '未通过');
INSERT INTO `d_order_type` VALUES ('12', '机审失败');
INSERT INTO `d_order_type` VALUES ('13', '机审成功');
INSERT INTO `d_order_type` VALUES ('14', '资料审核失败');
INSERT INTO `d_order_type` VALUES ('15', '财务审核失败');
INSERT INTO `d_order_type` VALUES ('16', '放款失败');
INSERT INTO `d_order_type` VALUES ('17', '人工审核');

-- ----------------------------
-- Table structure for `d_pay_config`
-- ----------------------------
DROP TABLE IF EXISTS `d_pay_config`;
CREATE TABLE `d_pay_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(255) DEFAULT NULL,
  `serverurl` varchar(255) DEFAULT NULL COMMENT '回调地址',
  `privatekey` varchar(255) DEFAULT NULL COMMENT 'APP私钥(废弃)',
  `publickey` varchar(255) DEFAULT NULL COMMENT 'APP公钥(废弃)',
  `paykey` varchar(255) DEFAULT NULL COMMENT '商户密钥',
  `set_time` int(11) DEFAULT NULL,
  `mchntcd` varchar(255) DEFAULT NULL COMMENT '商户号',
  `mchntkey` varchar(255) DEFAULT NULL COMMENT '单笔支付密钥',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_pay_config
-- ----------------------------
INSERT INTO `d_pay_config` VALUES ('1', '11', 'http://suyidai.chinazhizao2025.cn/index.php/fypay/backurl', '', '', '6deikmjo4j0ymw5paliqhg08jy5gmvze', '1550207094', '0003070F2117451', '755nvxfsqr38p88lplglkavr3w1xk3px');

-- ----------------------------
-- Table structure for `d_sendmsg`
-- ----------------------------
DROP TABLE IF EXISTS `d_sendmsg`;
CREATE TABLE `d_sendmsg` (
  `id` int(11) NOT NULL,
  `msg` varchar(255) DEFAULT NULL COMMENT '短信内容',
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_sendmsg
-- ----------------------------

-- ----------------------------
-- Table structure for `d_sh_log`
-- ----------------------------
DROP TABLE IF EXISTS `d_sh_log`;
CREATE TABLE `d_sh_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `order_status` int(11) DEFAULT NULL COMMENT '订单当前审核的状态',
  `sh_result` tinyint(2) DEFAULT NULL COMMENT '审核经过 1 生成 2 失败',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_time` int(11) DEFAULT NULL,
  `review` tinyint(2) DEFAULT NULL COMMENT '1 机审 2 人工审核 3 放款',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_sh_log
-- ----------------------------

-- ----------------------------
-- Table structure for `d_sms`
-- ----------------------------
DROP TABLE IF EXISTS `d_sms`;
CREATE TABLE `d_sms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) NOT NULL DEFAULT '' COMMENT '事件',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='短信验证码表';

-- ----------------------------
-- Records of d_sms
-- ----------------------------
INSERT INTO `d_sms` VALUES ('1', 'register', '18601932016', '5112', '0', '127.0.0.1', '1547520200');

-- ----------------------------
-- Table structure for `d_sms_name`
-- ----------------------------
DROP TABLE IF EXISTS `d_sms_name`;
CREATE TABLE `d_sms_name` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_sms_name
-- ----------------------------
INSERT INTO `d_sms_name` VALUES ('1', '速易贷');

-- ----------------------------
-- Table structure for `d_sms_org`
-- ----------------------------
DROP TABLE IF EXISTS `d_sms_org`;
CREATE TABLE `d_sms_org` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` varchar(8) NOT NULL COMMENT '通道Id',
  `org_name` varchar(60) DEFAULT NULL COMMENT '通道机构名称',
  `org_type` smallint(6) DEFAULT NULL COMMENT '机构类型，1为文字类，2为语音类',
  `eff_flag` varchar(1) DEFAULT '1' COMMENT '生效标志',
  `title` varchar(128) DEFAULT NULL COMMENT '通道绑定title',
  `title_position` varchar(16) DEFAULT NULL COMMENT 'title绑定位置,HEAD为头部,TAIL为尾部',
  `create_opr_id` varchar(10) DEFAULT NULL COMMENT '创建人ID',
  `modify_opr_id` varchar(10) DEFAULT NULL COMMENT '修改人ID',
  `created_at` int(30) NOT NULL,
  `updated_at` int(30) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `org_key` (`org_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='短信通道表';

-- ----------------------------
-- Records of d_sms_org
-- ----------------------------

-- ----------------------------
-- Table structure for `d_sms_record`
-- ----------------------------
DROP TABLE IF EXISTS `d_sms_record`;
CREATE TABLE `d_sms_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sms_no` varchar(32) NOT NULL COMMENT '短信流水号',
  `sms_reg_date` varchar(8) DEFAULT NULL COMMENT '短信登记日期',
  `country_code` varchar(16) DEFAULT NULL COMMENT '国际编号',
  `area_code` varchar(16) DEFAULT NULL COMMENT '区域编号',
  `mbl_no` varchar(32) DEFAULT NULL COMMENT '手机号',
  `rep_var` varchar(256) DEFAULT NULL COMMENT '替换变量',
  `sms_info` text COMMENT '短信发送内容',
  `sms_status` varchar(1) DEFAULT NULL COMMENT '短信发送状态',
  `rout_org_id` varchar(8) DEFAULT NULL COMMENT '路由机构号',
  `template_no` varchar(6) DEFAULT NULL COMMENT '模板编号',
  `fail_count` smallint(6) DEFAULT NULL COMMENT '失败次数',
  `org_rsp_code` varchar(10) DEFAULT NULL COMMENT '机构返回码',
  `org_rsp_msg` varchar(100) DEFAULT NULL COMMENT '机构返回信息',
  `send_time` int(30) NOT NULL COMMENT '发送时间',
  `receive_time` int(30) NOT NULL COMMENT '回执时间',
  `receive_result` varchar(8) DEFAULT NULL COMMENT '回执结果,S成功 F失败',
  `created_at` int(30) NOT NULL,
  `updated_at` int(30) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_mcc_sms_record_mbl_no` (`mbl_no`) USING BTREE,
  KEY `idx_mcc_sms_record_rout_org_id` (`rout_org_id`) USING BTREE,
  KEY `idx_mcc_sms_record_sms_reg_date` (`sms_reg_date`) USING BTREE,
  KEY `idx_mcc_sms_record_template_no` (`template_no`) USING BTREE,
  KEY `index_sno_status_result` (`sms_status`,`receive_result`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='短信记录表';

-- ----------------------------
-- Records of d_sms_record
-- ----------------------------

-- ----------------------------
-- Table structure for `d_sms_scene`
-- ----------------------------
DROP TABLE IF EXISTS `d_sms_scene`;
CREATE TABLE `d_sms_scene` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scene` varchar(255) DEFAULT NULL COMMENT '场景',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `status` tinyint(2) DEFAULT '1' COMMENT '1 启用  2 禁用',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_sms_scene
-- ----------------------------

-- ----------------------------
-- Table structure for `d_sms_template`
-- ----------------------------
DROP TABLE IF EXISTS `d_sms_template`;
CREATE TABLE `d_sms_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_no` varchar(6) NOT NULL COMMENT '模板编号',
  `template_module` varchar(3) DEFAULT NULL COMMENT '模板所属模块',
  `rep_field` varchar(255) DEFAULT NULL COMMENT '替换变量',
  `description` varchar(128) DEFAULT NULL COMMENT '用途描述',
  `eff_flag` varchar(1) DEFAULT NULL COMMENT '生效标志',
  `template_content` text COMMENT '模板内容',
  `fail_send_flag` varchar(1) DEFAULT 'n' COMMENT '失败重发标志',
  `fail_limit_count` smallint(6) DEFAULT '0' COMMENT '失败重发次数',
  `org_id` varchar(64) DEFAULT NULL COMMENT '发送使用通道',
  `limit_count` smallint(6) DEFAULT NULL COMMENT '单日限制发送次数',
  `create_opr_id` varchar(10) DEFAULT NULL COMMENT '创建人ID',
  `modify_opr_id` varchar(10) DEFAULT NULL COMMENT '修改人ID',
  `created_at` int(30) NOT NULL,
  `updated_at` int(30) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `template_key` (`template_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='短信模板表';

-- ----------------------------
-- Records of d_sms_template
-- ----------------------------

-- ----------------------------
-- Table structure for `d_store`
-- ----------------------------
DROP TABLE IF EXISTS `d_store`;
CREATE TABLE `d_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商户ID',
  `code` varchar(255) DEFAULT NULL COMMENT '编号',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `linkman` varchar(255) DEFAULT NULL COMMENT '联系人',
  `mobile` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `share_url` varchar(255) DEFAULT NULL COMMENT '分享url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='短信签名表';

-- ----------------------------
-- Records of d_store
-- ----------------------------
INSERT INTO `d_store` VALUES ('1', '12', '速易贷', '112', '12', null);

-- ----------------------------
-- Table structure for `d_store_statistics`
-- ----------------------------
DROP TABLE IF EXISTS `d_store_statistics`;
CREATE TABLE `d_store_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) DEFAULT NULL,
  `cost` varchar(255) DEFAULT NULL COMMENT '成本',
  `loan` varchar(255) DEFAULT NULL COMMENT '放款',
  `user_count` int(11) DEFAULT NULL COMMENT '用户数量',
  `create_time` int(11) DEFAULT NULL COMMENT '日期年月日',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_store_statistics
-- ----------------------------
INSERT INTO `d_store_statistics` VALUES ('1', '1', '1', '1', '1', null);

-- ----------------------------
-- Table structure for `d_sys_config`
-- ----------------------------
DROP TABLE IF EXISTS `d_sys_config`;
CREATE TABLE `d_sys_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sjqb` double(11,2) DEFAULT NULL COMMENT '首借起步金额',
  `sjdz` double(11,2) DEFAULT NULL COMMENT '首借递增金额',
  `xjqb` double(11,2) DEFAULT NULL COMMENT '续借起步金额',
  `xjzd` double(11,2) DEFAULT NULL COMMENT '续借最大金额',
  `jkzd` varchar(255) DEFAULT NULL COMMENT '借款最大利率',
  `rqlv` varchar(255) DEFAULT NULL COMMENT '逾期日利率',
  `zgyq` varchar(255) DEFAULT NULL COMMENT '最高逾期率',
  `ads` tinyint(2) DEFAULT '1' COMMENT '是否展示续期按钮 1 展示  2 不展示',
  `yqan` tinyint(2) DEFAULT '1' COMMENT '是否展示续期按钮1 展示  2 不展示',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_sys_config
-- ----------------------------
INSERT INTO `d_sys_config` VALUES ('1', '1500.00', '500.00', '1500.00', '2500.00', '0.05', '0.05', '0.5', '1', '2', '1545027379', '1550805259');

-- ----------------------------
-- Table structure for `d_test`
-- ----------------------------
DROP TABLE IF EXISTS `d_test`;
CREATE TABLE `d_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID(单选)',
  `category_ids` varchar(100) NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) NOT NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) NOT NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) NOT NULL DEFAULT '' COMMENT '省市',
  `price` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '价格',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '刷新时间(int)',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='测试表';

-- ----------------------------
-- Records of d_test
-- ----------------------------
INSERT INTO `d_test` VALUES ('1', '0', '12', '12,13', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', '0.00', '0', '2017-07-10', '2017-07-10 18:24:45', '2017', '18:24:45', '1499682285', '1499682526', '1546698901', '0', '0', 'normal', '1');

-- ----------------------------
-- Table structure for `d_token`
-- ----------------------------
DROP TABLE IF EXISTS `d_token`;
CREATE TABLE `d_token` (
  `token` varchar(50) NOT NULL COMMENT 'Token',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `expiretime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '过期时间',
  PRIMARY KEY (`token`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员Token表';

-- ----------------------------
-- Records of d_token
-- ----------------------------
INSERT INTO `d_token` VALUES ('0c4795b4b1dc30099684b37074ab84e0b3c7e392', '1', '1546362126', '1546448526');
INSERT INTO `d_token` VALUES ('25366141d2ef827cd5dc7075f64c01dbd91db7b0', '1', '1546396187', '1546482587');
INSERT INTO `d_token` VALUES ('2844b3a62b7db48e600419a24d4d4b0ce7ab9a5f', '1', '1546396808', '1546483208');
INSERT INTO `d_token` VALUES ('321ef0b14aae86b0a8faf198df44ee5ebc0e16b9', '1', '1546361806', '1546448206');
INSERT INTO `d_token` VALUES ('39ace11b8b693503b49b309ed5d10c362930e479', '1', '1546398369', '1546484769');
INSERT INTO `d_token` VALUES ('4ff63b6c87782bf8a7081bc73259b29af091e3ea', '1', '1546361908', '1546448308');
INSERT INTO `d_token` VALUES ('51dae3253e1cfed7e34cbd24bcd1f66d14060f7f', '1', '1546396829', '1546483229');
INSERT INTO `d_token` VALUES ('60ecda58b04d16e3bc07c3d14d06f8c78a41d478', '1', '1546362409', '1546448809');
INSERT INTO `d_token` VALUES ('63e244fbb539f929e2d61ffdf7dd6b0a04c416dd', '1', '1546362276', '1546448676');
INSERT INTO `d_token` VALUES ('78dd2b97159ed13a5ccd572f7a10a971cffbad75', '1', '1546495646', '1546582046');
INSERT INTO `d_token` VALUES ('860b8a7eed986b308f3ddab19583be34dd5e245c', '1', '1546396350', '1546482750');
INSERT INTO `d_token` VALUES ('8c6582ebd968af71e2c0bfe8173ff24d644dbfd8', '1', '1546398384', '1546484784');
INSERT INTO `d_token` VALUES ('96e4acea04df88c1c541e8a46567a056a5659d44', '1', '1546396840', '1546483240');
INSERT INTO `d_token` VALUES ('9eb9199750cf29ed443395bce4e6f271371b7829', '1', '1546396057', '1546482457');
INSERT INTO `d_token` VALUES ('c220d4afe619930843b18590c8d3bfde8ad9b4ca', '1', '1546364900', '1546451300');
INSERT INTO `d_token` VALUES ('c88e84e91c0403d3de7ef372363861399a2e6522', '1', '1546398450', '1546484850');
INSERT INTO `d_token` VALUES ('d286151ab983affeed29b1465532de3afde71533', '1', '1546362174', '1546448574');
INSERT INTO `d_token` VALUES ('d76b3cb93569b98a35ca92f522fd7877bca53e6d', '1', '1546364289', '1546450689');
INSERT INTO `d_token` VALUES ('db88765fd2cb78f0edcddbaf28b295a0fdb65f54', '1', '1546362483', '1546448883');
INSERT INTO `d_token` VALUES ('e4dfe5b80b5dd2d4773a69f819093856a3ef94c2', '1', '1546495617', '1546582017');
INSERT INTO `d_token` VALUES ('e764e72dc3312b6bb891b9be640edd51f9c1aeba', '1', '1546361925', '1546448325');
INSERT INTO `d_token` VALUES ('ea69d7e2d24da7fcb63500f8f7771db6bb470e19', '1', '1546362513', '1546448913');
INSERT INTO `d_token` VALUES ('fc2d418ee896af93acd88713dd364cf8c1c987a3', '1', '1546397837', '1546484237');

-- ----------------------------
-- Table structure for `d_urge`
-- ----------------------------
DROP TABLE IF EXISTS `d_urge`;
CREATE TABLE `d_urge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `urge_id` int(11) DEFAULT NULL COMMENT '催收人员',
  `return_count` int(11) DEFAULT NULL COMMENT '退回的订单',
  `fp_count` int(11) DEFAULT NULL COMMENT '分配的订单数',
  `jq_count` int(11) DEFAULT NULL COMMENT '结清的订单数',
  `jq_amount` varchar(255) DEFAULT NULL COMMENT '结清金额',
  `xq_count` int(11) DEFAULT NULL COMMENT '续期订单数',
  `xq_amount` varchar(255) DEFAULT NULL COMMENT '续期金额',
  `fail_count` int(11) DEFAULT NULL COMMENT '未催回订单数',
  `create_time` int(11) DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_urge
-- ----------------------------
INSERT INTO `d_urge` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1546614911');

-- ----------------------------
-- Table structure for `d_user`
-- ----------------------------
DROP TABLE IF EXISTS `d_user`;
CREATE TABLE `d_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '组别ID',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `bio` varchar(100) NOT NULL DEFAULT '' COMMENT '格言',
  `money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '余额',
  `score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `successions` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '连续登录天数',
  `maxsuccessions` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '最大连续登录天数',
  `prevtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上次登录时间',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录时间',
  `loginip` varchar(50) NOT NULL DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `joinip` varchar(50) NOT NULL DEFAULT '' COMMENT '加入IP',
  `jointime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '加入时间',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'Token',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态 normal:正常 black:黑名单',
  `verification` varchar(255) NOT NULL DEFAULT '' COMMENT '验证',
  `quota` varchar(255) DEFAULT '0' COMMENT '用户借款额度',
  `store_id` int(11) DEFAULT NULL COMMENT '商户id',
  `rem` varchar(255) DEFAULT NULL COMMENT '备注',
  `channel_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `username` (`username`) USING BTREE,
  KEY `email` (`email`) USING BTREE,
  KEY `mobile` (`mobile`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员表';

-- ----------------------------
-- Records of d_user
-- ----------------------------
INSERT INTO `d_user` VALUES ('2', '0', '18618106717', 'YW3t1y', '712c5184b56eff29148dd20f43632454', 'Q1VIle', 'cs@cs.com', '18618106717', '', '1', '0', '1990-03-20', '', '0.00', '0', '1', '1', '1553071545', '1553071545', '114.252.141.102', '0', '114.252.141.102', '1553071545', '1553071545', '1553071500', '', 'normal', '', '1500', null, null, '3A53E00D-5249-A61F-F774-81BA17A58A70');

-- ----------------------------
-- Table structure for `d_user_address`
-- ----------------------------
DROP TABLE IF EXISTS `d_user_address`;
CREATE TABLE `d_user_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `province` varchar(255) DEFAULT NULL COMMENT '省',
  `city` varchar(255) DEFAULT NULL COMMENT '市',
  `area` varchar(255) DEFAULT NULL COMMENT '区',
  `address` varchar(1000) DEFAULT NULL COMMENT '居住地址',
  `status` tinyint(3) DEFAULT '1' COMMENT '状态',
  `createtime` int(10) DEFAULT NULL,
  `updatetime` int(10) DEFAULT NULL,
  `checkid` int(11) DEFAULT NULL COMMENT '审核员ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_user_address
-- ----------------------------
INSERT INTO `d_user_address` VALUES ('1', '2', '北京', '北京', '东城区', '11', '1', '1547018366', null, null);
INSERT INTO `d_user_address` VALUES ('2', '3', '北京', '北京', '东城区', '1', '1', '1547023019', null, null);

-- ----------------------------
-- Table structure for `d_user_authinfo`
-- ----------------------------
DROP TABLE IF EXISTS `d_user_authinfo`;
CREATE TABLE `d_user_authinfo` (
  `uid` int(11) NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '认证项',
  `createtime` int(10) DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) DEFAULT '0' COMMENT '更新时间',
  `expiretime` int(10) DEFAULT '0' COMMENT '认证有效期',
  `status` tinyint(2) DEFAULT '1' COMMENT '认证状态 0 认证失败 1 认证中 2 已认证',
  `authdata` longtext CHARACTER SET utf8 COMMENT '认证数据',
  `original_data` longtext CHARACTER SET utf8 COMMENT '原始数据',
  PRIMARY KEY (`uid`,`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_user_authinfo
-- ----------------------------
INSERT INTO `d_user_authinfo` VALUES ('1', 'txl', '1553071972', '1553073579', '0', '2', null, null);
INSERT INTO `d_user_authinfo` VALUES ('2', 'jcxx', '1553071615', '0', '0', '2', null, null);
INSERT INTO `d_user_authinfo` VALUES ('2', 'txl', '1553071547', '0', '0', '2', null, null);

-- ----------------------------
-- Table structure for `d_user_authtype`
-- ----------------------------
DROP TABLE IF EXISTS `d_user_authtype`;
CREATE TABLE `d_user_authtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) DEFAULT NULL COMMENT '认证项编码',
  `name` varchar(255) DEFAULT NULL COMMENT '认证项名称',
  `expiretime` int(10) DEFAULT '80' COMMENT '有效期  天数 默认80天',
  `jumpurl` varchar(255) DEFAULT NULL COMMENT '跳转页面',
  `color` varchar(255) DEFAULT NULL COMMENT '背景色',
  `icon` varchar(255) DEFAULT NULL COMMENT 'icon',
  `status` tinyint(4) DEFAULT '1' COMMENT '是否显示 0 否 1 是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_user_authtype
-- ----------------------------
INSERT INTO `d_user_authtype` VALUES ('1', 'jcxx', '基础信息', '80', null, '#70b5ff', '/uploads/icon_7.png', '1');
INSERT INTO `d_user_authtype` VALUES ('2', 'txl', '通讯录', '80', null, '#c9a760', '/uploads/icon_7.png', '1');
INSERT INTO `d_user_authtype` VALUES ('3', 'yhk', '银行卡', '80', null, '#c9a760', '/uploads/icon_3.png', '1');
INSERT INTO `d_user_authtype` VALUES ('4', 'mno', '运营商', '80', null, '#57db8f', '/uploads/icon_8.png', '1');
INSERT INTO `d_user_authtype` VALUES ('5', 'tb', '淘宝', '80', null, '#fc9d27', '/uploads/icon_5.png', '1');
INSERT INTO `d_user_authtype` VALUES ('6', 'zxy', '资信云', '80', null, null, null, '1');
INSERT INTO `d_user_authtype` VALUES ('7', 'fqz', '反欺诈', '80', null, null, null, '1');

-- ----------------------------
-- Table structure for `d_user_bankcard`
-- ----------------------------
DROP TABLE IF EXISTS `d_user_bankcard`;
CREATE TABLE `d_user_bankcard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` varchar(255) DEFAULT NULL COMMENT '银行卡号',
  `uid` int(11) DEFAULT NULL COMMENT '持卡人ID',
  `bank` varchar(255) DEFAULT NULL COMMENT '开户行',
  `province` varchar(255) DEFAULT '0' COMMENT '开户省',
  `city` varchar(255) DEFAULT '0' COMMENT '开户城市',
  `status` tinyint(3) DEFAULT '1' COMMENT '状态 0 禁用 1 启用',
  `createtime` int(10) DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) DEFAULT '0' COMMENT '修改时间',
  `protocolno` varchar(255) DEFAULT NULL COMMENT '富友订单号',
  `code` varchar(255) DEFAULT NULL COMMENT '标识',
  `fy_status` tinyint(2) DEFAULT '1' COMMENT '1待处理  2短信认证成功  3 短信失败 4 绑定成功 5绑定失败 6解绑成功，7解绑失败',
  `mobile` varchar(255) DEFAULT NULL COMMENT '银行卡绑定的手机号',
  `user_code` varchar(255) DEFAULT NULL COMMENT '用户在富友标识 md5 id cardid',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_user_bankcard
-- ----------------------------

-- ----------------------------
-- Table structure for `d_user_cardinfo`
-- ----------------------------
DROP TABLE IF EXISTS `d_user_cardinfo`;
CREATE TABLE `d_user_cardinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `address` varchar(255) DEFAULT NULL COMMENT '身份证地址',
  `nation` varchar(255) DEFAULT NULL COMMENT '民族',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `birthday` varchar(255) DEFAULT NULL COMMENT '生日',
  `expiryDate` varchar(255) DEFAULT NULL COMMENT '过期时间',
  `signDate` varchar(255) DEFAULT NULL COMMENT '签证时间',
  `signUnit` varchar(255) DEFAULT NULL COMMENT '签证机构',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_user_cardinfo
-- ----------------------------
INSERT INTO `d_user_cardinfo` VALUES ('2', '2', '山东省曹县庄寨镇仝大营行政村仝大营村68号', '汉', '男', '1990.01.02', '', '', '曹县公安局', '1553071615', null);

-- ----------------------------
-- Table structure for `d_user_channel`
-- ----------------------------
DROP TABLE IF EXISTS `d_user_channel`;
CREATE TABLE `d_user_channel` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) DEFAULT NULL COMMENT '用户 ID',
  `channel_code` varchar(255) DEFAULT NULL COMMENT '渠道 code',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间\n',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IDX_USER_ID` (`user_id`) USING BTREE,
  KEY `IDX_CHANNEL_CODE` (`channel_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户渠道关联表\n';

-- ----------------------------
-- Records of d_user_channel
-- ----------------------------

-- ----------------------------
-- Table structure for `d_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `d_user_group`;
CREATE TABLE `d_user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '' COMMENT '组名',
  `rules` text COMMENT '权限节点',
  `createtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员组表';

-- ----------------------------
-- Records of d_user_group
-- ----------------------------

-- ----------------------------
-- Table structure for `d_user_info`
-- ----------------------------
DROP TABLE IF EXISTS `d_user_info`;
CREATE TABLE `d_user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `realname` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `cardid` varchar(255) DEFAULT NULL COMMENT '身份证号',
  `idfrontpic` varchar(255) DEFAULT NULL COMMENT '身份证正面',
  `idbackpic` varchar(255) DEFAULT NULL COMMENT '身份证反面',
  `idhandpic` varchar(255) DEFAULT NULL COMMENT '身份证手持照',
  `facematch` tinyint(3) DEFAULT '1' COMMENT '人脸识别是否匹配 0 否 1 是',
  `score` int(11) DEFAULT '100' COMMENT '综合评分 满分100',
  `borrownum` int(11) DEFAULT '0' COMMENT '借款次数',
  `overnum` int(11) DEFAULT NULL COMMENT '逾期次数',
  `status` tinyint(3) DEFAULT '0' COMMENT '状态',
  `createtime` int(11) DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(11) DEFAULT NULL COMMENT '修改时间',
  `checkid` int(11) DEFAULT '0' COMMENT '审核员',
  `card_address` varchar(255) DEFAULT NULL COMMENT '身份证地址',
  `dw_address` varchar(255) DEFAULT NULL COMMENT '定位地址',
  `phone` varchar(3000) DEFAULT NULL COMMENT '手机型号',
  `education` varchar(255) DEFAULT NULL COMMENT '学历',
  `marriage` varchar(255) DEFAULT NULL COMMENT '婚姻状况',
  `longitude` varchar(255) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(255) DEFAULT NULL COMMENT '纬度',
  `facescore` double(11,2) DEFAULT '0.00' COMMENT '人脸对比分数 80分以上 可定位同一个人',
  `faceimg` varchar(255) DEFAULT NULL COMMENT '活体认证图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_user_info
-- ----------------------------
INSERT INTO `d_user_info` VALUES ('2', '2', '仝国通', '372922199001022396', '/2/front.png', '/2/back.png', null, '0', '100', '0', null, '0', '1553071615', null, '0', '山东省曹县庄寨镇仝大营行政村仝大营村68号', null, '{\"UniqueID\":\"cee68ccabb8fce78\",\"Manufacturer\":\"ZUK\",\"Brand\":\"ZUK\",\"Model\":\"ZUK Z1\",\"DeviceId\":\"MSM8974\",\"SystemName\":\"Android\",\"SystemVersion\":\"6.0.1\",\"BundleId\":\"com.guozao.sydcash.jyj\",\"ApplicationName\":\"急用金\",\"BuildNumber\":10001,\"Version\":\"1.0\",\"ReadableVersion\":\"1.0.10001\",\"DeviceName\":\"ZUK Z1\",\"UserAgent\":\"Mozilla/5.0 (Linux; Android 6.0.1; ZUK Z1 Build/MMB29M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/50.0.2661.86 Mobile Safari/537.36\",\"DeviceLocale\":\"zh-CN\",\"DeviceCountry\":\"CN\",\"IPAddress\":{\"_40\":0,\"_65\":0,\"_55\":null,\"_72\":null},\"MACAddress\":{\"_40\":0,\"_65\":0,\"_55\":null,\"_72\":null},\"TotalMemory\":2986754048,\"MaxMemory\":536870912}', '', '', '0', '0', '0.00', '/2/faceimg.png');

-- ----------------------------
-- Table structure for `d_user_linkman`
-- ----------------------------
DROP TABLE IF EXISTS `d_user_linkman`;
CREATE TABLE `d_user_linkman` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `linkname` varchar(255) DEFAULT NULL COMMENT '联系人名称',
  `mobile` varchar(255) DEFAULT NULL COMMENT '手机号',
  `relation` tinyint(3) DEFAULT NULL COMMENT '关系 0 无法确定 1 父亲 2 母亲 3 兄弟姐妹  4 亲属 5 朋友 6 同事',
  `status` tinyint(3) DEFAULT '0' COMMENT '状态',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '修改时间',
  `checkid` int(11) DEFAULT '0' COMMENT '审核员ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_user_linkman
-- ----------------------------

-- ----------------------------
-- Table structure for `d_user_money_log`
-- ----------------------------
DROP TABLE IF EXISTS `d_user_money_log`;
CREATE TABLE `d_user_money_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更余额',
  `before` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更前余额',
  `after` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更后余额',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员余额变动表';

-- ----------------------------
-- Records of d_user_money_log
-- ----------------------------

-- ----------------------------
-- Table structure for `d_user_repayment`
-- ----------------------------
DROP TABLE IF EXISTS `d_user_repayment`;
CREATE TABLE `d_user_repayment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mem_id` int(11) DEFAULT NULL COMMENT '用户',
  `order_id` int(11) DEFAULT NULL COMMENT '订单',
  `payway` varchar(255) DEFAULT NULL COMMENT '付款方式',
  `create_time` int(11) DEFAULT NULL COMMENT '还款时间',
  `status` tinyint(2) DEFAULT '1' COMMENT '还款状态 1 成功 2 失败',
  `order_status` tinyint(2) DEFAULT '1' COMMENT '订单状态1：正常还款 2 逾期还款',
  `amount` varchar(255) DEFAULT NULL COMMENT '还款金额',
  `is_collection` tinyint(2) DEFAULT '2' COMMENT '1 代收 2 非代收',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_user_repayment
-- ----------------------------

-- ----------------------------
-- Table structure for `d_user_rule`
-- ----------------------------
DROP TABLE IF EXISTS `d_user_rule`;
CREATE TABLE `d_user_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT NULL COMMENT '父ID',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `title` varchar(50) DEFAULT '' COMMENT '标题',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `ismenu` tinyint(1) DEFAULT NULL COMMENT '是否菜单',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) DEFAULT '0' COMMENT '权重',
  `status` enum('normal','hidden') DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员规则表';

-- ----------------------------
-- Records of d_user_rule
-- ----------------------------

-- ----------------------------
-- Table structure for `d_user_score_log`
-- ----------------------------
DROP TABLE IF EXISTS `d_user_score_log`;
CREATE TABLE `d_user_score_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `score` int(10) NOT NULL DEFAULT '0' COMMENT '变更积分',
  `before` int(10) NOT NULL DEFAULT '0' COMMENT '变更前积分',
  `after` int(10) NOT NULL DEFAULT '0' COMMENT '变更后积分',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员积分变动表';

-- ----------------------------
-- Records of d_user_score_log
-- ----------------------------

-- ----------------------------
-- Table structure for `d_user_telebook`
-- ----------------------------
DROP TABLE IF EXISTS `d_user_telebook`;
CREATE TABLE `d_user_telebook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `linkname` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '通讯录名',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `callnum` int(11) DEFAULT '0' COMMENT '通话次数',
  `relation` tinyint(3) DEFAULT NULL COMMENT '关系 0 无法确定 1 家人 2 亲属 3 朋友 4 同事',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` tinyint(3) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1122 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_user_telebook
-- ----------------------------
INSERT INTO `d_user_telebook` VALUES ('1120', '1', '155-5019-6499', '155-5019-6499', '0', '0', '1553073656', null, '1');
INSERT INTO `d_user_telebook` VALUES ('1121', '1', '1312195039513121950395', '13121950395', '0', '0', '1553073656', null, '1');

-- ----------------------------
-- Table structure for `d_user_token`
-- ----------------------------
DROP TABLE IF EXISTS `d_user_token`;
CREATE TABLE `d_user_token` (
  `token` varchar(50) NOT NULL COMMENT 'Token',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `expiretime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '过期时间',
  PRIMARY KEY (`token`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员Token表';

-- ----------------------------
-- Records of d_user_token
-- ----------------------------
INSERT INTO `d_user_token` VALUES ('0279e9f94e45dc3bd8d78522f28a0c89b7024c95', '66', '1552395344', '1554987344');
INSERT INTO `d_user_token` VALUES ('06ae2e511bb59a9b1ca1cb0ecd72fcbd7233416b', '71', '1552623682', '1555215682');
INSERT INTO `d_user_token` VALUES ('073df183f580e389a12d50eb888ba650d9c8b70f', '1', '1553064310', '1555656310');
INSERT INTO `d_user_token` VALUES ('07554d28046c2edf717c6a5c13d60f5e674c0c68', '18', '1551402887', '1553994887');
INSERT INTO `d_user_token` VALUES ('09499a82c3cc34dab0546bad0b7054e4f1368560', '17', '1549867589', '1552459589');
INSERT INTO `d_user_token` VALUES ('0b2f6e28507afb2e4d634cc5f5e0ebbbe68e637c', '34', '1550064261', '1552656261');
INSERT INTO `d_user_token` VALUES ('0de343a94a2e3f661ec013397068ab19aecb6426', '42', '1550397361', '1552989361');
INSERT INTO `d_user_token` VALUES ('0e62daa672a7d45dad52fe9adbdc24b61c5ca34f', '59', '1552374149', '1554966149');
INSERT INTO `d_user_token` VALUES ('0e919cf6f89d155caaf0ec5af70bb04a664ce047', '19', '1552197684', '1554789684');
INSERT INTO `d_user_token` VALUES ('0f8c6c5e01747bb0c925884de3e92554bb4db5b5', '23', '1550126448', '1552718448');
INSERT INTO `d_user_token` VALUES ('1378025ef155b1251abd890ef136b3116e323131', '38', '1550132813', '1552724813');
INSERT INTO `d_user_token` VALUES ('14699c3a618facddbe63f39787d4421132a450c3', '71', '1552710541', '1555302541');
INSERT INTO `d_user_token` VALUES ('15a1c5085583200b0c30b5cd8670dca172a1cce6', '18', '1552624773', '1555216773');
INSERT INTO `d_user_token` VALUES ('1e9f12d82cf17336ada8f35b888d7be5cad367e5', '65', '1552395218', '1554987218');
INSERT INTO `d_user_token` VALUES ('1ea0883a93ca1cc68cdd8ad085fc36aca8d66a78', '18', '1552031972', '1554623972');
INSERT INTO `d_user_token` VALUES ('1f0dce6dc16ca96b7adc36b61bb2d053c2003143', '44', '1550397488', '1552989488');
INSERT INTO `d_user_token` VALUES ('21a3ccb7d84c78ad6ab9964a460fc4a94001a482', '18', '1552624775', '1555216775');
INSERT INTO `d_user_token` VALUES ('25ac2cd0d88e85c43658d427a96cefd74edbe02e', '69', '1552708663', '1555300663');
INSERT INTO `d_user_token` VALUES ('275b27bb1487f106676a9613c9004c08c009e462', '18', '1552624774', '1555216774');
INSERT INTO `d_user_token` VALUES ('27883acea9e98ac072f0fe215fc36627e5f68cdc', '18', '1551028243', '1553620243');
INSERT INTO `d_user_token` VALUES ('2802829324b5911308c3adb7435e805cff4a469a', '23', '1550053608', '1552645608');
INSERT INTO `d_user_token` VALUES ('2a3fc2c3d636a1b7a123b693d868a79847c0351d', '19', '1551687826', '1554279826');
INSERT INTO `d_user_token` VALUES ('2bcb0c9050f7d1b98c93ae332b48c8a8056a1d94', '59', '1552376654', '1554968654');
INSERT INTO `d_user_token` VALUES ('318087731a62e54f4b4a55210d9989225f3a69f9', '19', '1550128712', '1552720712');
INSERT INTO `d_user_token` VALUES ('320816f1966e5470d97eecab7ca7efac8ac148bf', '1', '1553065375', '1555657375');
INSERT INTO `d_user_token` VALUES ('356c3bc03393965029b5e6c7978b39e65620ef0a', '70', '1552480120', '1555072120');
INSERT INTO `d_user_token` VALUES ('36519ba9f4f85b09c8c15778be46cb6676435180', '59', '1552375592', '1554967592');
INSERT INTO `d_user_token` VALUES ('36825c2defa361de6cb600cd6023f0b0ac5e1e30', '18', '1552624773', '1555216773');
INSERT INTO `d_user_token` VALUES ('39fe7269796300b4a79f61433db3e483c685a0fa', '59', '1552378143', '1554970143');
INSERT INTO `d_user_token` VALUES ('3d7ee3f3ad6fc8fd9cf90396e2f42762ceea93e1', '70', '1552487787', '1555079787');
INSERT INTO `d_user_token` VALUES ('3e8dbef650539f6f1c68495b62e0e1276d9dbbf5', '59', '1552623473', '1555215473');
INSERT INTO `d_user_token` VALUES ('4106fa4919260fce49030aa1d5446395c331b1f5', '23', '1550060997', '1552652997');
INSERT INTO `d_user_token` VALUES ('416f63ccccc3250bdeb29b046f0efe633c44d082', '23', '1550108278', '1552700278');
INSERT INTO `d_user_token` VALUES ('429f46897f5f2202e04c6b61d97191ec96522894', '19', '1552047781', '1554639781');
INSERT INTO `d_user_token` VALUES ('42f11e490ba914086cbae0f80ceb88cfe7abada5', '65', '1552400501', '1554992501');
INSERT INTO `d_user_token` VALUES ('44d9670ea5050fc689f687cd2f6758a69f8c3a01', '18', '1551112356', '1553704356');
INSERT INTO `d_user_token` VALUES ('479ad4f1f79bfc9ef37b18f49070f9e41e12c83c', '18', '1552624771', '1555216771');
INSERT INTO `d_user_token` VALUES ('485b223b00a7deeccf635f8de64c793a8d8added', '1', '1553065717', '1555657717');
INSERT INTO `d_user_token` VALUES ('49f35034a755c15c638941c0abe4fbdf16f9f5f7', '49', '1551446276', '1554038276');
INSERT INTO `d_user_token` VALUES ('4bd58fe71de5f25538c956790a80865dcffd5c7d', '19', '1552647916', '1555239916');
INSERT INTO `d_user_token` VALUES ('501607cfe479c487b09d76dc3ee60b8fe4162dda', '48', '1550726270', '1553318270');
INSERT INTO `d_user_token` VALUES ('52f948daea61946d6789ee9e0044335ea097ae5a', '23', '1550020321', '1552612321');
INSERT INTO `d_user_token` VALUES ('625c4cf2a6649a3159bbc797811cd0ea02e54284', '59', '1552095263', '1554687263');
INSERT INTO `d_user_token` VALUES ('636d7bb79565373df3e8dfe70ade8dd4d9770244', '66', '1552458996', '1555050996');
INSERT INTO `d_user_token` VALUES ('644496eddee5d559ecf8ce5047fbacebbfaf6ce6', '23', '1550058578', '1552650578');
INSERT INTO `d_user_token` VALUES ('668ad581309703d7034c067d2122c2fac403addb', '18', '1551427235', '1554019235');
INSERT INTO `d_user_token` VALUES ('6720ea6368fd5c79e3aebae3fc008515c3d3b486', '18', '1549953224', '1552545224');
INSERT INTO `d_user_token` VALUES ('67573d62dcc71785fd36d0e6e4b13059b4fd39fd', '20', '1549946098', '1552538098');
INSERT INTO `d_user_token` VALUES ('6ac1116ed788aed946cea8e53fe6296a2e2eeecd', '23', '1550713751', '1553305751');
INSERT INTO `d_user_token` VALUES ('6bc047b58d78ab1518887126011e5c88e7440cf9', '59', '1551771054', '1554363054');
INSERT INTO `d_user_token` VALUES ('6be3824e19e29c631ffc1d70486139cb88c94692', '62', '1551665394', '1554257394');
INSERT INTO `d_user_token` VALUES ('6c47ee6f5d845f859e82cefa0ced56a103b7bf0d', '19', '1549944990', '1552536990');
INSERT INTO `d_user_token` VALUES ('6c82e2bfca69a45164588732171aa1df9a1b185d', '68', '1552711691', '1555303691');
INSERT INTO `d_user_token` VALUES ('6da3403806d186e952bb57029b89f7e9ae4e249b', '18', '1552710043', '1555302043');
INSERT INTO `d_user_token` VALUES ('6e01e70011647a16e7fe9604fbdc4042e947cdd5', '17', '1549933965', '1552525965');
INSERT INTO `d_user_token` VALUES ('6e5de68ef91db705a847ad788a4c4af308591cad', '71', '1552710421', '1555302421');
INSERT INTO `d_user_token` VALUES ('6f2eb65c2c75ed841de16bc76fc8fe6af2ed6c99', '69', '1552709725', '1555301725');
INSERT INTO `d_user_token` VALUES ('705c3bdf492eb8ac69c8fd06a230ec5fb7b8a8f8', '49', '1551439970', '1554031970');
INSERT INTO `d_user_token` VALUES ('71788c4492c6da442dba72b565dbe9948c127065', '65', '1552099061', '1554691061');
INSERT INTO `d_user_token` VALUES ('738dd54339a6cb5fa4b300431035e9ffa372a0f9', '66', '1552459188', '1555051188');
INSERT INTO `d_user_token` VALUES ('75712fabbbccb58ea1638975333e1f799d71c311', '18', '1550415224', '1553007224');
INSERT INTO `d_user_token` VALUES ('7619071b2f99aa3702e118510477b0c67879c00b', '61', '1551665099', '1554257099');
INSERT INTO `d_user_token` VALUES ('786dca830c3cbfb8122222db95198c1396c3ce13', '59', '1552377409', '1554969409');
INSERT INTO `d_user_token` VALUES ('7be8bc35898e4aa8aad9ec199fd88f23c4cc536f', '23', '1550558279', '1553150279');
INSERT INTO `d_user_token` VALUES ('7c08939f93759504f7fe59c93474225210255bf5', '34', '1550055299', '1552647299');
INSERT INTO `d_user_token` VALUES ('7e249781c72577757253c597aabc619126227b5e', '22', '1549963386', '1552555386');
INSERT INTO `d_user_token` VALUES ('7ed1f2587d5a895188acb068b877017e2fa6151b', '59', '1552649994', '1555241994');
INSERT INTO `d_user_token` VALUES ('811ac1f49954b8982d44dc3f4faa87d3925fbc06', '64', '1552097968', '1554689968');
INSERT INTO `d_user_token` VALUES ('84a67ba99e64e39d05ffd67d697515e93538242b', '69', '1552711879', '1555303879');
INSERT INTO `d_user_token` VALUES ('86dbd50a9645d1be8e2fa3377e08043619050bdc', '63', '1551766876', '1554358876');
INSERT INTO `d_user_token` VALUES ('89c5be5a5129a87206cf38f7b98f1eaa76ea3028', '59', '1551447456', '1554039456');
INSERT INTO `d_user_token` VALUES ('900f260211a868ff49f68400d67cb5f353960cda', '19', '1550044377', '1552636377');
INSERT INTO `d_user_token` VALUES ('9062da7e33a2a48024d8d2138e90c46dee5b0617', '69', '1552710173', '1555302173');
INSERT INTO `d_user_token` VALUES ('9165db5e182500e298f014ba8170ae0eb4be793e', '61', '1551665558', '1554257558');
INSERT INTO `d_user_token` VALUES ('94308f1219fdd7526c1480f79b9a8c21f6421055', '37', '1550132466', '1552724466');
INSERT INTO `d_user_token` VALUES ('94b759d73720fb509261b7f0edddc103678c8571', '70', '1552479567', '1555071567');
INSERT INTO `d_user_token` VALUES ('965255dbaa3df1de0f8c1801fe4ec96ce4467ee2', '66', '1552276914', '1554868914');
INSERT INTO `d_user_token` VALUES ('9679d89d8722264a4815cb9ecdcdfdc9df435284', '65', '1552391951', '1554983951');
INSERT INTO `d_user_token` VALUES ('9ed771ea8b5129c694039041713520a11bbd851c', '18', '1552624852', '1555216852');
INSERT INTO `d_user_token` VALUES ('9f06077c9c5b9fe93373bf43b1dcc369410a286d', '18', '1549934517', '1552526517');
INSERT INTO `d_user_token` VALUES ('a38e25ab5ad3b4770c90051ab4f6bcf1972485f3', '37', '1550657621', '1553249621');
INSERT INTO `d_user_token` VALUES ('a4103563b30081f88e4c2d5ddf16f3ef9334cd21', '18', '1552624774', '1555216774');
INSERT INTO `d_user_token` VALUES ('a437d238bb7934c65ef2f9528abc8468a6259b8a', '29', '1550041480', '1552633480');
INSERT INTO `d_user_token` VALUES ('a5b610aae4d5b9597d263c5586bc02fee209f8e4', '18', '1551446295', '1554038295');
INSERT INTO `d_user_token` VALUES ('a5bd1980112def6890a8964ecd55bc7580ac61c2', '60', '1551500113', '1554092113');
INSERT INTO `d_user_token` VALUES ('a668a39e97e6389bd26102aa0f360f2f4ad58bf8', '18', '1552190163', '1554782163');
INSERT INTO `d_user_token` VALUES ('a68f39111e03384e42b0c9d5f9170dc0c9100532', '72', '1552719197', '1555311197');
INSERT INTO `d_user_token` VALUES ('a76ddcb5da3ede560f10d030a34a419eca670292', '37', '1550127453', '1552719453');
INSERT INTO `d_user_token` VALUES ('a8505ba19fbb4ff84d2b8dd64c7745bf6dea35cb', '68', '1552381933', '1554973933');
INSERT INTO `d_user_token` VALUES ('aa527d1096d79a0041fbbfb5529136af366a742c', '67', '1552377811', '1554969811');
INSERT INTO `d_user_token` VALUES ('aceebf283b21e52911d0af90979c0dc03b6820ff', '20', '1550650502', '1553242502');
INSERT INTO `d_user_token` VALUES ('af10b9d5274bfc535b6aebce54407f9360366fb2', '18', '1552188471', '1554780471');
INSERT INTO `d_user_token` VALUES ('af8d4c7d3dd01f7837e7183594a2a6d6fc6d94ab', '59', '1552284487', '1554876487');
INSERT INTO `d_user_token` VALUES ('af948ebff8875a04bb8d106f36ebb1402dde9edf', '73', '1552727144', '1555319144');
INSERT INTO `d_user_token` VALUES ('afb027375abd119cc8581ce5594dddbf080afecf', '59', '1552389150', '1554981150');
INSERT INTO `d_user_token` VALUES ('b04595ee2d8b2eb460a5f8c7c8f710c4ac47a00e', '1', '1553065477', '1555657477');
INSERT INTO `d_user_token` VALUES ('b1ffb80a8ddb56da11242d6996d99ddbdb7c2422', '23', '1549980243', '1552572243');
INSERT INTO `d_user_token` VALUES ('b5166c1335cab67329392e3311bf1cf1d83e8d2e', '49', '1551439307', '1554031307');
INSERT INTO `d_user_token` VALUES ('b5ba474f4c7a3ff354478080ade945266917ba58', '66', '1552388851', '1554980851');
INSERT INTO `d_user_token` VALUES ('b6fafe6819f60cdb5d52f59aad70223a42696f6b', '1', '1553064293', '1555656293');
INSERT INTO `d_user_token` VALUES ('b94252fc769af0a6416b3e89d1698f708cd6dd74', '1', '1553070569', '1555662569');
INSERT INTO `d_user_token` VALUES ('b9b16ad2d581824e72759bf3bc717a572c749d42', '72', '1552724266', '1555316266');
INSERT INTO `d_user_token` VALUES ('ba3e108c277367fd9cbfc241f696007412a3893e', '59', '1552449735', '1555041735');
INSERT INTO `d_user_token` VALUES ('bdb2ad847219e21cd565f4f1062eb15b84f50b78', '59', '1552574027', '1555166027');
INSERT INTO `d_user_token` VALUES ('c3f823c8dcda27fb9ee1b5e283942800ec9e13cf', '49', '1550731290', '1553323290');
INSERT INTO `d_user_token` VALUES ('c69ff11d48cb5c33ff0099b0d673baa134000d5d', '18', '1552624773', '1555216773');
INSERT INTO `d_user_token` VALUES ('c6b2e13cd5f4d824b4a1c8eb658c19984f9e0deb', '66', '1552317939', '1554909939');
INSERT INTO `d_user_token` VALUES ('c758181437a5987b04d4cafd9925b8dcbbbac14b', '18', '1552624772', '1555216772');
INSERT INTO `d_user_token` VALUES ('cc94c084958d50a3fe0a1b069000fd932bac5899', '49', '1550728118', '1553320118');
INSERT INTO `d_user_token` VALUES ('cdf240bc4d0192cf4fcdf5382068cbb1ca42687f', '59', '1551688488', '1554280488');
INSERT INTO `d_user_token` VALUES ('cdfe4cd040b1953598e32ec09833040970646a40', '45', '1550398394', '1552990394');
INSERT INTO `d_user_token` VALUES ('cf1aba409dead6862a51f413fa035911b0bc0c94', '59', '1552623587', '1555215587');
INSERT INTO `d_user_token` VALUES ('d010ce8d0f1bebfd7cbefe1220305f79454ca5f8', '17', '1549954120', '1552546120');
INSERT INTO `d_user_token` VALUES ('d1656e9ca597ce1becb3102e9e375278009a8982', '61', '1551665558', '1554257558');
INSERT INTO `d_user_token` VALUES ('d43f92c21e3099f1cc6109dc2bf2b776a4d834ad', '2', '1553071545', '1555663545');
INSERT INTO `d_user_token` VALUES ('d5851fac705bf17b72c1135550744b286628d6bf', '69', '1552710288', '1555302288');
INSERT INTO `d_user_token` VALUES ('d61f153c64154c5d0c60e363030874997edf8926', '70', '1552487510', '1555079510');
INSERT INTO `d_user_token` VALUES ('d65e702d5eaa96674ba5834929d204edb9aa919f', '18', '1552708520', '1555300520');
INSERT INTO `d_user_token` VALUES ('d99d7b8f19bc0cd3113629fca3374d15d0e28808', '23', '1550465584', '1553057584');
INSERT INTO `d_user_token` VALUES ('d9b8ef9219de225dbcbfefe05d1d119a8e7e3172', '59', '1552097383', '1554689383');
INSERT INTO `d_user_token` VALUES ('dd754dd308a79568044154bab71d06220dc67552', '69', '1552711626', '1555303626');
INSERT INTO `d_user_token` VALUES ('de38f8fea7d8369edc446eb538eebcff75fe704f', '1', '1553066365', '1555658365');
INSERT INTO `d_user_token` VALUES ('debdca0de42da9825cb4f2547b868d2dc8aed716', '18', '1550460508', '1553052508');
INSERT INTO `d_user_token` VALUES ('dffb7b071da9502d67f9ab8bd5a595fc8866dbe7', '47', '1550465366', '1553057366');
INSERT INTO `d_user_token` VALUES ('e05ca649c5459f9d959705c56979e8d63d31a27f', '66', '1552459339', '1555051339');
INSERT INTO `d_user_token` VALUES ('e126ef95c093cf3bb4cf47d3c3a2c75ff57bc4be', '59', '1552401442', '1554993442');
INSERT INTO `d_user_token` VALUES ('e36e45903e26980f7736d86afc13e5646fa60663', '62', '1552287890', '1554879890');
INSERT INTO `d_user_token` VALUES ('e4decc210f2d0d0540860fbfda11c9163049d50b', '18', '1552624775', '1555216775');
INSERT INTO `d_user_token` VALUES ('ec4c1e79336ea34d900cc92d9c63a2c713057c2d', '23', '1549970312', '1552562312');
INSERT INTO `d_user_token` VALUES ('ec8c8d83933e055f4bafc63007b81c2a60762422', '18', '1551334806', '1553926806');
INSERT INTO `d_user_token` VALUES ('ee02701e9dcb21e869272c70079f40b061b54efe', '72', '1552723828', '1555315828');
INSERT INTO `d_user_token` VALUES ('ee31cafd1e3278a3e1f9f84e01eb9d8d1a4ca130', '33', '1550128442', '1552720442');
INSERT INTO `d_user_token` VALUES ('ee9478b634d180adead7a973e93e5cff327cb331', '71', '1552624001', '1555216001');
INSERT INTO `d_user_token` VALUES ('ef8141bf9db0168140aeb945564cdc417fbad029', '18', '1552624775', '1555216775');
INSERT INTO `d_user_token` VALUES ('f41b5b496b5890b5c7f6766f341f5abd1664aef0', '69', '1552382427', '1554974427');
INSERT INTO `d_user_token` VALUES ('f51d96eab47fa6921e054f090f6f5a71b0301eab', '71', '1552712426', '1555304426');
INSERT INTO `d_user_token` VALUES ('f925c7eafa21f7bbb845b87a99383c25649e1dcf', '33', '1550044504', '1552636504');
INSERT INTO `d_user_token` VALUES ('faaaa445a87669de513b64d35e5dc33397e4417b', '71', '1552710622', '1555302622');
INSERT INTO `d_user_token` VALUES ('fb9b7e9793e1691010b391220267eaed6e64a92f', '43', '1550397413', '1552989413');
INSERT INTO `d_user_token` VALUES ('fc46265af1f640c5d10f3e67b9c34eb1d3b28a4d', '18', '1551248409', '1553840409');
INSERT INTO `d_user_token` VALUES ('fd94304ee7e8086ef9d42cef797a742ccc71980b', '1', '1553064338', '1555656338');
INSERT INTO `d_user_token` VALUES ('fee00edc34df51399affcd74a877038a47129ab3', '18', '1551173552', '1553765552');

-- ----------------------------
-- Table structure for `d_user_work`
-- ----------------------------
DROP TABLE IF EXISTS `d_user_work`;
CREATE TABLE `d_user_work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `company` varchar(255) DEFAULT NULL COMMENT '公司名',
  `province` varchar(255) DEFAULT NULL COMMENT '省',
  `city` varchar(255) DEFAULT NULL COMMENT '市',
  `area` varchar(255) DEFAULT NULL COMMENT '区',
  `address` varchar(1000) DEFAULT NULL COMMENT '具体地址',
  `status` tinyint(3) DEFAULT '1' COMMENT '状态',
  `createtime` int(10) DEFAULT NULL,
  `updatetime` int(10) DEFAULT NULL,
  `checkid` int(11) DEFAULT NULL COMMENT '审核员ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_user_work
-- ----------------------------

-- ----------------------------
-- Table structure for `d_version`
-- ----------------------------
DROP TABLE IF EXISTS `d_version`;
CREATE TABLE `d_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `oldversion` varchar(30) NOT NULL DEFAULT '' COMMENT '旧版本号',
  `newversion` varchar(30) NOT NULL DEFAULT '' COMMENT '新版本号',
  `packagesize` varchar(30) NOT NULL DEFAULT '' COMMENT '包大小',
  `content` varchar(500) NOT NULL DEFAULT '' COMMENT '升级内容',
  `downloadurl` varchar(255) NOT NULL DEFAULT '' COMMENT '下载地址',
  `enforce` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '强制更新',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='版本表';

-- ----------------------------
-- Records of d_version
-- ----------------------------
