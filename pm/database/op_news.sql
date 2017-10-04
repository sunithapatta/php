/*
Navicat MySQL Data Transfer

Source Server         : linux_open
Source Server Version : 50628
Source Host           : 192.168.71.236:3306
Source Database       : op_news

Target Server Type    : MYSQL
Target Server Version : 50628
File Encoding         : 65001

Date: 2017-08-23 15:24:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `opn_news_article`
-- ----------------------------
DROP TABLE IF EXISTS `opn_news_article`;
CREATE TABLE `opn_news_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL COMMENT '栏目 id',
  `title` varchar(150) NOT NULL DEFAULT '' COMMENT '标题',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `content` text NOT NULL COMMENT '内容',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态  1发布，-1删除',
  `author` varchar(150) NOT NULL,
  `thumb_pic` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `view` int(11) DEFAULT '0',
  `is_recommend` tinyint(1) DEFAULT '0' COMMENT '0不推荐，1推荐',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0i不显示，1显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of opn_news_article
-- ----------------------------
INSERT INTO `opn_news_article` VALUES ('3', '4', '竞拍协议', '2', '<p>竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议竞拍协议</p>', '1497851759', '1', 'chengx', null, '3', null, '1');
INSERT INTO `opn_news_article` VALUES ('8', '1', '111', '22', '<p>123123<br/></p>', '1498554673', '1', 'chengx', null, '0', null, '1');
INSERT INTO `opn_news_article` VALUES ('9', '2', '公司动态111', '1', '<p>奥术大师多</p>', '1498716827', '1', '111', 'http://api.wode-mall.com/uploads/20170713/86dfc1270dfe38d5b9b0e4df531f92cd.jpg', '38', null, '1');
INSERT INTO `opn_news_article` VALUES ('10', '3', '国内首席移动端文玩艺术品交易平台', '1', '<p style=\"text-indent: 2em;\"><span style=\"color: rgb(68, 68, 68); font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 28.8px;\">随着智能手机和互联网在中国消费者中深入普及，使人们的生活、购物发生了颠覆式改变</span><span style=\"font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 28.8px; padding: 0px; margin: 0px; color: rgb(13, 13, 13);\">，手机购物逐渐超越</span><span style=\"font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 28.8px; padding: 0px; margin: 0px; color: rgb(13, 13, 13);\">PC</span><span style=\"font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 28.8px; padding: 0px; margin: 0px; color: rgb(13, 13, 13);\">网购成为主流。诸如各大网购电商平台，纷纷将重点从</span><span style=\"font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 28.8px; padding: 0px; margin: 0px; color: rgb(13, 13, 13);\">PC</span><span style=\"font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 28.8px; padding: 0px; margin: 0px; color: rgb(13, 13, 13);\">端转移至移动端。</span><span style=\"color: rgb(68, 68, 68); font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 28.8px;\">面临着这种时代的改革，文玩产业也在向移动电商化转型，变得越来越符合现代人的消费习惯。</span><span style=\"font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 28.8px; padding: 0px; margin: 0px; color: rgb(13, 13, 13);\">在此背景下，微拍堂应运而生，为广大文玩爱好者提供了一种新的选择。</span></p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; white-space: normal; color: rgb(68, 68, 68); line-height: 28.8px; text-indent: 2em;\">微拍堂，一家基于移动端的文玩艺术品类垂直电商，专注文玩艺术品线上拍卖交易。自2015年4月上线以来，打破传统文玩产业在时间、地域上的局限，洗牌文玩艺术品市场的运营规则，引领整个文玩产业完成了线上交易模式的完美转型。2016年，微拍堂获腾讯战略投资入股，同年12月获2000万美金A轮投资，现已成为国内<span style=\"padding: 0px; margin: 0px; color: rgb(13, 13, 13);\">首席</span>移动端文玩艺术品交易平台。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; white-space: normal; color: rgb(68, 68, 68); line-height: 28.8px; text-indent: 2em;\"><span style=\"line-height: 28.8px;\">因其自身文化、技术等方面的优势，微拍堂在文玩艺术品行业积累了大量用户基础。仅一年多时间，平台月交易额突破5亿元，月活跃用户数量高达300万，目前累计在线用户超千万。作为一家专业的互联网平台服务商，微拍堂着眼于文玩艺术品行业的服务与发展，专注于文玩艺术品的社会需求，让文玩艺术品消费贴近大众生活，由此培育出更为更阔的用户市场；将移动互联网思维与传统文化相结合，通过简单易用的线上拍卖模式，让文玩艺术品消费变得快捷、高效、乐趣无穷。</span></p><p><br/></p>', '1499156035', '1', 'zhusl', 'http://api.wode-mall.com/uploads/20170710/08c75026a2035ef42721a969e4d65302.gif', '3', null, '1');
INSERT INTO `opn_news_article` VALUES ('11', '3', '美女画家画百名诗人 不担心黄永玉挑剔', '2', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-indent: 2em;\"><span style=\"text-indent: 2em;\">日前，诗人们的朋友圈被一组肖像素描刷爆了：70多幅画作里，有人抬头微笑，有人侧脸沉思，有人长发飘逸&hellip;&hellip;其中，既有重庆诗人李元胜，还有艺术大家黄永玉、摇滚歌手张楚。这些作品都出自一位重庆籍女画家廖婉凝之手。李元胜在看过她创作的画后，赞叹不已：个个传神。</span><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-indent: 2em;\">廖婉凝，1974年生于綦江，现居西安。昨日，廖婉凝讲述了创作背后的趣事。</p><p style=\"text-indent: 2em;\"><img class=\"lazyLoad\" alt=\"美女画家画百名诗人 不担心黄永玉挑剔\" longdesc=\"http://www.weipaitang.com/img/201703021833593459f2d11c63d00742bf24e60e266ef9\" data-link=\"\" data-gallary=\"http://n.sinaimg.cn/collect/transform/20170302/X2Ss-fycaafm4702820.jpg\" src=\"http://www.weipaitang.com/img/201703021833593459f2d11c63d00742bf24e60e266ef9\" style=\"border: 0px; margin: 0px auto; max-width: 640px;\"/></p><p style=\"display: block; margin: 10px 0px; text-indent: 2em; text-align: center;\">廖婉凝在作画 本组图片由受访者提供</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-indent: 2em;\"><strong>给中国当代诗人画肖像</strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-indent: 2em;\">创作完女诗人娜夜的素描肖像后，廖婉凝的工作暂时告一段落。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-indent: 2em;\">到目前为止，廖婉凝已画好70多位中国当代诗人的肖像。事实上，除了诗人，还有其他中国知名文化名人，如李元胜、李亚伟、巫昂、陈丹青、北岛等诗人，以及艺术大家黄永玉、出版人沈浩波和摇滚音乐人张楚、崔健。</p><p><br/></p>', '1499156159', '1', 'zhusl', 'http://api.wode-mall.com/uploads/20170705/fd19d51ea69efe086db9d9a74b7218cf.png', '1', null, '1');
INSERT INTO `opn_news_article` VALUES ('12', '3', '世界第九大奇迹：三星堆文化未解之谜', '3', '<p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal;\">导读：四川广汉有三座突兀在成都平原上的黄土堆，三星堆也因此得名。当地农民在宅旁挖水沟时，发现了一坑精美的玉器，由此拉开三星堆文明的研究序幕。直到1986年，三星堆两个商代大型祭祀坑的发现，上千件稀世之宝赫然显世，轰动了世界，被誉为世界&ldquo;第九大奇迹&rdquo;。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal;\">　　未解之谜一：文明起源何方</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal;\">　　三星堆文化来自何方？这里数量庞大的青铜人像、动物不归属于中原青铜器的任何一类。青铜器上没有留下一个文字，简直让人不可思议。</p><p><img class=\"lazyLoad\" alt=\"世界第九大奇迹：三星堆文化未解之谜\" longdesc=\"http://www.weipaitang.com/img/201703311234006a16462df5d30c92c117f09baab5bf46\" data-link=\"\" src=\"http://www.weipaitang.com/img/201703311234006a16462df5d30c92c117f09baab5bf46\" style=\"border: 0px; margin: 0px auto; max-width: 640px; vertical-align: middle; display: block;\"/><span class=\"img_descr\" style=\"padding: 6px 0px; margin: 5px auto; display: inline-block; zoom: 1;\">&ldquo;三星堆人&rdquo;</span></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal;\">　　出土的&ldquo;三星堆人&rdquo;高鼻深目、颧面突出、阔嘴大耳，耳朵上还有穿孔，不像中国人倒像是&ldquo;老外&rdquo;。四川省文物考古所三星堆工作站站长陈德安接受记者采访时认为，三星堆人有可能来自其他大陆，三星堆文明可能是&ldquo;杂交文明&rdquo;。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal;\">　　未解之谜二：消失的古都</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal;\">　　古蜀国的繁荣持续了1500多年，然后又像它的出现一样突然地消失了。历史再一次衔接上时，中间已多了2000多年的神秘空白。关于古蜀国的灭亡，人们假想了种种原因，但都因证据不足始终停留在假设上&mdash;&mdash;水患说。三星堆遗址北临鸭子河，马牧河从城中穿过，因此有学者认为是洪水肆虐的结果。但考古学家并未在遗址中发现洪水留下的沉积层。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal;\">　　成都平原物产丰富，土壤肥沃，气候温和，用灾难说解释似乎难以自圆其说。那么，古蜀国消失在历史长河的真正原因究竟是什么呢？</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal;\">　　未解之谜三：神秘的器具</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal;\">　　三星堆出土的大量青铜器中，基本上没有生活用品，绝大多数是祭祀用品。表明古蜀国的原始宗教体系已比较完整。这些祭祀用品带有不同地域的文化特点，特别是青铜雕像、金杖等，与世界上着名的玛雅文化、古埃及文化非常接近。三星堆博物馆副馆长张继忠认为，大量带有不同地域特征的祭祀用品表明，三星堆曾是世界朝圣中心。</p><p><img class=\"lazyLoad\" alt=\"世界第九大奇迹：三星堆文化未解之谜\" longdesc=\"http://www.weipaitang.com/img/20170331123400604fab2e1b9d69bfb7910264b2ff07ea\" data-link=\"\" src=\"http://www.weipaitang.com/img/20170331123400604fab2e1b9d69bfb7910264b2ff07ea\" style=\"border: 0px; margin: 0px auto; max-width: 640px; vertical-align: middle; display: block;\"/><span class=\"img_descr\" style=\"padding: 6px 0px; margin: 5px auto; display: inline-block; zoom: 1;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal;\">　　<span style=\"font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px;\">在坑中出土了5000多枚海贝，经鉴定来自印度洋。有人说这些海贝用做交易，是四川最早的外汇，而有的人则说这是朝圣者带来的祭祀品。还有60多根象牙则引起了学者们&ldquo;土着象牙&rdquo;与&ldquo;外来象牙&rdquo;的争议。&ldquo;不与秦塞通人烟&rdquo;的古蜀国，居然已经有了&ldquo;海外投资&rdquo;，不可思议。</span></p>', '1499156208', '1', 'zhusl', 'http://api.wode-mall.com/uploads/20170705/ddce116928285bc8218e43e54ea45ace.gif', '3', null, '1');
INSERT INTO `opn_news_article` VALUES ('13', '3', '济南老汉50年收藏烟盒2万多个', '4', '<p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-align: left;\">济南党家庄镇枣林村有个71岁的老人叫王司柱。王司柱一辈子不吸烟，然而他非常热爱收藏烟盒，每天外出见了烟盒就拾起来，一直坚持了50多年了。在他家里，收藏的烟盒成捆成捆地摞起来有近两米高，总数两万多个。</p><p style=\"text-align: left;\"><img class=\"lazyLoad\" alt=\"济南老汉50年收藏烟盒2万多个\" data-width=\"650\" data-height=\"366\" width=\"562\" height=\"317\" src=\"http://www.weipaitang.com/img/20170331123400cac0c89202df84e90546c92bd669a065\" style=\"border: 0px; margin: 0px auto; max-width: 640px; vertical-align: middle; display: block;\"/><span class=\"img_descr\" style=\"padding: 6px 0px; margin: 5px auto; display: inline-block; zoom: 1;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-align: left;\">　　王司柱收藏的烟盒的种类很多，年代跨度也很大。不少是济南本地的烟，像济南卷烟厂生产的&amp;ldquo;泉城&amp;rdquo;、&amp;ldquo;金菊&amp;rdquo;、&amp;ldquo;工农兵&amp;rdquo;牌香烟，现在市面上都已经看不到了，也鲜为年轻人所知。</p><p style=\"text-align: left;\"><img class=\"lazyLoad\" alt=\"济南老汉50年收藏烟盒2万多个\" data-width=\"650\" data-height=\"366\" width=\"566\" height=\"319\" src=\"http://www.weipaitang.com/img/2017033112340099d0ec0dfc7cb581bdae739b4b456340\" style=\"border: 0px; margin: 0px auto; max-width: 640px; vertical-align: middle; display: block;\"/><span class=\"img_descr\" style=\"padding: 6px 0px; margin: 5px auto; display: inline-block; zoom: 1;\"></span></p><p style=\"text-align: left;\"><img class=\"lazyLoad\" alt=\"济南老汉50年收藏烟盒2万多个\" data-width=\"650\" data-height=\"366\" width=\"564\" height=\"318\" src=\"http://www.weipaitang.com/img/201703311234005d6d52a0b37e6d72103306e36c52e9c4\" style=\"border: 0px; margin: 0px auto; max-width: 640px; vertical-align: middle; display: block;\"/><span class=\"img_descr\" style=\"padding: 6px 0px; margin: 5px auto; display: inline-block; zoom: 1;\"></span></p><p style=\"text-align: left;\"><img class=\"lazyLoad\" alt=\"济南老汉50年收藏烟盒2万多个\" data-width=\"650\" data-height=\"366\" width=\"559\" height=\"315\" src=\"http://www.weipaitang.com/img/20170331123400fa51a309b69fb37280d4c36ac298ae16\" style=\"border: 0px; margin: 0px auto; max-width: 640px; vertical-align: middle; display: block;\"/><span class=\"img_descr\" style=\"padding: 6px 0px; margin: 5px auto; display: inline-block; zoom: 1;\"></span></p><p style=\"text-align: left;\"><img class=\"lazyLoad\" alt=\"济南老汉50年收藏烟盒2万多个\" data-width=\"650\" data-height=\"366\" width=\"568\" height=\"320\" src=\"http://www.weipaitang.com/img/201703311234005849486ad8c2f2e40155fd5681cab94a\" style=\"border: 0px; margin: 0px auto; max-width: 640px; vertical-align: middle; display: block;\"/><span class=\"img_descr\" style=\"padding: 6px 0px; margin: 5px auto; display: inline-block; zoom: 1;\"></span></p><p style=\"text-align: left;\"><img class=\"lazyLoad\" alt=\"济南老汉50年收藏烟盒2万多个\" data-width=\"650\" data-height=\"366\" width=\"562\" height=\"317\" src=\"http://www.weipaitang.com/img/20170331123400304b139421d76bb2ae40f6b4ee2d0e6a\" style=\"border: 0px; margin: 0px auto; max-width: 640px; vertical-align: middle; display: block;\"/><span class=\"img_descr\" style=\"padding: 6px 0px; margin: 5px auto; display: inline-block; zoom: 1;\"></span></p><p style=\"text-align: left;\"><img class=\"lazyLoad\" alt=\"济南老汉50年收藏烟盒2万多个\" data-width=\"650\" data-height=\"366\" width=\"568\" height=\"320\" src=\"http://www.weipaitang.com/img/201703311234009c45de41107b27d73cc50ceeceec73cf\" style=\"border: 0px; margin: 0px auto; max-width: 640px; vertical-align: middle; display: block;\"/><span class=\"img_descr\" style=\"padding: 6px 0px; margin: 5px auto; display: inline-block; zoom: 1;\"></span></p><p style=\"text-align: left;\"><img class=\"lazyLoad\" alt=\"济南老汉50年收藏烟盒2万多个\" data-width=\"650\" data-height=\"366\" width=\"566\" height=\"319\" src=\"http://www.weipaitang.com/img/2017033112340069c0a345fc1c5f8e1599109caa682867\" style=\"border: 0px; margin: 0px auto; max-width: 640px; vertical-align: middle; display: block;\"/><span class=\"img_descr\" style=\"padding: 6px 0px; margin: 5px auto; display: inline-block; zoom: 1;\"></span></p><p style=\"text-align: left;\"><img class=\"lazyLoad\" alt=\"济南老汉50年收藏烟盒2万多个\" data-width=\"650\" data-height=\"366\" width=\"568\" height=\"320\" src=\"http://www.weipaitang.com/img/2017033112340083bf6d0397c38c6dd3c9d65a76aa22b1\" style=\"border: 0px; margin: 0px auto; max-width: 640px; vertical-align: middle; display: block;\"/><span class=\"img_descr\" style=\"padding: 6px 0px; margin: 5px auto; display: inline-block; zoom: 1;\"></span></p><p style=\"text-align: left;\"><img class=\"lazyLoad\" alt=\"济南老汉50年收藏烟盒2万多个\" data-width=\"650\" data-height=\"366\" width=\"564\" height=\"318\" src=\"http://www.weipaitang.com/img/201703311234001b5514e5311ae4d07eab592257961a72\" style=\"border: 0px; margin: 0px auto; max-width: 640px; vertical-align: middle; display: block;\"/><span class=\"img_descr\" style=\"padding: 6px 0px; margin: 5px auto; display: inline-block; zoom: 1;\"></span></p><p style=\"text-align: left;\"><img class=\"lazyLoad\" alt=\"济南老汉50年收藏烟盒2万多个\" data-width=\"650\" data-height=\"366\" width=\"564\" height=\"318\" src=\"http://www.weipaitang.com/img/20170331123400ede062e808730ebaa13c138ff6e7f487\" style=\"border: 0px; margin: 0px auto; max-width: 640px; vertical-align: middle; display: block;\"/><span class=\"img_descr\" style=\"padding: 6px 0px; margin: 5px auto; display: inline-block; zoom: 1;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-align: left;\">　　王司柱称，自己收藏烟盒纯粹是个人爱好，与吸烟无关。相反，他告诉记者，不少老烟民看到他收藏的数量如此庞大的烟盒都很感慨，按照平均十块钱一盒香烟，两万多个烟盒就代表有二十多万元的钱买了香烟。老烟民看了都后悔自己平时抽烟太多，浪费了不少钱，对身体还没有一点好处。王司柱说，自己现在看到路边有烟盒还会收藏，会一直坚持下去。</p>', '1499156237', '1', 'AJMstr', 'http://api.wode-mall.com/uploads/20170705/784637227bd6691efa18f3396ea3a354.gif', '23', null, '1');
INSERT INTO `opn_news_article` VALUES ('14', '4', '40年收藏创刊号超2000份', '5', '<p><img class=\"lazyLoad\" alt=\"40年收藏创刊号超2000份\" src=\"http://www.weipaitang.com/img/201703311234004aa6ca189e2ef0ed3adee72d7dff66db\" style=\"border: 0px; margin: 0px auto; max-width: 640px; vertical-align: middle; display: block;\"/><span class=\"img_descr\" style=\"padding: 6px 0px; margin: 5px auto; display: inline-block; zoom: 1;\">祁要武将收藏创刊号视为兴趣爱好。郭颖辉摄</span></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal;\">　　本报记者 李如意</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal;\">　　祁要武是张家口市涿鹿县一名退休公务员，收藏刊物的创刊号成为他坚守了40年的兴趣爱好。目前祁要武收藏的报纸和杂志创刊号超过两千份，总共收藏了万余份刊物。每到一处，祁要武都会到旧书摊搜罗一番。在他眼中，这些创刊号不再是单纯的文艺作品，而成了记录历史进程和国家政策的重要工具。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal;\">　　走进祁要武老人的家，院子里四五个半人高的展柜便映入眼帘。前段时间因为照顾生病的母亲，没来得及整理这些藏品，院子略显杂乱。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal;\">　　祁要武今年65岁，参加工作后便有了这个爱好&mdash;&mdash;收藏创刊号。祁要武说：&ldquo;我当时在宣传部门工作，每天接触很多文字作品，有些就是创刊号。那会儿觉得有意思，就开始收集，慢慢就成为自己的爱好。&rdquo;在收藏过程中，祁要武逐渐发现了创刊号中的门道，有了自己的体会，他说：&ldquo;创刊号是办刊人奉献给读者的见面礼；因初次和读者见面，刊物中往往要先进行自我介绍，如办刊的宗旨、风格、栏目设置、编辑人员组成、来稿要求等等。它就像是每个刊物的&ldquo;出生证明&rdquo;。这种收藏很有意义。&rdquo; 就这样，这个爱好持续了四十年。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal;\">　　现如今，退休在家的祁要武一有时间就去涿鹿县的废品回收站收集旧报纸、旧杂志。上个月去北京看望女儿，祁要武还忍不住去旧书市场转转。他说：&ldquo;当时花15块钱买了十来本杂志，很划算。&rdquo;</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal;\">　　刊物很多，但是有收藏价值的不多，整理、鉴别则需要大量的时间。过年前，朋友送来了两捆报纸，每捆都有一人高。那段时间，祁要武每天都蹲在院子的角落整理报纸，这足足花了他一个月的时间。对此祁要武仍然乐此不疲，他拿出一份《中国农民报》的创刊号对记者说：&ldquo;这是《农民日报》的前身，是我从那里面找出来的。&rdquo;</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal;\">　　从废品回收站和旧书摊收回来的报纸和杂志，有时会沾满污垢，清洁成为祁要武另一项重要工作。清理污垢，将褶皱展开，有破损的报纸拿胶带粘上&hellip;&hellip;每个环节都必不可少。清洁完，祁要武就盼着晴天把这些书报进行晾晒。以上工序完成后，祁要武把报纸用塑料纸包装好，再进行收藏。在保存过程中，还需要吸潮、防虫。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal;\">　　祁要武的家里不单有创刊号，还有旧杂志，《红旗》《读者》《长城文艺》都是全套收藏。2012年12月12日，祁要武举办了第一次个人创刊号书报展。2014年10月1日，举办了第二次展览。2016年4月23日的&ldquo;世界读书日&rdquo;，举办了第三次展览。祁要武成为当地小有名气的&ldquo;收藏家&rdquo;，几年前中国收藏家协会常务理事彭令还专门到祁要武的家里拜访。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal;\">　　2016年底，祁要武从宁波书友那里花一千元的&ldquo;大价钱&rdquo;买了一本《桑干河上》。祁要武介绍，这本书是《太阳照在桑干河上》的前身，是丁玲的名作，也是反映涿鹿县人文历史的重要作品。他说：&ldquo;我买的这本是新中国成立前出版的，当时全国只有5000本，这就是其中一本！&rdquo;</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal;\">　　除了院子里的展柜，屋子里也摆满了展柜，祁要武的生活空间已经被这些书报藏品&ldquo;包围&rdquo;了。祁要武拿出&ldquo;民办教育&rdquo;和&ldquo;食品安全&rdquo;的创刊号对记者说，&ldquo;国家在特定历史环境下提出的观点和政策，都会在报纸、杂志等文艺作品中表现出来。因此创刊号具有很强的历史印记，创刊号实际就是一部微缩版的现代史。&rdquo;</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal;\">　　现在祁要武收藏的刊物超过一万份，报纸和杂志创刊号达到了两千多份，其中《财政书刊》《教育青年》《河北工农画刊》都相当稀有。祁要武笑称自己要为这份事业再奋斗二十年，&ldquo;我把这些东西当成财富，未来如果子女无法继承它们，那我就把它们交给国家。&rdquo;</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal;\">　　来源：北京日报</p>', '1499156268', '1', 'AJMstr', 'http://api.wode-mall.com/uploads/20170710/90396d1bb87b0e12c78e2a643309d693.jpg', '8', null, '1');
INSERT INTO `opn_news_article` VALUES ('16', '3', '盗窃国家文物被重判', '0', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">徐某某先后多次伙同他人窃取国家文物，近日，郊区人民法院宣判了该起刑事案件，被告人徐某某犯盗窃罪被判处有期徒刑十年，并处罚金人民币3000元，责令退赔非法所得人民币2750元。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">据了解，2013年10月份，徐某某伙同王某某、赵某某、方某某等，驾驶面包车窜至安徽省宣城市宣州区黄渡乡，将两件石雕鼓形柱础盗走，并销赃得款1500元；徐某某等四人窜至宣城市泾县琴溪镇马头村，将2件石雕八角莲瓣纹柱础盗走并销赃得款1250元；徐某某等人两次在铜陵市郊区铜山镇南泉寺古文化遗址处，盗走一件石雕狮、一件石雕狮形柱首和四个鼓形浅浮雕云纹开光石柱础。经鉴定，徐某某等人盗走的物品均为国家三级文物。案发后，南泉寺被盗走的石雕狮、石雕狮形柱首和四个鼓形浅浮雕云纹开光石柱础已被追回并返还被害单位。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">郊区法院认为，徐某某伙同他人以非法占有为目的，多次窃取国家三级文物十件、盗窃数额特别巨大，其行为已经构成盗窃罪。徐某某在共同犯罪中起主要作用，是主犯。鉴于被盗的南泉寺遗址内文物已全部追回未造成破坏，且徐某某能如实供述自己的罪行，认罪态度较好，有悔罪表现，可酌情从轻处罚，遂依据法律规定作出上述判决。该判决目前已发生法律效力。</span></p><p><br/></p>', '1499656370', '1', 'AJMstr', 'http://api.wode-mall.com/uploads/20170710/4d49bb2b387914d33d5b16518f4e283e.jpg', '7', '0', '1');
INSERT INTO `opn_news_article` VALUES ('17', '3', '广西破动物交易案 查获数十件象牙、犀牛制', '0', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">广西森林公安局27日对外通报称，当地警方在东兴市成功破获一起特大非法收购、运输、出售珍贵、濒危野生动物及其制品案件，抓获4名犯罪嫌疑人（其中一名为越南籍），收缴大批野生动物制品，涉案总金额超146万元人民币。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">据广西森林公安局负责人介绍，今年2月上旬，广西东兴市边防派出所在例行检查当地某出租屋时发现大量野生动物制品，该所立即联系东兴市森林公安局共同查处。随后，警方出动警力，在现场抓获犯罪嫌疑人颜某华、金某辉、吴某二（越南籍）、赖某乾等4人，查获大量疑似国家保护野生动物制品。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">经司法鉴定部门鉴定，该案查获的动物制品包括：象牙制品70件，重8310克；犀牛角制品25件，重4554.9克；穿山甲甲片3件，重5412克；白犀牛皮制品4件，重1710克；狮子牙16颗；狮子骨13根，重6950克；黑熊骨2根，重1855克；水貂皮1张，重160克；水鹿骨2根，重805克，总涉案价值估算为1462675元。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">经警方查证，嫌疑人金某辉等人利用出租屋、微商、快递业务做掩护，从境外收集上述野生动物制品，在网络上叫卖，并通过快递业务销往中国各地。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">因涉案金额巨大，东兴市森林公安局将该案立为特大案件侦查，该案中犯罪嫌疑人颜某华、金某辉、吴某二（越南籍）于2月被警方刑事拘留，3月17日被批准逮捕。目前，前述3名犯罪嫌疑人已被移送检察机关起诉，案件正在进一步审理中。</span></p><p><br/></p>', '1499656416', '1', 'AJMstr', 'http://api.wode-mall.com/uploads/20170718/baf44ce6c8cdf6fd66a1acaa14edf0c9.png,http://api.wode-mall.com/uploads/20170718/d654f23112d15a98d7a8fc14668c0344.jpg,http://api.wode-mall.com/uploads/20170718/fa9549a12ab03904fd850e9f6e895168.jpg', '29', '1', '1');
INSERT INTO `opn_news_article` VALUES ('18', '3', '测试 问题', '0', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-align: center; text-indent: 2em;\"><img class=\"loadingclass\" id=\"loading_j5w4wuga\" src=\"http://admin.com/sea_modules/ueditor/themes/default/images/spacer.gif\" title=\"正在上传...\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">洛阳铲、探杆、提杆、摸金校尉&amp;hellip;&amp;hellip;电影里的情节在现实中发生，五名涉案人在文物保护核心区域内挖掘探墓，被警方逮个正着。昨日，记者获悉，检察机关以涉嫌盗掘古墓葬罪依法批捕五名涉案人。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-align: center; text-indent: 2em;\"><img alt=\"\" class=\"lazyLoad\" src=\"http://www.weipaitang.com/img/20170505095232b601362672062bd08e7242ce9633ba92\" style=\"border: 0px; margin: 0px auto; max-width: 640px; width: 410px; height: 272px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">礼县大堡子山遗址及墓群系先秦开国国君秦襄公或其子文公夫妇陵墓，是秦国四大陵园之一，作为我国早期秦文化考古研究的一个重大突破，该遗址被国务院确定为&amp;ldquo;全国重点文物保护单位&amp;rdquo;。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">上世纪90年代初，礼县大堡子山秦公墓曾被疯狂盗掘，珍贵文物大量流失海外，造成无法弥补的损失。在相关部门的严厉打击和国家的抢救性挖掘及全力保护下，盗墓活动和文物流失得以有效遏制。近年来，个别不法分子利欲熏心，面对走私文物带来的暴利蠢蠢欲动，不惜以身试法。近日，礼县籍舒某、张某、赵某、沈某、刘某盗掘大堡子山遗址及墓群，被礼县人民检察院以涉嫌盗掘古墓葬罪依法批准逮捕，目前，案件正在进一步侦查中。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-align: center; text-indent: 2em;\"><img alt=\"\" class=\"lazyLoad\" src=\"http://www.weipaitang.com/img/201705050952321c686abcb4af252462db2eb86ff0eef7\" style=\"border: 0px; margin: 0px auto; max-width: 640px; width: 480px; height: 360px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">案情摘要</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">2017年3月27日晚，犯罪嫌疑人舒某向张某、赵某、沈某、刘某提议去大堡子山墓群盗墓，五人携带洛阳铲、探杆、提杆等盗墓工具，在文物保护核心区域内挖掘探墓时被礼县公安局民警当场抓获。经相关部门对被盗掘区域勘验，确定该处为国家级文物保护范围，五人所探洞下为古墓核心区域。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">检察官说法</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">礼县大堡子山遗址及墓群属全国重点文物保护单位，依据《中华人民共和国刑法》第328条之规定，盗掘确定为全国重点文物保护单位和省级文物保护单位的古文化遗址、古墓葬的判处十年以上有期徒刑、无期徒刑，并处罚金或者没收财产。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">大堡子山秦公大墓所代表的先秦文化赋予了礼县深厚历史内涵，为礼县的发展规划提供了宝贵的文化素材，无论是&amp;ldquo;秦编钟&amp;rdquo;的出土，还是&amp;ldquo;金饰片&amp;rdquo;的回归，无一不渗透着政府和每一个考古工作者的努力和汗水，&amp;ldquo;先秦故里&amp;rdquo;这张文化名片更需要每个礼县人去保护和宣传。对破坏文化遗产、走私贩卖珍贵文物的行为，检察机关将一如既往地严厉打击。检察官在此提醒大家树立正确的人生观、价值观，脚踏实地，勤劳致富，切莫顶风作案，以身试法。</span></p><p><br/></p>', '1499656534', '1', 'AJMstr', 'http://api.wode-mall.com/uploads/20170710/8ff6a4f79413c89c84136c3f50e3a29b.jpg,http://api.wode-mall.com/uploads/20170802/b7d43360f330410623085ab536aaaed3.jpg', '31', '1', '1');
INSERT INTO `opn_news_article` VALUES ('19', '1', 'aaag', '0', 'sssss', '1502938800', '1', '-', null, '0', '0', '1');
INSERT INTO `opn_news_article` VALUES ('20', '3', 'test', '2', '<p>hhhhh<br/></p>', '1502939430', '1', 'AJMstr', null, '0', '0', '1');
INSERT INTO `opn_news_article` VALUES ('21', '3', '曾国藩书法作品受追捧 价格明显走强', '1', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">在上世纪90年代，曾国藩的书作在艺术市场上并没有引起太大的关注，偶有作品亮相，却价格平平。而步入21世纪后，曾国藩的作品则很受市场青睐。2002年，曾国潘的《行书诗》在朵云轩拍卖会上拍得17.6万元，价格突破了10万元的大关；而在之后数年中，曾国藩的作品在各大拍卖上价格层层递增，越发收到众多藏家的追捧，2009年，《曾国藩致曾国荃书札》在中国嘉德拍卖会上亮相，估价6~8万元，最后以100.8万元拍出，首次突破了百万元大关。去年6月，曾国藩的匾额书法《看云归岫草堂》，以490万元落槌，加上佣金超过了500万元！<br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-align: center;\"><img alt=\"\" class=\"lazyLoad\" src=\"http://www.weipaitang.com/img/20170531174157aefa2600088372215564ee7e8f8bcb63\" style=\"border: 0px; margin: 0px auto; max-width: 640px; width: 550px; height: 249px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-align: center;\"><span style=\"font-size: 12px;\">《曾国藩致曾国荃书札》</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">10年前，这幅《看云归岫草堂》价格只有5万元左右， 10年增值100倍，对于艺术市场来说是神话，但在业内人士看来，却是在情理之中，特别是现在的这个价格还有更大的上升潜力。从其市场走势看，曾国藩的书作已引起众多藏家的关注，价格有明显走强的趋势。这中价值的持续上升也是基于曾国藩在历史中扮演的重要角色，以及他个人深厚的书法功底。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-align: center;\"><img alt=\"\" class=\"lazyLoad\" src=\"http://www.weipaitang.com/img/201705311741573a95cd99a4fa1fb08f81068714857b81\" style=\"border: 0px; margin: 0px auto; max-width: 640px; width: 550px; height: 1060px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-align: center;\"><span style=\"font-size: 12px;\">曾国藩书法对联</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">曾国藩（1811-1872年），初名子城，字伯涵，号涤生，谥文正，汉族，湖南省长沙府湘乡县人，他是中国清代最具影响力的传奇人物。曾国藩没有显赫的家世，也非书香世家出身，从一个偏僻的小山村以一介书生入京赴考，中进士留京师后十年七迁，连升十级，官至二品。太平天国起义之时，他历尽艰辛为清王朝平定了天下。在镇压太平天国的后期，曾国藩又以理学家的身份，开近代风气之先，发起了洋务运动，被后人誉为&ldquo;中国近代化之父&rdquo;。曾国藩生前曾被封为&ldquo;一等勇毅侯&rdquo;，成为清代以文人而封武侯的第一人，后历任两江总督、直隶总督，官居一品，死后被谥&ldquo;文正&rdquo;。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-align: center;\"><img alt=\"\" class=\"lazyLoad\" src=\"http://www.weipaitang.com/img/2017053117415766f4eec7da6dcfa42b09a3eaf755055e\" style=\"border: 0px; margin: 0px auto; max-width: 640px; width: 435px; height: 1000px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-align: center;\"><span style=\"font-size: 12px;\">曾国藩书法作品</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">曾国藩所处的时代，是清王朝由乾隆、嘉庆盛世转而为没落衰败、内忧外患接踵而来的动荡年代。由于曾国藩等人的力挽狂澜，一度出现&ldquo;同治中兴&rdquo;的局面，曾国藩正是这一过渡时期的重心人物。这种影响不仅仅作用于当时，而且一直延至今日，从而使之成为近代中国最显赫和最有争议的历史人物。坦率地讲，由于曾国藩才使得清王朝得以延续到20世纪初。对于曾国藩，国共两党领袖蒋介石和毛泽东都对其钦佩有加。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-align: center;\"><img alt=\"\" class=\"lazyLoad\" src=\"http://www.weipaitang.com/img/20170531174157b8f1688fbaa2b45f8a161056c01e44a5\" style=\"border: 0px; margin: 0px auto; max-width: 640px; width: 550px; height: 174px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-align: center;\"><span style=\"font-size: 12px;\">曾国藩书法作品</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">若说到书法，曾国藩自出生到离世，都对书法情有独钟，非常喜爱，即使在战争时期，仍坚持每天写字。他的书法精楷书、行书。初学书法主要是临摹字帖，他学书法的这条路子，正是历来多数书法家主张并实践的路子。但到晚年，他又多次反省自己：&ldquo;因余作字不专师一家，终无所成。&rdquo;可见，曾国藩对于初学书法者，力主先师一家，然后方可采摭众长，融为一家，以形成自己的独特风格。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-align: center;\"><img alt=\"\" class=\"lazyLoad\" src=\"http://www.weipaitang.com/img/20170531174157987c340b10710c37752a73844ce14343\" style=\"border: 0px; margin: 0px auto; max-width: 640px; width: 450px; height: 389px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-align: center;\"><span style=\"font-size: 12px;\">曾国藩书法</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 15px; line-height: 27px; white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">曾国藩在书法上的成就，主要取决于他的恒心和毅力。他认为，一个人要想把字写好，并想成为一代书法大师，不可求速效，而要靠日积月累，持之以恒。他自幼练书法，一直练到老，从未间断过，即使公务再忙，仍坚持每天写字。他还在家中告诫子弟：&ldquo;习字须有恒，每日临帖一百字，万万无间断，则数年必成书家矣。&rdquo;</span></p>', '1503303355', '1', '', 'http://api.wode-mall.com/uploads/20170821/ebd7592d552d13851a2ad6a26089f64c.jpg', '4', '1', '1');

-- ----------------------------
-- Table structure for `opn_news_category`
-- ----------------------------
DROP TABLE IF EXISTS `opn_news_category`;
CREATE TABLE `opn_news_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '分类名',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父id',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示，1显示，-1不显示',
  `sort` tinyint(1) NOT NULL DEFAULT '20' COMMENT '排序',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `cat_pic` varchar(255) DEFAULT '',
  `can_delete` tinyint(1) DEFAULT '1' COMMENT '1可以删除，0不能删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of opn_news_category
-- ----------------------------
INSERT INTO `opn_news_category` VALUES ('1', '公司动态', '0', '1', '1', '0', '1499758625', '', '0');
INSERT INTO `opn_news_category` VALUES ('2', '公司公告', '0', '1', '2', '0', '1499751748', '', '0');
INSERT INTO `opn_news_category` VALUES ('3', '新闻资讯', '0', '1', '0', '0', '1499751030', '', '0');
INSERT INTO `opn_news_category` VALUES ('4', '相关协议', '0', '-1', '0', '0', '1499758625', '', '0');
INSERT INTO `opn_news_category` VALUES ('17', '活动公告', '0', '1', '0', '0', '1499751039', '', '1');