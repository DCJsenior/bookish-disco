/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : music

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2020-08-22 20:58:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '1');

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `type` tinyint(1) DEFAULT NULL COMMENT '收藏类型（0歌曲1歌单）',
  `song_id` int(11) DEFAULT NULL COMMENT '歌曲id',
  `song_list_id` int(11) DEFAULT NULL COMMENT '歌单id',
  `create_time` datetime DEFAULT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏';

-- ----------------------------
-- Records of collect
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `type` tinyint(1) DEFAULT NULL COMMENT '收藏类型（0歌曲1歌单）',
  `song_id` int(11) DEFAULT NULL COMMENT '歌曲id',
  `song_list_id` int(11) DEFAULT NULL COMMENT '歌单id',
  `content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `create_time` datetime DEFAULT NULL COMMENT '收藏时间',
  `up` int(11) DEFAULT '0' COMMENT '评论点赞数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论';

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for consumer
-- ----------------------------
DROP TABLE IF EXISTS `consumer`;
CREATE TABLE `consumer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别（1男0女）',
  `phone_num` char(15) DEFAULT NULL COMMENT '电话',
  `email` char(30) DEFAULT NULL COMMENT '邮箱',
  `birth` datetime DEFAULT NULL COMMENT '生日',
  `introduction` varchar(255) DEFAULT NULL COMMENT '签名',
  `location` varchar(255) DEFAULT NULL COMMENT '地区',
  `avator` varchar(255) DEFAULT NULL COMMENT '头像',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='前端用户';

-- ----------------------------
-- Records of consumer
-- ----------------------------

-- ----------------------------
-- Table structure for list_song
-- ----------------------------
DROP TABLE IF EXISTS `list_song`;
CREATE TABLE `list_song` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `song_id` int(11) DEFAULT NULL COMMENT '歌曲',
  `song_list_id` int(11) DEFAULT NULL COMMENT '歌单id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='歌单包含歌曲列表';

-- ----------------------------
-- Records of list_song
-- ----------------------------

-- ----------------------------
-- Table structure for rank
-- ----------------------------
DROP TABLE IF EXISTS `rank`;
CREATE TABLE `rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `song_list_id` int(11) DEFAULT NULL COMMENT '歌单id',
  `consumer_id` int(11) DEFAULT NULL COMMENT '用户id',
  `score` int(11) DEFAULT NULL COMMENT '评分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评价';

-- ----------------------------
-- Records of rank
-- ----------------------------

-- ----------------------------
-- Table structure for singer
-- ----------------------------
DROP TABLE IF EXISTS `singer`;
CREATE TABLE `singer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别（1男0女）',
  `pic` varchar(255) DEFAULT NULL COMMENT '头像',
  `birth` datetime DEFAULT NULL COMMENT '生日',
  `location` varchar(255) DEFAULT NULL COMMENT '地区',
  `introduction` varchar(255) DEFAULT NULL COMMENT '简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='歌手';

-- ----------------------------
-- Records of singer
-- ----------------------------

-- ----------------------------
-- Table structure for song
-- ----------------------------
DROP TABLE IF EXISTS `song`;
CREATE TABLE `song` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `singer_id` int(11) DEFAULT NULL COMMENT '歌手id',
  `name` varchar(255) DEFAULT NULL COMMENT '革命',
  `introduction` varchar(255) DEFAULT NULL COMMENT '简介',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `pic` varchar(255) DEFAULT NULL COMMENT '歌曲图片',
  `lyric` text COMMENT '歌词',
  `url` varchar(255) DEFAULT NULL COMMENT '歌曲地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='歌曲';

-- ----------------------------
-- Records of song
-- ----------------------------

-- ----------------------------
-- Table structure for song_list
-- ----------------------------
DROP TABLE IF EXISTS `song_list`;
CREATE TABLE `song_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `pic` varchar(255) DEFAULT NULL COMMENT '歌单图片',
  `introduction` varchar(255) DEFAULT NULL COMMENT '简介',
  `style` varchar(255) DEFAULT NULL COMMENT '风格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='歌单';

-- ----------------------------
-- Records of song_list
-- ----------------------------
