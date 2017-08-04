/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : mydb

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-08-04 16:17:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `idarticle` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(45) NOT NULL COMMENT '题目',
  `username` varchar(45) NOT NULL COMMENT '用户名-->user表外键',
  `articletime` date NOT NULL COMMENT '文章上传时间',
  `mainPic` varchar(45) NOT NULL COMMENT '主图',
  `content` text NOT NULL COMMENT '文章内容',
  `stars` int(11) DEFAULT '0' COMMENT '点赞数目',
  `location` varchar(45) DEFAULT NULL COMMENT '乡村地理位置',
  `user_userid` int(11) NOT NULL,
  PRIMARY KEY (`idarticle`),
  KEY `fk_article_user1_idx` (`user_userid`),
  CONSTRAINT `fk_article_user1` FOREIGN KEY (`user_userid`) REFERENCES `user` (`userid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------

-- ----------------------------
-- Table structure for `country`
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(45) NOT NULL COMMENT '乡村名称',
  `sights` int(11) DEFAULT '0' COMMENT '景点数目',
  `location` varchar(45) NOT NULL COMMENT '地点',
  `introduce` text COMMENT '简介',
  `AC` varchar(20) NOT NULL COMMENT '咨询电话',
  `RC` varchar(20) NOT NULL COMMENT '救援电话',
  `CC` varchar(20) NOT NULL COMMENT '投诉电话',
  `TARGETSUM` int(11) DEFAULT '0' COMMENT '被选为目标乡村数目',
  `SCORE` double DEFAULT '0' COMMENT '评分',
  `mianPic` varchar(45) NOT NULL COMMENT '乡村主图',
  `hotels` int(11) DEFAULT NULL COMMENT '农家乐数目',
  `culture` text COMMENT '文化',
  `activities` text COMMENT '活动',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('1', '高家堂村', '0', '浙江省安吉县', '高家堂村位于浙江省安吉县山川乡南端，境内植被良好，山清水秀，是浙江省第一批全面小唐建设示范村。总人口826人，2003年人均纯收入7152元。该村先后被评为“省级全面小康建设示范村”、“省级绿化示范村”、“省级文明村”、“全国绿色建筑创新（二等奖）”等称号，2000年以来，村里坚持发展生态经济，先后投入了380多万元。山林面积8456亩，生态环境良好，竹类资源非常丰富，其中毛竹林4639亩，年产毛竹20余万支。', '4000-0123', '4000-0122', '4000-0121', '0', '0', 'img/src/001.jpg', '0', '为了这大自然赋予的秀丽景致不受丝毫污染，据了解，村里请来省里专家，投资40多万元引进了美国最新的阿科蔓技术，利用人工水草的微生物自然吸附，使得所有生活污水得到净化处理，综合利用。现在原本又黑又臭的污水经过处理有成了可直接灌溉的三类水。', '暂未说明');

-- ----------------------------
-- Table structure for `countryphoto`
-- ----------------------------
DROP TABLE IF EXISTS `countryphoto`;
CREATE TABLE `countryphoto` (
  `idcountryPhoto` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(45) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`idcountryPhoto`),
  KEY `fk_countryPhoto_country1_idx` (`country_id`),
  CONSTRAINT `fk_countryPhoto_country1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of countryphoto
-- ----------------------------

-- ----------------------------
-- Table structure for `countryvideo`
-- ----------------------------
DROP TABLE IF EXISTS `countryvideo`;
CREATE TABLE `countryvideo` (
  `idcountryVideo` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(45) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`idcountryVideo`),
  KEY `fk_countryVideo_country1_idx` (`country_id`),
  CONSTRAINT `fk_countryVideo_country1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of countryvideo
-- ----------------------------

-- ----------------------------
-- Table structure for `hotel`
-- ----------------------------
DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel` (
  `idhotel` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `hotelname` varchar(45) NOT NULL COMMENT '旅店名称',
  `score` double DEFAULT '0' COMMENT '评分',
  `mainPic` varchar(45) NOT NULL COMMENT '主图',
  `lowPrice` double NOT NULL COMMENT '最低价格',
  `location` varchar(45) NOT NULL COMMENT '地理位置',
  `introduce` text NOT NULL COMMENT '简介',
  `phone` varchar(45) NOT NULL COMMENT '联系电话',
  `video` varchar(45) DEFAULT NULL COMMENT '视频',
  `detailLocation` varchar(45) NOT NULL COMMENT '详细地址',
  `PassengerSum` int(11) DEFAULT '0' COMMENT '入住旅客总数',
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`idhotel`),
  UNIQUE KEY `detailLocation_UNIQUE` (`detailLocation`),
  KEY `fk_hotel_country1_idx` (`country_id`),
  CONSTRAINT `fk_hotel_country1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotel
-- ----------------------------

-- ----------------------------
-- Table structure for `route`
-- ----------------------------
DROP TABLE IF EXISTS `route`;
CREATE TABLE `route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(45) NOT NULL COMMENT '路线名称',
  `personsum` int(11) NOT NULL COMMENT '出行人数',
  `destination` varchar(45) NOT NULL COMMENT '目的地',
  `beginning` varchar(45) NOT NULL COMMENT '出发地',
  `introduce` text COMMENT '介绍',
  `transportation` varchar(45) NOT NULL COMMENT '交通方式',
  `tips` text COMMENT 'tips',
  `routedetail` text NOT NULL COMMENT '路线详细',
  `user_userid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_route_user1_idx` (`user_userid`),
  CONSTRAINT `fk_route_user1` FOREIGN KEY (`user_userid`) REFERENCES `user` (`userid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of route
-- ----------------------------

-- ----------------------------
-- Table structure for `specialty`
-- ----------------------------
DROP TABLE IF EXISTS `specialty`;
CREATE TABLE `specialty` (
  `idspecialty` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL COMMENT '特产名称',
  `describe` text COMMENT '描述',
  `src` varchar(45) DEFAULT NULL COMMENT '资源地址',
  `country_id` int(11) NOT NULL COMMENT '乡村ID',
  PRIMARY KEY (`idspecialty`),
  KEY `fk_specialty_country1_idx` (`country_id`),
  CONSTRAINT `fk_specialty_country1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of specialty
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `useremail` varchar(45) DEFAULT NULL COMMENT '用户邮箱',
  `userpassword` varchar(45) DEFAULT NULL COMMENT '用户密码',
  `level` int(11) DEFAULT '0' COMMENT '等级',
  `fans` int(11) DEFAULT NULL COMMENT '粉丝数目',
  `experience` int(11) DEFAULT NULL COMMENT '经验',
  `headPic` varchar(45) DEFAULT NULL COMMENT '头像',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `birth` date DEFAULT NULL COMMENT '生日',
  `signature` varchar(45) DEFAULT NULL COMMENT '个性签名',
  `attention` int(11) DEFAULT NULL COMMENT '关注人数',
  `city` varchar(45) DEFAULT NULL COMMENT '现居城市',
  `phone` varchar(45) DEFAULT NULL COMMENT '手机号',
  `wechat` varchar(45) DEFAULT NULL COMMENT '绑定微信号',
  `favorite` set('艺术','人文','清新','怀古','现代','美食','户外','摄影') DEFAULT NULL COMMENT '用户爱好 date type ->set',
  `articles` int(11) DEFAULT NULL COMMENT '用户游记数目',
  `routes` int(11) DEFAULT NULL COMMENT '用户路线数目',
  `username` varchar(45) DEFAULT NULL COMMENT '用户昵称',
  `keyVal` varchar(45) DEFAULT NULL COMMENT '激活验证码',
  `active` tinyint(4) DEFAULT NULL COMMENT '是否已激活',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `wechat_UNIQUE` (`wechat`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', null, '222', '0', null, null, null, '女', '1995-07-29', null, null, null, null, null, '艺术,人文,清新,怀古,摄影', null, null, '222', '1', '0');
INSERT INTO `user` VALUES ('3', null, '333', '0', null, null, null, '男', '1975-07-29', null, null, null, null, null, '人文,清新,怀古,美食,户外', null, null, '333', '1', '0');
INSERT INTO `user` VALUES ('6', '1741346973@qq.com', '222', null, null, null, null, '女', '1999-07-29', null, null, null, null, null, '艺术,清新,怀古,美食,摄影', null, null, 'vL4zZeasleosA0OiOVg03Q==', '1', '0');
INSERT INTO `user` VALUES ('8', null, 'aY1RoZ2KEhzlgUmde3AWaA==', '0', null, null, null, '男', '1985-07-11', null, null, null, null, null, '艺术,人文,清新,怀古', null, null, '111', '1', '0');
INSERT INTO `user` VALUES ('19', '237006629@qq.com', 'K/DM27TT67y5kK90vXjGWA==', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11122', 'ZBGAzzlK+/mYM6n9EJeexg==', '0');
