/*
Navicat MySQL Data Transfer

Source Server         : 172.20.2.200
Source Server Version : 50721
Source Host           : 172.20.2.200:3306
Source Database       : bootdo

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-12-23 19:51:26
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `b_comments`
-- ----------------------------
DROP TABLE IF EXISTS `b_comments`;
CREATE TABLE `b_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `created` varchar(100) DEFAULT NULL COMMENT '创建者',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `author` varchar(100) DEFAULT NULL COMMENT '作者',
  `author_id` int(11) DEFAULT '0' COMMENT '作者编号',
  `owner_id` int(11) DEFAULT '0' COMMENT '归属人编号',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `url` varchar(100) DEFAULT NULL COMMENT '链接地址',
  `ip` varchar(100) DEFAULT NULL COMMENT 'ip地址',
  `agent` varchar(100) DEFAULT NULL COMMENT '代理人',
  `content` text COMMENT '内容',
  `type` varchar(16) DEFAULT NULL COMMENT '类型',
  `status` varchar(16) DEFAULT NULL COMMENT '状态',
  `parent` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_comments
-- ----------------------------

-- ----------------------------
-- Table structure for `b_content`
-- ----------------------------
DROP TABLE IF EXISTS `b_content`;
CREATE TABLE `b_content` (
  `cid` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `slug` varchar(255) DEFAULT NULL,
  `created` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `modified` bigint(20) DEFAULT NULL COMMENT '最近修改人id',
  `content` text COMMENT '内容',
  `type` varchar(16) DEFAULT NULL COMMENT '类型',
  `tags` varchar(200) DEFAULT NULL COMMENT '标签',
  `categories` varchar(200) DEFAULT NULL COMMENT '分类',
  `hits` int(5) DEFAULT NULL,
  `comments_num` int(5) DEFAULT '0' COMMENT '评论数量',
  `allow_comment` int(1) DEFAULT '0' COMMENT '开启评论',
  `allow_ping` int(1) DEFAULT '0' COMMENT '允许ping',
  `allow_feed` int(1) DEFAULT '0' COMMENT '允许反馈',
  `status` int(1) DEFAULT NULL COMMENT '状态',
  `author` varchar(100) DEFAULT NULL COMMENT '作者',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='文章内容';

-- ----------------------------
-- Records of b_content
-- ----------------------------
INSERT INTO b_content VALUES ('62', '行宫', null, null, null, '', '', null, null, null, null, '1', '1', '0', '1', '元稹');
INSERT INTO b_content VALUES ('63', '登鹳雀楼', null, null, null, '', '', null, null, null, null, '1', '1', '1', '1', '王之涣');
INSERT INTO b_content VALUES ('75', '基于 Springboot 和 Mybatis 的后台管理系统 BootDo', null, null, null, '<h3 style=\"color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif;\">项目介绍</h3><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 30px; list-style-position: initial; list-style-image: initial; color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif; font-size: 16px;\"><li><p>面向学习型的开源框架，简洁高效，减少过渡封装，展现技术本质</p></li><li><p>Springboot作为基础框架，使用mybatis作为持久层框架</p></li><li><p>使用官方推荐的thymeleaf做为模板引擎，shiro作为安全框架,主流技术，“一网打尽”</p></li><li><p>基于注解的sql写法，零XML，极简配置，一键前后台代码生成</p></li></ul><p style=\"color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder;\">演示地址</span>&nbsp;<a href=\"http://47.93.239.129/\" style=\"outline: 0px; color: rgb(68, 102, 187);\">http://47.93.239.129</a></p><h3 style=\"color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif;\">功能简介</h3><p style=\"color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif; font-size: 16px;\">1. 用户管理<br>2. 角色管理<br>3. 部门管理<br>4. 菜单管理<br>5. 系统日志<br>6. 代码生成<br>7. 内容管理</p><h3 style=\"color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif;\">所用框架</h3><p style=\"color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder;\">前端</span><br>1. Bootstrap<br>2. jQuery<br>3. bootstrap-table<br>4. layer<br>5. jsTree&nbsp;<br>6. summernote<br>7. jquery-validate<br>8. jquery-treegrid</p><p style=\"color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder;\">后端</span><br>1. SpringBoot&nbsp;<br>2. MyBatis<br>3. Thymeleaf<br>4. Shiro<br>5. druid</p><p style=\"color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder;\">项目截图</span></p><p style=\"color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif; font-size: 16px;\"><img height=\"400\" src=\"https://static.oschina.net/uploads/space/2017/0912/182421_5LaN_3244087.png\" width=\"650\" style=\"border-width: initial; border-style: none; outline: 0px; width: 882px; max-width: -webkit-fit-content; height: auto;\"></p>', '', null, null, null, null, '0', '0', '1', '1', '李白');
INSERT INTO b_content VALUES ('100', 'springboot thymeleaf和shiro 整合——按钮可见性', null, null, null, '<p style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; margin-bottom: 16px; color: rgb(61, 70, 77); font-family: &quot;Pingfang SC&quot;, STHeiti, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; font-size: 16px; background-color: rgb(248, 248, 248);\">添加依赖</p><pre class=\"hljs xml\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; padding: 2px; background: rgb(63, 63, 63); color: rgb(220, 220, 220); border-radius: 3px; line-height: 1.4; word-wrap: normal; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace;\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\">&lt;<span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\">dependency</span>&gt;</span><code class=\"hljs xml\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; display: block; overflow-x: auto; padding: 10px; background: rgb(63, 63, 63); color: rgb(220, 220, 220); border-radius: 4px; font-size: 13px; line-height: 1.4; word-wrap: normal; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace;\"> \r\n   <span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&lt;</span><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\">groupId</span></span></span><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&gt;</span></span>com.github.theborakompanioni<span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&lt;/</span><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\">groupId</span></span></span><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&gt;</span></span>\r\n    <span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&lt;</span><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\">artifactId</span></span></span><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&gt;</span></span>thymeleaf-extras-shiro<span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&lt;/</span><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\">artifactId</span></span></span><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&gt;</span></span>\r\n    <span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&lt;</span><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\">version</span></span></span><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&gt;</span></span></code>1.2.1<code class=\"hljs xml\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; display: block; overflow-x: auto; padding: 10px; background: rgb(63, 63, 63); color: rgb(220, 220, 220); border-radius: 4px; font-size: 13px; line-height: 1.4; word-wrap: normal; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace;\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&lt;/</span><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\">version</span></span></span><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&gt;</span></span> \r\n<span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&lt;/</span><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\">dependency</span></span></span><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&gt;</span></span></code></pre><p style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; margin-bottom: 16px; color: rgb(61, 70, 77); font-family: &quot;Pingfang SC&quot;, STHeiti, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; font-size: 16px; background-color: rgb(248, 248, 248);\">&nbsp;</p><p style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; margin-bottom: 16px; color: rgb(61, 70, 77); font-family: &quot;Pingfang SC&quot;, STHeiti, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; font-size: 16px; background-color: rgb(248, 248, 248);\">在shiro的configuration中配置</p><pre class=\"hljs java\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; padding: 2px; background: rgb(63, 63, 63); color: rgb(220, 220, 220); border-radius: 3px; line-height: 1.4; word-wrap: normal; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace;\"><span class=\"hljs-meta\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(127, 159, 127);\">@Bean</span>\r\n    <span class=\"hljs-function\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\"><span class=\"hljs-keyword\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\">public</span> ShiroDialect <span class=\"hljs-title\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\">shiroDialect</span><span class=\"hljs-params\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">()</span> </span>{\r\n        <span class=\"hljs-keyword\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\">return</span> <span class=\"hljs-keyword\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\">new</span> ShiroDialect();\r\n    }</pre><p style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; margin-bottom: 16px; color: rgb(61, 70, 77); font-family: &quot;Pingfang SC&quot;, STHeiti, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; font-size: 16px; background-color: rgb(248, 248, 248);\">&nbsp;</p><p style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; margin-bottom: 16px; color: rgb(61, 70, 77); font-family: &quot;Pingfang SC&quot;, STHeiti, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; font-size: 16px; background-color: rgb(248, 248, 248);\">在html中加入xmlns</p><pre class=\"hljs xml\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; padding: 2px; background: rgb(63, 63, 63); color: rgb(220, 220, 220); border-radius: 3px; line-height: 1.4; word-wrap: normal; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace;\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\">&lt;<span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\">html</span> <span class=\"hljs-attr\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">lang</span>=<span class=\"hljs-string\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(204, 147, 147);\">\"zh_CN\"</span> <span class=\"hljs-attr\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">xmlns:th</span>=<span class=\"hljs-string\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(204, 147, 147);\">\"http://www.thymeleaf.org\"</span>\r\n      <span class=\"hljs-attr\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">xmlns:shiro</span>=<span class=\"hljs-string\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(204, 147, 147);\">\"http://www.pollix.at/thymeleaf/shiro\"</span>&gt;</span></pre><p style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; margin-bottom: 16px; color: rgb(61, 70, 77); font-family: &quot;Pingfang SC&quot;, STHeiti, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; font-size: 16px; background-color: rgb(248, 248, 248);\">例子</p><pre class=\"hljs scala\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; padding: 2px; background: rgb(63, 63, 63); color: rgb(220, 220, 220); border-radius: 3px; line-height: 1.4; word-wrap: normal; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace;\">&lt;button shiro:hasPermission=<span class=\"hljs-string\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(204, 147, 147);\">\"sys:user:add\"</span> <span class=\"hljs-class\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\"><span class=\"hljs-keyword\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\">type</span></span>=<span class=\"hljs-string\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(204, 147, 147);\">\"button\"</span> <span class=\"hljs-class\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\"><span class=\"hljs-keyword\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\">class</span></span>=<span class=\"hljs-string\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(204, 147, 147);\">\"btn &nbsp;btn-primary\"</span> onclick=<span class=\"hljs-string\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(204, 147, 147);\">\"add()\"</span>&gt;\r\n&nbsp;&nbsp; &lt;i <span class=\"hljs-class\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\"><span class=\"hljs-keyword\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\">class</span></span>=<span class=\"hljs-string\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(204, 147, 147);\">\"fa fa-plus\"</span> aria-hidden=<span class=\"hljs-string\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(204, 147, 147);\">\"true\"</span>&gt;&lt;/i&gt;添加\r\n&lt;/button&gt;</pre>', '', null, null, null, null, '1', null, '0', '1', 'bootdo');

-- ----------------------------
-- Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `time` int(11) DEFAULT NULL COMMENT '响应时间',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=857 DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO sys_log VALUES ('827', '1', 'admin', '登录', '2', 'com.bootdo.system.controller.LoginController.ajaxLogin()', '\"admin\"', '127.0.0.1', '2017-09-18 12:46:37');
INSERT INTO sys_log VALUES ('828', '1', 'admin', '请求访问主页', '2', 'com.bootdo.system.controller.LoginController.Index()', '{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"1\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"1\",\"text\":\"运行监控\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"1\",\"text\":\"代码生成\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"}],\"name\":\"超级管理员\"}', '127.0.0.1', '2017-09-18 12:46:37');
INSERT INTO sys_log VALUES ('829', '1', 'admin', '请求访问主页', '2', 'com.bootdo.system.controller.LoginController.Index()', '{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"1\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"1\",\"text\":\"运行监控\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"1\",\"text\":\"代码生成\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"}],\"name\":\"超级管理员\"}', '127.0.0.1', '2017-09-18 12:46:47');
INSERT INTO sys_log VALUES ('830', '1', 'admin', '请求访问主页', '3', 'com.bootdo.system.controller.LoginController.Index()', '{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"1\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"1\",\"text\":\"运行监控\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"1\",\"text\":\"代码生成\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"}],\"name\":\"超级管理员\"}', '127.0.0.1', '2017-09-18 12:47:33');
INSERT INTO sys_log VALUES ('831', '1', 'admin', '请求访问主页', '3', 'com.bootdo.system.controller.LoginController.Index()', '{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"1\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"1\",\"text\":\"运行监控\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"1\",\"text\":\"代码生成\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"}],\"name\":\"超级管理员\"}', '127.0.0.1', '2017-09-18 12:56:08');
INSERT INTO sys_log VALUES ('832', '1', 'admin', '请求访问主页', '3', 'com.bootdo.system.controller.LoginController.Index()', '{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"1\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"1\",\"text\":\"运行监控\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"1\",\"text\":\"代码生成\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"}],\"name\":\"超级管理员\"}', '127.0.0.1', '2017-09-18 12:56:50');
INSERT INTO sys_log VALUES ('833', '1', 'admin', '登录', '4', 'com.bootdo.system.controller.LoginController.ajaxLogin()', '\"admin\"', '127.0.0.1', '2017-09-18 13:18:28');
INSERT INTO sys_log VALUES ('834', '1', 'admin', '请求访问主页', '4', 'com.bootdo.system.controller.LoginController.Index()', '{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"1\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"1\",\"text\":\"运行监控\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"1\",\"text\":\"代码生成\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"}],\"name\":\"超级管理员\"}', '127.0.0.1', '2017-09-18 13:18:28');
INSERT INTO sys_log VALUES ('835', '1', 'admin', '请求访问主页', '3', 'com.bootdo.system.controller.LoginController.Index()', '{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"1\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"1\",\"text\":\"运行监控\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"1\",\"text\":\"代码生成\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"}],\"name\":\"超级管理员\"}', '127.0.0.1', '2017-09-18 13:31:45');
INSERT INTO sys_log VALUES ('836', '1', 'admin', '请求访问主页', '3', 'com.bootdo.system.controller.LoginController.Index()', '{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"1\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"1\",\"text\":\"运行监控\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"1\",\"text\":\"代码生成\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"}],\"name\":\"超级管理员\"}', '127.0.0.1', '2017-09-18 13:32:40');
INSERT INTO sys_log VALUES ('837', '1', 'admin', '请求访问主页', '3', 'com.bootdo.system.controller.LoginController.Index()', '{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"1\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"1\",\"text\":\"运行监控\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"1\",\"text\":\"代码生成\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"}],\"name\":\"超级管理员\"}', '127.0.0.1', '2017-09-18 13:33:20');
INSERT INTO sys_log VALUES ('838', '1', 'admin', '登录', '8', 'com.bootdo.system.controller.LoginController.ajaxLogin()', '\"admin\"', '127.0.0.1', '2017-09-18 14:19:57');
INSERT INTO sys_log VALUES ('839', '1', 'admin', '请求访问主页', '7', 'com.bootdo.system.controller.LoginController.Index()', '{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"1\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"1\",\"text\":\"运行监控\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"1\",\"text\":\"代码生成\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"}],\"name\":\"超级管理员\"}', '127.0.0.1', '2017-09-18 14:19:57');
INSERT INTO sys_log VALUES ('840', '1', 'admin', '编辑角色', '2', 'com.bootdo.system.controller.RoleController.edit()', '1', '127.0.0.1', '2017-09-18 14:20:04');
INSERT INTO sys_log VALUES ('842', '1', 'admin', '请求访问主页', '4', 'com.bootdo.system.controller.LoginController.Index()', '{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"1\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"1\",\"text\":\"运行监控\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"1\",\"text\":\"代码生成\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"}],\"name\":\"超级管理员\"}', '127.0.0.1', '2017-09-18 14:20:16');
INSERT INTO sys_log VALUES ('843', '1', 'admin', '登录', '42689', 'com.bootdo.system.controller.LoginController.ajaxLogin()', '\"admin\"', '127.0.0.1', '2019-10-22 15:31:47');
INSERT INTO sys_log VALUES ('844', '1', 'admin', '请求访问主页', '9', 'com.bootdo.system.controller.LoginController.Index()', '{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"1\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"1\",\"text\":\"运行监控\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"1\",\"text\":\"代码生成\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"}],\"name\":\"超级管理员\"}', '127.0.0.1', '2019-10-22 15:31:47');
INSERT INTO sys_log VALUES ('845', '1', 'admin', '登录', '21188', 'com.bootdo.system.controller.LoginController.ajaxLogin()', '\"admin\"', '127.0.0.1', '2019-10-22 15:36:16');
INSERT INTO sys_log VALUES ('846', '1', 'admin', '请求访问主页', '7', 'com.bootdo.system.controller.LoginController.Index()', '{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"1\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"1\",\"text\":\"运行监控\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"1\",\"text\":\"代码生成\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"}],\"name\":\"超级管理员\"}', '127.0.0.1', '2019-10-22 15:36:16');
INSERT INTO sys_log VALUES ('848', '1', 'admin', '编辑角色', '2', 'com.example.demo.system.controller.RoleController.edit()', '1', '127.0.0.1', '2019-10-22 16:10:58');
INSERT INTO sys_log VALUES ('849', '1', 'admin', '更新角色', '71', 'com.example.demo.system.controller.RoleController.update()', '{\"menuIds\":[27,48,57,1,2,6,15,55,56,62,7,3,51,58,59,60,50,49,20,21,22,61,12,13,14,24,25,26],\"remark\":\"拥有最高权限\",\"roleId\":1,\"roleName\":\"超级用户角色\"}', '127.0.0.1', '2019-10-22 16:11:13');
INSERT INTO sys_log VALUES ('850', '1', 'admin', '添加菜单', '2', 'com.example.demo.system.controller.MenuController.add()', '{\"pId\":0,\"pName\":\"根目录\"}', '127.0.0.1', '2019-10-22 16:45:08');
INSERT INTO sys_log VALUES ('851', '1', 'admin', '编辑菜单', '3', 'com.example.demo.system.controller.MenuController.edit()', '{\"menu\":{\"gmtCreate\":1502290187000,\"icon\":\"fa fa-bars\",\"menuId\":1,\"name\":\"基础管理\",\"orderNum\":0,\"parentId\":0,\"perms\":\"\",\"type\":0,\"url\":\"\"}}', '127.0.0.1', '2019-10-22 16:45:39');
INSERT INTO sys_log VALUES ('852', '1', 'admin', '保存菜单', '7', 'com.example.demo.system.controller.MenuController.save()', '{}', '127.0.0.1', '2019-10-23 15:14:01');
INSERT INTO sys_log VALUES ('853', '1', 'admin', '添加用户', '8', 'com.example.demo.system.controller.UserController.add()', '{\"roles\":[{\"gmtCreate\":1502469832000,\"gmtModified\":1502536499000,\"remark\":\"拥有最高权限\",\"roleId\":1,\"roleName\":\"超级用户角色\",\"roleSign\":\"admin\",\"userIdCreate\":2},{\"remark\":\"消费1w块\",\"roleId\":48,\"roleName\":\"钻石会员\"},{\"remark\":\"消费5000以上\",\"roleId\":49,\"roleName\":\"白金会员\"},{\"remark\":\"\",\"roleId\":52,\"roleName\":\"白银会员\"},{\"remark\":\"\",\"roleId\":55,\"roleName\":\"黄铜会员\"}]}', '127.0.0.1', '2019-12-11 16:48:57');
INSERT INTO sys_log VALUES ('854', '1', 'admin', '请求更改用户密码', '1', 'com.example.demo.system.controller.UserController.resetPwd()', '126', '127.0.0.1', '2019-12-11 16:49:06');
INSERT INTO sys_log VALUES ('855', '1', 'admin', '编辑菜单', '4', 'com.example.demo.system.controller.MenuController.edit()', '{\"menu\":{\"icon\":\"fa fa-file-image-o\",\"menuId\":50,\"name\":\"文章列表\",\"parentId\":49,\"perms\":\"blog:bContent:bContent\",\"type\":1,\"url\":\"blog/bContent\"}}', '127.0.0.1', '2019-12-23 18:49:33');
INSERT INTO sys_log VALUES ('856', '1', 'admin', '更新菜单', '4', 'com.example.demo.system.controller.MenuController.update()', '{\"icon\":\"fa fa-file-image-o\",\"menuId\":50,\"name\":\"文章列表\",\"orderNum\":1,\"perms\":\"blog:bContent:bContent\",\"type\":1,\"url\":\"blog/bContent\"}', '127.0.0.1', '2019-12-23 18:49:36');

-- ----------------------------
-- Table structure for `sys_macro`
-- ----------------------------
DROP TABLE IF EXISTS `sys_macro`;
CREATE TABLE `sys_macro` (
  `macro_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_id` bigint(255) DEFAULT NULL COMMENT '父级id',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `value` varchar(2000) DEFAULT NULL COMMENT '值',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态，0：隐藏   1：显示',
  `type` tinyint(20) DEFAULT NULL COMMENT '类型,0:目录，1:参数配置',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`macro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='通用字典表';

-- ----------------------------
-- Records of sys_macro
-- ----------------------------
INSERT INTO sys_macro VALUES ('1', '0', '系统参数', null, '1', '0', '0', null, '2017-08-15 14:51:27', null);
INSERT INTO sys_macro VALUES ('2', '1', '用户状态', 'userStatus', '1', '0', '0', null, '2017-08-15 14:51:30', null);
INSERT INTO sys_macro VALUES ('3', '2', '正常', '1', '0', '1', '0', '用户可登录', '2017-08-15 14:52:48', '2017-08-15 20:23:29');
INSERT INTO sys_macro VALUES ('4', '2', '禁用', '0', '1', '1', '0', '禁止用户登录', '2017-08-15 14:52:51', '2017-08-15 20:44:42');
INSERT INTO sys_macro VALUES ('5', '0', '客户关系', ' clientManage', '1', '0', '1', null, '2017-08-15 19:58:24', null);
INSERT INTO sys_macro VALUES ('6', '5', '产品信息', 'clientProduct', '1', '0', '0', null, '2017-08-15 19:59:06', null);

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO sys_menu VALUES ('1', '0', '基础管理', '', '', '0', 'fa fa-bars', '1', '2017-08-09 22:49:47', null);
INSERT INTO sys_menu VALUES ('2', '3', '系统菜单', 'sys/menu/', 'sys:menu:menu', '1', 'fa fa-th-list', '2', '2017-08-09 22:55:15', null);
INSERT INTO sys_menu VALUES ('3', '0', '系统管理', null, null, '0', 'fa fa-desktop', '2', '2017-08-09 23:06:55', '2017-08-14 14:13:43');
INSERT INTO sys_menu VALUES ('6', '3', '用户管理', 'sys/user/', 'sys:user:user', '1', 'fa fa-user', '1', '2017-08-10 14:12:11', null);
INSERT INTO sys_menu VALUES ('7', '3', '角色管理', 'sys/role', 'sys:role:role', '1', 'fa fa-paw', '3', '2017-08-10 14:13:19', null);
INSERT INTO sys_menu VALUES ('12', '6', '新增', '', 'sys:user:add', '2', '', '1', '2017-08-14 10:51:35', null);
INSERT INTO sys_menu VALUES ('13', '6', '编辑', '', 'sys:user:edit', '2', '', '2', '2017-08-14 10:52:06', null);
INSERT INTO sys_menu VALUES ('14', '6', '删除', null, 'sys:user:remove', '2', null, '3', '2017-08-14 10:52:24', null);
INSERT INTO sys_menu VALUES ('15', '7', '新增', '', 'sys:role:add', '2', '', '1', '2017-08-14 10:56:37', null);
INSERT INTO sys_menu VALUES ('20', '2', '新增', '', 'sys:menu:add', '2', '', '2', '2017-08-14 10:59:32', null);
INSERT INTO sys_menu VALUES ('21', '2', '编辑', '', 'sys:menu:edit', '2', '', '3', '2017-08-14 10:59:56', null);
INSERT INTO sys_menu VALUES ('22', '2', '删除', '', 'sys:menu:remove', '2', '', '4', '2017-08-14 11:00:26', null);
INSERT INTO sys_menu VALUES ('24', '6', '批量删除', '', 'sys:user:batchRemove', '2', '', '4', '2017-08-14 17:27:18', null);
INSERT INTO sys_menu VALUES ('25', '6', '停用', null, 'sys:user:disable', '2', null, '5', '2017-08-14 17:27:43', null);
INSERT INTO sys_menu VALUES ('26', '6', '重置密码', '', 'sys:user:resetPwd', '2', '', '5', '2017-08-14 17:28:34', null);
INSERT INTO sys_menu VALUES ('27', '1', '系统日志', '/log', 'common:log', '1', 'fa fa-warning', '1', '2017-08-14 22:11:53', null);
INSERT INTO sys_menu VALUES ('28', '27', '刷新', null, 'sys:log:list', '2', null, '1', '2017-08-14 22:30:22', null);
INSERT INTO sys_menu VALUES ('29', '27', '删除', null, 'sys:log:remove', '2', null, '2', '2017-08-14 22:30:43', null);
INSERT INTO sys_menu VALUES ('30', '27', '清空', null, 'sys:log:clear', '2', null, '3', '2017-08-14 22:31:02', null);
INSERT INTO sys_menu VALUES ('48', '1', '代码生成', '/generator', 'common:generator', '1', 'fa fa-code', '2', null, null);
INSERT INTO sys_menu VALUES ('49', '0', '博客管理', '', '', '0', 'fa fa-rss', '3', null, null);
INSERT INTO sys_menu VALUES ('50', '49', '文章列表', 'blog/bContent', 'blog:bContent:bContent', '1', 'fa fa-file-image-o', '1', null, null);
INSERT INTO sys_menu VALUES ('51', '50', '新增', '', 'blog:bContent:add', '2', '', '1', null, null);
INSERT INTO sys_menu VALUES ('55', '7', '编辑', '', 'sys:role:edit', '2', '', '2', null, null);
INSERT INTO sys_menu VALUES ('56', '7', '删除', '', 'sys:role:remove', '2', null, '3', null, null);
INSERT INTO sys_menu VALUES ('57', '1', '运行监控', '/druid/index.html', '', '1', 'fa fa-caret-square-o-right', '3', null, null);
INSERT INTO sys_menu VALUES ('58', '50', '编辑', '', 'blog:bContent:edit', '2', null, '4', null, null);
INSERT INTO sys_menu VALUES ('59', '50', '删除', '', 'blog:bContent:remove', '2', null, '5', null, null);
INSERT INTO sys_menu VALUES ('60', '50', '批量删除', '', 'blog:bContent:batchRemove', '2', null, '6', null, null);
INSERT INTO sys_menu VALUES ('61', '2', '批量删除', '', 'sys:menu:batchRemove', '2', null, '5', null, null);
INSERT INTO sys_menu VALUES ('62', '7', '批量删除', '', 'sys:role:batchRemove', '2', null, '4', null, null);

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `role_sign` varchar(100) DEFAULT NULL COMMENT '角色标识',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `user_id_create` bigint(255) DEFAULT NULL COMMENT '创建用户id',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO sys_role VALUES ('1', '超级用户角色', 'admin', '拥有最高权限', '2', '2017-08-12 00:43:52', '2017-08-12 19:14:59');
INSERT INTO sys_role VALUES ('48', '钻石会员', null, '消费1w块', null, null, null);
INSERT INTO sys_role VALUES ('49', '白金会员', null, '消费5000以上', null, null, null);
INSERT INTO sys_role VALUES ('52', '白银会员', null, '', null, null, null);
INSERT INTO sys_role VALUES ('55', '黄铜会员', null, '', null, null, null);

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1488 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO sys_role_menu VALUES ('367', '44', '1');
INSERT INTO sys_role_menu VALUES ('368', '44', '32');
INSERT INTO sys_role_menu VALUES ('369', '44', '33');
INSERT INTO sys_role_menu VALUES ('370', '44', '34');
INSERT INTO sys_role_menu VALUES ('371', '44', '35');
INSERT INTO sys_role_menu VALUES ('372', '44', '28');
INSERT INTO sys_role_menu VALUES ('373', '44', '29');
INSERT INTO sys_role_menu VALUES ('374', '44', '30');
INSERT INTO sys_role_menu VALUES ('375', '44', '38');
INSERT INTO sys_role_menu VALUES ('376', '44', '4');
INSERT INTO sys_role_menu VALUES ('377', '44', '27');
INSERT INTO sys_role_menu VALUES ('378', '45', '38');
INSERT INTO sys_role_menu VALUES ('379', '46', '3');
INSERT INTO sys_role_menu VALUES ('380', '46', '20');
INSERT INTO sys_role_menu VALUES ('381', '46', '21');
INSERT INTO sys_role_menu VALUES ('382', '46', '22');
INSERT INTO sys_role_menu VALUES ('383', '46', '23');
INSERT INTO sys_role_menu VALUES ('384', '46', '11');
INSERT INTO sys_role_menu VALUES ('385', '46', '12');
INSERT INTO sys_role_menu VALUES ('386', '46', '13');
INSERT INTO sys_role_menu VALUES ('387', '46', '14');
INSERT INTO sys_role_menu VALUES ('388', '46', '24');
INSERT INTO sys_role_menu VALUES ('389', '46', '25');
INSERT INTO sys_role_menu VALUES ('390', '46', '26');
INSERT INTO sys_role_menu VALUES ('391', '46', '15');
INSERT INTO sys_role_menu VALUES ('392', '46', '2');
INSERT INTO sys_role_menu VALUES ('393', '46', '6');
INSERT INTO sys_role_menu VALUES ('394', '46', '7');
INSERT INTO sys_role_menu VALUES ('581', '48', '38');
INSERT INTO sys_role_menu VALUES ('582', '48', '32');
INSERT INTO sys_role_menu VALUES ('583', '48', '33');
INSERT INTO sys_role_menu VALUES ('584', '48', '34');
INSERT INTO sys_role_menu VALUES ('585', '48', '35');
INSERT INTO sys_role_menu VALUES ('586', '48', '4');
INSERT INTO sys_role_menu VALUES ('587', '48', '28');
INSERT INTO sys_role_menu VALUES ('588', '48', '29');
INSERT INTO sys_role_menu VALUES ('589', '48', '30');
INSERT INTO sys_role_menu VALUES ('590', '48', '27');
INSERT INTO sys_role_menu VALUES ('591', '48', '1');
INSERT INTO sys_role_menu VALUES ('598', '50', '38');
INSERT INTO sys_role_menu VALUES ('632', '38', '42');
INSERT INTO sys_role_menu VALUES ('737', '51', '38');
INSERT INTO sys_role_menu VALUES ('738', '51', '39');
INSERT INTO sys_role_menu VALUES ('739', '51', '40');
INSERT INTO sys_role_menu VALUES ('740', '51', '41');
INSERT INTO sys_role_menu VALUES ('741', '51', '4');
INSERT INTO sys_role_menu VALUES ('742', '51', '32');
INSERT INTO sys_role_menu VALUES ('743', '51', '33');
INSERT INTO sys_role_menu VALUES ('744', '51', '34');
INSERT INTO sys_role_menu VALUES ('745', '51', '35');
INSERT INTO sys_role_menu VALUES ('746', '51', '27');
INSERT INTO sys_role_menu VALUES ('747', '51', '28');
INSERT INTO sys_role_menu VALUES ('748', '51', '29');
INSERT INTO sys_role_menu VALUES ('749', '51', '30');
INSERT INTO sys_role_menu VALUES ('750', '51', '1');
INSERT INTO sys_role_menu VALUES ('1038', '49', '-1');
INSERT INTO sys_role_menu VALUES ('1039', '52', '50');
INSERT INTO sys_role_menu VALUES ('1040', '52', '49');
INSERT INTO sys_role_menu VALUES ('1064', '54', '53');
INSERT INTO sys_role_menu VALUES ('1095', '55', '2');
INSERT INTO sys_role_menu VALUES ('1096', '55', '6');
INSERT INTO sys_role_menu VALUES ('1097', '55', '7');
INSERT INTO sys_role_menu VALUES ('1098', '55', '3');
INSERT INTO sys_role_menu VALUES ('1099', '55', '50');
INSERT INTO sys_role_menu VALUES ('1100', '55', '49');
INSERT INTO sys_role_menu VALUES ('1101', '55', '1');
INSERT INTO sys_role_menu VALUES ('1375', '59', '1');
INSERT INTO sys_role_menu VALUES ('1376', '59', '3');
INSERT INTO sys_role_menu VALUES ('1460', '1', '27');
INSERT INTO sys_role_menu VALUES ('1461', '1', '48');
INSERT INTO sys_role_menu VALUES ('1462', '1', '57');
INSERT INTO sys_role_menu VALUES ('1463', '1', '1');
INSERT INTO sys_role_menu VALUES ('1464', '1', '2');
INSERT INTO sys_role_menu VALUES ('1465', '1', '6');
INSERT INTO sys_role_menu VALUES ('1466', '1', '15');
INSERT INTO sys_role_menu VALUES ('1467', '1', '55');
INSERT INTO sys_role_menu VALUES ('1468', '1', '56');
INSERT INTO sys_role_menu VALUES ('1469', '1', '62');
INSERT INTO sys_role_menu VALUES ('1470', '1', '7');
INSERT INTO sys_role_menu VALUES ('1471', '1', '3');
INSERT INTO sys_role_menu VALUES ('1472', '1', '51');
INSERT INTO sys_role_menu VALUES ('1473', '1', '58');
INSERT INTO sys_role_menu VALUES ('1474', '1', '59');
INSERT INTO sys_role_menu VALUES ('1475', '1', '60');
INSERT INTO sys_role_menu VALUES ('1476', '1', '50');
INSERT INTO sys_role_menu VALUES ('1477', '1', '49');
INSERT INTO sys_role_menu VALUES ('1478', '1', '20');
INSERT INTO sys_role_menu VALUES ('1479', '1', '21');
INSERT INTO sys_role_menu VALUES ('1480', '1', '22');
INSERT INTO sys_role_menu VALUES ('1481', '1', '61');
INSERT INTO sys_role_menu VALUES ('1482', '1', '12');
INSERT INTO sys_role_menu VALUES ('1483', '1', '13');
INSERT INTO sys_role_menu VALUES ('1484', '1', '14');
INSERT INTO sys_role_menu VALUES ('1485', '1', '24');
INSERT INTO sys_role_menu VALUES ('1486', '1', '25');
INSERT INTO sys_role_menu VALUES ('1487', '1', '26');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(255) DEFAULT NULL COMMENT '状态 0:禁用，1:正常',
  `user_id_create` bigint(255) DEFAULT NULL COMMENT '创建用户id',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO sys_user VALUES ('1', 'admin', '33808479d49ca8a3cdc93d4f976d1e3d', 'admin@example.com', '123456', '1', '1', '2017-08-15 21:40:39', '2017-08-15 21:41:00', '超级管理员');
INSERT INTO sys_user VALUES ('2', 'test', '6cf3bb3deba2aadbd41ec9a22511084e', 'test@bootdo.com', null, '1', '1', '2017-08-14 13:43:05', '2017-08-14 21:15:36', '临时用户');
INSERT INTO sys_user VALUES ('36', 'ldh', 'bfd9394475754fbe45866eba97738c36', 'ldh@bootdo.com', null, '1', null, null, null, '刘德华');
INSERT INTO sys_user VALUES ('123', 'zxy', '35174ba93f5fe7267f1fb3c1bf903781', 'zxy@bootdo', null, '1', null, null, null, '张学友');
INSERT INTO sys_user VALUES ('124', 'wyf', 'e179e6f687bbd57b9d7efc4746c8090a', 'wyf@bootdo.com', null, '1', null, null, null, '吴亦凡');
INSERT INTO sys_user VALUES ('126', 'dd', 'cfc41ca47005f52d436d0d30bb993a81', '1@1', null, '1', null, null, null, 'dd');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO sys_user_role VALUES ('67', '2', '38');
INSERT INTO sys_user_role VALUES ('68', '2', '48');
INSERT INTO sys_user_role VALUES ('73', '30', '48');
INSERT INTO sys_user_role VALUES ('74', '30', '49');
INSERT INTO sys_user_role VALUES ('75', '30', '50');
INSERT INTO sys_user_role VALUES ('76', '31', '48');
INSERT INTO sys_user_role VALUES ('77', '31', '49');
INSERT INTO sys_user_role VALUES ('78', '31', '52');
INSERT INTO sys_user_role VALUES ('79', '32', '48');
INSERT INTO sys_user_role VALUES ('80', '32', '49');
INSERT INTO sys_user_role VALUES ('81', '32', '50');
INSERT INTO sys_user_role VALUES ('82', '32', '51');
INSERT INTO sys_user_role VALUES ('83', '32', '52');
INSERT INTO sys_user_role VALUES ('84', '33', '38');
INSERT INTO sys_user_role VALUES ('85', '33', '49');
INSERT INTO sys_user_role VALUES ('86', '33', '52');
INSERT INTO sys_user_role VALUES ('87', '34', '50');
INSERT INTO sys_user_role VALUES ('88', '34', '51');
INSERT INTO sys_user_role VALUES ('89', '34', '52');
INSERT INTO sys_user_role VALUES ('97', '36', '48');
INSERT INTO sys_user_role VALUES ('104', '123', '55');
INSERT INTO sys_user_role VALUES ('106', '124', '1');
INSERT INTO sys_user_role VALUES ('107', '126', '1');
INSERT INTO sys_user_role VALUES ('108', '126', '48');
INSERT INTO sys_user_role VALUES ('110', '1', '1');
