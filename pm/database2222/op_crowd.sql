/*
Navicat MySQL Data Transfer

Source Server         : linux_open
Source Server Version : 50628
Source Host           : 192.168.71.236:3306
Source Database       : op_crowd

Target Server Type    : MYSQL
Target Server Version : 50628
File Encoding         : 65001

Date: 2017-09-15 17:53:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `opc_crowd`
-- ----------------------------
DROP TABLE IF EXISTS `opc_crowd`;
CREATE TABLE `opc_crowd` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '拍卖id',
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `business_id` int(11) NOT NULL DEFAULT '0' COMMENT '商户id',
  `crowd_oprid` int(11) NOT NULL DEFAULT '0' COMMENT '操作者id',
  `crowd_publishid` int(11) NOT NULL DEFAULT '0' COMMENT '发布人id',
  `crowd_checkid` int(11) NOT NULL DEFAULT '0' COMMENT '审核人id',
  `crowd_code` varchar(64) NOT NULL DEFAULT '' COMMENT '申购编号【统一生成编号】',
  `crowd_name` varchar(256) NOT NULL DEFAULT '' COMMENT '申购名称或标题',
  `crowd_total` int(11) NOT NULL DEFAULT '0' COMMENT '申购总量',
  `crowd_consume` int(11) NOT NULL DEFAULT '0' COMMENT '已申购数量',
  `crowd_check` tinyint(1) NOT NULL DEFAULT '0' COMMENT '申购状态流：0待审核 1审核通过 2审核失败',
  `crowd_check_reason` varchar(256) NOT NULL DEFAULT '' COMMENT '审核失败原因',
  `crowd_onsale` tinyint(1) NOT NULL DEFAULT '0' COMMENT '申购上架 0未上架 1已上架 2已下架',
  `crowd_onsale_reason` varchar(256) NOT NULL DEFAULT '' COMMENT '申购下架原因',
  `crowd_price` int(11) NOT NULL DEFAULT '0' COMMENT '申购价格 注意与商品本身价格的区别',
  `crowd_broker_price` int(11) NOT NULL DEFAULT '0' COMMENT '佣金 平台与商家线下协商',
  `crowd_seller_price` int(11) NOT NULL DEFAULT '0' COMMENT '卖家保证金',
  `crowd_starttime` int(11) NOT NULL DEFAULT '0' COMMENT '申购开始时间',
  `crowd_endtime` int(11) NOT NULL DEFAULT '0' COMMENT '申购结束时间',
  `crowd_intime` int(11) NOT NULL DEFAULT '0' COMMENT '插入时间',
  `crowd_uptime` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `crowd_pledge_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '【预留】旧pledge_type 保证金冻结方式',
  `crowd_sort` int(11) NOT NULL DEFAULT '0' COMMENT '【预留】申购列表排序',
  `crowd_freight_price` int(11) NOT NULL DEFAULT '0' COMMENT '【预留】运费 可能与申购数量有关系',
  `crowd_apply_stuff` text COMMENT '【预留】卖家申请材料,以||分隔',
  `crowd_inventory` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '库存',
  PRIMARY KEY (`id`),
  KEY `msort` (`crowd_sort`),
  KEY `gid` (`goods_id`),
  KEY `starttime` (`crowd_starttime`),
  KEY `endtime` (`crowd_endtime`),
  KEY `endstatus` (`crowd_check`)
) ENGINE=InnoDB AUTO_INCREMENT=317 DEFAULT CHARSET=utf8 COMMENT='申购表';

-- ----------------------------
-- Records of opc_crowd
-- ----------------------------
INSERT INTO `opc_crowd` VALUES ('15', '76', '1', '3', '4', '4', 'CROWD170622', '申购花露水170622', '1000', '0', '1', '', '1', '', '10', '150', '100', '1498060800', '1498147200', '1498116392', '1498119906', '0', '0', '0', null, '0');
INSERT INTO `opc_crowd` VALUES ('16', '77', '1', '3', '4', '4', 'CROWD2309089090', '申购大米', '1000', '0', '1', '', '1', '', '80', '150', '100', '1498060800', '1498752000', '1498120126', '1498120126', '0', '0', '0', null, '0');
INSERT INTO `opc_crowd` VALUES ('17', '78', '1', '3', '4', '4', 'CROWDLOBSTER00001', '申购小龙虾', '10000', '0', '1', '', '1', '', '10', '100', '100', '1498060800', '1498752000', '1498120563', '1498120563', '0', '0', '0', null, '0');
INSERT INTO `opc_crowd` VALUES ('18', '79', '1', '117', '117', '0', 'CROWDPOTATO00001', '申购马铃薯', '5000', '0', '0', '', '1', '', '5', '50', '100', '1498060800', '1501430400', '1498120867', '1500343940', '0', '0', '0', null, '0');
INSERT INTO `opc_crowd` VALUES ('19', '86', '1', '117', '4', '4', '123456', '蓝色琉璃盏', '2', '0', '1', '', '1', '', '2000', '200', '500', '1498752000', '1498838400', '1498804769', '1498804769', '0', '0', '0', null, '0');
INSERT INTO `opc_crowd` VALUES ('20', '106', '1', '3', '3', '3', '123456', '申购建盏', '1', '0', '1', '', '1', '', '20000', '400', '500', '1499097600', '1499356800', '1499049087', '1499064934', '0', '0', '0', null, '0');
INSERT INTO `opc_crowd` VALUES ('21', '110', '2', '141', '141', '141', '123456', '申购建盏6', '1', '0', '1', '', '1', '', '20000', '400', '500', '1499097600', '1499184000', '1499135284', '1499135284', '0', '0', '0', null, '0');
INSERT INTO `opc_crowd` VALUES ('22', '111', '3', '140', '140', '140', '123456', '申购建盏', '1', '0', '1', '', '1', '', '2000', '400', '500', '1499097600', '1499184000', '1499135986', '1499135986', '0', '0', '0', null, '0');
INSERT INTO `opc_crowd` VALUES ('23', '112', '4', '142', '142', '142', '123456', '申购建盏', '1', '0', '1', '', '1', '', '20000', '400', '500', '1499097600', '1499184000', '1499136065', '1499136065', '0', '0', '0', null, '0');
INSERT INTO `opc_crowd` VALUES ('24', '115', '1', '1', '0', '0', '20170706', '申购名称20170706', '1000', '0', '0', '', '0', '', '1299', '10', '100', '1499270400', '1500652800', '1499322722', '1500883943', '0', '0', '0', null, '0');
INSERT INTO `opc_crowd` VALUES ('25', '117', '1', '116', '117', '117', '00033', '五行盏（金木水火土）', '1', '0', '1', '', '1', '', '42800', '100', '100', '1499356800', '1501430400', '1499396060', '1499396060', '0', '0', '0', null, '0');
INSERT INTO `opc_crowd` VALUES ('26', '118', '1', '116', '117', '117', '000331', '对盏&mdash;&mdash;水木间', '1', '0', '1', '', '1', '', '29800', '100', '1000', '1499356800', '1501430400', '1499396609', '1499396754', '0', '0', '0', null, '0');
INSERT INTO `opc_crowd` VALUES ('27', '119', '1', '116', '116', '116', '02302', '金鹧鸪敛口盏', '1', '0', '1', '', '1', '', '0', '0', '0', '1499356800', '1501430400', '1499396721', '1499412343', '0', '0', '0', null, '0');
INSERT INTO `opc_crowd` VALUES ('28', '120', '1', '3', '117', '117', '20170707', '申购20170707', '1000', '0', '1', '', '1', '', '1000', '1000', '1000', '1499356800', '1499443200', '1499397051', '1499397111', '0', '0', '0', null, '0');
INSERT INTO `opc_crowd` VALUES ('29', '121', '1', '116', '4', '4', '88888888888888', '阿萨德福克斯的看见飞&mdash;&mdash;&mdash;&mdash;', '1000', '0', '1', '', '1', '', '1000', '10000', '10000', '1499788800', '1501257600', '1499397187', '1499397296', '0', '0', '0', null, '0');
INSERT INTO `opc_crowd` VALUES ('30', '126', '1', '116', '116', '116', '155165', '申购1号', '1', '0', '1', '', '1', '', '0', '0', '0', '1499356800', '1500998400', '1499412505', '1499839206', '0', '0', '0', null, '0');
INSERT INTO `opc_crowd` VALUES ('31', '137', '1', '149', '149', '149', '65654465', '申购名称20170710', '10', '0', '1', '', '1', '', '0', '10', '10', '1499788800', '1500566400', '1499663588', '1500454646', '0', '0', '0', null, '10');
INSERT INTO `opc_crowd` VALUES ('32', '141', '1', '116', '116', '116', '11', 'test', '11', '0', '1', '', '1', '', '0', '0', '0', '1499702400', '1500998400', '1499666207', '1499741094', '0', '0', '0', null, '11');
INSERT INTO `opc_crowd` VALUES ('33', '143', '2', '141', '141', '141', '123456', '申购雕刻', '2', '0', '1', '', '1', '', '5000', '300', '500', '1499616000', '1499788800', '1499666541', '1499666725', '0', '0', '0', null, '11');
INSERT INTO `opc_crowd` VALUES ('34', '145', '2', '141', '141', '141', '123456', '申购建盏', '2', '0', '1', '', '1', '', '3000', '200', '300', '1499616000', '1499875200', '1499666796', '1499666949', '0', '0', '0', null, '2');
INSERT INTO `opc_crowd` VALUES ('35', '146', '2', '141', '141', '141', '123456', '申购买卖建盏', '2', '0', '1', '', '1', '', '4000', '300', '400', '1499616000', '1499788800', '1499666887', '1499666934', '0', '0', '0', null, '2');
INSERT INTO `opc_crowd` VALUES ('36', '149', '1', '149', '149', '149', '112321', '美国人民', '100', '0', '1', '', '1', '', '0', '123', '123', '1499097600', '1501430400', '1499740786', '1500453415', '0', '0', '0', null, '1');
INSERT INTO `opc_crowd` VALUES ('37', '150', '1', '152', '152', '152', '12345', 'sqh测试', '1000', '0', '1', '', '1', '', '10', '10', '10', '1499875200', '1501430400', '1499913631', '1499913631', '0', '0', '0', null, '1000');
INSERT INTO `opc_crowd` VALUES ('38', '151', '1', '3', '3', '3', '201707132222', '申购名称20170713', '500', '0', '1', '', '1', '', '1000', '100', '100', '1499961600', '1501257600', '1499936577', '1499936577', '0', '0', '0', null, '500');
INSERT INTO `opc_crowd` VALUES ('39', '152', '1', '117', '117', '117', '123456', '申购A', '1', '0', '1', '', '1', '', '1000', '400', '500', '1499961600', '1501430400', '1500012841', '1500012841', '0', '0', '0', null, '1');
INSERT INTO `opc_crowd` VALUES ('40', '153', '1', '117', '117', '117', '123456', '申购B', '2', '0', '1', '', '1', '', '2000', '400', '500', '1499961600', '1501430400', '1500013010', '1500013010', '0', '0', '0', null, '2');
INSERT INTO `opc_crowd` VALUES ('41', '154', '1', '117', '117', '117', '123456', '申购C', '3', '0', '1', '', '1', '', '3000', '400', '500', '1499961600', '1501430400', '1500013141', '1500013141', '0', '0', '0', null, '3');
INSERT INTO `opc_crowd` VALUES ('42', '155', '1', '117', '117', '117', '123456', '申购D', '4', '0', '1', '', '1', '', '4000', '400', '500', '1499961600', '1501430400', '1500013206', '1500013206', '0', '0', '0', null, '4');
INSERT INTO `opc_crowd` VALUES ('43', '156', '1', '117', '117', '117', '123456', '申购E', '5', '0', '1', '', '1', '', '5000', '400', '500', '1499961600', '1501430400', '1500013298', '1500013298', '0', '0', '0', null, '5');
INSERT INTO `opc_crowd` VALUES ('44', '162', '1', '172', '116', '116', '201707171', 'test1', '200', '0', '1', '', '1', '', '500', '10', '100', '1500220800', '1500652800', '1500231977', '1500231977', '0', '0', '0', null, '200');
INSERT INTO `opc_crowd` VALUES ('45', '163', '1', '149', '149', '149', '201707172', '娜可露露', '100', '0', '1', '', '1', '', '0', '0', '0', '1500220800', '1501430400', '1500236840', '1500371783', '0', '0', '0', null, '100');
INSERT INTO `opc_crowd` VALUES ('46', '167', '1', '116', '117', '117', '123456', '申购夜壶', '3', '0', '1', '', '1', '', '0', '0', '0', '1500393600', '1501430400', '1500455626', '1500886992', '0', '0', '0', null, '3');
INSERT INTO `opc_crowd` VALUES ('47', '172', '1', '116', '116', '116', 'cgx001', 'cgx测试申购1号', '2', '0', '1', '', '1', '', '0', '0', '0', '1501067940', '1500718740', '1500607840', '1500951301', '0', '0', '0', null, '2');
INSERT INTO `opc_crowd` VALUES ('48', '176', '1', '117', '117', '117', '123452211', '申购坦克33', '11', '0', '1', '', '1', '', '11', '23', '22', '1501234860', '1501430400', '1500860448', '1501235322', '0', '0', '0', null, '3');
INSERT INTO `opc_crowd` VALUES ('49', '194', '1', '1', '4', '4', '434', 'testCrowd', '545', '0', '1', '', '1', '', '1', '322', '434', '1499832060', '1500480000', '1501466496', '1501466496', '0', '0', '0', null, '545');
INSERT INTO `opc_crowd` VALUES ('50', '196', '1', '117', '0', '0', '323', '21', '434', '0', '0', '', '0', '', '54', '65', '0', '1499011200', '1499184000', '1501471297', '1501471297', '0', '0', '0', null, '434');
INSERT INTO `opc_crowd` VALUES ('51', '197', '1', '117', '1', '1', '123465', '申购奥巴马', '3', '0', '1', '', '1', '', '0', '0', '0', '1499747400', '1501472400', '1501471389', '1501471389', '0', '0', '0', null, '3');
INSERT INTO `opc_crowd` VALUES ('52', '198', '1', '4', '5', '0', '123456', '申购奥巴马', '3', '0', '0', '', '1', '', '0', '0', '0', '1501486740', '1501493940', '1501478535', '1501488785', '0', '0', '0', null, '3');
INSERT INTO `opc_crowd` VALUES ('53', '199', '1', '4', '4', '4', '123456', '申购总统', '5', '0', '1', '', '1', '', '0', '0', '0', '1501487100', '1501752480', '1501486968', '1501495236', '0', '0', '0', null, '3');
INSERT INTO `opc_crowd` VALUES ('54', '200', '1', '258', '258', '258', '123456', '申购语文', '3', '3', '1', '', '1', '', '0', '0', '0', '1501549440', '1504540800', '1501549701', '1501549701', '0', '0', '0', null, '0');
INSERT INTO `opc_crowd` VALUES ('55', '202', '1', '258', '258', '258', '123456', '申购数学', '5', '0', '1', '', '1', '', '0', '0', '0', '1501566000', '1504777200', '1501566517', '1501566517', '0', '0', '0', null, '5');
INSERT INTO `opc_crowd` VALUES ('56', '203', '1', '258', '258', '258', '123456', '申购英语', '5', '5', '1', '', '1', '', '0', '0', '0', '1501566060', '1504777560', '1501566572', '1501566572', '0', '0', '0', null, '0');
INSERT INTO `opc_crowd` VALUES ('57', '204', '1', '258', '258', '258', '123456', '申购物理', '5', '3', '1', '', '1', '', '0', '0', '0', '1501566120', '1501568520', '1501566640', '1501566640', '0', '0', '0', null, '2');
INSERT INTO `opc_crowd` VALUES ('58', '205', '1', '258', '258', '258', '123456', '申购生物', '5', '5', '1', '', '1', '', '0', '0', '0', '1501566180', '1501663680', '1501566694', '1501654709', '0', '0', '0', null, '0');
INSERT INTO `opc_crowd` VALUES ('59', '221', '1', '258', '258', '258', '123', '申购老虎', '8', '5', '1', '', '1', '', '0', '0', '0', '1501655040', '1501666140', '1501655536', '1501655536', '0', '0', '0', null, '3');
INSERT INTO `opc_crowd` VALUES ('60', '222', '1', '258', '0', '0', '123', '申购小学生', '8', '0', '0', '', '0', '', '0', '0', '0', '1501689600', '1501862400', '1501723548', '1501723548', '0', '0', '0', null, '8');
INSERT INTO `opc_crowd` VALUES ('61', '223', '1', '258', '258', '258', '123', '申购中学生', '8', '1', '1', '', '1', '', '0', '0', '0', '1501689600', '1501776000', '1501723583', '1501723583', '0', '0', '0', null, '7');
INSERT INTO `opc_crowd` VALUES ('62', '224', '1', '258', '258', '258', '456', '申购大学生', '5', '0', '1', '', '1', '', '100', '20', '10', '1501723140', '1501725240', '1501723640', '1501723640', '0', '0', '0', null, '5');
INSERT INTO `opc_crowd` VALUES ('63', '225', '1', '258', '258', '258', '456', '申购大学生', '5', '0', '1', '', '1', '', '100', '20', '10', '1501723140', '1501726320', '1501723641', '1501724644', '0', '0', '0', null, '5');
INSERT INTO `opc_crowd` VALUES ('64', '226', '1', '258', '0', '0', '132', '施工队', '1', '0', '0', '', '0', '', '12', '423', '24', '1501689600', '1501689600', '1501723922', '1501723922', '0', '0', '0', null, '1');
INSERT INTO `opc_crowd` VALUES ('65', '227', '1', '258', '0', '0', '12', '发', '311', '0', '0', '', '0', '', '2131', '4234', '432', '1501689600', '1501689600', '1501723958', '1501723958', '0', '0', '0', null, '311');
INSERT INTO `opc_crowd` VALUES ('66', '228', '1', '258', '0', '0', '12', '发', '311', '0', '0', '', '0', '', '2131', '4234', '432', '1501689600', '1501689600', '1501723958', '1501723958', '0', '0', '0', null, '311');
INSERT INTO `opc_crowd` VALUES ('67', '229', '1', '4', '4', '4', '12', '发', '311', '0', '1', '', '1', '', '0', '4234', '0', '1501689600', '1501689600', '1501723958', '1501833502', '0', '0', '0', null, '311');
INSERT INTO `opc_crowd` VALUES ('68', '230', '1', '258', '0', '0', '12', '发', '311', '0', '0', '', '0', '', '2131', '4234', '432', '1501689600', '1501689600', '1501723958', '1501723958', '0', '0', '0', null, '311');
INSERT INTO `opc_crowd` VALUES ('75', '237', '1', '273', '273', '0', '1', '诺基亚N96', '11', '1', '0', '', '1', '', '0', '223', '11', '1502121600', '1503651720', '1501726768', '1503305849', '0', '0', '0', null, '10');
INSERT INTO `opc_crowd` VALUES ('76', '238', '1', '273', '273', '0', '1', '飞利浦9@9v', '11', '1', '0', '', '1', '', '124', '11', '11', '1501750560', '1503158400', '1501726768', '1503305817', '0', '0', '0', null, '10');
INSERT INTO `opc_crowd` VALUES ('77', '243', '1', '273', '273', '273', '123', '三星SGH-F258', '2', '0', '1', '', '1', '', '250', '200', '3000', '1501689600', '1503504000', '1501825946', '1503305617', '0', '0', '0', null, '2');
INSERT INTO `opc_crowd` VALUES ('78', '244', '1', '1', '258', '258', '002', '建宁黄桃', '100', '5', '1', '', '1', '', '0', '0', '0', '1501776000', '1501928280', '1501833926', '1501834668', '0', '0', '0', null, '95');
INSERT INTO `opc_crowd` VALUES ('79', '245', '1', '1', '1', '1', '1', 'zxltest', '21', '9', '1', '', '1', '', '0', '0', '0', '1501481940', '1503047940', '1501834739', '1502447391', '0', '0', '0', null, '12');
INSERT INTO `opc_crowd` VALUES ('80', '248', '3', '270', '270', '270', '123', '申购张学友', '8', '1', '1', '', '1', '', '0', '0', '0', '1502035200', '1502097300', '1502082477', '1502083041', '0', '0', '0', null, '7');
INSERT INTO `opc_crowd` VALUES ('81', '251', '3', '270', '270', '270', '5241', '申购周杰伦', '8', '3', '1', '', '1', '', '0', '0', '0', '1502082960', '1502089260', '1502083167', '1502084348', '0', '0', '0', null, '5');
INSERT INTO `opc_crowd` VALUES ('82', '256', '3', '1', '273', '273', '122', 'KD876', '8', '1', '1', '', '1', '', '112', '0', '0', '1502172240', '1503392040', '1502172438', '1503449775', '0', '2', '0', null, '7');
INSERT INTO `opc_crowd` VALUES ('83', '257', '1', '5', '0', '0', 'n', 'nnn', '1', '0', '0', '', '0', '', '1', '0', '0', '1502037060', '1502816415', '1502172747', '1504851160', '0', '5', '0', null, '1');
INSERT INTO `opc_crowd` VALUES ('84', '258', '3', '1', '4', '4', '154', '申购小米', '10', '1', '1', '', '1', '', '0', '0', '0', '1502248140', '1502421120', '1502248393', '1503449765', '0', '1', '0', null, '9');
INSERT INTO `opc_crowd` VALUES ('85', '284', '3', '1', '273', '273', '49', '飞利浦9@9v', '23', '0', '1', '', '1', '', '141', '0', '0', '1503305400', '1503306900', '1503306080', '1503482170', '0', '2', '0', null, '23');
INSERT INTO `opc_crowd` VALUES ('86', '287', '3', '5', '1', '1', '123', '申购伊拉克', '5', '0', '1', '', '1', '', '0', '0', '0', '1503307740', '1503466800', '1503307867', '1503544977', '0', '0', '0', null, '5');
INSERT INTO `opc_crowd` VALUES ('87', '293', '3', '270', '270', '270', '242', '申购电影', '8', '0', '1', '', '1', '', '0', '0', '0', '1503544320', '1503566220', '1503544737', '1503544737', '0', '0', '0', null, '8');
INSERT INTO `opc_crowd` VALUES ('91', '293', '1', '5', '0', '0', '', '', '6', '0', '0', '', '0', '', '0', '0', '0', '1501639320', '1503453720', '1503568849', '1503568849', '0', '0', '0', null, '6');
INSERT INTO `opc_crowd` VALUES ('92', '293', '1', '5', '0', '0', '', '', '6', '0', '0', '', '0', '', '0', '0', '0', '1501639320', '1503453720', '1503569082', '1503569082', '0', '0', '0', null, '6');
INSERT INTO `opc_crowd` VALUES ('93', '298', '3', '329', '329', '329', '2432', '温柔', '5', '0', '1', '', '1', '', '0', '0', '0', '1503624600', '1503624900', '1503624701', '1503624701', '0', '0', '0', null, '5');
INSERT INTO `opc_crowd` VALUES ('97', '293', '1', '5', '0', '0', '', '', '1', '0', '0', '', '0', '', '0', '0', '0', '1499742300', '1503542940', '1503627553', '1503627553', '0', '0', '0', null, '1');
INSERT INTO `opc_crowd` VALUES ('98', '299', '2', '5', '5', '5', '1', '唐宋青瓷', '2', '0', '1', '', '1', '', '156', '1200', '1220', '1503590400', '1504108800', '1503638046', '1503638046', '0', '0', '0', null, '2');
INSERT INTO `opc_crowd` VALUES ('99', '299', '1', '5', '0', '0', '', '', '3', '0', '0', '', '0', '', '0', '0', '0', '1502035200', '1502726400', '1503642140', '1503642140', '0', '0', '0', null, '3');
INSERT INTO `opc_crowd` VALUES ('302', '300', '3', '329', '329', '329', '123', '申购顺丰', '5', '0', '1', '', '1', '', '0', '0', '0', '1503643380', '1503644280', '1503643861', '1503643861', '0', '0', '0', null, '5');
INSERT INTO `opc_crowd` VALUES ('303', '303', '1', '5', '5', '5', '141', '老爷车', '100', '0', '1', '', '1', '', '100', '100', '100', '1503849600', '1504195200', '1503886723', '1503886723', '0', '0', '0', null, '100');
INSERT INTO `opc_crowd` VALUES ('304', '304', '3', '329', '329', '329', '54', '申购周杰伦', '4', '0', '1', '', '1', '', '0', '0', '0', '1503849600', '1504972800', '1503887115', '1503887115', '0', '0', '0', null, '4');
INSERT INTO `opc_crowd` VALUES ('305', '305', '3', '329', '329', '329', '523', '申购林俊杰', '4', '0', '1', '', '1', '', '0', '0', '0', '1503849600', '1504972800', '1503887157', '1503887157', '0', '0', '0', null, '4');
INSERT INTO `opc_crowd` VALUES ('306', '306', '3', '5', '329', '329', '3465', '申购张学友', '4', '0', '1', '', '1', '', '0', '0', '0', '1503849600', '1504972800', '1503887198', '1503907556', '0', '0', '0', null, '4');
INSERT INTO `opc_crowd` VALUES ('307', '310', '3', '5', '329', '329', '543', '申购周润发', '4', '0', '1', '', '1', '', '0', '0', '0', '1503849600', '1504972800', '1503890253', '1503993384', '0', '0', '0', null, '4');
INSERT INTO `opc_crowd` VALUES ('308', '311', '3', '5', '329', '0', '42', '申购刘德华', '4', '0', '0', '', '1', '', '12', '7', '26', '1503849600', '1504972800', '1503890295', '1503993382', '0', '0', '0', null, '4');
INSERT INTO `opc_crowd` VALUES ('309', '314', '1', '5', '5', '5', '1', '申购一桶非洲大草原石油', '1', '0', '1', '', '1', '', '100', '100', '100', '1504022400', '1504713600', '1504069114', '1504069114', '0', '0', '0', null, '1');
INSERT INTO `opc_crowd` VALUES ('310', '317', '3', '270', '270', '270', '241', '萨芬', '5', '0', '1', '', '1', '', '1', '2', '1', '1504800000', '1505404800', '1504754415', '1504754415', '0', '0', '0', null, '5');
INSERT INTO `opc_crowd` VALUES ('311', '318', '1', '5', '5', '5', '1', '申购电脑', '1', '0', '1', '', '1', '', '100', '100', '100', '1504713600', '1506355200', '1504765578', '1504835406', '0', '0', '0', null, '1');
INSERT INTO `opc_crowd` VALUES ('312', '323', '1', '5', '321', '321', '000101102', '烙花小叶黄杨木梳', '100', '0', '1', '', '1', '', '1', '1', '1', '1504801860', '1504972860', '1504851188', '1504851251', '0', '0', '0', null, '100');
INSERT INTO `opc_crowd` VALUES ('313', '326', '3', '329', '329', '329', '564', '申购姚明', '5', '0', '1', '', '1', '', '1', '2', '1', '1505330100', '1505664000', '1505368241', '1505374799', '0', '0', '0', null, '5');
INSERT INTO `opc_crowd` VALUES ('314', '327', '3', '374', '374', '374', '465', '申购李易峰', '8', '0', '1', '', '1', '', '1', '2', '1', '1505404800', '1505750400', '1505371421', '1505453702', '0', '3', '0', null, '8');
INSERT INTO `opc_crowd` VALUES ('315', '328', '1', '5', '374', '374', '1', '申购Iphone X', '1', '0', '1', '', '1', '', '100', '100', '100', '1505404800', '1505836800', '1505453651', '1505453780', '0', '0', '0', null, '1');
INSERT INTO `opc_crowd` VALUES ('316', '329', '1', '374', '374', '374', '0.02', '申购矿泉水', '5', '0', '1', '', '1', '', '2', '100', '100', '1505232000', '1506441600', '1505453985', '1505453985', '0', '0', '0', null, '5');