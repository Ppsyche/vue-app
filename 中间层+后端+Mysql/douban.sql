/*
Navicat MySQL Data Transfer

Source Server         : me
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : douban

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-08-01 21:51:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_movie`
-- ----------------------------
DROP TABLE IF EXISTS `t_movie`;
CREATE TABLE `t_movie` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_name` varchar(255) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_movie
-- ----------------------------

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `lv` int(11) DEFAULT '0' COMMENT '等级',
  `collect_m` varchar(255) DEFAULT NULL COMMENT '收藏电影',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '钱多多', '13202991237', null, 'shhe273619', '1', '2', null);
INSERT INTO `t_user` VALUES ('2', '功必扬', '13245667898', null, 'weisha001', '1', '5', null);
INSERT INTO `t_user` VALUES ('3', '贝尔', '15145089281', null, 'uoy279283', '2', '6', null);
INSERT INTO `t_user` VALUES ('4', '小明', '18745621243', null, 'fsdafer33', '1', '2', null);
INSERT INTO `t_user` VALUES ('5', '小美', '15145025467', null, 'asdfghjk', '2', '10', null);
INSERT INTO `t_user` VALUES ('7', '秀智', '15145032896', null, 'asdfgh', '1', '2', null);
INSERT INTO `t_user` VALUES ('8', 'NN', '18253459837', null, 'fjsajklsdf', '2', '11', null);
INSERT INTO `t_user` VALUES ('9', 'xiaoxioa', '15323454343', null, 'dfhgdfh', '1', '3', null);
INSERT INTO `t_user` VALUES ('10', 'aaa', '15323456786', null, 'sdfddfv', '1', '5', null);
INSERT INTO `t_user` VALUES ('11', 'mm', '15145032891', null, 'qazwsxedc', '1', '0', null);
INSERT INTO `t_user` VALUES ('12', 'mimi', '13823437765', null, '123rfv', '1', '34', null);
INSERT INTO `t_user` VALUES ('13', 'Tim', '13876543456', '78123345@qq.com', 'edcvfrtgb', '2', '23', null);
INSERT INTO `t_user` VALUES ('15', 'Sam', '13587656567', '78151345@163.com', 'asdfghj', '2', '7', null);
INSERT INTO `t_user` VALUES ('16', 'test', '15145342345', '781523223@qq.com', 'qqqqqq', '1', '6', null);
INSERT INTO `t_user` VALUES ('17', 'fsd', '15134567654', null, 'sdasdfasd', '1', '3', null);
INSERT INTO `t_user` VALUES ('19', 'test2', '15456767665', null, 'rsgsdf', '2', '6', null);
INSERT INTO `t_user` VALUES ('20', 'fsf', '15123232323', null, 'sdfgdsg', '2', '12', null);
INSERT INTO `t_user` VALUES ('21', 'aaa', '13232343212', null, 'dsaasd', '2', '4', null);
INSERT INTO `t_user` VALUES ('22', 'test3', '13212345678', null, 'aaaaaa', '2', '2', null);
INSERT INTO `t_user` VALUES ('23', 'sss', '15145032892', null, 'dgesdgfasd', '2', '5', null);
INSERT INTO `t_user` VALUES ('24', 'test4', '15534543234', null, 'afgdsdf', '2', '43', null);
INSERT INTO `t_user` VALUES ('25', 'haha', '15145342111', null, 'qazwsx', null, '13', null);
INSERT INTO `t_user` VALUES ('29', 'aaa', '15145032866', '78151345@qq.com', 'asdfgh', '2', '0', null);
INSERT INTO `t_user` VALUES ('30', 'test5', '15243565433', null, 'qazwsxedc', '1', '0', null);
INSERT INTO `t_user` VALUES ('31', 'alili', '13928392839', '123123123@163.com', 'asdfdsa', '2', '10', null);
