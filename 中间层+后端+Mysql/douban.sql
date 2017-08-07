/*
Navicat MySQL Data Transfer

Source Server         : me
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : douban

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-08-07 22:40:54
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
  `b_average` float DEFAULT NULL,
  `b_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20326627 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_book
-- ----------------------------
INSERT INTO `t_book` VALUES ('1008145', '围城', '《围城》是钱钟书所著的长篇小说。第一版于1947年由上海晨光出版公司出版。1949年之后，由于政治等方面的原因，本书长期无法在中国大陆和台湾重印，仅在香港出现过盗印本。1980年由作者重新修订之后，在中国大陆地区由人民文学出版社刊印。此后作者又曾小幅修改过几次。《围城》自从出版以来，就受到许多人的推重。由于1949年后长期无法重印，这本书逐渐淡出人们的视野。1960年代，旅美汉学家夏志清在《中国现代小说史》(A History of Modern Chinese Fiction)中对本书作出很高的评价，这', '8.9', 'https://img3.doubanio.com/spic/s1070222.jpg');
INSERT INTO `t_book` VALUES ('1036274', '夏洛的网', '一个蜘蛛和小猪的故事，写给孩子，也写给大人。\n在朱克曼家的谷仓里，快乐地生活着一群动物，其中小猪威尔伯和蜘蛛夏洛建立了最真挚的友谊。然而，一个最丑恶的消息打破了谷仓的平静：威尔伯未来的命运竟是成为熏肉火腿。作为一只猪，悲痛绝望的威尔伯似乎只能接受任人宰割的命运了，然而，看似渺小的夏洛却说：“我救你。”于是，夏洛用自己的丝在猪栏上织出了被人类视为奇迹的网上文字，彻底逆转了威尔伯的命运，终于让它在集市的大赛中赢得特别奖，和一个安享天命的未来。但，这时，蜘蛛夏洛的生命却走到了尽头……\n', '8.5', 'https://img1.doubanio.com/spic/s1120437.jpg');
INSERT INTO `t_book` VALUES ('1041007', '哈利·波特与魔法石', '《哈利·波特与魔法石》是“哈利·波特”系列的第一部。\n一岁的哈利·波特失去父母后，神秘地出现在姨父姨妈家的门前。哈利在姨父家饱受欺凌，度过十年极其痛苦的日子。姨父和姨妈好似凶神恶煞，他们那混世魔王儿子达力——一个肥胖、娇惯、欺负人的大块头，更是经济对哈利拳脚相加。哈利的“房间”是位于楼梯口的一个又暗又小的碗橱。十年来，从来没有人为他过过生日。\n但是在他十一岁生日那天，一切都发生了变化，信使猫头鹰带来了一封神秘的信：邀请哈利去一个他——以及所有读到哈利故事的人——会觉得望远难忘的、不可思议的地方——霍格沃茨', '9', 'https://img3.doubanio.com/spic/s1990480.jpg');
INSERT INTO `t_book` VALUES ('1043008', '格林童话全集', '《格林童话全集》主要内容：本文库旨在汇总世界文学创作的精华，全面反映包括我国在内的世界文学的最高成就，为读者提供世界第一流的文学精品，它以最能代表一个时代文学成就的长篇小说为骨干，同时全面地反映其他体裁如中短篇小说、诗歌、散文、戏剧、童话、寓言等各主面最优秀的成查，选收作品的时限，外国文学部分，自古代英雄史诗至第二次世界大战结束，中国文学部分，自《诗经》至中华人民共和国成立，它是包容古今、囊括中外的珍贵的文学图书系统。', '8.9', 'https://img3.doubanio.com/spic/s1134341.jpg');
INSERT INTO `t_book` VALUES ('1046209', '安徒生童话故事集', '', '9.1', 'https://img3.doubanio.com/spic/s1034062.jpg');
INSERT INTO `t_book` VALUES ('1046265', '挪威的森林', '这是一部动人心弦的、平缓舒雅的、略带感伤的恋爱小说。小说主人公渡边以第一人称展开他同两个女孩间的爱情纠葛。渡边的第一个恋人直子原是他高中要好同学木月的女友，后来木月自杀了。一年后渡边同直子不期而遇并开始交往。此时的直子已变得娴静腼腆，美丽晶莹的眸子里不时掠过一丝难以捕捉的阴翳。两人只是日复一日地在落叶飘零的东京街头漫无目标地或前或后或并肩行走不止。直子20岁生日的晚上两人发生了性关系，不料第二天直子便不知去向。几个月后直子来信说她住进一家远在深山里的精神疗养院。渡边前去探望时发现直子开始带有成熟女性的丰腴', '8', 'https://img3.doubanio.com/spic/s1228930.jpg');
INSERT INTO `t_book` VALUES ('1119839', '王尔德童话', '王尔德是19世纪英国最伟大的艺术家之一，以其剧作、诗歌、童话和小说名世。在风流才子那颓废唯美、狷狂放浪的表面姿态下，是一颗纯美纯善，永难泯灭的童心。而这可贵童心一经与卓绝才智结合，便诞生了《王尔德童话》。它不仅为作者奠定了文学声名的基石，更成为世界文学宝库中的传世佳作。其语言纯正优美堪称典范，其意境高洁悠远益人心智，值得向每一个童稚未凿的孩子、每一位葆有赤子之心的成人郑重推荐。', '9.1', 'https://img3.doubanio.com/spic/s2019056.jpg');
INSERT INTO `t_book` VALUES ('1321017', '九州·缥缈录', '当这个世界都要崩溃；当星辰和阳光也熄灭，当马蹄踏过弱者的尸骨，当黑暗的血色吞噬人心，不死的鹰再次降落在草原，英雄还在哭泣，在铁铸的摇篮中成长……《九州·缥缈录》的故事就发生在这里，游牧部落内部的权力争夺激烈，青阳与东陆王朝间恩怨重重。这是乱世的英雄史诗，当古老的王朝日渐衰微，掌管着星辰命运的神秘宗教走入了政治斗争的漩涡，年轻的王朝继承者崭露出耀眼的锋芒。', '8.8', 'https://img1.doubanio.com/spic/s1520169.jpg');
INSERT INTO `t_book` VALUES ('1907739', '当世界年纪还小的时候', '天堂是这样一个世界——也就是当她还小的时候的那个世界。随着时间的流逝，一切都改变了。\n接下来的其实是大家所熟知的，但是舒比格让人惊喜、充满童话色彩的故事是不会让你提前猜到结局的，要耐心等待。我们在那些简单又神秘的事物中发现故事，比如：动物是从哪里得到名字的；怎样才能获得帮助和幸福。\n谁读这本书都会惊叹，因为在书中藏满了美丽的灵感。', '8.6', 'https://img1.doubanio.com/spic/s1886517.jpg');
INSERT INTO `t_book` VALUES ('2295163', '哈利·波特与死亡圣器', '《哈利·波特与死亡圣器》是“哈利·波特”系列的第七部，也就是最后一部。\n还有四天，哈利就要迎来自己十七岁的生日，成为一名真正的魔法师。然而，他不得不提前离开女贞路4号，永远离开这个他曾经生活过十六年的地方。\n凤凰社的成员精心谋划了秘密转移哈利的计划，以防哈利遭到伏地魔及其追随者食死徒的袭击。然而，可怕的意外还是发生了……\n与此同时，卷土重来的伏地魔已经染指霍格沃茨魔法学校，占领了魔法部，控制了半个魔法界，形势急转直下……\n哈利在罗恩、赫敏的陪伴下，不得不逃亡在外，隐形遁迹。为了完成校长邓布利多的遗命，一直', '8.9', 'https://img1.doubanio.com/spic/s2752367.jpg');
INSERT INTO `t_book` VALUES ('5916880', '华胥引（全二册）', '《华胥引(套装共2册)》主要内容包括：华胥一引，乱世成殇。琴弦震响于九州列国之上，无声惊动。这是一个发生在乱世的故事。城破之日，卫国公主叶蓁以身殉国，依靠鲛珠死而复生。当她弹起华胥调，便生死人肉白骨，探入梦境与回忆。幻术构成的曲谱里，尽是人世的辛酸与苦涩。而她与亡她国家的陈国世子一次一次于幻境中相遇，身份两重，缘也两重。清平华胥调，能不能让每个人追回旧日的思念，不再悲伤？', '8.5', 'https://img3.doubanio.com/spic/s4599550.jpg');
INSERT INTO `t_book` VALUES ('20326626', '少年Pi的奇幻漂流', '一艘孤单小船，一个落难少年，一只孟加拉虎，这是南太平洋上，最艰难的生存考验。《少年pi的奇幻漂流》是作者马特尔的第二部小说，但是一面市便惊艳国际文坛，获奖无数，成为畅销书。小说描写一个印度男孩和一只叫理查德•帕克的孟加拉虎一起在太平洋上漂流227天后获得重生的神奇故事。\n历磨难而成长，因信念而不凡。小说内容关于冒险、希望、奇迹、生存和信心，是一 个能让人产生信仰的故事，同时也会让读者重新认识文学并相信文学的力量。书中如真似幻的海上历险与天真、残酷并存的人性矛盾，巧妙契合，更激荡出高潮不断的阅读惊喜。无论是', '8.6', 'https://img3.doubanio.com/spic/s24426156.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_collect_book
-- ----------------------------
INSERT INTO `t_collect_book` VALUES ('6', '12', '1046265', '2017-08-04 22:45:58');
INSERT INTO `t_collect_book` VALUES ('7', '12', '1008145', '2017-08-04 22:46:03');
INSERT INTO `t_collect_book` VALUES ('8', '5', '1046209', '2017-08-07 21:20:18');
INSERT INTO `t_collect_book` VALUES ('9', '5', '20326626', '2017-08-07 21:21:58');
INSERT INTO `t_collect_book` VALUES ('10', '5', '1321017', '2017-08-07 21:22:03');
INSERT INTO `t_collect_book` VALUES ('11', '10', '2295163', '2017-08-07 21:43:13');
INSERT INTO `t_collect_book` VALUES ('12', '10', '5916880', '2017-08-07 21:43:16');
INSERT INTO `t_collect_book` VALUES ('13', '10', '1041007', '2017-08-07 21:43:23');

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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_collect_movie
-- ----------------------------
INSERT INTO `t_collect_movie` VALUES ('38', '10', '26363254', '2017-08-04 20:22:05');
INSERT INTO `t_collect_movie` VALUES ('39', '10', '25823277', '2017-08-04 20:22:10');
INSERT INTO `t_collect_movie` VALUES ('40', '12', '25903033', '2017-08-04 21:15:03');
INSERT INTO `t_collect_movie` VALUES ('41', '12', '27068480', '2017-08-04 21:15:07');
INSERT INTO `t_collect_movie` VALUES ('42', '5', '26363254', '2017-08-07 21:19:57');
INSERT INTO `t_collect_movie` VALUES ('43', '5', '25857966', '2017-08-07 21:20:04');
INSERT INTO `t_collect_movie` VALUES ('44', '10', '26698000', '2017-08-07 21:43:00');

-- ----------------------------
-- Table structure for `t_collect_photo`
-- ----------------------------
DROP TABLE IF EXISTS `t_collect_photo`;
CREATE TABLE `t_collect_photo` (
  `cp_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL COMMENT '收藏用户',
  `p_id` int(11) DEFAULT NULL COMMENT '收藏图片',
  `cp_time` varchar(255) DEFAULT NULL COMMENT '收藏时间',
  PRIMARY KEY (`cp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_collect_photo
-- ----------------------------
INSERT INTO `t_collect_photo` VALUES ('6', '12', '3', '2017-08-01 14:25:35');
INSERT INTO `t_collect_photo` VALUES ('7', '12', '4', '2017-08-01 14:25:35');
INSERT INTO `t_collect_photo` VALUES ('8', '12', '5', '2017-08-01 14:25:35');
INSERT INTO `t_collect_photo` VALUES ('10', '12', '8', '2017-08-01 14:25:35');
INSERT INTO `t_collect_photo` VALUES ('12', '7', '19', '2017-08-01 14:25:35');
INSERT INTO `t_collect_photo` VALUES ('13', '7', '20', '2017-08-02 14:25:35');
INSERT INTO `t_collect_photo` VALUES ('14', '7', '15', '2017-08-02 14:25:35');
INSERT INTO `t_collect_photo` VALUES ('17', '15', '9', '2017-08-02 14:25:35');
INSERT INTO `t_collect_photo` VALUES ('19', '15', '1', '2017-08-02 14:25:35');
INSERT INTO `t_collect_photo` VALUES ('20', '15', '17', '2017-08-02 14:25:35');
INSERT INTO `t_collect_photo` VALUES ('26', '23', '1', '2017-08-03 13:03:18');
INSERT INTO `t_collect_photo` VALUES ('27', '23', '56', '2017-08-03 13:03:46');
INSERT INTO `t_collect_photo` VALUES ('28', '23', '55', '2017-08-03 13:03:48');
INSERT INTO `t_collect_photo` VALUES ('29', '23', '53', '2017-08-03 13:03:52');
INSERT INTO `t_collect_photo` VALUES ('30', '23', '3', '2017-08-03 13:25:31');
INSERT INTO `t_collect_photo` VALUES ('31', '23', '2', '2017-08-03 13:54:17');
INSERT INTO `t_collect_photo` VALUES ('32', '10', '1', '2017-08-03 14:25:35');
INSERT INTO `t_collect_photo` VALUES ('33', '1', '4', '2017-08-03 14:25:39');
INSERT INTO `t_collect_photo` VALUES ('34', '1', '6', '2017-08-03 14:25:45');
INSERT INTO `t_collect_photo` VALUES ('35', '1', '7', '2017-08-03 14:25:49');
INSERT INTO `t_collect_photo` VALUES ('36', '1', '9', '2017-08-03 14:25:52');
INSERT INTO `t_collect_photo` VALUES ('37', '17', '3', '2017-08-03 20:41:41');
INSERT INTO `t_collect_photo` VALUES ('38', '17', '7', '2017-08-03 20:41:47');
INSERT INTO `t_collect_photo` VALUES ('39', '17', '10', '2017-08-03 20:41:53');
INSERT INTO `t_collect_photo` VALUES ('40', '17', '11', '2017-08-03 20:42:12');
INSERT INTO `t_collect_photo` VALUES ('41', '10', '2', '2017-08-04 19:40:09');
INSERT INTO `t_collect_photo` VALUES ('43', '10', '5', '2017-08-04 19:40:13');
INSERT INTO `t_collect_photo` VALUES ('45', '5', '1', '2017-08-07 21:20:37');
INSERT INTO `t_collect_photo` VALUES ('46', '5', '2', '2017-08-07 21:20:41');
INSERT INTO `t_collect_photo` VALUES ('47', '10', '4', '2017-08-07 21:46:32');
INSERT INTO `t_collect_photo` VALUES ('49', '10', '22', '2017-08-07 22:16:27');
INSERT INTO `t_collect_photo` VALUES ('50', '10', '15', '2017-08-07 22:16:32');
INSERT INTO `t_collect_photo` VALUES ('51', '10', '20', '2017-08-07 22:16:37');
INSERT INTO `t_collect_photo` VALUES ('53', '10', '14', '2017-08-07 22:35:49');

-- ----------------------------
-- Table structure for `t_movie`
-- ----------------------------
DROP TABLE IF EXISTS `t_movie`;
CREATE TABLE `t_movie` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_name` varchar(255) DEFAULT NULL,
  `m_summary` varchar(255) DEFAULT NULL,
  `m_rating` float DEFAULT NULL,
  `m_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27068481 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_movie
-- ----------------------------
INSERT INTO `t_movie` VALUES ('25823277', '三生三世十里桃花', '天族战神墨渊（杨洋 饰）镇压鬼君擎苍（严宽 饰）于无妄海，魂飞魄散，仙体冰封于青丘炎华洞内。青丘帝姬白浅（刘亦菲 饰）同天族太子夜华（杨洋 饰）早有婚约，二人却一直未曾相见。直至东海盛宴，夜华发现白浅竟然同亡妻素素（刘亦菲 饰）相貌一样，就势住进白浅的青丘，放下太子身段，为求解开白浅与素素之谜。夜华侧妃素锦（李纯 饰）生妒，暗中协助鬼族王后玄女（顾璇 饰）抢走墨渊仙体。白浅一怒之下血战鬼族大紫明宫，身负重伤，终被夜华救下。白浅跟随夜华来到九重天，通过天族圣器结魄灯恢复记忆，回想起身为素素一世之时所受伤害，', '4.2', 'https://img1.doubanio.com/view/movie_poster_cover/ipst/public/p2494279388.jpg');
INSERT INTO `t_movie` VALUES ('25857966', '鲛珠传', '故事发生在九州，一个聪明的贼（王大陆 饰）、一个尽职的捕快（张天爱 饰）和一个单纯的王子（盛冠森 饰），一次偶然的相遇。三个人有着各自不同的目的，互相不信任，却不得不共同进入一段奇特的旅行。在旅行中，三个人都从对方的身上找到了友谊和爱，最终阻止一次毁灭世界的阴谋。', '0', 'https://img1.doubanio.com/view/movie_poster_cover/ipst/public/p2493908018.jpg');
INSERT INTO `t_movie` VALUES ('25903033', '我是马布里', '影片根据真实故事改编。被称为“独狼”的NBA球星马布里事业陷入低谷，黯然隐退。在王牌经纪人李楠（吴尊 饰）的邀请和家人的鼓励下，马布里做出了人生中关键的决定——前往中国追寻自己的“篮球梦”。当坐在飞往中国的飞机上，背后却是他在NBA留下的辉煌和遗憾…重新焕发激情和热血的马布里，却没预想辗转到一支没落的球队，遭遇性格各异、士气低落的队友。在去留抉择间，他对意气相投的教练郑亚雷（何冰 饰）说出了唯一可以使自己留下来的条件——冠军。迎着所有人的质疑和不屑，带领着这支残兵野将的球队，两个拥有共同梦想的男人带领球队', '0', 'https://img3.doubanio.com/view/movie_poster_cover/ipst/public/p2494729086.jpg');
INSERT INTO `t_movie` VALUES ('26363254', '战狼2', '故事发生在非洲附近的大海上，主人公冷锋（吴京 饰）遭遇人生滑铁卢，被“开除军籍”，本想漂泊一生的他，正当他打算这么做的时候，一场突如其来的意外打破了他的计划，突然被卷入了一场非洲国家叛乱，本可以安全撤离，却因无法忘记曾经为军人的使命，孤身犯险冲回沦陷区，带领身陷屠杀中的同胞和难民，展开生死逃亡。随着斗争的持续，体内的狼性逐渐复苏，最终孤身闯入战乱区域，为同胞而战斗。', '7.5', 'https://img3.doubanio.com/view/movie_poster_cover/ipst/public/p2485983612.jpg');
INSERT INTO `t_movie` VALUES ('26698000', '心理罪', '一杯人血牛奶，为何会对人产生致命诱惑？\n什么样的扭曲心理才会为之痴狂，甚至不惜接二连三，连环杀人？\n非同寻常的杀手，超越常理的罪案，需要非同一般的警探。\n年轻气盛的犯罪心理学高材生方木（李易峰 饰）出手相助，却被卷入其中；\n身手不凡的野兽派刑警队长邰伟（廖凡 饰）嫉恶如仇，却难以走出内心泥沼。\n两人联手，却成绝妙拍档！\n一场身手的较量，心智的角逐，随之展开……', '0', 'https://img3.doubanio.com/view/movie_poster_cover/ipst/public/p2492869971.jpg');
INSERT INTO `t_movie` VALUES ('27068480', '大象林旺之一炮成名', '这是中国第一部以动物为主角的战争题材动画电影，取材于一头真实的大象参加二战的故事……\n可爱的小象林旺生活在风光美丽的云南中缅边境，它与小主人——中国小男孩旺崽结下了深厚的友情。\n小象林旺挺顽皮，会偷香喷喷的美食，会跳扭屁股舞向“象公主”妙妙丹献殷勤，与泰国象王争美女。但林旺有时又忒胆小，出尽洋相。\n战争爆发了！小象林旺和小主人旺崽被日军辎重队抓去当苦力，受尽折磨。林旺与英美战俘以及泰、缅、柬的大象难友同甘共苦，变得胆大坚强，与敌斗智斗勇。\n中国远征军解放了此地，林旺和小主人加入我军。林旺总是闯祸，笑料百出', '0', 'https://img3.doubanio.com/view/movie_poster_cover/ipst/public/p2493912545.jpg');

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
  `time` varchar(255) DEFAULT NULL COMMENT '收藏电影',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '钱多多', '13202991237', '1473423456@qq.com', 'shhe273619', '1', '2', null);
INSERT INTO `t_user` VALUES ('2', '功必扬', '13245667898', null, 'weisha001', '1', '5', null);
INSERT INTO `t_user` VALUES ('3', '贝尔', '15145089281', null, 'uoy279283', '2', '6', null);
INSERT INTO `t_user` VALUES ('4', '小明', '18745621243', null, 'fsdafer33', '1', '2', null);
INSERT INTO `t_user` VALUES ('5', '小美', '15145025467', null, 'asdfghjk', '2', '10', null);
INSERT INTO `t_user` VALUES ('7', '秀智', '15145032890', '148876545@qq.com', 'asdfgh', '1', '2', null);
INSERT INTO `t_user` VALUES ('8', '月月', '18253459837', '781324323@qq.com', 'fjsajklsdf', '1', '11', null);
INSERT INTO `t_user` VALUES ('9', 'xiaoxioa', '15323454343', null, 'dfhgdfh', '1', '3', null);
INSERT INTO `t_user` VALUES ('10', 'aaa', '15323456786', null, 'sdfddfv', '1', '5', null);
INSERT INTO `t_user` VALUES ('11', 'mm', '15145032891', null, 'qazwsxedc', '1', '0', null);
INSERT INTO `t_user` VALUES ('12', 'mimi', '13823437765', '783827473@qq.com', '123rfv', '1', '34', null);
INSERT INTO `t_user` VALUES ('13', 'Tim', '13876543456', '78123345@qq.com', 'edcvfrtgb', '2', '23', null);
INSERT INTO `t_user` VALUES ('15', 'Sam', '13587656567', '78151345@163.com', 'asdfghj', '2', '7', null);
INSERT INTO `t_user` VALUES ('16', 'test', '15145342345', '781523223@qq.com', 'qqqqqq', '1', '6', null);
INSERT INTO `t_user` VALUES ('17', '小倩', '15134567654', null, 'sdasdfasd', '1', '3', null);
INSERT INTO `t_user` VALUES ('19', 'test2', '15456767665', null, 'rsgsdf', '2', '6', null);
INSERT INTO `t_user` VALUES ('20', 'fsf', '15123232323', null, 'sdfgdsg', '2', '12', null);
INSERT INTO `t_user` VALUES ('21', 'aaa', '13232343212', null, 'dsaasd', '2', '4', null);
INSERT INTO `t_user` VALUES ('22', 'test3', '13212345678', null, 'aaaaaa', '2', '2', null);
INSERT INTO `t_user` VALUES ('23', 'sss', '15145032892', '1564534548@163.com', 'dgesdgfasd', '2', '5', null);
INSERT INTO `t_user` VALUES ('24', 'test4', '15534543234', null, 'afgdsdf', '2', '43', null);
INSERT INTO `t_user` VALUES ('25', 'haha', '15145342111', null, 'qazwsx', null, '13', null);
INSERT INTO `t_user` VALUES ('29', 'aaa', '15145032866', '78151345@qq.com', 'asdfgh', '2', '0', null);
INSERT INTO `t_user` VALUES ('30', 'test5', '15243565433', null, 'qazwsxedc', '1', '0', null);
INSERT INTO `t_user` VALUES ('31', 'alili', '13928392839', '123123123@163.com', 'asdfdsa', '2', '10', null);
INSERT INTO `t_user` VALUES ('32', '111', '15345432345', null, 'dfsfsdg', null, '0', null);
INSERT INTO `t_user` VALUES ('33', 'aaa', '15343456787', null, 'asdfgh', null, '0', null);
INSERT INTO `t_user` VALUES ('34', 'Marys', '15145032434', null, 'asdfgh', '1', '0', null);
INSERT INTO `t_user` VALUES ('36', '小美美', '13734565654', null, 'qazwsx', '1', '0', null);
