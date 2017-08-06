/*
Navicat MySQL Data Transfer

Source Server         : MINE
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : scala_web

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2017-08-06 13:27:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_role
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role`;
CREATE TABLE `tbl_role` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '数据编号',
  `ROLE_NAME` varchar(32) NOT NULL COMMENT '角色名称',
  `MEMO` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_role
-- ----------------------------
INSERT INTO `tbl_role` VALUES ('1', 'ROLE_USER', '用户');
INSERT INTO `tbl_role` VALUES ('2', 'ROLE_ADMIN', '管理员');
INSERT INTO `tbl_role` VALUES ('3', 'ROLE_VIP', '会员');

-- ----------------------------
-- Table structure for tbl_score
-- ----------------------------
DROP TABLE IF EXISTS `tbl_score`;
CREATE TABLE `tbl_score` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '数据编号',
  `MATH` decimal(4,1) DEFAULT NULL COMMENT '数学成绩',
  `ENGLISH` decimal(4,1) DEFAULT NULL COMMENT '外语成绩',
  `USER_ID` int(11) DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_score
-- ----------------------------
INSERT INTO `tbl_score` VALUES ('1', '99.0', '99.0', '1');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '数据编号',
  `BIRTHDAY` date DEFAULT NULL COMMENT '出生日期',
  `NAME` varchar(32) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT '姓名',
  `AVATAR` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '账号',
  `PASSWORD` varchar(32) CHARACTER SET utf8 DEFAULT '123456' COMMENT '密码',
  `TELEPHONE` varchar(32) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT '手机号',
  `STATE` tinyint(4) DEFAULT '1' COMMENT '状态（0：冻结   1：正常）',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=505 DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', '2017-08-05', '管理员测试账号', 'admin', 'admin', '18231926271', '1');
INSERT INTO `tbl_user` VALUES ('2', '2017-08-05', '普通用户测试账号', 'user', 'user', '12345678901', '1');
INSERT INTO `tbl_user` VALUES ('3', '1999-01-03', '会员测试账号', 'vip', 'vip', '15201016905', '1');
INSERT INTO `tbl_user` VALUES ('4', '2012-08-06', '徒馥璐', null, '123456', '13606860132', '0');
INSERT INTO `tbl_user` VALUES ('5', '2004-06-24', '终昭', null, '123456', '13706861935', '0');
INSERT INTO `tbl_user` VALUES ('6', '2002-03-26', '姚君', null, '123456', '15007459028', '0');
INSERT INTO `tbl_user` VALUES ('7', '1994-02-20', '石馥', null, '123456', '15704365660', '0');
INSERT INTO `tbl_user` VALUES ('8', '1990-10-29', '贡群', null, '123456', '15502719045', '0');
INSERT INTO `tbl_user` VALUES ('9', '2001-03-31', '公洁蓉', null, '123456', '13308232795', '0');
INSERT INTO `tbl_user` VALUES ('10', '2014-05-21', '能露', null, '123456', '15607631093', '0');
INSERT INTO `tbl_user` VALUES ('11', '2006-02-07', '酆健', null, '123456', '13404357319', '0');
INSERT INTO `tbl_user` VALUES ('12', '2012-10-02', '壤山', null, '123456', '13902441447', '0');
INSERT INTO `tbl_user` VALUES ('13', '2001-03-15', '阚昌', null, '123456', '13800798281', '0');
INSERT INTO `tbl_user` VALUES ('14', '1993-12-23', '益若', null, '123456', '13707856750', '0');
INSERT INTO `tbl_user` VALUES ('15', '1994-01-05', '家瑶宜', null, '123456', '15303553716', '0');
INSERT INTO `tbl_user` VALUES ('16', '2010-01-31', '韶澜婵', null, '123456', '13900155708', '0');
INSERT INTO `tbl_user` VALUES ('17', '2011-02-15', '谷艳媛', null, '123456', '13306765747', '0');
INSERT INTO `tbl_user` VALUES ('18', '1998-12-09', '容萍萍', null, '123456', '15007607353', '0');
INSERT INTO `tbl_user` VALUES ('19', '2010-01-01', '曹河', null, '123456', '15505548710', '0');
INSERT INTO `tbl_user` VALUES ('20', '2008-02-09', '简义以', null, '123456', '15002526414', '0');
INSERT INTO `tbl_user` VALUES ('21', '1990-04-23', '年希翠', null, '123456', '13708202572', '0');
INSERT INTO `tbl_user` VALUES ('22', '2003-07-15', '拓政以', null, '123456', '15703128926', '0');
INSERT INTO `tbl_user` VALUES ('23', '2003-01-26', '余颖红', null, '123456', '13402158874', '0');
INSERT INTO `tbl_user` VALUES ('24', '2007-09-14', '贺可君', null, '123456', '15708757233', '0');
INSERT INTO `tbl_user` VALUES ('25', '1991-02-28', '贡清新', null, '123456', '13404441871', '0');
INSERT INTO `tbl_user` VALUES ('26', '2011-12-16', '燕贞可', null, '123456', '15200894342', '0');
INSERT INTO `tbl_user` VALUES ('27', '2004-07-11', '昌强', null, '123456', '15801806612', '0');
INSERT INTO `tbl_user` VALUES ('28', '1993-04-25', '刁璧', null, '123456', '15905068431', '0');
INSERT INTO `tbl_user` VALUES ('29', '2004-12-31', '鲍伦', null, '123456', '13605280306', '0');
INSERT INTO `tbl_user` VALUES ('30', '2007-02-20', '迟茂', null, '123456', '13607015238', '0');
INSERT INTO `tbl_user` VALUES ('31', '2011-04-24', '曾学光', null, '123456', '15607145539', '0');
INSERT INTO `tbl_user` VALUES ('32', '2013-12-24', '伯宜瑶', null, '123456', '13908676496', '0');
INSERT INTO `tbl_user` VALUES ('33', '1992-07-12', '孙政心', null, '123456', '15604633338', '0');
INSERT INTO `tbl_user` VALUES ('34', '2002-09-13', '劳梅', null, '123456', '13600944706', '0');
INSERT INTO `tbl_user` VALUES ('35', '2013-07-11', '傅可纨', null, '123456', '13600217400', '0');
INSERT INTO `tbl_user` VALUES ('36', '2004-04-02', '殳茗聪', null, '123456', '15605297537', '0');
INSERT INTO `tbl_user` VALUES ('37', '1996-06-19', '百鹏震', null, '123456', '15707648563', '0');
INSERT INTO `tbl_user` VALUES ('38', '1996-02-13', '戴厚保', null, '123456', '13005463724', '0');
INSERT INTO `tbl_user` VALUES ('39', '2004-11-26', '曾楠', null, '123456', '15507733086', '0');
INSERT INTO `tbl_user` VALUES ('40', '1990-03-08', '吴琴惠', null, '123456', '13002811014', '0');
INSERT INTO `tbl_user` VALUES ('41', '1997-05-30', '车山龙', null, '123456', '13507545182', '0');
INSERT INTO `tbl_user` VALUES ('42', '2007-02-03', '言玉真', null, '123456', '13201131691', '0');
INSERT INTO `tbl_user` VALUES ('43', '1999-05-19', '佘启伯', null, '123456', '13908683648', '0');
INSERT INTO `tbl_user` VALUES ('44', '1990-02-15', '乐辉', null, '123456', '13901333218', '0');
INSERT INTO `tbl_user` VALUES ('45', '2010-08-12', '隗梁', null, '123456', '13404281126', '0');
INSERT INTO `tbl_user` VALUES ('46', '1992-05-14', '却成广', null, '123456', '13408333193', '0');
INSERT INTO `tbl_user` VALUES ('47', '2001-10-09', '詹以', null, '123456', '13100278236', '0');
INSERT INTO `tbl_user` VALUES ('48', '2012-01-25', '宿园莉', null, '123456', '15702492806', '0');
INSERT INTO `tbl_user` VALUES ('49', '1996-10-22', '武珍', null, '123456', '15500625834', '0');
INSERT INTO `tbl_user` VALUES ('50', '2010-06-16', '戎芝', null, '123456', '13400784515', '0');
INSERT INTO `tbl_user` VALUES ('51', '2012-08-18', '傅素', null, '123456', '13207091692', '0');
INSERT INTO `tbl_user` VALUES ('52', '1995-05-08', '羊贵磊', null, '123456', '15202087302', '0');
INSERT INTO `tbl_user` VALUES ('53', '2006-07-25', '秦艳毓', null, '123456', '13606194977', '0');
INSERT INTO `tbl_user` VALUES ('54', '2014-05-02', '秦中', null, '123456', '15904688508', '0');
INSERT INTO `tbl_user` VALUES ('55', '2012-05-01', '孙凤佳', null, '123456', '15005744819', '0');
INSERT INTO `tbl_user` VALUES ('56', '2002-07-25', '松学', null, '123456', '15905077063', '0');
INSERT INTO `tbl_user` VALUES ('57', '1999-11-24', '酆以', null, '123456', '13402450590', '0');
INSERT INTO `tbl_user` VALUES ('58', '2010-09-14', '刁琛善', null, '123456', '13600318372', '0');
INSERT INTO `tbl_user` VALUES ('59', '2008-04-10', '仲蓉玉', null, '123456', '13904856944', '0');
INSERT INTO `tbl_user` VALUES ('60', '2004-10-09', '通韵娟', null, '123456', '15505632709', '0');
INSERT INTO `tbl_user` VALUES ('61', '1991-02-01', '干芳筠', null, '123456', '15901714643', '0');
INSERT INTO `tbl_user` VALUES ('62', '2012-09-28', '汤峰', null, '123456', '15707682719', '0');
INSERT INTO `tbl_user` VALUES ('63', '1992-11-21', '尹艺', null, '123456', '13904972055', '0');
INSERT INTO `tbl_user` VALUES ('64', '2002-03-19', '钟朗钧', null, '123456', '15701853804', '0');
INSERT INTO `tbl_user` VALUES ('65', '1996-12-03', '浦凝', null, '123456', '13503996779', '0');
INSERT INTO `tbl_user` VALUES ('66', '2002-05-10', '惠彬昌', null, '123456', '13107192856', '0');
INSERT INTO `tbl_user` VALUES ('67', '2002-01-01', '韩壮', null, '123456', '15701305620', '0');
INSERT INTO `tbl_user` VALUES ('68', '2002-02-11', '孟新', null, '123456', '13903767557', '0');
INSERT INTO `tbl_user` VALUES ('69', '2007-02-12', '夹群信', null, '123456', '13902517435', '0');
INSERT INTO `tbl_user` VALUES ('70', '2015-09-19', '佟强', null, '123456', '13505395004', '0');
INSERT INTO `tbl_user` VALUES ('71', '2007-01-27', '濮纨莺', null, '123456', '13400581484', '0');
INSERT INTO `tbl_user` VALUES ('72', '1999-01-31', '谷舒亚', null, '123456', '13501674437', '0');
INSERT INTO `tbl_user` VALUES ('73', '2014-07-08', '王光光', null, '123456', '15204460909', '0');
INSERT INTO `tbl_user` VALUES ('74', '2014-06-17', '加谦', null, '123456', '13704740289', '0');
INSERT INTO `tbl_user` VALUES ('75', '2009-03-19', '西欣', null, '123456', '15307990797', '0');
INSERT INTO `tbl_user` VALUES ('76', '1993-05-18', '梁昌仁', null, '123456', '15204664083', '0');
INSERT INTO `tbl_user` VALUES ('77', '2009-05-12', '利乐', null, '123456', '13303622023', '0');
INSERT INTO `tbl_user` VALUES ('78', '2008-10-01', '甄振', null, '123456', '15105787239', '0');
INSERT INTO `tbl_user` VALUES ('79', '1991-07-19', '熊珍媛', null, '123456', '13608304771', '0');
INSERT INTO `tbl_user` VALUES ('80', '2003-07-30', '印以', null, '123456', '13101071861', '0');
INSERT INTO `tbl_user` VALUES ('81', '2013-05-27', '邴涛', null, '123456', '13505282175', '0');
INSERT INTO `tbl_user` VALUES ('82', '2009-11-02', '鲜勇', null, '123456', '13801260074', '0');
INSERT INTO `tbl_user` VALUES ('83', '2003-02-22', '邱全', null, '123456', '15805993337', '0');
INSERT INTO `tbl_user` VALUES ('84', '2008-08-21', '雍群震', null, '123456', '15702150298', '0');
INSERT INTO `tbl_user` VALUES ('85', '2002-12-06', '梁欢', null, '123456', '15007660372', '0');
INSERT INTO `tbl_user` VALUES ('86', '1993-11-29', '苗琼', null, '123456', '15305030732', '0');
INSERT INTO `tbl_user` VALUES ('87', '2005-01-20', '苗婉荷', null, '123456', '15001384093', '0');
INSERT INTO `tbl_user` VALUES ('88', '2011-08-22', '牛彪', null, '123456', '13501783350', '0');
INSERT INTO `tbl_user` VALUES ('89', '2012-05-01', '左伯思', null, '123456', '13308017130', '0');
INSERT INTO `tbl_user` VALUES ('90', '1990-12-01', '阳露菁', null, '123456', '13406566303', '0');
INSERT INTO `tbl_user` VALUES ('91', '2008-04-06', '牛娥园', null, '123456', '13108788592', '0');
INSERT INTO `tbl_user` VALUES ('92', '2009-11-09', '鄢玲菁', null, '123456', '15103736638', '0');
INSERT INTO `tbl_user` VALUES ('93', '2003-03-08', '于民风', null, '123456', '13200170285', '0');
INSERT INTO `tbl_user` VALUES ('94', '2003-12-01', '干育', null, '123456', '13704630168', '0');
INSERT INTO `tbl_user` VALUES ('95', '2000-04-22', '权德', null, '123456', '15606935587', '0');
INSERT INTO `tbl_user` VALUES ('96', '2005-10-09', '桑滢仪', null, '123456', '13005676706', '0');
INSERT INTO `tbl_user` VALUES ('97', '2006-04-27', '蓬裕思', null, '123456', '15906123415', '0');
INSERT INTO `tbl_user` VALUES ('98', '2004-02-22', '墨波雄', null, '123456', '13603666225', '0');
INSERT INTO `tbl_user` VALUES ('99', '1993-10-02', '家羽育', null, '123456', '13707168409', '0');
INSERT INTO `tbl_user` VALUES ('100', '2003-05-12', '阎绍民', null, '123456', '13201543214', '0');
INSERT INTO `tbl_user` VALUES ('101', '2012-06-11', '商姣', null, '123456', '13600094528', '0');
INSERT INTO `tbl_user` VALUES ('102', '1999-05-09', '夏媛蕊', null, '123456', '13401583969', '0');
INSERT INTO `tbl_user` VALUES ('103', '2012-12-10', '漆博', null, '123456', '13401487102', '0');
INSERT INTO `tbl_user` VALUES ('104', '1997-08-31', '卞庆', null, '123456', '13705266395', '0');
INSERT INTO `tbl_user` VALUES ('105', '2013-11-24', '卞河', null, '123456', '13408044960', '0');
INSERT INTO `tbl_user` VALUES ('106', '1995-07-11', '宫安', null, '123456', '13707193428', '0');
INSERT INTO `tbl_user` VALUES ('107', '2001-06-09', '融鸣', null, '123456', '15201106586', '0');
INSERT INTO `tbl_user` VALUES ('108', '1991-03-30', '五芳月', null, '123456', '15902082078', '0');
INSERT INTO `tbl_user` VALUES ('109', '1993-06-27', '钮思', null, '123456', '15007925560', '0');
INSERT INTO `tbl_user` VALUES ('110', '1996-11-24', '樊怡园', null, '123456', '15300337554', '0');
INSERT INTO `tbl_user` VALUES ('111', '2004-06-14', '融峰明', null, '123456', '13506017064', '0');
INSERT INTO `tbl_user` VALUES ('112', '2013-02-14', '别腾茂', null, '123456', '15207501250', '0');
INSERT INTO `tbl_user` VALUES ('113', '2000-12-21', '莘斌', null, '123456', '15000032878', '0');
INSERT INTO `tbl_user` VALUES ('114', '2012-03-29', '常珊', null, '123456', '15506913062', '0');
INSERT INTO `tbl_user` VALUES ('115', '2008-03-10', '言娜华', null, '123456', '13807398905', '0');
INSERT INTO `tbl_user` VALUES ('116', '2000-01-18', '益志震', null, '123456', '13604423821', '0');
INSERT INTO `tbl_user` VALUES ('117', '1995-06-06', '阮燕', null, '123456', '13307354200', '0');
INSERT INTO `tbl_user` VALUES ('118', '2004-11-01', '鄢琬凡', null, '123456', '15306641672', '0');
INSERT INTO `tbl_user` VALUES ('119', '2001-12-31', '正维壮', null, '123456', '15808788267', '0');
INSERT INTO `tbl_user` VALUES ('120', '2006-02-09', '滕义彬', null, '123456', '15508156720', '0');
INSERT INTO `tbl_user` VALUES ('121', '2014-06-21', '粱爱', null, '123456', '15205147936', '0');
INSERT INTO `tbl_user` VALUES ('122', '1996-11-14', '廉可', null, '123456', '15708526569', '0');
INSERT INTO `tbl_user` VALUES ('123', '1994-12-28', '太聪璐', null, '123456', '15305572434', '0');
INSERT INTO `tbl_user` VALUES ('124', '2003-10-04', '东涛', null, '123456', '13102066957', '0');
INSERT INTO `tbl_user` VALUES ('125', '1997-12-09', '荣利朗', null, '123456', '13507930387', '0');
INSERT INTO `tbl_user` VALUES ('126', '1996-04-22', '邹以河', null, '123456', '13500087106', '0');
INSERT INTO `tbl_user` VALUES ('127', '1998-07-09', '殷时', null, '123456', '15701422660', '0');
INSERT INTO `tbl_user` VALUES ('128', '2007-06-29', '那强榕', null, '123456', '15303101034', '0');
INSERT INTO `tbl_user` VALUES ('129', '2015-11-29', '朱明生', null, '123456', '15604574308', '0');
INSERT INTO `tbl_user` VALUES ('130', '1995-11-14', '五弘晨', null, '123456', '13400293965', '0');
INSERT INTO `tbl_user` VALUES ('131', '2006-07-30', '屈毅栋', null, '123456', '15705026731', '0');
INSERT INTO `tbl_user` VALUES ('132', '2012-11-10', '云美', null, '123456', '13907920144', '0');
INSERT INTO `tbl_user` VALUES ('133', '2003-11-13', '尚飘', null, '123456', '15508321226', '0');
INSERT INTO `tbl_user` VALUES ('134', '2008-09-28', '续朋', null, '123456', '13708792599', '0');
INSERT INTO `tbl_user` VALUES ('135', '2009-12-12', '经瑞', null, '123456', '13703683939', '0');
INSERT INTO `tbl_user` VALUES ('136', '2011-05-02', '易馨莎', null, '123456', '15702102756', '0');
INSERT INTO `tbl_user` VALUES ('137', '2006-06-13', '何秋', null, '123456', '15508241211', '0');
INSERT INTO `tbl_user` VALUES ('138', '2004-12-07', '农家若', null, '123456', '13404536967', '0');
INSERT INTO `tbl_user` VALUES ('139', '2001-03-09', '虞学茂', null, '123456', '15702120327', '0');
INSERT INTO `tbl_user` VALUES ('140', '1999-12-12', '咸青', null, '123456', '13901496664', '0');
INSERT INTO `tbl_user` VALUES ('141', '2013-11-22', '谢琳', null, '123456', '15505107473', '0');
INSERT INTO `tbl_user` VALUES ('142', '2008-10-07', '怀莲婉', null, '123456', '13608391973', '0');
INSERT INTO `tbl_user` VALUES ('143', '1994-07-05', '郗旭', null, '123456', '13407081081', '0');
INSERT INTO `tbl_user` VALUES ('144', '2001-06-27', '干欢芳', null, '123456', '15507020751', '0');
INSERT INTO `tbl_user` VALUES ('145', '2001-09-28', '马永龙', null, '123456', '15608534680', '0');
INSERT INTO `tbl_user` VALUES ('146', '1990-12-27', '苏凡', null, '123456', '13704511924', '0');
INSERT INTO `tbl_user` VALUES ('147', '2007-05-25', '仲利楠', null, '123456', '13501680662', '0');
INSERT INTO `tbl_user` VALUES ('148', '1998-05-12', '后馥', null, '123456', '15600707314', '0');
INSERT INTO `tbl_user` VALUES ('149', '2002-05-01', '姜谦', null, '123456', '13005531471', '0');
INSERT INTO `tbl_user` VALUES ('150', '2011-06-29', '凌泰', null, '123456', '13702267923', '0');
INSERT INTO `tbl_user` VALUES ('151', '1993-08-27', '融梁善', null, '123456', '15001902076', '0');
INSERT INTO `tbl_user` VALUES ('152', '2013-05-28', '麻伦', null, '123456', '13408720271', '0');
INSERT INTO `tbl_user` VALUES ('153', '2002-08-05', '刘榕祥', null, '123456', '13800655206', '0');
INSERT INTO `tbl_user` VALUES ('154', '1994-10-24', '太瑗', null, '123456', '13004002817', '0');
INSERT INTO `tbl_user` VALUES ('155', '2006-10-28', '强琛林', null, '123456', '13604515124', '0');
INSERT INTO `tbl_user` VALUES ('156', '2006-09-14', '符艺', null, '123456', '15308223973', '0');
INSERT INTO `tbl_user` VALUES ('157', '2004-10-09', '边咏悦', null, '123456', '13406434786', '0');
INSERT INTO `tbl_user` VALUES ('158', '2010-06-07', '邬洁莉', null, '123456', '13306250520', '0');
INSERT INTO `tbl_user` VALUES ('159', '1996-07-27', '离柔', null, '123456', '15802204973', '0');
INSERT INTO `tbl_user` VALUES ('160', '1991-09-18', '窦玲', null, '123456', '13003101563', '0');
INSERT INTO `tbl_user` VALUES ('161', '1991-07-12', '贡翰', null, '123456', '13801360636', '0');
INSERT INTO `tbl_user` VALUES ('162', '2005-07-05', '赵婉慧', null, '123456', '13702506197', '0');
INSERT INTO `tbl_user` VALUES ('163', '1992-08-20', '焦昌', null, '123456', '15508126642', '0');
INSERT INTO `tbl_user` VALUES ('164', '2011-11-19', '薛莺春', null, '123456', '15703157997', '0');
INSERT INTO `tbl_user` VALUES ('165', '2009-07-08', '谢楠', null, '123456', '13600962547', '0');
INSERT INTO `tbl_user` VALUES ('166', '2011-12-25', '勾婵娣', null, '123456', '15806168105', '0');
INSERT INTO `tbl_user` VALUES ('167', '2008-01-09', '连琦婷', null, '123456', '13602751566', '0');
INSERT INTO `tbl_user` VALUES ('168', '2000-12-06', '糜俊', null, '123456', '15703418038', '0');
INSERT INTO `tbl_user` VALUES ('169', '1994-10-25', '从枝', null, '123456', '15605167492', '0');
INSERT INTO `tbl_user` VALUES ('170', '2009-07-16', '年弘', null, '123456', '13804708639', '0');
INSERT INTO `tbl_user` VALUES ('171', '2013-09-17', '冯琼', null, '123456', '13703250485', '0');
INSERT INTO `tbl_user` VALUES ('172', '2000-10-09', '怀学', null, '123456', '13601094540', '0');
INSERT INTO `tbl_user` VALUES ('173', '1998-05-18', '狄雅妍', null, '123456', '13607984212', '0');
INSERT INTO `tbl_user` VALUES ('174', '2005-01-07', '殳柔滢', null, '123456', '15005017564', '0');
INSERT INTO `tbl_user` VALUES ('175', '1995-11-11', '山霭', null, '123456', '15202387466', '0');
INSERT INTO `tbl_user` VALUES ('176', '1992-02-28', '粱凡柔', null, '123456', '13403235086', '0');
INSERT INTO `tbl_user` VALUES ('177', '1999-02-19', '公欣荣', null, '123456', '13608593756', '0');
INSERT INTO `tbl_user` VALUES ('178', '2011-01-12', '施冠国', null, '123456', '13307714151', '0');
INSERT INTO `tbl_user` VALUES ('179', '1991-10-08', '农韵羽', null, '123456', '15207534177', '0');
INSERT INTO `tbl_user` VALUES ('180', '2000-12-05', '墨涛元', null, '123456', '15803143268', '0');
INSERT INTO `tbl_user` VALUES ('181', '1991-03-20', '徒丹', null, '123456', '13401017310', '0');
INSERT INTO `tbl_user` VALUES ('182', '2014-03-13', '漆言', null, '123456', '13404976993', '0');
INSERT INTO `tbl_user` VALUES ('183', '2000-08-10', '咎春', null, '123456', '15100560085', '0');
INSERT INTO `tbl_user` VALUES ('184', '2006-04-21', '马杰', null, '123456', '15307336373', '0');
INSERT INTO `tbl_user` VALUES ('185', '2014-06-21', '巫珍萍', null, '123456', '15505418173', '0');
INSERT INTO `tbl_user` VALUES ('186', '1999-09-14', '桑玲雅', null, '123456', '13703025433', '0');
INSERT INTO `tbl_user` VALUES ('187', '2015-08-27', '唐力栋', null, '123456', '15802840693', '0');
INSERT INTO `tbl_user` VALUES ('188', '2003-09-27', '杭新时', null, '123456', '15907488673', '0');
INSERT INTO `tbl_user` VALUES ('189', '1998-07-30', '尉蕊', null, '123456', '13607465426', '0');
INSERT INTO `tbl_user` VALUES ('190', '1997-11-22', '暨翰', null, '123456', '13306685689', '0');
INSERT INTO `tbl_user` VALUES ('191', '1990-10-25', '子春融', null, '123456', '13402373486', '0');
INSERT INTO `tbl_user` VALUES ('192', '1994-09-21', '闵海', null, '123456', '13308278041', '0');
INSERT INTO `tbl_user` VALUES ('193', '2007-12-05', '唐菁惠', null, '123456', '15604041764', '0');
INSERT INTO `tbl_user` VALUES ('194', '2008-06-14', '颛朋山', null, '123456', '15107386061', '0');
INSERT INTO `tbl_user` VALUES ('195', '1995-01-18', '仰翰琛', null, '123456', '15304636748', '0');
INSERT INTO `tbl_user` VALUES ('196', '2012-03-16', '麻建', null, '123456', '13006561487', '0');
INSERT INTO `tbl_user` VALUES ('197', '1993-03-20', '廖纯勤', null, '123456', '15107472685', '0');
INSERT INTO `tbl_user` VALUES ('198', '1995-01-03', '延佳', null, '123456', '13204165661', '0');
INSERT INTO `tbl_user` VALUES ('199', '2000-06-20', '冶珊芝', null, '123456', '13408450869', '0');
INSERT INTO `tbl_user` VALUES ('200', '1992-10-29', '孙芬', null, '123456', '13506720024', '0');
INSERT INTO `tbl_user` VALUES ('201', '2014-05-13', '牟伟', null, '123456', '13401708507', '0');
INSERT INTO `tbl_user` VALUES ('202', '1992-05-25', '季娅', null, '123456', '13104621548', '0');
INSERT INTO `tbl_user` VALUES ('203', '2008-08-03', '缑荷', null, '123456', '13108110597', '0');
INSERT INTO `tbl_user` VALUES ('204', '2015-09-10', '须盛', null, '123456', '13202597317', '0');
INSERT INTO `tbl_user` VALUES ('205', '2000-08-22', '盖姬', null, '123456', '15907741979', '0');
INSERT INTO `tbl_user` VALUES ('206', '2008-07-16', '宇爱欣', null, '123456', '13608613840', '0');
INSERT INTO `tbl_user` VALUES ('207', '1995-03-30', '长飘', null, '123456', '15600303199', '0');
INSERT INTO `tbl_user` VALUES ('208', '2001-09-06', '柴芬纨', null, '123456', '15107362658', '0');
INSERT INTO `tbl_user` VALUES ('209', '1996-08-04', '殷军', null, '123456', '15103481660', '0');
INSERT INTO `tbl_user` VALUES ('210', '2000-10-08', '全霞', null, '123456', '13407815053', '0');
INSERT INTO `tbl_user` VALUES ('211', '2011-04-14', '充融枫', null, '123456', '13104961889', '0');
INSERT INTO `tbl_user` VALUES ('212', '1998-10-06', '柳鸣', null, '123456', '15300263641', '0');
INSERT INTO `tbl_user` VALUES ('213', '2010-05-23', '长淑', null, '123456', '13301791451', '0');
INSERT INTO `tbl_user` VALUES ('214', '2009-07-29', '公可聪', null, '123456', '15703665085', '0');
INSERT INTO `tbl_user` VALUES ('215', '2012-01-11', '施福', null, '123456', '13006516229', '0');
INSERT INTO `tbl_user` VALUES ('216', '2015-02-07', '柏滢', null, '123456', '13302762047', '0');
INSERT INTO `tbl_user` VALUES ('217', '2007-01-10', '都月', null, '123456', '15804328021', '0');
INSERT INTO `tbl_user` VALUES ('218', '1998-11-15', '上薇', null, '123456', '13300398904', '0');
INSERT INTO `tbl_user` VALUES ('219', '2003-11-20', '宫全', null, '123456', '13104614384', '0');
INSERT INTO `tbl_user` VALUES ('220', '2004-04-25', '越冰', null, '123456', '15201907667', '0');
INSERT INTO `tbl_user` VALUES ('221', '1998-09-12', '习爽芝', null, '123456', '15305477919', '0');
INSERT INTO `tbl_user` VALUES ('222', '2000-08-20', '穆琰玲', null, '123456', '15500936828', '0');
INSERT INTO `tbl_user` VALUES ('223', '2000-12-08', '茅树钧', null, '123456', '13305452592', '0');
INSERT INTO `tbl_user` VALUES ('224', '1994-08-07', '岑乐维', null, '123456', '15907721784', '0');
INSERT INTO `tbl_user` VALUES ('225', '1995-04-20', '涂士', null, '123456', '15105276299', '0');
INSERT INTO `tbl_user` VALUES ('226', '2003-10-28', '阳振', null, '123456', '15505691939', '0');
INSERT INTO `tbl_user` VALUES ('227', '2004-01-16', '党承广', null, '123456', '15307704248', '0');
INSERT INTO `tbl_user` VALUES ('228', '1992-05-26', '管成', null, '123456', '15902236505', '0');
INSERT INTO `tbl_user` VALUES ('229', '2007-05-22', '空可', null, '123456', '15903733446', '0');
INSERT INTO `tbl_user` VALUES ('230', '2012-04-06', '官茜园', null, '123456', '13604196912', '0');
INSERT INTO `tbl_user` VALUES ('231', '2012-04-10', '叔刚裕', null, '123456', '13802971456', '0');
INSERT INTO `tbl_user` VALUES ('232', '1994-07-05', '刘学浩', null, '123456', '15706647203', '0');
INSERT INTO `tbl_user` VALUES ('233', '2011-09-22', '充晨绍', null, '123456', '15006621978', '0');
INSERT INTO `tbl_user` VALUES ('234', '2004-02-25', '有达振', null, '123456', '13902657394', '0');
INSERT INTO `tbl_user` VALUES ('235', '1990-03-22', '却婉琬', null, '123456', '13604536836', '0');
INSERT INTO `tbl_user` VALUES ('236', '1996-12-28', '鄢菲', null, '123456', '15804486396', '0');
INSERT INTO `tbl_user` VALUES ('237', '2013-10-30', '人晨树', null, '123456', '13201978557', '0');
INSERT INTO `tbl_user` VALUES ('238', '2001-09-04', '五琬华', null, '123456', '13707557421', '0');
INSERT INTO `tbl_user` VALUES ('239', '1990-06-23', '昌莺', null, '123456', '13106696428', '0');
INSERT INTO `tbl_user` VALUES ('240', '1996-05-04', '晏文', null, '123456', '13503837863', '0');
INSERT INTO `tbl_user` VALUES ('241', '1996-08-08', '凤发冠', null, '123456', '13507428823', '0');
INSERT INTO `tbl_user` VALUES ('242', '2013-12-18', '寇平和', null, '123456', '13508324462', '0');
INSERT INTO `tbl_user` VALUES ('243', '2006-12-22', '轩民腾', null, '123456', '13007274154', '0');
INSERT INTO `tbl_user` VALUES ('244', '1994-11-03', '闵彩雁', null, '123456', '15802960003', '0');
INSERT INTO `tbl_user` VALUES ('245', '1992-09-06', '郭松', null, '123456', '13608560250', '0');
INSERT INTO `tbl_user` VALUES ('246', '1993-09-30', '梁胜', null, '123456', '13406465081', '0');
INSERT INTO `tbl_user` VALUES ('247', '1997-11-30', '鄢惠', null, '123456', '13005683765', '0');
INSERT INTO `tbl_user` VALUES ('248', '2002-10-20', '黄辉伟', null, '123456', '15100912474', '0');
INSERT INTO `tbl_user` VALUES ('249', '1996-04-23', '年亮星', null, '123456', '15201424219', '0');
INSERT INTO `tbl_user` VALUES ('250', '1995-12-31', '尤咏', null, '123456', '15804571522', '0');
INSERT INTO `tbl_user` VALUES ('251', '2010-08-21', '官树', null, '123456', '15707724284', '0');
INSERT INTO `tbl_user` VALUES ('252', '1993-10-18', '巫彩秋', null, '123456', '15806440910', '0');
INSERT INTO `tbl_user` VALUES ('253', '1991-10-29', '吕泰轮', null, '123456', '13107390412', '0');
INSERT INTO `tbl_user` VALUES ('254', '2014-11-29', '侯慧', null, '123456', '13805358021', '0');
INSERT INTO `tbl_user` VALUES ('255', '2010-06-15', '步荔珠', null, '123456', '13300655139', '0');
INSERT INTO `tbl_user` VALUES ('256', '2012-08-27', '柏娣', null, '123456', '13704435367', '0');
INSERT INTO `tbl_user` VALUES ('257', '1993-09-18', '年莉', null, '123456', '15002902672', '0');
INSERT INTO `tbl_user` VALUES ('258', '1996-04-11', '滕维', null, '123456', '13600254729', '0');
INSERT INTO `tbl_user` VALUES ('259', '2014-02-01', '微安', null, '123456', '15702468119', '0');
INSERT INTO `tbl_user` VALUES ('260', '2012-06-26', '年安安', null, '123456', '15503597981', '0');
INSERT INTO `tbl_user` VALUES ('261', '1992-08-27', '帅枫', null, '123456', '15006566713', '0');
INSERT INTO `tbl_user` VALUES ('262', '2013-05-27', '席飞', null, '123456', '13406491550', '0');
INSERT INTO `tbl_user` VALUES ('263', '1997-09-16', '吕峰', null, '123456', '15701615465', '0');
INSERT INTO `tbl_user` VALUES ('264', '1991-02-09', '葛丹霄', null, '123456', '15201506665', '0');
INSERT INTO `tbl_user` VALUES ('265', '1994-12-11', '祝信', null, '123456', '15500077569', '0');
INSERT INTO `tbl_user` VALUES ('266', '2013-11-01', '贲功', null, '123456', '13608100831', '0');
INSERT INTO `tbl_user` VALUES ('267', '2015-09-09', '全柔彩', null, '123456', '15607362775', '0');
INSERT INTO `tbl_user` VALUES ('268', '2011-11-24', '蒙竹', null, '123456', '13807258220', '0');
INSERT INTO `tbl_user` VALUES ('269', '2005-01-15', '晁顺', null, '123456', '13805140934', '0');
INSERT INTO `tbl_user` VALUES ('270', '2008-06-05', '查豪东', null, '123456', '13004848080', '0');
INSERT INTO `tbl_user` VALUES ('271', '2001-08-13', '柴壮文', null, '123456', '13907701331', '0');
INSERT INTO `tbl_user` VALUES ('272', '1993-08-10', '逯波', null, '123456', '13307744186', '0');
INSERT INTO `tbl_user` VALUES ('273', '2013-06-13', '上影琳', null, '123456', '15300864705', '0');
INSERT INTO `tbl_user` VALUES ('274', '1998-06-21', '仇淑丽', null, '123456', '13806388287', '0');
INSERT INTO `tbl_user` VALUES ('275', '2015-06-12', '穆莎咏', null, '123456', '13904603344', '0');
INSERT INTO `tbl_user` VALUES ('276', '1990-12-31', '相娟', null, '123456', '13805946158', '0');
INSERT INTO `tbl_user` VALUES ('277', '1998-11-21', '柳宁', null, '123456', '13703868259', '0');
INSERT INTO `tbl_user` VALUES ('278', '1991-01-09', '关发', null, '123456', '15902005640', '0');
INSERT INTO `tbl_user` VALUES ('279', '2009-05-29', '木君秀', null, '123456', '15901149014', '0');
INSERT INTO `tbl_user` VALUES ('280', '2014-06-18', '程平', null, '123456', '15202046215', '0');
INSERT INTO `tbl_user` VALUES ('281', '1990-08-26', '西蓉', null, '123456', '13108761593', '0');
INSERT INTO `tbl_user` VALUES ('282', '1993-02-07', '晁娥仪', null, '123456', '13704453828', '0');
INSERT INTO `tbl_user` VALUES ('283', '1997-09-09', '郁光', null, '123456', '15905812908', '0');
INSERT INTO `tbl_user` VALUES ('284', '1998-04-05', '郭雪', null, '123456', '13804531371', '0');
INSERT INTO `tbl_user` VALUES ('285', '2011-12-14', '傅航', null, '123456', '15605151218', '0');
INSERT INTO `tbl_user` VALUES ('286', '2012-08-04', '鞠辰', null, '123456', '15706316928', '0');
INSERT INTO `tbl_user` VALUES ('287', '2003-06-05', '田政河', null, '123456', '15307693185', '0');
INSERT INTO `tbl_user` VALUES ('288', '2007-11-10', '生清', null, '123456', '13904727973', '0');
INSERT INTO `tbl_user` VALUES ('289', '2012-06-22', '缪馨', null, '123456', '13502953155', '0');
INSERT INTO `tbl_user` VALUES ('290', '1993-04-10', '有嘉兰', null, '123456', '15102948518', '0');
INSERT INTO `tbl_user` VALUES ('291', '2006-12-15', '齐琳', null, '123456', '13400040947', '0');
INSERT INTO `tbl_user` VALUES ('292', '1992-01-27', '宰博飞', null, '123456', '15905906033', '0');
INSERT INTO `tbl_user` VALUES ('293', '2013-12-28', '左馨', null, '123456', '15701634598', '0');
INSERT INTO `tbl_user` VALUES ('294', '2014-02-02', '侯善涛', null, '123456', '15004012551', '0');
INSERT INTO `tbl_user` VALUES ('295', '2005-12-22', '濮晓', null, '123456', '13706985063', '0');
INSERT INTO `tbl_user` VALUES ('296', '2007-04-27', '东宏', null, '123456', '15907584221', '0');
INSERT INTO `tbl_user` VALUES ('297', '1996-01-17', '驷凝菊', null, '123456', '15502027974', '0');
INSERT INTO `tbl_user` VALUES ('298', '2013-03-22', '詹庆良', null, '123456', '15502878295', '0');
INSERT INTO `tbl_user` VALUES ('299', '2003-01-11', '公艺', null, '123456', '13501860475', '0');
INSERT INTO `tbl_user` VALUES ('300', '2007-06-30', '慕克', null, '123456', '15904547120', '0');
INSERT INTO `tbl_user` VALUES ('301', '2013-11-23', '赵毅杰', null, '123456', '13704794938', '0');
INSERT INTO `tbl_user` VALUES ('302', '1997-09-04', '边琳', null, '123456', '13706424242', '0');
INSERT INTO `tbl_user` VALUES ('303', '2008-01-26', '孟眉', null, '123456', '13003536013', '0');
INSERT INTO `tbl_user` VALUES ('304', '1994-08-06', '相峰辰', null, '123456', '13304891318', '0');
INSERT INTO `tbl_user` VALUES ('305', '2004-03-02', '葛心博', null, '123456', '13104727345', '0');
INSERT INTO `tbl_user` VALUES ('306', '2004-12-26', '正娥', null, '123456', '13400507222', '0');
INSERT INTO `tbl_user` VALUES ('307', '2009-01-20', '孔思', null, '123456', '15905068957', '0');
INSERT INTO `tbl_user` VALUES ('308', '1996-06-20', '曹滢悦', null, '123456', '13106225537', '0');
INSERT INTO `tbl_user` VALUES ('309', '2001-08-15', '劳勇勇', null, '123456', '13600592322', '0');
INSERT INTO `tbl_user` VALUES ('310', '2000-04-23', '傅学', null, '123456', '15506627229', '0');
INSERT INTO `tbl_user` VALUES ('311', '1994-05-01', '姜艳', null, '123456', '13908511260', '0');
INSERT INTO `tbl_user` VALUES ('312', '2001-07-10', '乐洁', null, '123456', '13708671412', '0');
INSERT INTO `tbl_user` VALUES ('313', '2007-05-13', '卢娜', null, '123456', '15306884994', '0');
INSERT INTO `tbl_user` VALUES ('314', '1993-06-28', '赵君青', null, '123456', '13008456345', '0');
INSERT INTO `tbl_user` VALUES ('315', '2004-09-11', '孙乐', null, '123456', '13704347593', '0');
INSERT INTO `tbl_user` VALUES ('316', '2000-11-18', '任霭嘉', null, '123456', '13405358353', '0');
INSERT INTO `tbl_user` VALUES ('317', '2009-08-27', '屈厚', null, '123456', '15607053108', '0');
INSERT INTO `tbl_user` VALUES ('318', '1997-01-08', '诸时安', null, '123456', '15100373555', '0');
INSERT INTO `tbl_user` VALUES ('319', '1995-05-16', '阚树旭', null, '123456', '15307295266', '0');
INSERT INTO `tbl_user` VALUES ('320', '2011-06-26', '汤萍', null, '123456', '13602221711', '0');
INSERT INTO `tbl_user` VALUES ('321', '2001-11-18', '金弘俊', null, '123456', '13702565626', '0');
INSERT INTO `tbl_user` VALUES ('322', '1992-09-26', '政美', null, '123456', '15901516718', '0');
INSERT INTO `tbl_user` VALUES ('323', '1996-12-28', '艾弘', null, '123456', '13804358652', '0');
INSERT INTO `tbl_user` VALUES ('324', '1994-06-02', '司天', null, '123456', '15006531797', '0');
INSERT INTO `tbl_user` VALUES ('325', '1994-06-21', '富冰馥', null, '123456', '13201812546', '0');
INSERT INTO `tbl_user` VALUES ('326', '1996-02-15', '钮静', null, '123456', '13901665162', '0');
INSERT INTO `tbl_user` VALUES ('327', '2013-10-31', '邓琴', null, '123456', '15007333086', '0');
INSERT INTO `tbl_user` VALUES ('328', '1998-05-25', '伊盛伦', null, '123456', '15903043445', '0');
INSERT INTO `tbl_user` VALUES ('329', '1996-07-09', '王宁民', null, '123456', '13501857228', '0');
INSERT INTO `tbl_user` VALUES ('330', '2005-04-18', '于瑶纯', null, '123456', '13803180549', '0');
INSERT INTO `tbl_user` VALUES ('331', '2007-11-15', '阎菲瑾', null, '123456', '15108717776', '0');
INSERT INTO `tbl_user` VALUES ('332', '1996-07-28', '厉全', null, '123456', '13701454466', '0');
INSERT INTO `tbl_user` VALUES ('333', '1998-01-25', '拓婕', null, '123456', '15507453443', '0');
INSERT INTO `tbl_user` VALUES ('334', '1995-11-07', '辛杰', null, '123456', '13501964906', '0');
INSERT INTO `tbl_user` VALUES ('335', '2004-08-20', '池萍荔', null, '123456', '13403387572', '0');
INSERT INTO `tbl_user` VALUES ('336', '1998-07-08', '乐 ', null, '123456', '15900884392', '0');
INSERT INTO `tbl_user` VALUES ('337', '2000-04-18', '仲翰', null, '123456', '15906061188', '0');
INSERT INTO `tbl_user` VALUES ('338', '2014-03-09', '舒安', null, '123456', '13502801047', '0');
INSERT INTO `tbl_user` VALUES ('339', '2006-02-25', '阳腾', null, '123456', '13800948862', '0');
INSERT INTO `tbl_user` VALUES ('340', '2013-01-21', '东敬庆', null, '123456', '13701914392', '0');
INSERT INTO `tbl_user` VALUES ('341', '2008-06-30', '夏国', null, '123456', '13108290177', '0');
INSERT INTO `tbl_user` VALUES ('342', '2010-12-26', '鲜淑', null, '123456', '15006945406', '0');
INSERT INTO `tbl_user` VALUES ('343', '1997-12-06', '左茗妹', null, '123456', '13105387797', '0');
INSERT INTO `tbl_user` VALUES ('344', '2001-06-01', '爱婉丽', null, '123456', '13107411549', '0');
INSERT INTO `tbl_user` VALUES ('345', '1997-09-25', '公凡', null, '123456', '15903740050', '0');
INSERT INTO `tbl_user` VALUES ('346', '2004-05-27', '于利', null, '123456', '15103134834', '0');
INSERT INTO `tbl_user` VALUES ('347', '2002-01-25', '宗萍', null, '123456', '15701064193', '0');
INSERT INTO `tbl_user` VALUES ('348', '2000-05-05', '寿莎素', null, '123456', '15104004541', '0');
INSERT INTO `tbl_user` VALUES ('349', '2000-02-13', '商绍', null, '123456', '15901758552', '0');
INSERT INTO `tbl_user` VALUES ('350', '1996-10-27', '简江思', null, '123456', '15207710608', '0');
INSERT INTO `tbl_user` VALUES ('351', '2013-10-29', '迟学', null, '123456', '13904684535', '0');
INSERT INTO `tbl_user` VALUES ('352', '2001-07-29', '夏贞', null, '123456', '13706312163', '0');
INSERT INTO `tbl_user` VALUES ('353', '2009-09-01', '华富宏', null, '123456', '13204885188', '0');
INSERT INTO `tbl_user` VALUES ('354', '1991-10-14', '束荷', null, '123456', '13703472523', '0');
INSERT INTO `tbl_user` VALUES ('355', '2010-01-22', '王利思', null, '123456', '15305563617', '0');
INSERT INTO `tbl_user` VALUES ('356', '2013-12-16', '申强', null, '123456', '15706486244', '0');
INSERT INTO `tbl_user` VALUES ('357', '2014-12-13', '柯巧蓓', null, '123456', '15801214326', '0');
INSERT INTO `tbl_user` VALUES ('358', '2002-11-22', '白云', null, '123456', '15703365314', '0');
INSERT INTO `tbl_user` VALUES ('359', '1993-09-24', '沈舒', null, '123456', '13005944999', '0');
INSERT INTO `tbl_user` VALUES ('360', '2012-05-20', '拔婷璐', null, '123456', '15903254863', '0');
INSERT INTO `tbl_user` VALUES ('361', '1996-09-17', '权裕', null, '123456', '15808225216', '0');
INSERT INTO `tbl_user` VALUES ('362', '2013-07-08', '琴 ', null, '123456', '13906500367', '0');
INSERT INTO `tbl_user` VALUES ('363', '1993-06-29', '吉香竹', null, '123456', '13807753510', '0');
INSERT INTO `tbl_user` VALUES ('364', '1995-02-15', '蒙心', null, '123456', '15804157658', '0');
INSERT INTO `tbl_user` VALUES ('365', '2009-11-29', '岳琬', null, '123456', '13906844393', '0');
INSERT INTO `tbl_user` VALUES ('366', '1994-08-15', '沃壮', null, '123456', '13500115537', '0');
INSERT INTO `tbl_user` VALUES ('367', '1996-09-30', '澹国', null, '123456', '15004147047', '0');
INSERT INTO `tbl_user` VALUES ('368', '2000-08-28', '段功富', null, '123456', '13800134501', '0');
INSERT INTO `tbl_user` VALUES ('369', '1996-12-10', '施祥', null, '123456', '13706090424', '0');
INSERT INTO `tbl_user` VALUES ('370', '2000-12-21', '魏筠丹', null, '123456', '13701038645', '0');
INSERT INTO `tbl_user` VALUES ('371', '1991-05-02', '祖致', null, '123456', '15808767021', '0');
INSERT INTO `tbl_user` VALUES ('372', '1991-03-19', '俟平', null, '123456', '13302183922', '0');
INSERT INTO `tbl_user` VALUES ('373', '1990-12-16', '林良', null, '123456', '13806014815', '0');
INSERT INTO `tbl_user` VALUES ('374', '2001-08-29', '邴婉瑶', null, '123456', '15007764342', '0');
INSERT INTO `tbl_user` VALUES ('375', '1993-12-28', '戴环佳', null, '123456', '13504373901', '0');
INSERT INTO `tbl_user` VALUES ('376', '1990-05-26', '益羽', null, '123456', '15200690758', '0');
INSERT INTO `tbl_user` VALUES ('377', '1993-03-10', '屠才', null, '123456', '13905732639', '0');
INSERT INTO `tbl_user` VALUES ('378', '1997-11-30', '拓真莉', null, '123456', '15000335022', '0');
INSERT INTO `tbl_user` VALUES ('379', '2010-04-01', '甄中', null, '123456', '15107004574', '0');
INSERT INTO `tbl_user` VALUES ('380', '2011-04-05', '梁政子', null, '123456', '13001024936', '0');
INSERT INTO `tbl_user` VALUES ('381', '2014-11-11', '安旭平', null, '123456', '13703731289', '0');
INSERT INTO `tbl_user` VALUES ('382', '1999-01-06', '索卿舒', null, '123456', '13601070786', '0');
INSERT INTO `tbl_user` VALUES ('383', '2009-07-09', '喻滢', null, '123456', '13202845925', '0');
INSERT INTO `tbl_user` VALUES ('384', '1998-11-24', '冉莉希', null, '123456', '13608065520', '0');
INSERT INTO `tbl_user` VALUES ('385', '2014-10-03', '子嘉', null, '123456', '13306087390', '0');
INSERT INTO `tbl_user` VALUES ('386', '2006-03-30', '闵玲', null, '123456', '13900344896', '0');
INSERT INTO `tbl_user` VALUES ('387', '2009-07-04', '连月', null, '123456', '15607542972', '0');
INSERT INTO `tbl_user` VALUES ('388', '1991-01-24', '段安', null, '123456', '15108394022', '0');
INSERT INTO `tbl_user` VALUES ('389', '1993-11-14', '段胜', null, '123456', '13306517418', '0');
INSERT INTO `tbl_user` VALUES ('390', '2003-02-02', '陈永亨', null, '123456', '13707454496', '0');
INSERT INTO `tbl_user` VALUES ('391', '2010-06-12', '蒋东厚', null, '123456', '13607720954', '0');
INSERT INTO `tbl_user` VALUES ('392', '2002-03-18', '丰希育', null, '123456', '13803275135', '0');
INSERT INTO `tbl_user` VALUES ('393', '1991-07-18', '席爱', null, '123456', '15001585180', '0');
INSERT INTO `tbl_user` VALUES ('394', '1992-08-02', '山先', null, '123456', '13002386978', '0');
INSERT INTO `tbl_user` VALUES ('395', '2000-05-16', '樊善世', null, '123456', '15602057010', '0');
INSERT INTO `tbl_user` VALUES ('396', '2004-02-24', '党淑', null, '123456', '13000567034', '0');
INSERT INTO `tbl_user` VALUES ('397', '1997-06-06', '聂融', null, '123456', '13008117935', '0');
INSERT INTO `tbl_user` VALUES ('398', '1994-11-09', '伍泽才', null, '123456', '13803107264', '0');
INSERT INTO `tbl_user` VALUES ('399', '2011-09-04', '戈妹', null, '123456', '13602538233', '0');
INSERT INTO `tbl_user` VALUES ('401', '1998-08-23', '楚翔', null, '123456', '13704377483', '0');
INSERT INTO `tbl_user` VALUES ('402', '1997-01-20', '鄢姬真', null, '123456', '15202065879', '0');
INSERT INTO `tbl_user` VALUES ('403', '1990-06-09', '井华', null, '123456', '15300708005', '0');
INSERT INTO `tbl_user` VALUES ('404', '2014-07-04', '寿诚子', null, '123456', '15904908912', '0');
INSERT INTO `tbl_user` VALUES ('405', '1994-08-09', '尤利', null, '123456', '13600553956', '0');
INSERT INTO `tbl_user` VALUES ('406', '2015-05-14', '山璧雁', null, '123456', '15703760994', '0');
INSERT INTO `tbl_user` VALUES ('407', '1990-04-10', '毕朗', null, '123456', '13203904188', '0');
INSERT INTO `tbl_user` VALUES ('408', '2013-12-26', '韩心策', null, '123456', '15605006520', '0');
INSERT INTO `tbl_user` VALUES ('409', '2003-06-06', '能伟', null, '123456', '15203606996', '0');
INSERT INTO `tbl_user` VALUES ('410', '2013-12-21', '居家龙', null, '123456', '13303642311', '0');
INSERT INTO `tbl_user` VALUES ('411', '2009-09-29', '空霄', null, '123456', '15103053849', '0');
INSERT INTO `tbl_user` VALUES ('412', '1996-09-14', '奚雪', null, '123456', '15108522197', '0');
INSERT INTO `tbl_user` VALUES ('413', '2014-06-18', '轩荔', null, '123456', '13302694732', '0');
INSERT INTO `tbl_user` VALUES ('414', '1997-02-13', '韩冠', null, '123456', '15104020582', '0');
INSERT INTO `tbl_user` VALUES ('415', '2014-07-24', '相雅雁', null, '123456', '15304550966', '0');
INSERT INTO `tbl_user` VALUES ('416', '2008-03-11', '薄鹏德', null, '123456', '13207447478', '0');
INSERT INTO `tbl_user` VALUES ('417', '1992-11-20', '仲志', null, '123456', '15106867761', '0');
INSERT INTO `tbl_user` VALUES ('418', '1996-11-17', '丰姬', null, '123456', '15508386911', '0');
INSERT INTO `tbl_user` VALUES ('419', '2010-03-09', '魏红', null, '123456', '13901767943', '0');
INSERT INTO `tbl_user` VALUES ('420', '2001-03-16', '柯江平', null, '123456', '15008781641', '0');
INSERT INTO `tbl_user` VALUES ('421', '2007-01-22', '颛炎', null, '123456', '15902993683', '0');
INSERT INTO `tbl_user` VALUES ('422', '2012-06-29', '福伊华', null, '123456', '13807723813', '0');
INSERT INTO `tbl_user` VALUES ('423', '2015-04-21', '严振善', null, '123456', '15304006370', '0');
INSERT INTO `tbl_user` VALUES ('424', '2015-10-22', '蓝国龙', null, '123456', '13005190250', '0');
INSERT INTO `tbl_user` VALUES ('425', '2010-07-29', '符中', null, '123456', '15907694454', '0');
INSERT INTO `tbl_user` VALUES ('426', '1992-10-07', '包惠娣', null, '123456', '15807577002', '0');
INSERT INTO `tbl_user` VALUES ('427', '1998-02-14', '丰邦', null, '123456', '13402290485', '0');
INSERT INTO `tbl_user` VALUES ('428', '1999-08-07', '屠苑妹', null, '123456', '15303522989', '0');
INSERT INTO `tbl_user` VALUES ('429', '2005-10-05', '乌黛', null, '123456', '15106984615', '0');
INSERT INTO `tbl_user` VALUES ('430', '2006-07-28', '骆真', null, '123456', '15101326467', '0');
INSERT INTO `tbl_user` VALUES ('431', '2005-11-12', '芮学', null, '123456', '15204136353', '0');
INSERT INTO `tbl_user` VALUES ('432', '1999-12-09', '庞行生', null, '123456', '15807740089', '0');
INSERT INTO `tbl_user` VALUES ('433', '1993-08-18', '禄豪刚', null, '123456', '15706366638', '0');
INSERT INTO `tbl_user` VALUES ('434', '1993-06-05', '杜钧群', null, '123456', '13007142005', '0');
INSERT INTO `tbl_user` VALUES ('435', '1996-02-06', '诸若', null, '123456', '13502640004', '0');
INSERT INTO `tbl_user` VALUES ('436', '2011-11-13', '郑枫叶', null, '123456', '15900738253', '0');
INSERT INTO `tbl_user` VALUES ('437', '1995-03-18', '邱可韵', null, '123456', '15203896939', '0');
INSERT INTO `tbl_user` VALUES ('438', '1997-03-04', '史妍昭', null, '123456', '13503707052', '0');
INSERT INTO `tbl_user` VALUES ('439', '2014-07-30', '门妹', null, '123456', '15502152002', '0');
INSERT INTO `tbl_user` VALUES ('440', '2015-10-03', '贲园', null, '123456', '15006255866', '0');
INSERT INTO `tbl_user` VALUES ('441', '1991-06-10', '左生言', null, '123456', '15800053925', '0');
INSERT INTO `tbl_user` VALUES ('442', '1998-10-18', '申聪亚', null, '123456', '13204836926', '0');
INSERT INTO `tbl_user` VALUES ('443', '2015-10-10', '於树', null, '123456', '13102962537', '0');
INSERT INTO `tbl_user` VALUES ('444', '2004-01-10', '贲宏', null, '123456', '15905984687', '0');
INSERT INTO `tbl_user` VALUES ('445', '1999-10-26', '梁新', null, '123456', '13807162340', '0');
INSERT INTO `tbl_user` VALUES ('446', '2000-04-04', '姓荣璐', null, '123456', '13502891639', '0');
INSERT INTO `tbl_user` VALUES ('447', '2004-10-18', '翟婷', null, '123456', '15702592159', '0');
INSERT INTO `tbl_user` VALUES ('448', '1990-10-17', '暨维波', null, '123456', '13006738069', '0');
INSERT INTO `tbl_user` VALUES ('449', '2005-12-04', '江江', null, '123456', '13005310371', '0');
INSERT INTO `tbl_user` VALUES ('450', '2002-12-26', '亢纨', null, '123456', '15208565575', '0');
INSERT INTO `tbl_user` VALUES ('451', '1997-03-02', '董固', null, '123456', '15100928891', '0');
INSERT INTO `tbl_user` VALUES ('452', '2013-01-16', '丘蓉', null, '123456', '15207367983', '0');
INSERT INTO `tbl_user` VALUES ('453', '1999-09-06', '杨利', null, '123456', '15104953184', '0');
INSERT INTO `tbl_user` VALUES ('454', '1997-12-04', '归咏', null, '123456', '15207522936', '0');
INSERT INTO `tbl_user` VALUES ('455', '2011-02-24', '诸义', null, '123456', '13504602595', '0');
INSERT INTO `tbl_user` VALUES ('456', '2000-05-17', '阚寒筠', null, '123456', '15305122171', '0');
INSERT INTO `tbl_user` VALUES ('457', '1999-11-27', '穆家', null, '123456', '15901991591', '0');
INSERT INTO `tbl_user` VALUES ('458', '2010-04-21', '终巧', null, '123456', '13301728420', '0');
INSERT INTO `tbl_user` VALUES ('459', '1993-07-28', '居泽', null, '123456', '13407775534', '0');
INSERT INTO `tbl_user` VALUES ('460', '2009-05-19', '霍燕', null, '123456', '13901814640', '0');
INSERT INTO `tbl_user` VALUES ('461', '1994-10-31', '年和', null, '123456', '13601997987', '0');
INSERT INTO `tbl_user` VALUES ('462', '2014-07-03', '张兴', null, '123456', '15501184493', '0');
INSERT INTO `tbl_user` VALUES ('463', '1994-02-12', '琴云', null, '123456', '15204551228', '0');
INSERT INTO `tbl_user` VALUES ('464', '2012-04-29', '融生翔', null, '123456', '13901263269', '0');
INSERT INTO `tbl_user` VALUES ('465', '2001-01-06', '生惠寒', null, '123456', '15806707771', '0');
INSERT INTO `tbl_user` VALUES ('466', '1992-04-08', '狐朋超', null, '123456', '13808597905', '0');
INSERT INTO `tbl_user` VALUES ('467', '1992-10-16', '沙诚翰', null, '123456', '15308360580', '0');
INSERT INTO `tbl_user` VALUES ('468', '1991-03-22', '岑茗茜', null, '123456', '15502955697', '0');
INSERT INTO `tbl_user` VALUES ('469', '1999-05-04', '饶健宏', null, '123456', '13207705539', '0');
INSERT INTO `tbl_user` VALUES ('470', '2013-11-11', '蔚广之', null, '123456', '15204230545', '0');
INSERT INTO `tbl_user` VALUES ('471', '1998-10-21', '谢桂', null, '123456', '13907311240', '0');
INSERT INTO `tbl_user` VALUES ('472', '2014-01-19', '公新', null, '123456', '15208545216', '0');
INSERT INTO `tbl_user` VALUES ('473', '2006-07-03', '司邦谦', null, '123456', '13204330461', '0');
INSERT INTO `tbl_user` VALUES ('474', '2001-02-10', '蔡月萍', null, '123456', '13901356015', '0');
INSERT INTO `tbl_user` VALUES ('475', '2004-11-07', '甄彩妍', null, '123456', '13600037389', '0');
INSERT INTO `tbl_user` VALUES ('476', '2000-04-24', '厉影黛', null, '123456', '13408692757', '0');
INSERT INTO `tbl_user` VALUES ('477', '2011-03-12', '鲜娟', null, '123456', '13305890199', '0');
INSERT INTO `tbl_user` VALUES ('478', '2007-09-04', '暴贞玲', null, '123456', '15200214805', '0');
INSERT INTO `tbl_user` VALUES ('479', '2000-01-17', '缪苑', null, '123456', '13905635324', '0');
INSERT INTO `tbl_user` VALUES ('480', '1998-01-07', '游黛妹', null, '123456', '13807134992', '0');
INSERT INTO `tbl_user` VALUES ('481', '2009-02-04', '马树', null, '123456', '15308737932', '0');
INSERT INTO `tbl_user` VALUES ('482', '1992-07-01', '彭辉', null, '123456', '15605020070', '0');
INSERT INTO `tbl_user` VALUES ('483', '2004-04-19', '阚珠', null, '123456', '13800831425', '0');
INSERT INTO `tbl_user` VALUES ('484', '2002-10-18', '龚妹', null, '123456', '15905596496', '0');
INSERT INTO `tbl_user` VALUES ('485', '2003-01-10', '殳融', null, '123456', '13905264967', '0');
INSERT INTO `tbl_user` VALUES ('486', '2000-07-03', '逄磊庆', null, '123456', '15506700069', '0');
INSERT INTO `tbl_user` VALUES ('487', '2004-01-23', '薛亨清', null, '123456', '13507526280', '0');
INSERT INTO `tbl_user` VALUES ('488', '1993-11-08', '甫珊云', null, '123456', '15800537937', '0');
INSERT INTO `tbl_user` VALUES ('489', '1998-01-27', '澹以', null, '123456', '13408562209', '0');
INSERT INTO `tbl_user` VALUES ('490', '2008-03-22', '郎仁琛', null, '123456', '13105933542', '0');
INSERT INTO `tbl_user` VALUES ('491', '2011-10-22', '苗荷 ', null, '123456', '15802617992', '0');
INSERT INTO `tbl_user` VALUES ('492', '2011-03-09', '齐澜瑶', null, '123456', '13107082221', '0');
INSERT INTO `tbl_user` VALUES ('493', '2005-01-10', '隆巧', null, '123456', '13402870182', '0');
INSERT INTO `tbl_user` VALUES ('494', '2015-01-17', '薄明', null, '123456', '13008628647', '0');
INSERT INTO `tbl_user` VALUES ('495', '2015-09-11', '公瑾凝', null, '123456', '15000937361', '0');
INSERT INTO `tbl_user` VALUES ('496', '2000-10-29', '郭宜爱', null, '123456', '15301323286', '0');
INSERT INTO `tbl_user` VALUES ('497', '2011-12-30', '蔚波谦', null, '123456', '15303276653', '0');
INSERT INTO `tbl_user` VALUES ('498', '2008-10-07', '翟国梁', null, '123456', '15700522582', '0');
INSERT INTO `tbl_user` VALUES ('503', '1994-01-12', '王培坤', null, '123456', '15367959781', '0');
INSERT INTO `tbl_user` VALUES ('504', '1994-04-15', '王大帅', null, '123456', '15346755467', '0');

-- ----------------------------
-- Table structure for tbl_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_role`;
CREATE TABLE `tbl_user_role` (
  `USER_UUID` int(11) NOT NULL COMMENT '用户数据编号',
  `ROLE_UUID` int(11) NOT NULL COMMENT '角色数据编号',
  PRIMARY KEY (`USER_UUID`,`ROLE_UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tbl_user_role
-- ----------------------------
INSERT INTO `tbl_user_role` VALUES ('1', '1');
INSERT INTO `tbl_user_role` VALUES ('1', '2');
INSERT INTO `tbl_user_role` VALUES ('1', '3');
INSERT INTO `tbl_user_role` VALUES ('2', '1');
INSERT INTO `tbl_user_role` VALUES ('3', '1');
INSERT INTO `tbl_user_role` VALUES ('3', '3');
