/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50715
Source Host           : 127.0.0.1:3306
Source Database       : shiro

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2018-01-05 14:58:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_attribute
-- ----------------------------
DROP TABLE IF EXISTS `sys_attribute`;
CREATE TABLE `sys_attribute` (
  `id` varchar(32) NOT NULL,
  `name` varchar(32) DEFAULT NULL COMMENT '属性名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_attribute
-- ----------------------------
INSERT INTO `sys_attribute` VALUES ('d73d7a9c471f4aba884e79152cb1ace0', '菜单类型');
INSERT INTO `sys_attribute` VALUES ('ed123c7c7ba2446282d14922b5039814', '请求方式');

-- ----------------------------
-- Table structure for sys_attribute_detail
-- ----------------------------
DROP TABLE IF EXISTS `sys_attribute_detail`;
CREATE TABLE `sys_attribute_detail` (
  `id` varchar(32) NOT NULL,
  `attrId` varchar(32) NOT NULL COMMENT '属性id',
  `name` varchar(255) DEFAULT NULL COMMENT '属性明细id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_attribute_detail
-- ----------------------------
INSERT INTO `sys_attribute_detail` VALUES ('1c81b61ca6ca40ac86c8a32413abfa16', 'd73d7a9c471f4aba884e79152cb1ace0', '页面');
INSERT INTO `sys_attribute_detail` VALUES ('2fd4068ad11b4211bacaa33385b8daae', 'd73d7a9c471f4aba884e79152cb1ace0', '按钮');
INSERT INTO `sys_attribute_detail` VALUES ('322b86557ac142ff8cab47e5653fe1c4', 'ed123c7c7ba2446282d14922b5039814', 'DELETE');
INSERT INTO `sys_attribute_detail` VALUES ('3f841e664db94378baa6b9cc91436722', 'ed123c7c7ba2446282d14922b5039814', 'POST');
INSERT INTO `sys_attribute_detail` VALUES ('50f2dfba954041c0abcd041716356c1c', 'ed123c7c7ba2446282d14922b5039814', 'GET');
INSERT INTO `sys_attribute_detail` VALUES ('8b0be3af6d3d46e7aa90cf4073931b13', 'd73d7a9c471f4aba884e79152cb1ace0', '模块');

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` varchar(32) NOT NULL,
  `name` varchar(64) DEFAULT NULL COMMENT 'url描述',
  `url` varchar(256) DEFAULT NULL COMMENT 'url地址',
  `requestType` varchar(255) DEFAULT NULL COMMENT '请求方式',
  `fatherId` varchar(32) DEFAULT NULL COMMENT '上级菜单id',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `type` varchar(32) DEFAULT NULL COMMENT '类型：页面、按钮',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `updater` varchar(32) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('05b9b153a88e49b0b5581781e1c5837d', '删除属性明细', '/SysApi/v1/delAttributeDetails', null, '0edebf3ac9f34f6f8d078b19c459d5c4', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-03 21:16:05', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('0c731c8985524757ab6e2c447fd1a8f9', '删除角色', '/RoleApi/v1/delRoles', null, '461a7aba21f54244bcdc7e20e6ab9e1c', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-03 21:12:41', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('0edebf3ac9f34f6f8d078b19c459d5c4', '字典属性', '/dictionaryList', null, '5299727441124608b85914e90e300910', null, '1c81b61ca6ca40ac86c8a32413abfa16', '2018-01-03 21:13:22', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('3f0023392933443e88ca20eac5d20f37', '查询角色', '/RoleApi/v1/findRoleByPage', null, '461a7aba21f54244bcdc7e20e6ab9e1c', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-03 21:12:00', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('461a7aba21f54244bcdc7e20e6ab9e1c', '角色管理', '/roleList', null, 'cb8fa8dd917e4c71a696f753e4ed2bb8', null, '1c81b61ca6ca40ac86c8a32413abfa16', '2018-01-03 21:11:32', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('467f6e5713934130ba9a314b91cc3139', '菜单列表', '/permisList', null, 'cb8fa8dd917e4c71a696f753e4ed2bb8', null, '1c81b61ca6ca40ac86c8a32413abfa16', '2018-01-03 21:09:39', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('5299727441124608b85914e90e300910', '数据字典', '-', null, '0', null, '8b0be3af6d3d46e7aa90cf4073931b13', '2018-01-03 21:13:02', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('5506e49f126a4c07b80aa268987cc589', '查询菜单', '/PermisApi/v1/findPermissionByPage', null, '467f6e5713934130ba9a314b91cc3139', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-03 21:10:12', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('557c1b7134024d4985a58aee24ffc35b', '新增角色', '/RoleApi/v1/addRoles', null, '461a7aba21f54244bcdc7e20e6ab9e1c', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-03 21:12:23', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('68aa741768154727b252c8c91b743c2c', '用户管理', '-', null, '0', null, '8b0be3af6d3d46e7aa90cf4073931b13', '2018-01-03 20:21:18', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('73d7a6c7ff3e476e95a3bc8c2381406f', '用户列表', '/userlist', null, '68aa741768154727b252c8c91b743c2c', null, '1c81b61ca6ca40ac86c8a32413abfa16', '2018-01-03 20:35:20', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('857997d93b81419b9508a90e55c1e396', '查询属性', '/SysApi/v1/findAttributesByPage', null, '0edebf3ac9f34f6f8d078b19c459d5c4', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-03 21:13:55', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('89a3c8ff80f543efa780459eeb52488b', '新增属性', '/SysApi/v1/addAttributes', null, '0edebf3ac9f34f6f8d078b19c459d5c4', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-03 21:14:19', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('ad324213a12144a6a2a4705ab760188b', '删除用户', '/UserApi/v1/delUsers', null, '73d7a6c7ff3e476e95a3bc8c2381406f', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-04 15:33:10', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('b012f6f664864d5b87e3619558c99b83', '新增属性明细', '/SysApi/v1/addAttributeDetail', null, '0edebf3ac9f34f6f8d078b19c459d5c4', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-03 21:15:35', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('bd8598cca795499eb6d9f3500d90d9c6', '添加/编辑角色权限', '/RoleApi/v1/addRolesPermis', null, '461a7aba21f54244bcdc7e20e6ab9e1c', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-04 21:48:58', null, 'admin', null);
INSERT INTO `sys_permission` VALUES ('ca184d415e504df280d78c28db0ba5e0', '新增用户', '/UserApi/v1/addUser', null, '73d7a6c7ff3e476e95a3bc8c2381406f', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-04 15:35:41', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('cb8fa8dd917e4c71a696f753e4ed2bb8', '权限管理', '-', null, '0', null, '8b0be3af6d3d46e7aa90cf4073931b13', '2018-01-03 21:09:14', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('cbe60313e15c4fb6888ebe58093c74c9', '查询用户', '/UserApi/v1/findUserByPage', null, '73d7a6c7ff3e476e95a3bc8c2381406f', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-03 21:07:44', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('ea0a3cba11d648f387403c0c230ce707', '添加菜单', '/PermisApi/v1/addPermissions', null, '467f6e5713934130ba9a314b91cc3139', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-03 21:10:35', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('ec0b29ae3a7843b69d6a1d765b995f3f', '删除菜单', '/PermisApi/v1/delPermis', null, '467f6e5713934130ba9a314b91cc3139', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-03 21:10:49', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('ef39e253b6854161beeea78bd6ab26a5', '删除属性', '/SysApi/v1/delAttributes', null, '0edebf3ac9f34f6f8d078b19c459d5c4', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-04 16:43:50', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('f517b99e15be4fa8924ea0c1a06c1762', '查询属性明细', '/SysApi/v1/findAttributesDetailByPage', null, '0edebf3ac9f34f6f8d078b19c459d5c4', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-03 21:16:37', null, 'wangwu', null);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(32) NOT NULL,
  `name` varchar(32) DEFAULT NULL COMMENT '角色名称',
  `description` varchar(60) DEFAULT NULL COMMENT '描述',
  `type` varchar(10) DEFAULT NULL COMMENT '角色类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1648121042d441f8a85a0231fb747454', 'user', '普通用户', null);
INSERT INTO `sys_role` VALUES ('d9908d75b9ee4256805472f3c7e8349d', 'admin', '超级管理员', null);

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `id` varchar(32) NOT NULL,
  `rid` varchar(32) DEFAULT NULL COMMENT '角色ID',
  `pid` varchar(32) DEFAULT NULL COMMENT '权限ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('', null, 'bd8598cca795499eb6d9f3500d90d9c6');
INSERT INTO `sys_role_permission` VALUES ('1ac85c97c6cd458383c61200651edc0d', 'd9908d75b9ee4256805472f3c7e8349d', 'ad324213a12144a6a2a4705ab760188b');
INSERT INTO `sys_role_permission` VALUES ('2cca1d903d3149a2b213ab86833d5e1b', 'd9908d75b9ee4256805472f3c7e8349d', 'b012f6f664864d5b87e3619558c99b83');
INSERT INTO `sys_role_permission` VALUES ('3e97064da74d4f9a8c32f997de1b8cfc', 'd9908d75b9ee4256805472f3c7e8349d', 'ea0a3cba11d648f387403c0c230ce707');
INSERT INTO `sys_role_permission` VALUES ('3ed8a1b711b44f87a6507c73ad5daa3c', 'd9908d75b9ee4256805472f3c7e8349d', '5299727441124608b85914e90e300910');
INSERT INTO `sys_role_permission` VALUES ('4b9474b58793415794d95d90ff2744a3', 'd9908d75b9ee4256805472f3c7e8349d', 'ec0b29ae3a7843b69d6a1d765b995f3f');
INSERT INTO `sys_role_permission` VALUES ('55b217885d8a4250876d9aea9838b9bc', 'd9908d75b9ee4256805472f3c7e8349d', 'cbe60313e15c4fb6888ebe58093c74c9');
INSERT INTO `sys_role_permission` VALUES ('5aae0908f4e04ba5bde2213c07dfae52', 'd9908d75b9ee4256805472f3c7e8349d', 'ca184d415e504df280d78c28db0ba5e0');
INSERT INTO `sys_role_permission` VALUES ('5d100a6f88f1414897c6cac4bf087c0e', 'd9908d75b9ee4256805472f3c7e8349d', '89a3c8ff80f543efa780459eeb52488b');
INSERT INTO `sys_role_permission` VALUES ('6004929b03024e46ba2765051dc66aa4', 'd9908d75b9ee4256805472f3c7e8349d', '467f6e5713934130ba9a314b91cc3139');
INSERT INTO `sys_role_permission` VALUES ('6514b82a0ebd416fb9a3329c140f52e7', '1648121042d441f8a85a0231fb747454', 'cbe60313e15c4fb6888ebe58093c74c9');
INSERT INTO `sys_role_permission` VALUES ('69e9e001a7b240ee86f575bf3514ab48', 'd9908d75b9ee4256805472f3c7e8349d', '557c1b7134024d4985a58aee24ffc35b');
INSERT INTO `sys_role_permission` VALUES ('6ede57927fe14d4794c28f7fc102f784', 'd9908d75b9ee4256805472f3c7e8349d', '73d7a6c7ff3e476e95a3bc8c2381406f');
INSERT INTO `sys_role_permission` VALUES ('73174c5848b740649d1816d5417559bc', 'd9908d75b9ee4256805472f3c7e8349d', '0edebf3ac9f34f6f8d078b19c459d5c4');
INSERT INTO `sys_role_permission` VALUES ('84ceefc9cb674a89b43851c569abf998', 'd9908d75b9ee4256805472f3c7e8349d', '0c731c8985524757ab6e2c447fd1a8f9');
INSERT INTO `sys_role_permission` VALUES ('871ef21de8e4428398ec9860dfd13fe7', 'd9908d75b9ee4256805472f3c7e8349d', '05b9b153a88e49b0b5581781e1c5837d');
INSERT INTO `sys_role_permission` VALUES ('9021093deaef47c9aecdc91c630f098d', 'd9908d75b9ee4256805472f3c7e8349d', 'cb8fa8dd917e4c71a696f753e4ed2bb8');
INSERT INTO `sys_role_permission` VALUES ('9fec243df77847c595f46a8aa1a735fc', '1648121042d441f8a85a0231fb747454', 'f517b99e15be4fa8924ea0c1a06c1762');
INSERT INTO `sys_role_permission` VALUES ('a80613d301b34fb78a97fd905a6346af', 'd9908d75b9ee4256805472f3c7e8349d', 'f517b99e15be4fa8924ea0c1a06c1762');
INSERT INTO `sys_role_permission` VALUES ('a8a152fceec94155ac242291c43befdb', 'd9908d75b9ee4256805472f3c7e8349d', '68aa741768154727b252c8c91b743c2c');
INSERT INTO `sys_role_permission` VALUES ('aa8f533134b14f469d65c8d39fd50a43', 'd9908d75b9ee4256805472f3c7e8349d', '11c3ace4dbd84ba08946bf937ff1a106');
INSERT INTO `sys_role_permission` VALUES ('abd128995b534b3780c42b678a04a508', '1648121042d441f8a85a0231fb747454', '857997d93b81419b9508a90e55c1e396');
INSERT INTO `sys_role_permission` VALUES ('cb8e078f29f7444b8762fea2abaa0c4a', 'd9908d75b9ee4256805472f3c7e8349d', '5506e49f126a4c07b80aa268987cc589');
INSERT INTO `sys_role_permission` VALUES ('d9d709d597dc479899c547a0809ff6c5', '1648121042d441f8a85a0231fb747454', '5506e49f126a4c07b80aa268987cc589');
INSERT INTO `sys_role_permission` VALUES ('dbfe357348914a6cbe3fd2c7268b5e3e', 'd9908d75b9ee4256805472f3c7e8349d', '461a7aba21f54244bcdc7e20e6ab9e1c');
INSERT INTO `sys_role_permission` VALUES ('dd6e552e6e4e4bf2b85d6f9ebdb5322d', 'd9908d75b9ee4256805472f3c7e8349d', '857997d93b81419b9508a90e55c1e396');
INSERT INTO `sys_role_permission` VALUES ('e29bfffc97c14f84878ace222ade316c', 'd9908d75b9ee4256805472f3c7e8349d', '3f0023392933443e88ca20eac5d20f37');
INSERT INTO `sys_role_permission` VALUES ('f7ece59054034bad98b68cc63caf59c7', 'd9908d75b9ee4256805472f3c7e8349d', 'bd8598cca795499eb6d9f3500d90d9c6');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(32) NOT NULL,
  `nickname` varchar(20) DEFAULT NULL COMMENT '用户昵称',
  `email` varchar(128) DEFAULT NULL COMMENT '邮箱|登录帐号',
  `pswd` varchar(32) DEFAULT NULL COMMENT '密码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `status` bigint(1) DEFAULT '1' COMMENT '1:有效，0:禁止登录',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('36cad314de0349cbbdc869ba1fe524d2', 'zhangsan', '123@qq.com', 'd477887b0636e5d87f79cc25c99d7dc9', '2018-01-04 16:36:20', '2018-01-04 22:00:07', '1');
INSERT INTO `sys_user` VALUES ('67808f6706344947b80ad47ae2cffe89', 'wangwu', '1241@qq.com', 'd477887b0636e5d87f79cc25c99d7dc9', '2018-01-04 21:43:31', '2018-01-05 14:52:19', '1');
INSERT INTO `sys_user` VALUES ('e6c835a78a134931861f07d5631a45e4', 'admin', 'admin@qq.com', '10a1b727c497d49a85bfff7351f1a4c4', '2018-01-04 21:57:51', '2018-01-04 21:58:06', '1');
INSERT INTO `sys_user` VALUES ('fbc1983550ca448e80f48dd1beaa8b01', 'adfa', 'adf@qq.com', 'd477887b0636e5d87f79cc25c99d7dc9', '2018-01-04 21:58:33', null, '1');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` varchar(32) NOT NULL,
  `uid` varchar(32) DEFAULT NULL COMMENT '用户ID',
  `rid` varchar(32) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('26c32064bb7c42ea92528f015472ad37', '2020c2e673914d658629d7929339e868', 'd9908d75b9ee4256805472f3c7e8349d');
INSERT INTO `sys_user_role` VALUES ('6189e602cf2e4008b02baa5ff7ac1e00', 'e6c835a78a134931861f07d5631a45e4', 'd9908d75b9ee4256805472f3c7e8349d');
INSERT INTO `sys_user_role` VALUES ('c9a6129d1a0a4e4382d7426d087878a1', '67808f6706344947b80ad47ae2cffe89', '1648121042d441f8a85a0231fb747454');
INSERT INTO `sys_user_role` VALUES ('cc7d771379bd406ab4fce46eafc7f038', 'fbc1983550ca448e80f48dd1beaa8b01', '1648121042d441f8a85a0231fb747454');
INSERT INTO `sys_user_role` VALUES ('e1d1a620ec044dc0820537aa6c74d05c', '36cad314de0349cbbdc869ba1fe524d2', '1648121042d441f8a85a0231fb747454');
SET FOREIGN_KEY_CHECKS=1;
