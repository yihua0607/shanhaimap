/*

该表 是 用户角色 和 菜单权限关系

Navicat MySQL Data Transfer

Source Server         : 本地mysql
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : shanhaimap

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2018-05-29 22:57:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_s_role_function
-- ----------------------------
DROP TABLE IF EXISTS `t_s_role_function`;
CREATE TABLE `t_s_role_function` (
  `ID` varchar(32) NOT NULL COMMENT 'ID',
  `operation` varchar(1000) DEFAULT NULL COMMENT '页面控件权限编码',
  `functionid` varchar(32) DEFAULT NULL COMMENT '菜单ID',
  `roleid` varchar(32) DEFAULT NULL COMMENT '角色ID',
  `datarule` varchar(1000) DEFAULT NULL COMMENT '数据权限规则ID',
  PRIMARY KEY (`ID`),
  KEY `FK_fvsillj2cxyk5thnuu625urab` (`functionid`) USING BTREE,
  KEY `FK_9dww3p4w8jwvlrgwhpitsbfif` (`roleid`) USING BTREE,
  CONSTRAINT `t_s_role_function_ibfk_1` FOREIGN KEY (`roleid`) REFERENCES `t_s_role` (`ID`),
  CONSTRAINT `t_s_role_function_ibfk_2` FOREIGN KEY (`functionid`) REFERENCES `t_s_function` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 587776 kB; (`roleid`) REFER `jeecg/t_s_role`(`I';

-- ----------------------------
-- Records of t_s_role_function
-- ----------------------------
INSERT INTO `t_s_role_function` VALUES ('402880e8639be9bb01639bebc7980003', null, '402880e8639be9bb01639beb333d0001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ec5cc39343015cc3ac24dd0003', null, '8a8ab0b246dc81120146dc8180df001f', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880ec5ddec439015ddedcf21f0011', null, '4028f6815af5ca04015af5cbf9300001', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('402880ec5ddec439015ddf6d0f1d0028', null, '4028f6815af6de95015af6e078420001', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880ec5ddfdd26015ddfdff408000c', null, '402880ec5cc40078015cc43430e80061', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880ec5ddfdd26015ddfdff40b000d', null, '4028ab775dca0d1b015dca3fccb60016', '402880e74d75c4dd014d75d3c5f40001', '4028ab775dca0d1b015dca4183530018,402880ec5ddfdd26015ddfe3e0570011,');
INSERT INTO `t_s_role_function` VALUES ('402880ec63ac47880163ac51ee72001d', null, '402880ec63ac47880163ac51c5be001b', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ec63ac47880163ac51ee74001e', null, '402880ec63ac47880163ac4eef4f0011', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ec63ac47880163ac51ee74001f', null, '402880ec63ac47880163ac48b7be0001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ec63ac47880163ac51ee740020', null, '402880ec63ac47880163ac4a327e0003', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ec63ac47880163ac51ee740021', null, '402880ec63ac47880163ac4be7e60007', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ec63ac47880163ac51ee740022', null, '402880ec63ac47880163ac4dad7b000d', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ec63ac47880163ac51ee740023', null, '402880ec63ac47880163ac5032fd0015', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ec63ac47880163ac51ee750024', null, '402880ec63ac47880163ac4d0c81000b', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ec63ac47880163ac51ee750025', null, '402880ec63ac47880163ac50da6f0017', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ec63ac47880163ac51ee750026', null, '402880ec63ac47880163ac514d8b0019', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ec63ac47880163ac51ee750027', null, '402880ec63ac47880163ac4e56e0000f', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ec63ac47880163ac51ee750028', null, '402880ec63ac47880163ac4f7af60013', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ec63ac47880163ac51ee750029', null, '402880ec63ac47880163ac4ca1eb0009', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ec63ac47880163ac51ee75002a', null, '402880ec63ac47880163ac4b0aee0005', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff44230f0003', null, '8a8ab0b246dc81120146dc81811d0032', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff4423120005', null, '8a8ab0b246dc81120146dc8181100030', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff4423120009', null, '8a8ab0b246dc81120146dc8180df001f', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff442313000c', null, '8a8ab0b246dc81120146dc8181250034', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff442313000d', null, '8a8ab0b246dc81120146dc8180e70023', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff442313000e', null, '8a8ab0b246dc81120146dc8180ee0025', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff442313000f', null, '402885814e3d2d09014e3d2e77800001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff4423130011', null, '8a8ab0b246dc81120146dc8180f60028', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff4423130012', null, '8a8ab0b246dc81120146dc8180d9001d', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff4423140016', null, '402881c746de1ea60146de207d770001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b137015015b1370c1ff000c', null, '402880e448a28b750148a290c0e50001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b182dcf015b1839b06f0007', null, '8a8ab0b246dc81120146dc8180ce0019', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b182dcf015b1839b0730008', '402880f25b182dcf015b1839762c0005,402880f25b182dcf015b184c4885001b,', '8a8ab0b246dc81120146dc818106002d', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b182dcf015b185e0a9c0028', null, '4028f6815af3ce54015af3d1ad610001', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b182dcf015b18611d570031', '402880f25b182dcf015b187b464a004b,', '4028f6815af5ca04015af5cbf9300001', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b18e3ab015b1902224b0004', '402880f25a980e2a015a981e9e460008,402881855ab8c48a015ab8c945a70008,', '402880f25a980e2a015a981dc8de0005', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b18e3ab015b1902224e0005', null, '402889fb486e848101486e8de3d60005', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b18e3ab015b191afdaa000c', '402880f25a9833f5015a9844ed14000f,402881855ab8c48a015ab8caa347000a,', '402880f25a9833f5015a9843218f000c', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b18e3ab015b196f88ff0023', null, '8a8ab0b246dc81120146dc8180d2001a', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b19976c015b199f79480003', null, '40288088481d019401481d2fcebf000d', '402880e74d75c4dd014d75d3c5f40001', '4028ef815595a881015595b0ccb60001,402880ec5ddec439015ddf9225060038,');
INSERT INTO `t_s_role_function` VALUES ('402880f25b19976c015b19a09e280009', '', '4028f6815af5e479015af5f08dc4001a', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b19976c015b19a1d6500012', null, '40288088481d019401481d2fcebf000d', '8a8ab0b246dc81120146dc81818b0051', '4028ef815595a881015595b0ccb60001,');
INSERT INTO `t_s_role_function` VALUES ('402880f25b19976c015b19a1d6510013', null, '402889fb486e848101486e8de3d60005', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b19976c015b19a1f5ea0014', null, '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b19976c015b19a1f5eb0015', null, '4028f6815af5e479015af5f08dc4001a', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b1d5a3a015b1d71e5a90004', null, '402881855ab8c48a015ab8d133050018', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b1d5a3a015b1d71e5ab0005', '402881855ab8c48a015ab8d331b1001e,', '402881855ab8c48a015ab8d1f96f001b', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b1d5a3a015b1d747dfe000d', null, '402880e74d76e784014d76f5505a0012', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b1d5a3a015b1d74a94b000e', '402880f25b1d5a3a015b1d901da00028,402880f25b1d5a3a015b1d941094002e,402880f25b1d5a3a015b1d97b13d0039,402880f25b1df029015b1e19a8890027,402880f25b1df029015b1e19e0d00029,', '402880e74d76e784014d76f5cc2e0014', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b1d5a3a015b1d781ada0017', '402880f25b1d5a3a015b1d77ff6a0015,', '402880f25b1d5a3a015b1d772c2b0013', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b1d5a3a015b1db9fee40057', null, '402880e74d76e784014d76f5cc2e0014', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b1d5a3a015b1db9fee60058', null, '8a8ab0b246dc81120146dc8180ce0019', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b1d5a3a015b1db9fee60059', null, '402880e74d76e784014d76f5505a0012', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b1d5a3a015b1db9fee6005a', null, '8a8ab0b246dc81120146dc818106002d', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b1e2ac7015b1e6038450014', null, '402880f25b1e2ac7015b1e5cdc340010', '402880e74d75c4dd014d75d3c5f40001', '402880f25b1e2ac7015b1e5fdebc0012,');
INSERT INTO `t_s_role_function` VALUES ('402880f25b23a635015b23abbf770008', '402880f25b23a635015b23ab94b60006,402880f25b23a635015b23ad152f000d,', '402880f25b23a635015b23a992f10003', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f35b6686ba015b6693c3e90001', null, '8a8ab0b246dc81120146dc8180f30027', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881855afb59f7015afc6123c7000e', null, '8a8ab0b246dc81120146dc8180d2001a', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881855afbcdf7015afc6123c7000e', null, '8a8ab0b246dc81120146dc8180e30021', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881855b05d2c4015b05f2ae6a0004', null, '402880ea53303a060153304a9ad50001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881855c1c1c38015c1c2096780005', null, '40284a815c1bac76015c1bc02abe0003', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881875b246b3f015b246ce6d70003', null, '8a8ab0b246dc81120146dc8180e70023', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402881e45e5bc4e3015e5bc767790010', null, '8a8ab0b246dc81120146dc8180d2001a', '8a8ab0b246dc81120146dc81818b0051', null);
