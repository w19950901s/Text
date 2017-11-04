/*
Navicat MySQL Data Transfer

Source Server         : ssh
Source Server Version : 50544
Source Host           : localhost:3306
Source Database       : fwcz

Target Server Type    : MYSQL
Target Server Version : 50544
File Encoding         : 65001

Date: 2017-11-05 02:18:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_detail`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_detail`;
CREATE TABLE `tbl_detail` (
  `fwid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `jdid` int(11) DEFAULT NULL,
  `lxid` int(11) DEFAULT NULL,
  `shi` int(11) DEFAULT NULL,
  `ting` int(11) DEFAULT NULL,
  `fwxx` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `zj` double DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lxr` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `fwlx` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `jd` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `qxid` int(11) DEFAULT NULL,
  `qx` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`fwid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tbl_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_fwlx`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_fwlx`;
CREATE TABLE `tbl_fwlx` (
  `lxid` int(11) NOT NULL AUTO_INCREMENT COMMENT '型类编号',
  `fwlx` varchar(50) DEFAULT NULL COMMENT '屋房类型',
  PRIMARY KEY (`lxid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_fwlx
-- ----------------------------
INSERT INTO `tbl_fwlx` VALUES ('1', '地下室');
INSERT INTO `tbl_fwlx` VALUES ('2', '平房');
INSERT INTO `tbl_fwlx` VALUES ('3', '普通住宅');
INSERT INTO `tbl_fwlx` VALUES ('4', '公寓');
INSERT INTO `tbl_fwlx` VALUES ('5', '别墅');

-- ----------------------------
-- Table structure for `tbl_fwxx`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_fwxx`;
CREATE TABLE `tbl_fwxx` (
  `fwid` int(11) NOT NULL AUTO_INCREMENT COMMENT '屋房编号',
  `uid` int(11) DEFAULT NULL COMMENT '用户编号',
  `jdid` int(11) DEFAULT NULL COMMENT '道街编号',
  `lxid` int(11) DEFAULT NULL COMMENT '型类编号',
  `shi` int(11) DEFAULT NULL COMMENT '室',
  `ting` int(11) DEFAULT NULL COMMENT '厅',
  `fwxx` varchar(2000) DEFAULT NULL COMMENT '屋房信息',
  `zj` float DEFAULT NULL COMMENT '金租',
  `title` varchar(70) DEFAULT NULL COMMENT '标题',
  `date` datetime DEFAULT NULL COMMENT '布发时间',
  `telephone` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `lxr` varchar(50) DEFAULT NULL COMMENT '联系人',
  PRIMARY KEY (`fwid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_fwxx
-- ----------------------------
INSERT INTO `tbl_fwxx` VALUES ('1', '1', '1', '1', '2', '1', '全套家具， 神马都有， 绝对超值', '2500', '出租健翔桥二居室', '2016-11-24 11:23:17', '18624312532', '王先生');
INSERT INTO `tbl_fwxx` VALUES ('2', '1', '1', '2', '2', '1', '小区特色， 安静宜居', '1800', '花园二居室', '2016-12-24 11:26:39', '17123232423', '刘先生');
INSERT INTO `tbl_fwxx` VALUES ('3', '1', '141', '1', '1', '1', '方便实惠， 价格便宜', '400', '宽敞地下室', '2016-11-24 11:27:19', '18343234324', '赵先生');
INSERT INTO `tbl_fwxx` VALUES ('4', '1', '2', '4', '1', '1', '东西齐全，出行方便', '700', '单间出租', '2016-11-25 16:00:15', '18343243243', '侯先生');
INSERT INTO `tbl_fwxx` VALUES ('5', '1', '3', '5', '3', '1', '标准3室一厅， 温馨小家', '1500', '后现代城三居室出租', '2016-11-25 16:01:05', '18456546456', '王女士');
INSERT INTO `tbl_fwxx` VALUES ('6', '1', '3', '3', '1', '1', '方便实惠， 价格便宜', '600', '北大附近招合租', '2016-11-25 16:05:16', '15232432445', '李白');
INSERT INTO `tbl_fwxx` VALUES ('7', '1', '4', '3', '4', '1', '北京老胡同， 特色便宜', '2300', '便宜出租前门四合院', '2016-11-25 16:06:32', '17234234352', '庞先生');
INSERT INTO `tbl_fwxx` VALUES ('8', '1', '4', '4', '1', '1', '全套家具， 神马都有， 绝对超值', '2500', '北三环北太平庄', '2016-11-25 16:10:50', '18354532435', '小明');
INSERT INTO `tbl_fwxx` VALUES ('11', '1', '3', '4', '3', '1', '黄金地带', '3000', '清华大学附近', '2016-11-25 11:43:23', '17342345234', '找某某');
INSERT INTO `tbl_fwxx` VALUES ('13', '1', '120', '4', '3', '1', '新房', '3000', '新房出租，全套家具', '2016-11-27 01:22:37', '18712432452', '侯先生');
INSERT INTO `tbl_fwxx` VALUES ('14', '6', '3', '2', '1', '1', '大学附近，校漂族的理想选择', '2000', '校漂族理想选择', '2016-11-27 05:02:39', '1834324325', 'joy');
INSERT INTO `tbl_fwxx` VALUES ('15', '6', '93', '3', '1', '1', '单间房屋，有卫生间，厨房，设备齐全', '1500', '单间，设备齐全', '2016-11-27 05:04:54', '192423432', '刘女士');
INSERT INTO `tbl_fwxx` VALUES ('18', '1234', '1234', '1234', '1234', '1234', '测试用房描述', '1234', '测试用标题', '2016-10-10 00:00:00', '1234', '测试用联系人');
INSERT INTO `tbl_fwxx` VALUES ('19', '1234', '1234', '1234', '1234', '1234', '测试用房描述', '1234', '测试用标题', '2016-10-10 00:00:00', '1234', '测试用联系人');
INSERT INTO `tbl_fwxx` VALUES ('20', '0', '0', '0', '0', '0', null, '0', '三门峡职业技术学院', null, null, null);
INSERT INTO `tbl_fwxx` VALUES ('21', '0', '0', '0', '0', '0', null, '0', '三门峡职业技术学院', null, null, null);
INSERT INTO `tbl_fwxx` VALUES ('22', '9', '203', '3', '1', '1', 'mhgxm', '3565', '2565', '2017-11-05 02:02:45', '111111', '111111');

-- ----------------------------
-- Table structure for `tbl_husband`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_husband`;
CREATE TABLE `tbl_husband` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `hname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `hage` int(11) DEFAULT NULL,
  `wifId` int(11) DEFAULT NULL,
  PRIMARY KEY (`hid`),
  KEY `FK60DE70BA791EECA2` (`wifId`),
  CONSTRAINT `FK60DE70BA791EECA2` FOREIGN KEY (`wifId`) REFERENCES `tbl_wife` (`wid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tbl_husband
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_jd`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_jd`;
CREATE TABLE `tbl_jd` (
  `jdid` int(11) NOT NULL AUTO_INCREMENT COMMENT '道街编号',
  `jd` varchar(50) DEFAULT NULL COMMENT '街道',
  `qxid` int(11) NOT NULL COMMENT '区编号',
  PRIMARY KEY (`jdid`)
) ENGINE=InnoDB AUTO_INCREMENT=363 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_jd
-- ----------------------------
INSERT INTO `tbl_jd` VALUES ('1', '中关村', '1');
INSERT INTO `tbl_jd` VALUES ('2', '北京大学', '1');
INSERT INTO `tbl_jd` VALUES ('3', '清华大学', '1');
INSERT INTO `tbl_jd` VALUES ('4', '上地', '1');
INSERT INTO `tbl_jd` VALUES ('5', '白颐路', '1');
INSERT INTO `tbl_jd` VALUES ('6', '西三环', '1');
INSERT INTO `tbl_jd` VALUES ('7', '学院路', '1');
INSERT INTO `tbl_jd` VALUES ('8', '西直门外', '1');
INSERT INTO `tbl_jd` VALUES ('9', '紫竹院', '1');
INSERT INTO `tbl_jd` VALUES ('10', '八里庄', '1');
INSERT INTO `tbl_jd` VALUES ('11', '公主坟', '1');
INSERT INTO `tbl_jd` VALUES ('12', '五道口', '1');
INSERT INTO `tbl_jd` VALUES ('13', '双榆树', '1');
INSERT INTO `tbl_jd` VALUES ('14', '西三旗', '1');
INSERT INTO `tbl_jd` VALUES ('15', '清河', '1');
INSERT INTO `tbl_jd` VALUES ('16', '马连洼', '1');
INSERT INTO `tbl_jd` VALUES ('17', '青龙桥', '1');
INSERT INTO `tbl_jd` VALUES ('18', '香山', '1');
INSERT INTO `tbl_jd` VALUES ('19', '田村路', '1');
INSERT INTO `tbl_jd` VALUES ('20', '永定路', '1');
INSERT INTO `tbl_jd` VALUES ('21', '万寿路', '1');
INSERT INTO `tbl_jd` VALUES ('22', '羊坊店', '1');
INSERT INTO `tbl_jd` VALUES ('23', '甘家口', '1');
INSERT INTO `tbl_jd` VALUES ('24', '北航', '1');
INSERT INTO `tbl_jd` VALUES ('25', '北下关', '1');
INSERT INTO `tbl_jd` VALUES ('26', '北太平庄', '1');
INSERT INTO `tbl_jd` VALUES ('27', '万柳', '1');
INSERT INTO `tbl_jd` VALUES ('28', '东升', '1');
INSERT INTO `tbl_jd` VALUES ('29', '四季青', '1');
INSERT INTO `tbl_jd` VALUES ('30', '西北望', '1');
INSERT INTO `tbl_jd` VALUES ('31', '温泉镇', '1');
INSERT INTO `tbl_jd` VALUES ('32', '苏家坨', '1');
INSERT INTO `tbl_jd` VALUES ('33', '上庄', '1');
INSERT INTO `tbl_jd` VALUES ('34', '魏公村', '1');
INSERT INTO `tbl_jd` VALUES ('35', '航天桥', '1');
INSERT INTO `tbl_jd` VALUES ('36', '花园路', '1');
INSERT INTO `tbl_jd` VALUES ('37', '动物园', '1');
INSERT INTO `tbl_jd` VALUES ('38', '其他', '1');
INSERT INTO `tbl_jd` VALUES ('39', '亚运村', '2');
INSERT INTO `tbl_jd` VALUES ('40', '三元桥', '2');
INSERT INTO `tbl_jd` VALUES ('41', '建外大街', '2');
INSERT INTO `tbl_jd` VALUES ('42', '国展', '2');
INSERT INTO `tbl_jd` VALUES ('43', '三里屯', '2');
INSERT INTO `tbl_jd` VALUES ('44', '劲松', '2');
INSERT INTO `tbl_jd` VALUES ('45', '燕莎', '2');
INSERT INTO `tbl_jd` VALUES ('46', '团结湖', '2');
INSERT INTO `tbl_jd` VALUES ('47', '京广桥', '2');
INSERT INTO `tbl_jd` VALUES ('48', '望京', '2');
INSERT INTO `tbl_jd` VALUES ('49', '安贞桥', '2');
INSERT INTO `tbl_jd` VALUES ('50', '潘家园', '2');
INSERT INTO `tbl_jd` VALUES ('51', '酒仙桥', '2');
INSERT INTO `tbl_jd` VALUES ('52', '呼家楼', '2');
INSERT INTO `tbl_jd` VALUES ('53', '双井', '2');
INSERT INTO `tbl_jd` VALUES ('54', '垡头', '2');
INSERT INTO `tbl_jd` VALUES ('55', '六里屯', '2');
INSERT INTO `tbl_jd` VALUES ('56', '麦子店', '2');
INSERT INTO `tbl_jd` VALUES ('57', '左家庄', '2');
INSERT INTO `tbl_jd` VALUES ('58', '香河园', '2');
INSERT INTO `tbl_jd` VALUES ('59', '首都机场', '2');
INSERT INTO `tbl_jd` VALUES ('60', '小关', '2');
INSERT INTO `tbl_jd` VALUES ('61', '和平街', '2');
INSERT INTO `tbl_jd` VALUES ('62', '小红门', '2');
INSERT INTO `tbl_jd` VALUES ('63', '十八里店', '2');
INSERT INTO `tbl_jd` VALUES ('64', '豆各庄', '2');
INSERT INTO `tbl_jd` VALUES ('65', '黑庄户', '2');
INSERT INTO `tbl_jd` VALUES ('66', '王四营', '2');
INSERT INTO `tbl_jd` VALUES ('67', '南磨房', '2');
INSERT INTO `tbl_jd` VALUES ('68', '三间房', '2');
INSERT INTO `tbl_jd` VALUES ('69', '管庄', '2');
INSERT INTO `tbl_jd` VALUES ('70', '高碑店', '2');
INSERT INTO `tbl_jd` VALUES ('71', '常营', '2');
INSERT INTO `tbl_jd` VALUES ('72', '平房', '2');
INSERT INTO `tbl_jd` VALUES ('73', '东坝', '2');
INSERT INTO `tbl_jd` VALUES ('74', '金盏', '2');
INSERT INTO `tbl_jd` VALUES ('75', '将台', '2');
INSERT INTO `tbl_jd` VALUES ('76', '崔各庄', '2');
INSERT INTO `tbl_jd` VALUES ('77', '孙河', '2');
INSERT INTO `tbl_jd` VALUES ('78', '将台', '2');
INSERT INTO `tbl_jd` VALUES ('79', '来广营', '2');
INSERT INTO `tbl_jd` VALUES ('80', '太阳宫', '2');
INSERT INTO `tbl_jd` VALUES ('81', '大屯', '2');
INSERT INTO `tbl_jd` VALUES ('82', '奥运村', '2');
INSERT INTO `tbl_jd` VALUES ('83', '国贸', '2');
INSERT INTO `tbl_jd` VALUES ('84', '西坝河', '2');
INSERT INTO `tbl_jd` VALUES ('85', '朝外大街', '2');
INSERT INTO `tbl_jd` VALUES ('86', '红庙', '2');
INSERT INTO `tbl_jd` VALUES ('87', '八里庄', '2');
INSERT INTO `tbl_jd` VALUES ('88', '花家地', '2');
INSERT INTO `tbl_jd` VALUES ('89', '安华桥', '2');
INSERT INTO `tbl_jd` VALUES ('90', '将台路', '2');
INSERT INTO `tbl_jd` VALUES ('91', '其他', '2');
INSERT INTO `tbl_jd` VALUES ('92', '前门', '3');
INSERT INTO `tbl_jd` VALUES ('93', '天坛', '3');
INSERT INTO `tbl_jd` VALUES ('94', '崇文门外', '3');
INSERT INTO `tbl_jd` VALUES ('95', '龙潭湖', '3');
INSERT INTO `tbl_jd` VALUES ('96', '东花市', '3');
INSERT INTO `tbl_jd` VALUES ('97', '体育馆路', '3');
INSERT INTO `tbl_jd` VALUES ('98', '永定门外', '3');
INSERT INTO `tbl_jd` VALUES ('99', '其他', '3');
INSERT INTO `tbl_jd` VALUES ('100', '白广路', '4');
INSERT INTO `tbl_jd` VALUES ('101', '大观园', '4');
INSERT INTO `tbl_jd` VALUES ('102', '菜市口', '4');
INSERT INTO `tbl_jd` VALUES ('103', '虎坊桥', '4');
INSERT INTO `tbl_jd` VALUES ('104', '长椿街', '4');
INSERT INTO `tbl_jd` VALUES ('105', '和平门', '4');
INSERT INTO `tbl_jd` VALUES ('106', '天桥', '4');
INSERT INTO `tbl_jd` VALUES ('107', '宣武门', '4');
INSERT INTO `tbl_jd` VALUES ('108', '大栅栏', '4');
INSERT INTO `tbl_jd` VALUES ('109', '珠市口', '4');
INSERT INTO `tbl_jd` VALUES ('110', '牛街', '4');
INSERT INTO `tbl_jd` VALUES ('111', '白纸坊', '4');
INSERT INTO `tbl_jd` VALUES ('112', '陶然亭', '4');
INSERT INTO `tbl_jd` VALUES ('113', '椿树街道', '4');
INSERT INTO `tbl_jd` VALUES ('114', '广安门内', '4');
INSERT INTO `tbl_jd` VALUES ('115', '广安门外', '4');
INSERT INTO `tbl_jd` VALUES ('116', '其他', '4');
INSERT INTO `tbl_jd` VALUES ('117', '东直门', '5');
INSERT INTO `tbl_jd` VALUES ('118', '北新桥', '5');
INSERT INTO `tbl_jd` VALUES ('119', '交道口', '5');
INSERT INTO `tbl_jd` VALUES ('120', '景山', '5');
INSERT INTO `tbl_jd` VALUES ('121', '东四十条', '5');
INSERT INTO `tbl_jd` VALUES ('122', '工体', '5');
INSERT INTO `tbl_jd` VALUES ('123', '朝阳门', '5');
INSERT INTO `tbl_jd` VALUES ('124', '建国门', '5');
INSERT INTO `tbl_jd` VALUES ('125', '北京站', '5');
INSERT INTO `tbl_jd` VALUES ('126', '和平里', '5');
INSERT INTO `tbl_jd` VALUES ('127', '雍和宫', '5');
INSERT INTO `tbl_jd` VALUES ('128', '东直门外', '5');
INSERT INTO `tbl_jd` VALUES ('129', '王府井', '5');
INSERT INTO `tbl_jd` VALUES ('130', '东单', '5');
INSERT INTO `tbl_jd` VALUES ('131', '东四', '5');
INSERT INTO `tbl_jd` VALUES ('132', '东华门', '5');
INSERT INTO `tbl_jd` VALUES ('133', '安定门', '5');
INSERT INTO `tbl_jd` VALUES ('134', '其他', '5');
INSERT INTO `tbl_jd` VALUES ('135', '白云路', '6');
INSERT INTO `tbl_jd` VALUES ('136', '西便门', '6');
INSERT INTO `tbl_jd` VALUES ('137', '南礼士路', '6');
INSERT INTO `tbl_jd` VALUES ('138', '月坛', '6');
INSERT INTO `tbl_jd` VALUES ('139', '阜成门', '6');
INSERT INTO `tbl_jd` VALUES ('140', '展览路', '6');
INSERT INTO `tbl_jd` VALUES ('141', '西单', '6');
INSERT INTO `tbl_jd` VALUES ('142', '西四', '6');
INSERT INTO `tbl_jd` VALUES ('143', '西直门', '6');
INSERT INTO `tbl_jd` VALUES ('144', '新街口', '6');
INSERT INTO `tbl_jd` VALUES ('145', '什刹海', '6');
INSERT INTO `tbl_jd` VALUES ('146', '地安门', '6');
INSERT INTO `tbl_jd` VALUES ('147', '鼓楼', '6');
INSERT INTO `tbl_jd` VALUES ('148', '德外', '6');
INSERT INTO `tbl_jd` VALUES ('149', '金融街', '6');
INSERT INTO `tbl_jd` VALUES ('150', '西长安街', '6');
INSERT INTO `tbl_jd` VALUES ('151', '德胜门', '6');
INSERT INTO `tbl_jd` VALUES ('152', '其他', '6');
INSERT INTO `tbl_jd` VALUES ('153', '北苑', '7');
INSERT INTO `tbl_jd` VALUES ('154', '中仓', '7');
INSERT INTO `tbl_jd` VALUES ('155', '新华', '7');
INSERT INTO `tbl_jd` VALUES ('156', '玉桥', '7');
INSERT INTO `tbl_jd` VALUES ('157', '永顺', '7');
INSERT INTO `tbl_jd` VALUES ('158', '梨园', '7');
INSERT INTO `tbl_jd` VALUES ('159', '宋庄', '7');
INSERT INTO `tbl_jd` VALUES ('160', '潞城', '7');
INSERT INTO `tbl_jd` VALUES ('161', '张家湾', '7');
INSERT INTO `tbl_jd` VALUES ('162', '台湖', '7');
INSERT INTO `tbl_jd` VALUES ('163', '马驹桥', '7');
INSERT INTO `tbl_jd` VALUES ('164', '西集', '7');
INSERT INTO `tbl_jd` VALUES ('165', '漷县', '7');
INSERT INTO `tbl_jd` VALUES ('166', '永乐店', '7');
INSERT INTO `tbl_jd` VALUES ('167', '其他', '7');
INSERT INTO `tbl_jd` VALUES ('168', '玉泉营', '8');
INSERT INTO `tbl_jd` VALUES ('169', '方庄', '8');
INSERT INTO `tbl_jd` VALUES ('170', '丰台路', '8');
INSERT INTO `tbl_jd` VALUES ('171', '卢沟桥', '8');
INSERT INTO `tbl_jd` VALUES ('172', '太平桥', '8');
INSERT INTO `tbl_jd` VALUES ('173', '长辛店', '8');
INSERT INTO `tbl_jd` VALUES ('174', '云岗', '8');
INSERT INTO `tbl_jd` VALUES ('175', '新村', '8');
INSERT INTO `tbl_jd` VALUES ('176', '右安门', '8');
INSERT INTO `tbl_jd` VALUES ('177', '马家堡', '8');
INSERT INTO `tbl_jd` VALUES ('178', '西罗园', '8');
INSERT INTO `tbl_jd` VALUES ('179', '大红门', '8');
INSERT INTO `tbl_jd` VALUES ('180', '南苑', '8');
INSERT INTO `tbl_jd` VALUES ('181', '东高地', '8');
INSERT INTO `tbl_jd` VALUES ('182', '东铁匠营', '8');
INSERT INTO `tbl_jd` VALUES ('183', '其他', '8');
INSERT INTO `tbl_jd` VALUES ('184', '城北', '9');
INSERT INTO `tbl_jd` VALUES ('185', '城南', '9');
INSERT INTO `tbl_jd` VALUES ('186', '南口', '9');
INSERT INTO `tbl_jd` VALUES ('187', '马池口', '9');
INSERT INTO `tbl_jd` VALUES ('188', '沙河', '9');
INSERT INTO `tbl_jd` VALUES ('189', '回龙观', '9');
INSERT INTO `tbl_jd` VALUES ('190', '天通苑', '9');
INSERT INTO `tbl_jd` VALUES ('191', '流村', '9');
INSERT INTO `tbl_jd` VALUES ('192', '阳坊', '9');
INSERT INTO `tbl_jd` VALUES ('193', '十三陵', '9');
INSERT INTO `tbl_jd` VALUES ('194', '长陵', '9');
INSERT INTO `tbl_jd` VALUES ('195', '南邵', '9');
INSERT INTO `tbl_jd` VALUES ('196', '崔村', '9');
INSERT INTO `tbl_jd` VALUES ('197', '兴寿', '9');
INSERT INTO `tbl_jd` VALUES ('198', '小汤山', '9');
INSERT INTO `tbl_jd` VALUES ('199', '百善', '9');
INSERT INTO `tbl_jd` VALUES ('200', '东小口', '9');
INSERT INTO `tbl_jd` VALUES ('201', '北七家', '9');
INSERT INTO `tbl_jd` VALUES ('202', '其他', '9');
INSERT INTO `tbl_jd` VALUES ('203', '兴丰', '10');
INSERT INTO `tbl_jd` VALUES ('204', '清源', '10');
INSERT INTO `tbl_jd` VALUES ('205', '林校路', '10');
INSERT INTO `tbl_jd` VALUES ('206', '黄村', '10');
INSERT INTO `tbl_jd` VALUES ('207', '西红门', '10');
INSERT INTO `tbl_jd` VALUES ('208', '旧宫', '10');
INSERT INTO `tbl_jd` VALUES ('209', '亦庄', '10');
INSERT INTO `tbl_jd` VALUES ('210', '瀛海', '10');
INSERT INTO `tbl_jd` VALUES ('211', '青云店', '10');
INSERT INTO `tbl_jd` VALUES ('212', '长子营', '10');
INSERT INTO `tbl_jd` VALUES ('213', '采育', '10');
INSERT INTO `tbl_jd` VALUES ('214', '安定', '10');
INSERT INTO `tbl_jd` VALUES ('215', '魏善庄', '10');
INSERT INTO `tbl_jd` VALUES ('216', '礼贤', '10');
INSERT INTO `tbl_jd` VALUES ('217', '榆垡', '10');
INSERT INTO `tbl_jd` VALUES ('218', '庞各庄', '10');
INSERT INTO `tbl_jd` VALUES ('219', '北臧村', '10');
INSERT INTO `tbl_jd` VALUES ('220', '其他', '10');
INSERT INTO `tbl_jd` VALUES ('221', '大峪', '11');
INSERT INTO `tbl_jd` VALUES ('222', '城子街道', '11');
INSERT INTO `tbl_jd` VALUES ('223', '东辛房', '11');
INSERT INTO `tbl_jd` VALUES ('224', '大台', '11');
INSERT INTO `tbl_jd` VALUES ('225', '王平', '11');
INSERT INTO `tbl_jd` VALUES ('226', '龙泉', '11');
INSERT INTO `tbl_jd` VALUES ('227', '永定', '11');
INSERT INTO `tbl_jd` VALUES ('228', '潭柘寺', '11');
INSERT INTO `tbl_jd` VALUES ('229', '王平', '11');
INSERT INTO `tbl_jd` VALUES ('230', '军庄', '11');
INSERT INTO `tbl_jd` VALUES ('231', '妙峰山', '11');
INSERT INTO `tbl_jd` VALUES ('232', '雁翅', '11');
INSERT INTO `tbl_jd` VALUES ('233', '斋堂', '11');
INSERT INTO `tbl_jd` VALUES ('234', '清水', '11');
INSERT INTO `tbl_jd` VALUES ('235', '其他', '11');
INSERT INTO `tbl_jd` VALUES ('236', '八宝山', '12');
INSERT INTO `tbl_jd` VALUES ('237', '古城', '12');
INSERT INTO `tbl_jd` VALUES ('238', '苹果园', '12');
INSERT INTO `tbl_jd` VALUES ('239', '鲁谷', '12');
INSERT INTO `tbl_jd` VALUES ('240', '老山', '12');
INSERT INTO `tbl_jd` VALUES ('241', '八角', '12');
INSERT INTO `tbl_jd` VALUES ('242', '金顶街', '12');
INSERT INTO `tbl_jd` VALUES ('243', '广宁', '12');
INSERT INTO `tbl_jd` VALUES ('244', '五里坨', '12');
INSERT INTO `tbl_jd` VALUES ('245', '其他', '12');
INSERT INTO `tbl_jd` VALUES ('246', '城关', '13');
INSERT INTO `tbl_jd` VALUES ('247', '东风', '13');
INSERT INTO `tbl_jd` VALUES ('248', '向阳', '13');
INSERT INTO `tbl_jd` VALUES ('249', '迎风', '13');
INSERT INTO `tbl_jd` VALUES ('250', '新镇', '13');
INSERT INTO `tbl_jd` VALUES ('251', '星城', '13');
INSERT INTO `tbl_jd` VALUES ('252', '良乡', '13');
INSERT INTO `tbl_jd` VALUES ('253', '琉璃河', '13');
INSERT INTO `tbl_jd` VALUES ('254', '周口店', '13');
INSERT INTO `tbl_jd` VALUES ('255', '长阳', '13');
INSERT INTO `tbl_jd` VALUES ('256', '阎村', '13');
INSERT INTO `tbl_jd` VALUES ('257', '窦店', '13');
INSERT INTO `tbl_jd` VALUES ('258', '韩村河', '13');
INSERT INTO `tbl_jd` VALUES ('259', '石楼', '13');
INSERT INTO `tbl_jd` VALUES ('260', '长沟', '13');
INSERT INTO `tbl_jd` VALUES ('261', '大石窝', '13');
INSERT INTO `tbl_jd` VALUES ('262', '张坊', '13');
INSERT INTO `tbl_jd` VALUES ('263', '十渡', '13');
INSERT INTO `tbl_jd` VALUES ('264', '青龙湖', '13');
INSERT INTO `tbl_jd` VALUES ('265', '河北镇', '13');
INSERT INTO `tbl_jd` VALUES ('266', '佛子庄', '13');
INSERT INTO `tbl_jd` VALUES ('267', '大安山', '13');
INSERT INTO `tbl_jd` VALUES ('268', '史家营', '13');
INSERT INTO `tbl_jd` VALUES ('269', '南窑', '13');
INSERT INTO `tbl_jd` VALUES ('270', '霞云岭', '13');
INSERT INTO `tbl_jd` VALUES ('271', '蒲洼', '13');
INSERT INTO `tbl_jd` VALUES ('272', '其他', '13');
INSERT INTO `tbl_jd` VALUES ('273', '胜利', '14');
INSERT INTO `tbl_jd` VALUES ('274', '光明', '14');
INSERT INTO `tbl_jd` VALUES ('275', '石园', '14');
INSERT INTO `tbl_jd` VALUES ('276', '仁和', '14');
INSERT INTO `tbl_jd` VALUES ('277', '马坡', '14');
INSERT INTO `tbl_jd` VALUES ('278', '牛栏山', '14');
INSERT INTO `tbl_jd` VALUES ('279', '杨镇', '14');
INSERT INTO `tbl_jd` VALUES ('280', '南法信', '14');
INSERT INTO `tbl_jd` VALUES ('281', '后沙峪', '14');
INSERT INTO `tbl_jd` VALUES ('282', '天竺', '14');
INSERT INTO `tbl_jd` VALUES ('283', '北小营', '14');
INSERT INTO `tbl_jd` VALUES ('284', '南彩', '14');
INSERT INTO `tbl_jd` VALUES ('285', '木林', '14');
INSERT INTO `tbl_jd` VALUES ('286', '龙湾屯', '14');
INSERT INTO `tbl_jd` VALUES ('287', '张镇', '14');
INSERT INTO `tbl_jd` VALUES ('288', '大孙各庄', '14');
INSERT INTO `tbl_jd` VALUES ('289', '北务', '14');
INSERT INTO `tbl_jd` VALUES ('290', '李遂', '14');
INSERT INTO `tbl_jd` VALUES ('291', '李桥', '14');
INSERT INTO `tbl_jd` VALUES ('292', '高丽营', '14');
INSERT INTO `tbl_jd` VALUES ('293', '赵全营', '14');
INSERT INTO `tbl_jd` VALUES ('294', '北石槽', '14');
INSERT INTO `tbl_jd` VALUES ('295', '其他', '14');
INSERT INTO `tbl_jd` VALUES ('296', '溪翁庄', '15');
INSERT INTO `tbl_jd` VALUES ('297', '十里堡', '15');
INSERT INTO `tbl_jd` VALUES ('298', '河南寨', '15');
INSERT INTO `tbl_jd` VALUES ('299', '东邵渠', '15');
INSERT INTO `tbl_jd` VALUES ('300', '巨各庄', '15');
INSERT INTO `tbl_jd` VALUES ('301', '大城子', '15');
INSERT INTO `tbl_jd` VALUES ('302', '北庄', '15');
INSERT INTO `tbl_jd` VALUES ('303', '太师屯', '15');
INSERT INTO `tbl_jd` VALUES ('304', '新城子', '15');
INSERT INTO `tbl_jd` VALUES ('305', '古北口', '15');
INSERT INTO `tbl_jd` VALUES ('306', '高岭', '15');
INSERT INTO `tbl_jd` VALUES ('307', '不老屯', '15');
INSERT INTO `tbl_jd` VALUES ('308', '冯家峪', '15');
INSERT INTO `tbl_jd` VALUES ('309', '石城', '15');
INSERT INTO `tbl_jd` VALUES ('310', '西田各庄', '15');
INSERT INTO `tbl_jd` VALUES ('311', '穆家峪', '15');
INSERT INTO `tbl_jd` VALUES ('312', '其他', '15');
INSERT INTO `tbl_jd` VALUES ('313', '龙山', '16');
INSERT INTO `tbl_jd` VALUES ('314', '泉河', '16');
INSERT INTO `tbl_jd` VALUES ('315', '庙城', '16');
INSERT INTO `tbl_jd` VALUES ('316', '雁栖', '16');
INSERT INTO `tbl_jd` VALUES ('317', '杨宋', '16');
INSERT INTO `tbl_jd` VALUES ('318', '北房', '16');
INSERT INTO `tbl_jd` VALUES ('319', '怀北', '16');
INSERT INTO `tbl_jd` VALUES ('320', '渤海镇', '16');
INSERT INTO `tbl_jd` VALUES ('321', '九渡河', '16');
INSERT INTO `tbl_jd` VALUES ('322', '桥梓', '16');
INSERT INTO `tbl_jd` VALUES ('323', '琉璃庙', '16');
INSERT INTO `tbl_jd` VALUES ('324', '汤河口', '16');
INSERT INTO `tbl_jd` VALUES ('325', '宝山', '16');
INSERT INTO `tbl_jd` VALUES ('326', '其他', '16');
INSERT INTO `tbl_jd` VALUES ('327', '延庆', '17');
INSERT INTO `tbl_jd` VALUES ('328', '康庄', '17');
INSERT INTO `tbl_jd` VALUES ('329', '八达岭', '17');
INSERT INTO `tbl_jd` VALUES ('330', '大榆树', '17');
INSERT INTO `tbl_jd` VALUES ('331', '井庄', '17');
INSERT INTO `tbl_jd` VALUES ('332', '永宁', '17');
INSERT INTO `tbl_jd` VALUES ('333', '四海', '17');
INSERT INTO `tbl_jd` VALUES ('334', '千家店', '17');
INSERT INTO `tbl_jd` VALUES ('335', '旧县', '17');
INSERT INTO `tbl_jd` VALUES ('336', '沈家营', '17');
INSERT INTO `tbl_jd` VALUES ('337', '张山营', '17');
INSERT INTO `tbl_jd` VALUES ('338', '大庄科', '17');
INSERT INTO `tbl_jd` VALUES ('339', '香营', '17');
INSERT INTO `tbl_jd` VALUES ('340', '刘斌堡', '17');
INSERT INTO `tbl_jd` VALUES ('341', '珍珠泉', '17');
INSERT INTO `tbl_jd` VALUES ('342', '其他', '17');
INSERT INTO `tbl_jd` VALUES ('343', '滨河', '18');
INSERT INTO `tbl_jd` VALUES ('344', '兴谷', '18');
INSERT INTO `tbl_jd` VALUES ('345', '渔阳', '18');
INSERT INTO `tbl_jd` VALUES ('346', '峪口', '18');
INSERT INTO `tbl_jd` VALUES ('347', '马坊', '18');
INSERT INTO `tbl_jd` VALUES ('348', '金海湖', '18');
INSERT INTO `tbl_jd` VALUES ('349', '平谷镇', '18');
INSERT INTO `tbl_jd` VALUES ('350', '大兴庄', '18');
INSERT INTO `tbl_jd` VALUES ('351', '马昌营', '18');
INSERT INTO `tbl_jd` VALUES ('352', '东高村', '18');
INSERT INTO `tbl_jd` VALUES ('353', '夏各庄', '18');
INSERT INTO `tbl_jd` VALUES ('354', '南独乐河', '18');
INSERT INTO `tbl_jd` VALUES ('355', '镇罗营', '18');
INSERT INTO `tbl_jd` VALUES ('356', '大华山', '18');
INSERT INTO `tbl_jd` VALUES ('357', '刘家店', '18');
INSERT INTO `tbl_jd` VALUES ('358', '王辛庄', '18');
INSERT INTO `tbl_jd` VALUES ('359', '山东庄', '18');
INSERT INTO `tbl_jd` VALUES ('360', '黄松峪', '18');
INSERT INTO `tbl_jd` VALUES ('361', '熊儿寨', '18');
INSERT INTO `tbl_jd` VALUES ('362', '其他', '18');

-- ----------------------------
-- Table structure for `tbl_qx`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_qx`;
CREATE TABLE `tbl_qx` (
  `qxid` int(11) NOT NULL AUTO_INCREMENT COMMENT '区编号',
  `qx` varchar(50) DEFAULT NULL COMMENT '区县',
  PRIMARY KEY (`qxid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_qx
-- ----------------------------
INSERT INTO `tbl_qx` VALUES ('1', '海淀');
INSERT INTO `tbl_qx` VALUES ('2', '朝阳');
INSERT INTO `tbl_qx` VALUES ('3', '崇文');
INSERT INTO `tbl_qx` VALUES ('4', '宣武');
INSERT INTO `tbl_qx` VALUES ('5', '东城');
INSERT INTO `tbl_qx` VALUES ('6', '西城');
INSERT INTO `tbl_qx` VALUES ('7', '通州');
INSERT INTO `tbl_qx` VALUES ('8', '丰台');
INSERT INTO `tbl_qx` VALUES ('9', '昌平');
INSERT INTO `tbl_qx` VALUES ('10', '大兴');
INSERT INTO `tbl_qx` VALUES ('11', '门头沟');
INSERT INTO `tbl_qx` VALUES ('12', '石景山');
INSERT INTO `tbl_qx` VALUES ('13', '房山');
INSERT INTO `tbl_qx` VALUES ('14', '顺义');
INSERT INTO `tbl_qx` VALUES ('15', '密云');
INSERT INTO `tbl_qx` VALUES ('16', '怀柔');
INSERT INTO `tbl_qx` VALUES ('17', '延庆');
INSERT INTO `tbl_qx` VALUES ('18', '平谷');

-- ----------------------------
-- Table structure for `tbl_stu`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_stu`;
CREATE TABLE `tbl_stu` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `sage` int(11) DEFAULT NULL,
  `sno` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tbl_stu
-- ----------------------------
INSERT INTO `tbl_stu` VALUES ('1', '王阳', '20', '1995');

-- ----------------------------
-- Table structure for `tbl_student_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_student_teacher`;
CREATE TABLE `tbl_student_teacher` (
  `teacherId` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  PRIMARY KEY (`students`,`teacherId`),
  KEY `FK2BB635D147EDF0B` (`students`),
  KEY `FK2BB635DA3CECB97` (`teacherId`),
  CONSTRAINT `FK2BB635D147EDF0B` FOREIGN KEY (`students`) REFERENCES `tbl_stu` (`sid`),
  CONSTRAINT `FK2BB635DA3CECB97` FOREIGN KEY (`teacherId`) REFERENCES `tbl_teacher` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tbl_student_teacher
-- ----------------------------
INSERT INTO `tbl_student_teacher` VALUES ('1', '1');
INSERT INTO `tbl_student_teacher` VALUES ('2', '1');

-- ----------------------------
-- Table structure for `tbl_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_teacher`;
CREATE TABLE `tbl_teacher` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `tage` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tbl_teacher
-- ----------------------------
INSERT INTO `tbl_teacher` VALUES ('1', '熊艳', '30');
INSERT INTO `tbl_teacher` VALUES ('2', '牛瑶瑶', '30');

-- ----------------------------
-- Table structure for `tbl_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '户用编号',
  `uname` varchar(50) DEFAULT NULL COMMENT '用户名',
  `upass` varchar(50) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', 'ishouwen', 'ishouwen');
INSERT INTO `tbl_user` VALUES ('6', 'wakao', 'wakao');
INSERT INTO `tbl_user` VALUES ('7', 'test', 'test');
INSERT INTO `tbl_user` VALUES ('8', 'admin', '123');
INSERT INTO `tbl_user` VALUES ('9', '123', '123');

-- ----------------------------
-- Table structure for `tbl_wife`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_wife`;
CREATE TABLE `tbl_wife` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `wname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `wage` int(11) DEFAULT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tbl_wife
-- ----------------------------
