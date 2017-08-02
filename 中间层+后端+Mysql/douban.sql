/*
Navicat MySQL Data Transfer

Source Server         : me
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : douban

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-08-02 22:09:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_book`
-- ----------------------------
DROP TABLE IF EXISTS `t_book`;
CREATE TABLE `t_book` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_name` varchar(255) DEFAULT NULL,
  `b_summary` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3608209 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_book
-- ----------------------------
INSERT INTO `t_book` VALUES ('1036274', '夏洛的网', '一个蜘蛛和小猪的故事，写给孩子，也写给大人。\n在朱克曼家的谷仓里，快乐地生活着一群动物，其中小猪威尔伯和蜘蛛夏洛建立了最真挚的友谊。然而，一个最丑恶的消息打破了谷仓的平静：威尔伯未来的命运竟是成为熏肉火腿。作为一只猪，悲痛绝望的威尔伯似乎只能接受任人宰割的命运了，然而，看似渺小的夏洛却说：“我救你。”于是，夏洛用自己的丝在猪栏上织出了被人类视为奇迹的网上文字，彻底逆转了威尔伯的命运，终于让它在集市的大赛中赢得特别奖，和一个安享天命的未来。但，这时，蜘蛛夏洛的生命却走到了尽头……\n');
INSERT INTO `t_book` VALUES ('1043008', '格林童话全集', '《格林童话全集》主要内容：本文库旨在汇总世界文学创作的精华，全面反映包括我国在内的世界文学的最高成就，为读者提供世界第一流的文学精品，它以最能代表一个时代文学成就的长篇小说为骨干，同时全面地反映其他体裁如中短篇小说、诗歌、散文、戏剧、童话、寓言等各主面最优秀的成查，选收作品的时限，外国文学部分，自古代英雄史诗至第二次世界大战结束，中国文学部分，自《诗经》至中华人民共和国成立，它是包容古今、囊括中外的珍贵的文学图书系统。');
INSERT INTO `t_book` VALUES ('1084336', '小王子', '小王子是一个超凡脱俗的仙童，他住在一颗只比他大一丁点儿的小行星上。陪伴他的是一朵他非常喜爱的小玫瑰花。但玫瑰花的虚荣心伤害了小王子对她的感情。小王子告别小行星，开始了遨游太空的旅行。他先后访问了六个行星，各种见闻使他陷入忧伤，他感到大人们荒唐可笑、太不正常。只有在其中一个点灯人的星球上，小王子才找到一个可以作为朋友的人。但点灯人的天地又十分狭小，除了点灯人他自己，不能容下第二个人。在地理学家的指点下，孤单的小王子来到人类居住的地球。\n小王子发现人类缺乏想象力，只知像鹦鹉那样重复别人讲过的话。小王子这时越来');
INSERT INTO `t_book` VALUES ('3608208', '牧羊少年奇幻之旅', '牧羊少年圣地亚哥接连两次做了同一个梦，梦见埃及金字塔附近藏有一批宝藏。少年卖掉羊群，历尽千辛万苦一路向南，跨海来到非洲，穿越“死亡之海”撒哈拉大沙漠……期间奇遇不断，在一位炼金术士的指引下，他终于到达金字塔前，悟出了宝藏的真正所在……');

-- ----------------------------
-- Table structure for `t_collect_book`
-- ----------------------------
DROP TABLE IF EXISTS `t_collect_book`;
CREATE TABLE `t_collect_book` (
  `cb_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL COMMENT '收藏用户',
  `b_id` int(11) DEFAULT NULL COMMENT '收藏图书',
  `cb_time` varchar(255) DEFAULT NULL COMMENT '收藏时间',
  PRIMARY KEY (`cb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_collect_book
-- ----------------------------
INSERT INTO `t_collect_book` VALUES ('1', '8', '1084336', null);
INSERT INTO `t_collect_book` VALUES ('2', '8', '1036274', null);
INSERT INTO `t_collect_book` VALUES ('3', '8', '3608208', null);
INSERT INTO `t_collect_book` VALUES ('4', '8', '1043008', null);

-- ----------------------------
-- Table structure for `t_collect_movie`
-- ----------------------------
DROP TABLE IF EXISTS `t_collect_movie`;
CREATE TABLE `t_collect_movie` (
  `cm_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL COMMENT '收藏用户',
  `m_id` int(11) DEFAULT NULL COMMENT '收藏电影',
  `cm_time` varchar(255) DEFAULT NULL COMMENT '收藏时间',
  PRIMARY KEY (`cm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_collect_movie
-- ----------------------------
INSERT INTO `t_collect_movie` VALUES ('18', '10', '26363254', null);
INSERT INTO `t_collect_movie` VALUES ('19', '8', '26958767', null);
INSERT INTO `t_collect_movie` VALUES ('20', '8', '26790961', null);
INSERT INTO `t_collect_movie` VALUES ('21', '8', '26363254', null);

-- ----------------------------
-- Table structure for `t_movie`
-- ----------------------------
DROP TABLE IF EXISTS `t_movie`;
CREATE TABLE `t_movie` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_name` varchar(255) DEFAULT NULL,
  `m_summary` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26958768 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_movie
-- ----------------------------
INSERT INTO `t_movie` VALUES ('25812712', '神偷奶爸3', '《神偷奶爸3》将延续前两部的温馨、搞笑风格，聚焦格鲁和露西的婚后生活，继续讲述格鲁和三个女儿的爆笑故事。“恶棍”奶爸格鲁将会如何对付大反派巴萨扎·布莱德，调皮可爱的小黄人们又会如何耍贱卖萌，无疑让全球观众万分期待。该片配音也最大程度沿用前作阵容，史蒂夫·卡瑞尔继续为男主角格鲁配音，皮埃尔·柯芬也将继续为经典角色小黄人配音，而新角色巴萨扎·布莱德则由《南方公园》主创元老崔·帕克为其配音。');
INSERT INTO `t_movie` VALUES ('25823277', '三生三世十里桃花', '天族战神墨渊（杨洋 饰）镇压鬼君擎苍（严宽 饰）于无妄海，魂飞魄散，仙体冰封于青丘炎华洞内。青丘帝姬白浅（刘亦菲 饰）同天族太子夜华（杨洋 饰）早有婚约，二人却一直未曾相见。直至东海盛宴，夜华发现白浅竟然同亡妻素素（刘亦菲 饰）相貌一样，就势住进白浅的青丘，放下太子身段，为求解开白浅与素素之谜。夜华侧妃素锦（李纯 饰）生妒，暗中协助鬼族王后玄女（顾璇 饰）抢走墨渊仙体。白浅一怒之下血战鬼族大紫明宫，身负重伤，终被夜华救下。白浅跟随夜华来到九重天，通过天族圣器结魄灯恢复记忆，回想起身为素素一世之时所受伤害，');
INSERT INTO `t_movie` VALUES ('26363254', '战狼2', '故事发生在非洲附近的大海上，主人公冷锋（吴京 饰）遭遇人生滑铁卢，被“开除军籍”，本想漂泊一生的他，正当他打算这么做的时候，一场突如其来的意外打破了他的计划，突然被卷入了一场非洲国家叛乱，本可以安全撤离，却因无法忘记曾经为军人的使命，孤身犯险冲回沦陷区，带领身陷屠杀中的同胞和难民，展开生死逃亡。随着斗争的持续，体内的狼性逐渐复苏，最终孤身闯入战乱区域，为同胞而战斗。');
INSERT INTO `t_movie` VALUES ('26790961', '闪光少女', '陈惊（徐璐饰）是一个古灵精怪、敢爱敢恨的姑娘，江湖人称“神经”。作为音乐附中的奇葩人物，陈惊人缘欠佳只有男闺蜜“油渣”（彭昱畅饰）甘愿为她鞍前马后。自信满满的陈惊恋上了校草师哥，不料却遭到校草的嘲笑和奚落，还引起了校园两大院系之间的大混战。为了向师哥证明自己，陈惊联手“502宿舍”神秘人物组成2.5次元乐团，挑战权威、破除成见，上演了一幕幕生猛搞笑的青春趣事。一个懵懂怪力的少女，一场默默守护的爱恋，一群奇葩义气的小伙伴，“神经女孩”如何逆袭成为“闪光少女”？2017年暑期《闪光少女》放肆揭晓——不一样，又');
INSERT INTO `t_movie` VALUES ('26958767', '谁是球王', '电影《谁是球王》是中央电视台建台以来，第一次基于自创栏目品牌策划制作的电影项目，也是其为探索节目版权全产业链经营的一次全新尝试。电影讲述了主人公洪旭东由于当年一个错误的决定，彻底告别了钟爱的足球梦想。为了扭转命运，他决心重头再战，用自己的不懈努力重聚了分崩离析的球队，也得到了真正意义上的自我救赎的故事。');

-- ----------------------------
-- Table structure for `t_photo`
-- ----------------------------
DROP TABLE IF EXISTS `t_photo`;
CREATE TABLE `t_photo` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) DEFAULT NULL,
  `p_src` varchar(255) DEFAULT NULL,
  `p_srcc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_photo
-- ----------------------------
INSERT INTO `t_photo` VALUES ('1', '图1', '../../static/img/img1.jpg', '../../static/imgs/img1.jpg');
INSERT INTO `t_photo` VALUES ('2', '图2', '../../static/img/img2.jpg', '../../static/imgs/img2.jpg');
INSERT INTO `t_photo` VALUES ('3', '图3', '../../static/img/img3.jpg', '../../static/imgs/img3.jpg');
INSERT INTO `t_photo` VALUES ('4', '图4', '../../static/img/img4.jpg', '../../static/imgs/img4.jpg');
INSERT INTO `t_photo` VALUES ('5', '图5', '../../static/img/img5.jpg', '../../static/imgs/img5.jpg');
INSERT INTO `t_photo` VALUES ('6', '图6', '../../static/img/img6.jpg', '../../static/imgs/img6.jpg');
INSERT INTO `t_photo` VALUES ('7', '图7', '../../static/img/img7.jpg', '../../static/imgs/img7.jpg');
INSERT INTO `t_photo` VALUES ('8', '图8', '../../static/img/img8.jpg', '../../static/imgs/img8.jpg');
INSERT INTO `t_photo` VALUES ('9', '图9', '../../static/img/img9.jpg', '../../static/imgs/img9.jpg');
INSERT INTO `t_photo` VALUES ('10', '图10', '../../static/img/img10.jpg', '../../static/imgs/img10.jpg');
INSERT INTO `t_photo` VALUES ('11', '图11', '../../static/img/img11.jpg', '../../static/imgs/img11.jpg');
INSERT INTO `t_photo` VALUES ('12', '图12', '../../static/img/img12.jpg', '../../static/imgs/img12.jpg');
INSERT INTO `t_photo` VALUES ('13', '图13', '../../static/img/img13.jpg', '../../static/imgs/img13.jpg');
INSERT INTO `t_photo` VALUES ('14', '图14', '../../static/img/img14.jpg', '../../static/imgs/img14.jpg');
INSERT INTO `t_photo` VALUES ('15', '图15', '../../static/img/img15.jpg', '../../static/imgs/img15.jpg');
INSERT INTO `t_photo` VALUES ('16', '图16', '../../static/img/img16.jpg', '../../static/imgs/img16.jpg');
INSERT INTO `t_photo` VALUES ('17', '图17', '../../static/img/img17.jpg', '../../static/imgs/img17.jpg');
INSERT INTO `t_photo` VALUES ('18', '图18', '../../static/img/img18.jpg', '../../static/imgs/img18.jpg');
INSERT INTO `t_photo` VALUES ('19', '图19', '../../static/img/img19.jpg', '../../static/imgs/img19.jpg');
INSERT INTO `t_photo` VALUES ('20', '图20', '../../static/img/img20.jpg', '../../static/imgs/img20.jpg');
INSERT INTO `t_photo` VALUES ('21', '图21', '../../static/img/img21.jpg', '../../static/imgs/img21.jpg');
INSERT INTO `t_photo` VALUES ('22', '图22', '../../static/img/img22.jpg', '../../static/imgs/img22.jpg');
INSERT INTO `t_photo` VALUES ('23', '图23', '../../static/img/img23.jpg', '../../static/imgs/img23.jpg');
INSERT INTO `t_photo` VALUES ('24', '图24', '../../static/img/img24.jpg', '../../static/imgs/img24.jpg');
INSERT INTO `t_photo` VALUES ('25', '图25', '../../static/img/img25.jpg', '../../static/imgs/img25.jpg');
INSERT INTO `t_photo` VALUES ('26', '图26', '../../static/img/img26.jpg', '../../static/imgs/img26.jpg');
INSERT INTO `t_photo` VALUES ('27', '图27', '../../static/img/img27.jpg', '../../static/imgs/img27.jpg');
INSERT INTO `t_photo` VALUES ('28', '图28', '../../static/img/img28.jpg', '../../static/imgs/img28.jpg');
INSERT INTO `t_photo` VALUES ('29', '图29', '../../static/img/img29.jpg', '../../static/imgs/img29.jpg');
INSERT INTO `t_photo` VALUES ('30', '图30', '../../static/img/img30.jpg', '../../static/imgs/img30.jpg');
INSERT INTO `t_photo` VALUES ('31', '图31', '../../static/img/img31.jpg', '../../static/imgs/img31.jpg');
INSERT INTO `t_photo` VALUES ('32', '图32', '../../static/img/img32.jpg', '../../static/imgs/img32.jpg');
INSERT INTO `t_photo` VALUES ('33', '图33', '../../static/img/img33.jpg', '../../static/imgs/img33.jpg');
INSERT INTO `t_photo` VALUES ('34', '图34', '../../static/img/img34.jpg', '../../static/imgs/img34.jpg');
INSERT INTO `t_photo` VALUES ('35', '图35', '../../static/img/img35.jpg', '../../static/imgs/img35.jpg');
INSERT INTO `t_photo` VALUES ('36', '图36', '../../static/img/img36.jpg', '../../static/imgs/img36.jpg');
INSERT INTO `t_photo` VALUES ('37', '图37', '../../static/img/img37.jpg', '../../static/imgs/img37.jpg');
INSERT INTO `t_photo` VALUES ('38', '图38', '../../static/img/img38.jpg', '../../static/imgs/img38.jpg');
INSERT INTO `t_photo` VALUES ('39', '图39', '../../static/img/img39.jpg', '../../static/imgs/img39.jpg');
INSERT INTO `t_photo` VALUES ('40', '图40', '../../static/img/img40.jpg', '../../static/imgs/img40.jpg');
INSERT INTO `t_photo` VALUES ('41', '图41', '../../static/img/img41.jpg', '../../static/imgs/img41.jpg');
INSERT INTO `t_photo` VALUES ('42', '图42', '../../static/img/img42.jpg', '../../static/imgs/img42.jpg');
INSERT INTO `t_photo` VALUES ('43', '图43', '../../static/img/img43.jpg', '../../static/imgs/img43.jpg');
INSERT INTO `t_photo` VALUES ('44', '图44', '../../static/img/img44.jpg', '../../static/imgs/img44.jpg');
INSERT INTO `t_photo` VALUES ('45', '图45', '../../static/img/img45.jpg', '../../static/imgs/img45.jpg');
INSERT INTO `t_photo` VALUES ('46', '图46', '../../static/img/img46.jpg', '../../static/imgs/img46.jpg');
INSERT INTO `t_photo` VALUES ('47', '图47', '../../static/img/img47.jpg', '../../static/imgs/img47.jpg');
INSERT INTO `t_photo` VALUES ('48', '图48', '../../static/img/img48.jpg', '../../static/imgs/img48.jpg');
INSERT INTO `t_photo` VALUES ('49', '图49', '../../static/img/img49.jpg', '../../static/imgs/img49.jpg');
INSERT INTO `t_photo` VALUES ('50', '图50', '../../static/img/img50.jpg', '../../static/imgs/img50.jpg');
INSERT INTO `t_photo` VALUES ('51', '图51', '../../static/img/img51.jpg', '../../static/imgs/img51.jpg');
INSERT INTO `t_photo` VALUES ('52', '图52', '../../static/img/img52.jpg', '../../static/imgs/img52.jpg');
INSERT INTO `t_photo` VALUES ('53', '图53', '../../static/img/img53.jpg', '../../static/imgs/img53.jpg');
INSERT INTO `t_photo` VALUES ('54', '图54', '../../static/img/img54.jpg', '../../static/imgs/img54.jpg');
INSERT INTO `t_photo` VALUES ('55', '图55', '../../static/img/img55.jpg', '../../static/imgs/img55.jpg');
INSERT INTO `t_photo` VALUES ('56', '图56', '../../static/img/img56.jpg', '../../static/imgs/img56.jpg');
INSERT INTO `t_photo` VALUES ('57', '图57', '../../static/img/img57.jpg', '../../static/imgs/img57.jpg');
INSERT INTO `t_photo` VALUES ('58', '图58', '../../static/img/img58.jpg', '../../static/imgs/img58.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '钱多多', '13202991237', null, 'shhe273619', '1', '2', null);
INSERT INTO `t_user` VALUES ('2', '功必扬', '13245667898', null, 'weisha001', '1', '5', null);
INSERT INTO `t_user` VALUES ('3', '贝尔', '15145089281', null, 'uoy279283', '2', '6', null);
INSERT INTO `t_user` VALUES ('4', '小明', '18745621243', null, 'fsdafer33', '1', '2', null);
INSERT INTO `t_user` VALUES ('5', '小美', '15145025467', null, 'asdfghjk', '2', '10', null);
INSERT INTO `t_user` VALUES ('7', '秀智', '15145032890', null, 'asdfgh', '1', '2', null);
INSERT INTO `t_user` VALUES ('8', '月月', '18253459837', '781324323@qq.com', 'fjsajklsdf', '1', '11', null);
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
INSERT INTO `t_user` VALUES ('32', '111', '15345432345', null, 'dfsfsdg', null, '0', null);
INSERT INTO `t_user` VALUES ('33', 'aaa', '15343456787', null, 'asdfgh', null, '0', null);
INSERT INTO `t_user` VALUES ('34', 'Marys', '15145032434', null, 'asdfgh', '1', '0', null);
INSERT INTO `t_user` VALUES ('36', '小美美', '13734565654', null, 'qazwsx', '1', '0', null);
