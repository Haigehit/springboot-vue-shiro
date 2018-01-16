/*
Navicat MySQL Data Transfer

Source Server         : 120.78.131.193
Source Server Version : 50637
Source Host           : 120.78.131.193:3306
Source Database       : shiro

Target Server Type    : MYSQL
Target Server Version : 50637
File Encoding         : 65001

Date: 2018-01-16 10:20:30
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
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `uid` varchar(32) DEFAULT NULL COMMENT '用户id',
  `loginTime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '登录时间',
  `loginIP` varchar(255) DEFAULT NULL COMMENT '登录ip',
  `loginTotal` int(11) DEFAULT NULL COMMENT '登录总次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------
INSERT INTO `sys_login_log` VALUES ('11fd79fbb53841968a3ecf5a8700bf0c', 'c19c039d1d044302849b00d107b1522d', '2018-01-15 22:20:36', '61.140.205.186', '6');
INSERT INTO `sys_login_log` VALUES ('12e5465968764004811e4859d7beb241', '2268a789b99b471992366e969e4b4284', '2018-01-13 10:58:08', '14.16.237.191', '1');
INSERT INTO `sys_login_log` VALUES ('265088997c914a7f96f470c9e0bd8343', '2401ead413d24cb3915af73cd46088e3', '2018-01-13 10:52:12', '14.16.237.191', '1');
INSERT INTO `sys_login_log` VALUES ('2a26e0f083bc4b94ada32e827226905f', 'e6c835a78a134931861f07d5631a45e4', '2018-01-13 11:01:47', '14.16.237.191', '2');
INSERT INTO `sys_login_log` VALUES ('30ac18ed55294e2da3f24ab0c45faf84', 'c19c039d1d044302849b00d107b1522d', '2018-01-14 20:30:50', '117.73.240.236', '4');
INSERT INTO `sys_login_log` VALUES ('5aab7777b10949c9b6035abd1a16d8ea', 'e6c835a78a134931861f07d5631a45e4', '2018-01-15 22:27:35', '61.140.205.186', '6');
INSERT INTO `sys_login_log` VALUES ('6222a38d4ab14e0ab222e9d9d72ff98d', 'd010ba82b93c4ea9917e94a5287dab2e', '2018-01-13 10:59:16', '14.16.237.191', '1');
INSERT INTO `sys_login_log` VALUES ('631d5c6aab584f96b90c10e39a12a6e7', 'e6c835a78a134931861f07d5631a45e4', '2018-01-15 22:27:01', '61.140.205.186', '5');
INSERT INTO `sys_login_log` VALUES ('757aea3677c04f6ab63b90ce8dacd206', 'd010ba82b93c4ea9917e94a5287dab2e', '2018-01-14 09:38:41', '14.24.29.87', '2');
INSERT INTO `sys_login_log` VALUES ('7a7a2d02e5234228ab644580acfebff8', 'e6c835a78a134931861f07d5631a45e4', '2018-01-14 09:37:52', '14.24.29.87', '4');
INSERT INTO `sys_login_log` VALUES ('8b5bd3b7b7b04c8b9b14ffba87eab724', 'c19c039d1d044302849b00d107b1522d', '2018-01-15 22:22:15', '61.140.205.186', '7');
INSERT INTO `sys_login_log` VALUES ('95e49d542dfe4f16adffd34f4c1071e1', 'c19c039d1d044302849b00d107b1522d', '2018-01-14 09:37:38', '14.24.29.87', '3');
INSERT INTO `sys_login_log` VALUES ('9a03c5e1570c4a20aece29a8f91e9a0f', 'c19c039d1d044302849b00d107b1522d', '2018-01-15 11:41:54', '61.140.205.186', '5');
INSERT INTO `sys_login_log` VALUES ('a13b5f5efc8743bd8ab692bfccd81d63', 'c19c039d1d044302849b00d107b1522d', '2018-01-13 14:42:23', '61.140.185.153', '2');
INSERT INTO `sys_login_log` VALUES ('b9d22952426142e3a1a1651fb5121260', '36cad314de0349cbbdc869ba1fe524d2', '2018-01-13 11:00:18', '14.16.237.191', '1');
INSERT INTO `sys_login_log` VALUES ('bcb384a98458453887d766adf163e6e5', 'e6c835a78a134931861f07d5631a45e4', '2018-01-13 10:46:45', '14.16.237.191', '1');
INSERT INTO `sys_login_log` VALUES ('c69da2f47130427eba207dfe5525f996', 'b1d35db370254cce944b0af6bc82294b', '2018-01-13 10:59:50', '14.16.237.191', '2');
INSERT INTO `sys_login_log` VALUES ('d949183cd6344dbaac887b0f877da7dc', 'c19c039d1d044302849b00d107b1522d', '2018-01-13 10:57:34', '14.16.237.191', '1');
INSERT INTO `sys_login_log` VALUES ('e7d8f71bca904b3b87e652ee53251749', 'b1d35db370254cce944b0af6bc82294b', '2018-01-13 10:49:19', '14.16.237.191', '1');
INSERT INTO `sys_login_log` VALUES ('eef85809812c492fb501db873e9628c8', 'e6c835a78a134931861f07d5631a45e4', '2018-01-13 16:21:43', '61.140.185.153', '3');

-- ----------------------------
-- Table structure for sys_operating_record
-- ----------------------------
DROP TABLE IF EXISTS `sys_operating_record`;
CREATE TABLE `sys_operating_record` (
  `id` varchar(255) NOT NULL,
  `requestUrl` varchar(255) DEFAULT NULL COMMENT '请求的url',
  `remoteAddr` varchar(255) DEFAULT NULL COMMENT '远程的ip地址',
  `params` varchar(255) DEFAULT NULL COMMENT '请求参数',
  `method` varchar(255) DEFAULT NULL COMMENT '请示方式',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` varchar(32) DEFAULT NULL COMMENT '用户id',
  `flag` varchar(255) DEFAULT NULL COMMENT '标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_operating_record
-- ----------------------------
INSERT INTO `sys_operating_record` VALUES ('00c5377155eb4cd395473827d431b9b9', '/UserApi/v1/findUserByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 11:41:55', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('00e5ab60c7cb45f3910fd258eea9dfef', '/SysApi/v1/findUserReqTotal', '61.140.205.186', '[]', 'GET', '2018-01-15 22:26:25', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('01c2a3c7790d4325876c4b4a84883848', '/SysApi/v1/findUserLoginLogByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 11:02:14', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('0331b167b7954cf098d51c98b6a0c65d', '/SysApi/v1/findOperatingRecordByPage', '14.24.29.87', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-14 10:04:34', 'd010ba82b93c4ea9917e94a5287dab2e', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('03963e3f841546dc907e09f7171deb83', '/UserApi/v1/editUserStatus', '61.140.205.186', '[ParamsDto{id=\'c19c039d1d044302849b00d107b1522d\', ids=null, type=0, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'POST', '2018-01-15 22:24:11', 'c19c039d1d044302849b00d107b1522d', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('0514e3645d6543bca2b2de3d715c4454', '/SysApi/v1/findUserReqTotal', '14.24.29.87', '[]', 'GET', '2018-01-14 09:38:17', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('0734fcf8021e43caa4e15f00a0b1b3c5', '/PermisApi/v1/delPermis', '14.16.237.191', '[ParamsDto{id=\'null\', ids=[0edebf3ac9f34f6f8d078b19c459d5c4], type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'POST', '2018-01-13 11:04:46', '36cad314de0349cbbdc869ba1fe524d2', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('075f6c65bbbe4cd5932269b0e2eecbd2', '/SysApi/v1/findAttributesByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:57:46', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('0939626454944401a35e7410ba9f1b34', '/SysApi/v1/findOperatingRecordByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:49:48', 'b1d35db370254cce944b0af6bc82294b', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('096aa76c24284aad86d1052b2791d420', '/shiro/RoleApi/v1/findRoleByPage', '14.16.237.191', null, 'GET', '2018-01-13 10:59:22', 'd010ba82b93c4ea9917e94a5287dab2e', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('09b6beced40e4d74998949e58c5c4ce7', '/RoleApi/v1/findAllRoles', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@5a695117, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 10:59:35', 'd010ba82b93c4ea9917e94a5287dab2e', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('09bc089b466149a1b9c245ee169b6094', '/SysApi/v1/findAttributeDetailByAttrId', '14.16.237.191', '[ParamsDto{id=\'d73d7a9c471f4aba884e79152cb1ace0\', ids=null, type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'GET', '2018-01-13 10:58:13', '2268a789b99b471992366e969e4b4284', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('0b0464fd1fa349d1895d88137d955925', '/shiro/UserApi/v1/editUserStatus', '61.140.205.186', null, 'POST', '2018-01-15 22:24:04', 'c19c039d1d044302849b00d107b1522d', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('0b79cb384a924ca3b8bbc5dbdc0c8ab0', '/SysApi/v1/findAttributesByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:58:17', '2268a789b99b471992366e969e4b4284', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('0dd92c04a3f743519e6edb2d326258b5', '/SysApi/v1/findUserReqTotal', '61.140.205.186', '[]', 'GET', '2018-01-15 22:26:49', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('0e39981fdcaf4815bdf1f47a0d73ad04', '/SysApi/v1/findOperatingRecordByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:51:30', 'b1d35db370254cce944b0af6bc82294b', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('0e7587b42afd407f8080eac193059b63', '/RoleApi/v1/findRoleByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:22:25', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('0ec2f12aab7041eaa981cb3a1f31689f', '/PermisApi/v1/findBasePermission', '61.140.205.186', '[]', 'GET', '2018-01-15 22:23:34', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('0f024d242337424981df39355eb12c2c', '/shiro/RoleApi/v1/addRolesPermis', '61.140.205.186', null, 'POST', '2018-01-15 22:23:45', 'c19c039d1d044302849b00d107b1522d', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('1029046687054093a3f5b65c0038eec4', '/shiro/UserApi/v1/editUserStatus', '61.140.205.186', null, 'POST', '2018-01-15 22:24:11', 'c19c039d1d044302849b00d107b1522d', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('10d1093989e8400aa50bff8dd02778bf', '/RoleApi/v1/findAllRoles', '14.24.29.87', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@75271c9, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-14 09:38:43', 'd010ba82b93c4ea9917e94a5287dab2e', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('11bc9bfd61c64a6ba1e1107e8bc5e8e6', '/SysApi/v1/findAttributesByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 11:02:06', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('131df45cff9c47c398ecded74626e1b0', '/SysApi/v1/findOperatingRecordByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:48:57', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('138e759093524aea8dc1fdbcb67d539d', '/PermisApi/v1/findPermissionByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:49:33', 'b1d35db370254cce944b0af6bc82294b', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('13dbf4c4adef405894a317acb3a21ad0', '/SysApi/v1/findUserReqTotal', '14.16.237.191', '[]', 'GET', '2018-01-13 10:59:26', 'd010ba82b93c4ea9917e94a5287dab2e', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('162d686989d44f2cbe16700f43857350', '/SysApi/v1/findAttributeDetailByAttrId', '61.140.205.186', '[ParamsDto{id=\'d73d7a9c471f4aba884e79152cb1ace0\', ids=null, type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'GET', '2018-01-15 22:22:25', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('16cff663fb1a4da48e249a0beed042d4', '/shiro/SysApi/v1/findUserLoginTotal', '14.16.237.191', null, 'GET', '2018-01-13 10:49:55', 'b1d35db370254cce944b0af6bc82294b', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('177a8e9d95b948dc90e04fc70517e3e8', '/RoleApi/v1/findAllRoles', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@3b8551d7, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 10:46:46', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('179e0a7265cc4a3785cff7fa8ad21106', '/RoleApi/v1/findAllRoles', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@5a48ab85, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 11:01:48', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('17c9e23f797f4d94b4727dfeefa84736', '/PermisApi/v1/findPermissionByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:22:26', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('194d0886710643aab38a5fbadd480ee4', '/RoleApi/v1/findRoleByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 11:02:42', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('19b271b70aa1491a9c4188ceae509eb5', '/RoleApi/v1/findRoleByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:22:24', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('1a631489fc1440ada905e856bda6b098', '/shiro/RoleApi/v1/findRoleByPage', '14.16.237.191', null, 'GET', '2018-01-13 10:51:23', 'b1d35db370254cce944b0af6bc82294b', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('1bcc3f324798485aa6acd102f3e83626', '/SysApi/v1/findUserLoginTotal', '61.140.205.186', '[]', 'GET', '2018-01-15 22:26:49', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('1c37af3bdd0346c9972004129942f51d', '/SysApi/v1/findUserReqTotal', '14.24.29.87', '[]', 'GET', '2018-01-14 09:38:12', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('1ee41e46d7c246c0b1679b35d2437980', '/PermisApi/v1/findPermissionByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:49:37', 'b1d35db370254cce944b0af6bc82294b', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('1f3a706418e84bf8a31121c21aed43ae', '/shiro/RoleApi/v1/findRoleByPage', '14.16.237.191', null, 'GET', '2018-01-13 10:59:32', 'd010ba82b93c4ea9917e94a5287dab2e', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('1f9b7b294e7c4feb9d82de1b01909533', '/shiro/LoginApi/v1/login', '61.140.205.186', null, 'POST', '2018-01-15 22:18:00', null, '请求出错');
INSERT INTO `sys_operating_record` VALUES ('204b994bfa8f43f9a3626dc1da22b3ff', '/UserApi/v1/uploadHander', '61.140.205.186', '[org.springframework.web.multipart.support.StandardMultipartHttpServletRequest@6cd90141]', 'POST', '2018-01-15 22:21:17', null, '授权通过');
INSERT INTO `sys_operating_record` VALUES ('20a6d929e3d74cffa358a93e3ebd1c7c', '/SysApi/v1/findUserLoginTotal', '14.16.237.191', '[]', 'GET', '2018-01-13 10:59:54', 'b1d35db370254cce944b0af6bc82294b', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('20b7c3f7e6ef4edbb3e67b4b6444d27d', '/shiro/SysApi/v1/addAttributes', '14.16.237.191', null, 'POST', '2018-01-13 10:52:55', '2401ead413d24cb3915af73cd46088e3', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('20e8b489f6b54afe8405efad27fbb221', '/LoginApi/v1/login', '14.16.237.191', '[Kelly, dc483e80a7a0bd9ef71d8cf973673924, org.apache.catalina.session.StandardSessionFacade@30e6fd76, org.apache.shiro.web.servlet.ShiroHttpServletRequest@7453a29e]', 'POST', '2018-01-13 10:59:50', 'd010ba82b93c4ea9917e94a5287dab2e', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('210557ea879e4eecb9bd5be7361c8b29', '/RoleApi/v1/findAllRoles', '61.140.205.186', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@217eb977, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-15 22:22:15', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('2208b40637cd4448b8b4612f1f5fcf38', '/RoleApi/v1/findRoleByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:59:32', 'd010ba82b93c4ea9917e94a5287dab2e', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('22366412f5d4424ba53f2d7a289ac7e9', '/SysApi/v1/findAttributesDetailByPage', '14.16.237.191', '[ParamsDto{id=\'d73d7a9c471f4aba884e79152cb1ace0\', ids=null, type=null, status=null, keyword=\'null\', startPage=1, pageSize=5}]', 'GET', '2018-01-13 10:52:57', '2401ead413d24cb3915af73cd46088e3', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('2238c4476f754995a00980daa59e912d', '/RoleApi/v1/findAllRoles', '61.140.205.186', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@2d59e1e6, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-15 22:20:37', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('24fd148ec59c4293bdd284a898d260c5', '/SysApi/v1/findOperatingRecordByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:59:30', 'd010ba82b93c4ea9917e94a5287dab2e', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('25bd72966ac0405dab6cf7cdbcc277c2', '/shiro/SysApi/v1/findUserLoginLogByPage', '14.16.237.191', null, 'GET', '2018-01-13 10:49:58', 'b1d35db370254cce944b0af6bc82294b', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('276a7f01ec424d77bdc38d22cd25aac9', '/RoleApi/v1/findAllRoles', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@2186a90f, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 10:49:09', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('27b5f14752cd47eba0e8de63d7fbd3af', '/RoleApi/v1/findAllRoles', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@2186a90f, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 10:49:09', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('286559b69cf44d07b2a1cef45a13f3fb', '/SysApi/v1/addAttributes', '14.16.237.191', '[Attribute{id=null, name=test}, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'POST', '2018-01-13 10:52:55', '2401ead413d24cb3915af73cd46088e3', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('28f7d0fcaae54c27a30ca8a96bc447aa', '/UserApi/v1/findUserByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:20:36', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('2928a0f4333546fdb46bd0dc8175aaac', '/UserApi/v1/findUserByPage', '61.140.185.153', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 16:21:44', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('29603537f3fb43a3a5542eedb3f0d74f', '/LoginApi/v1/login', '14.24.29.87', '[Salad, dc483e80a7a0bd9ef71d8cf973673924, org.apache.catalina.session.StandardSessionFacade@6d8f52c1, org.apache.shiro.web.servlet.ShiroHttpServletRequest@101468c8]', 'POST', '2018-01-14 09:37:38', null, '授权通过');
INSERT INTO `sys_operating_record` VALUES ('2998ecb1065b4a69b66ab201d8831af9', '/SysApi/v1/findUserLoginTotal', '14.16.237.191', '[]', 'GET', '2018-01-13 10:59:26', 'd010ba82b93c4ea9917e94a5287dab2e', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('2b78c5c06b114d5e9e42a4a8136bfea1', '/SysApi/v1/findUserLoginLogByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:59:27', 'd010ba82b93c4ea9917e94a5287dab2e', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('2bd4524c71b4475581feb101c2a03996', '/RoleApi/v1/findAllRoles', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@ced22df, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 10:59:16', 'd010ba82b93c4ea9917e94a5287dab2e', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('2d9c49c247f84802aa21324e95161ebc', '/SysApi/v1/findUserReqTotal', '14.16.237.191', '[]', 'GET', '2018-01-13 10:48:58', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('2e7018feab91490bbc802f43f1d13d8a', '/LoginApi/v1/login', '14.16.237.191', '[admin, af9954a6d6ba0c2337fe8b7637e4e9b5, org.apache.catalina.session.StandardSessionFacade@4086e4c4, org.apache.shiro.web.servlet.ShiroHttpServletRequest@13ea5960]', 'POST', '2018-01-13 11:01:08', null, '授权通过');
INSERT INTO `sys_operating_record` VALUES ('2f6017d5441448b0a14b27666b0fe5dd', '/UserApi/v1/findUserByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:24:04', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('2f70e94b834b49da8ebd6ba0d3314cc3', '/SysApi/v1/findAttributesByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:52:20', '2401ead413d24cb3915af73cd46088e3', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('2f7132601b70478982ec831f81e3cee0', '/PermisApi/v1/findBasePermission', '14.16.237.191', '[]', 'GET', '2018-01-13 11:04:15', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('3015b06c9c8e478aa2c59b37d4635112', '/SysApi/v1/findAttributesByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:49:44', 'b1d35db370254cce944b0af6bc82294b', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('31308076fd104b1390ef7084268f2ea4', '/PermisApi/v1/findPermissionByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:52:21', '2401ead413d24cb3915af73cd46088e3', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('32330be87b2d4e9eabeeb99291269c6e', '/RoleApi/v1/findAllRoles', '61.140.205.186', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@8c66eec, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-15 22:23:56', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('32b6521c624a469389b9c3cfe852c93d', '/SysApi/v1/findAttributesByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:52:24', '2401ead413d24cb3915af73cd46088e3', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('32fc5e10f2834703a6b22744ba126f19', '/SysApi/v1/findAttributeDetailByAttrId', '61.140.205.186', '[ParamsDto{id=\'d73d7a9c471f4aba884e79152cb1ace0\', ids=null, type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'GET', '2018-01-15 22:26:12', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('33fe1f81537e4955a04220f0d9642496', '/LoginApi/v1/login', '61.140.205.186', '[Salad, dc483e80a7a0bd9ef71d8cf973673924, org.apache.catalina.session.StandardSessionFacade@7c950b0a, org.apache.shiro.web.servlet.ShiroHttpServletRequest@2d95b337]', 'POST', '2018-01-15 22:22:15', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('342b5f2043ea408d97777011e99362ae', '/PermisApi/v1/findPermissionByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 11:02:03', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('3708dad753aa4cdfbbe3dce2d8334bea', '/SysApi/v1/findUserReqTotal', '14.16.237.191', '[]', 'GET', '2018-01-13 10:58:22', '2268a789b99b471992366e969e4b4284', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('37d8ba68cfb840ec8539fbafbaff757c', '/RoleApi/v1/findAllRoles', '14.24.29.87', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@75271c9, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-14 09:38:43', 'd010ba82b93c4ea9917e94a5287dab2e', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('385d68074c4d469d908ab0904e7cc36f', '/RoleApi/v1/findAllRoles', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@10cd8e56, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 11:00:18', '36cad314de0349cbbdc869ba1fe524d2', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('38618e74354a408d967a67d15060f0eb', '/SysApi/v1/findUserLoginLogByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:48:31', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('392694d0e894450e8f705cc3e643e2cb', '/SysApi/v1/findUserLoginTotal', '14.16.237.191', '[]', 'GET', '2018-01-13 10:58:24', '2268a789b99b471992366e969e4b4284', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('39c44b3aa9b44c95bfe9c5f92d400e91', '/PermisApi/v1/findPermissionByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:59:21', 'd010ba82b93c4ea9917e94a5287dab2e', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('3a015fd123204a3eb2d6eb7203282665', '/LoginApi/v1/login', '61.140.185.153', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@18f26d96, org.apache.shiro.web.servlet.ShiroHttpServletRequest@d2f8a7c]', 'POST', '2018-01-13 16:21:43', null, '授权通过');
INSERT INTO `sys_operating_record` VALUES ('3a2c38c571c74edb8350cf346b4b18b8', '/RoleApi/v1/addRolesPermis', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@132f9d8e, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'POST', '2018-01-13 11:04:10', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('3a61a81bc7704b2f90cf9d598693fe96', '/LoginApi/v1/login', '14.16.237.191', '[Salad, dc483e80a7a0bd9ef71d8cf973673924, org.apache.catalina.session.StandardSessionFacade@30e6fd76, org.apache.shiro.web.servlet.ShiroHttpServletRequest@4e9fea75]', 'POST', '2018-01-13 10:57:34', '2401ead413d24cb3915af73cd46088e3', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('3afa0e06b9ab44e5a37e4b330f37fdd9', '/shiro/UserApi/v1/editUserStatus', '61.140.205.186', null, 'POST', '2018-01-15 22:24:12', 'c19c039d1d044302849b00d107b1522d', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('3b7c06d3d6d440a8968315aef9008a8e', '/RoleApi/v1/findAllRoles', '61.140.185.153', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@552b206c, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 16:21:44', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('3b872453982846a38c610545b50b47b9', '/RoleApi/v1/findAllRoles', '61.140.205.186', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@527f7043, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-15 22:27:36', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('3c44b94834204f248cf7d843fd2495cd', '/UserApi/v1/findUserByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:59:35', 'd010ba82b93c4ea9917e94a5287dab2e', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('3cadb44398a949ba8def774979d48c76', '/UserApi/v1/findUserByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:49:09', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('3cafb03790494dfdb9090eaea89e4840', '/RoleApi/v1/findAllRoles', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@1446f1d, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 10:59:50', 'b1d35db370254cce944b0af6bc82294b', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('3f8a77a6ca954a7fb756c4e2820678e7', '/SysApi/v1/findUserLoginLogByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:59:54', 'b1d35db370254cce944b0af6bc82294b', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('42419498f2824707a5f5f967b559b478', '/SysApi/v1/findUserLoginTotal', '14.16.237.191', '[]', 'GET', '2018-01-13 10:52:29', '2401ead413d24cb3915af73cd46088e3', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('42ce73c3115641df844f169685b6ea44', '/RoleApi/v1/findAllRoles', '14.24.29.87', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@505ef1b8, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-14 09:37:39', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('43e80a2d2bfc41be9bba7ab139682d0b', '/shiro/SysApi/v1/findUserLoginLogByPage', '14.16.237.191', null, 'GET', '2018-01-13 10:58:20', '2268a789b99b471992366e969e4b4284', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('43f8453c635a4436bed5cae18acc969f', '/SysApi/v1/findOperatingRecordByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:52:26', '2401ead413d24cb3915af73cd46088e3', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('444a0a7fc9644c1eb00fef7e3848769f', '/SysApi/v1/findUserLoginLogByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:26:37', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('44efe8c8be4a4c37b2bd0aeebc60a643', '/RoleApi/v1/findRoleByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:49:06', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('4549edd277f74a119d04e3531a557287', '/shiro/SysApi/v1/findUserLoginTotal', '14.16.237.191', null, 'GET', '2018-01-13 10:52:29', '2401ead413d24cb3915af73cd46088e3', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('458ad41af6c245b2ad5093415be48edd', '/PermisApi/v1/findPermissionByPage', '117.73.240.236', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-14 20:30:54', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('45b8524d9e104cd9b0c4811cd6f1e7d9', '/LoginApi/v1/login', '14.24.29.87', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@6d8f52c1, org.apache.shiro.web.servlet.ShiroHttpServletRequest@7cc38902]', 'POST', '2018-01-14 09:37:52', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('49308983b4d34d59ae5a499a9a9b9e49', '/PermisApi/v1/findPermissionByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:53:02', '2401ead413d24cb3915af73cd46088e3', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('4a78f66f61d244e3ad2be0d9a3986bb8', '/UserApi/v1/findUserByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:46:46', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('4c11fb6f9bba4bedb889d38311cc6524', '/SysApi/v1/findUserReqTotal', '61.140.205.186', '[]', 'GET', '2018-01-15 22:26:36', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('4cc58cc52b7f4ce889c4b6e9fe9f98a6', '/shiro/SysApi/v1/findUserLoginLogByPage', '14.16.237.191', null, 'GET', '2018-01-13 10:52:48', '2401ead413d24cb3915af73cd46088e3', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('4cfe94acf78247c89cf7bc2f2b10d248', '/LoginApi/v1/login', '61.140.205.186', '[Salad, dc483e80a7a0bd9ef71d8cf973673924, org.apache.catalina.session.StandardSessionFacade@58a34411, org.apache.shiro.web.servlet.ShiroHttpServletRequest@1bd8f0b2]', 'POST', '2018-01-15 22:17:59', null, '授权通过');
INSERT INTO `sys_operating_record` VALUES ('4d21def19be04a9f81ebf70fefd9c45f', '/SysApi/v1/findUserLoginTotal', '14.24.29.87', '[]', 'GET', '2018-01-14 09:38:17', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('4d691b7b75684fe88736c5b297e6a21a', '/RoleApi/v1/findAllRoles', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@3b8551d7, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 10:46:46', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('4da5bbd54f5344d2b079296e9794de19', '/SysApi/v1/findUserLoginTotal', '61.140.205.186', '[]', 'GET', '2018-01-15 22:26:25', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('4db92cf6f8294d139a59f2b9359511c0', '/UserApi/v1/findUserByPage', '117.73.240.236', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-14 20:30:50', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('4eca089dd44c4d448622c93cc31fde39', '/RoleApi/v1/findAllRoles', '14.24.29.87', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@770ffd0d, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-14 09:37:52', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('4fa5b8eafaac4ebf9efe7b3fb9ebe0ab', '/PermisApi/v1/findPermissionByPage', '117.73.240.236', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-14 20:31:11', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('4fcd5bf2908a440ba64035d232c4f488', '/SysApi/v1/findOperatingRecordByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:26:44', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('50d3368e664447bfa62461ef7557079c', '/SysApi/v1/findUserReqTotal', '14.16.237.191', '[]', 'GET', '2018-01-13 10:59:28', 'd010ba82b93c4ea9917e94a5287dab2e', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('52edca1936be4e208d256ae798f53787', '/RoleApi/v1/addRolesPermis', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@132f9d8e, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'POST', '2018-01-13 11:04:10', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('548bf9f024794021b99cdaee777a48fd', '/SysApi/v1/findUserLoginLogByPage', '61.140.185.153', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 16:22:04', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('549636985a89492590727b4863f3f645', '/SysApi/v1/findOperatingRecordByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:26:34', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('54ea3cabb7b7415492af286e6b859051', '/SysApi/v1/findUserReqTotal', '14.16.237.191', '[]', 'GET', '2018-01-13 10:49:55', 'b1d35db370254cce944b0af6bc82294b', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('5628fe04c92343318d711bc9463a8b03', '/SysApi/v1/findUserLoginTotal', '14.24.29.87', '[]', 'GET', '2018-01-14 09:38:12', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('56dced6cd4114c1eb0bda27995c38641', '/RoleApi/v1/findAllRoles', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@10cd8e56, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 11:00:18', '36cad314de0349cbbdc869ba1fe524d2', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('56e44568cf4a4cc4a8b6e9ff473a77bb', '/RoleApi/v1/addRolesPermis', '61.140.205.186', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@5b0c9428, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'POST', '2018-01-15 22:23:45', 'c19c039d1d044302849b00d107b1522d', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('5746ac94c6dd49b5aee6084f1068a6eb', '/LoginApi/v1/login', '14.16.237.191', '[Harry, dc483e80a7a0bd9ef71d8cf973673924, org.apache.catalina.session.StandardSessionFacade@30e6fd76, org.apache.shiro.web.servlet.ShiroHttpServletRequest@e16aeed]', 'POST', '2018-01-13 11:00:18', 'b1d35db370254cce944b0af6bc82294b', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('576e69ee12d74924b5bd026512ca2ae6', '/UserApi/v1/editUserInfo', '61.140.205.186', '[com.shiro.shirodemo.pojo.vo.UserInfoVo@5ce27466]', 'POST', '2018-01-15 22:27:18', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('57ed5ae49ec1481fbdb324d28d8ae589', '/RoleApi/v1/findAllRoles', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@ced22df, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 10:59:16', 'd010ba82b93c4ea9917e94a5287dab2e', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('58542668a3e640f4bc51e88c5fe0e19e', '/RoleApi/v1/findAllRoles', '117.73.240.236', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@329d16e4, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-14 20:30:50', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('58ebd8c8f558490ca11509c322758e6a', '/UserApi/v1/findUserByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:58:09', '2268a789b99b471992366e969e4b4284', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('58ef3cd47d6c4cafacae5a726bde3d9a', '/SysApi/v1/findOperatingRecordByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 11:02:08', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('5a13ce44e97742fa9f8926dc13861be5', '/RoleApi/v1/findAllRoles', '61.140.205.186', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@8c66eec, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-15 22:23:56', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('5b7c13e1e95b48788b4955369e737f43', '/SysApi/v1/findUserReqTotal', '117.73.240.236', '[]', 'GET', '2018-01-14 20:31:07', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('5b9719dd6c9847b681efdf9edab8863a', '/SysApi/v1/findAttributeDetailByAttrId', '14.16.237.191', '[ParamsDto{id=\'d73d7a9c471f4aba884e79152cb1ace0\', ids=null, type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'GET', '2018-01-13 10:49:04', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('5c334820dd3d4e8d92eb36cdd34f606f', '/LoginApi/v1/login', '61.140.205.186', '[Salad, dc483e80a7a0bd9ef71d8cf973673924, org.apache.catalina.session.StandardSessionFacade@7c950b0a, org.apache.shiro.web.servlet.ShiroHttpServletRequest@7252fae8]', 'POST', '2018-01-15 22:20:36', null, '授权通过');
INSERT INTO `sys_operating_record` VALUES ('5ddc52d2781a4648b3cb879aaaa0683e', '/SysApi/v1/findUserLoginTotal', '14.16.237.191', '[]', 'GET', '2018-01-13 10:59:28', 'd010ba82b93c4ea9917e94a5287dab2e', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('5edf71a632274c92b7ece7fa51ded1de', '/UserApi/v1/findUserByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:24:12', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('5f0f75379ac147d9aafa425e0f3739c4', '/RoleApi/v1/findAllRoles', '61.140.205.186', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@2d59e1e6, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-15 22:20:36', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('613e0f70be9e48c4b7596f6908db46f7', '/RoleApi/v1/findRoleByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:52:22', '2401ead413d24cb3915af73cd46088e3', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('6172c7a3fd92490b9aec4e7e8e2f6861', '/RoleApi/v1/findAllRoles', '61.140.185.153', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@9ce2d7f, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 14:42:25', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('6247a59f141d417fb525b6813958743b', '/SysApi/v1/findOperatingRecordByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 11:05:43', '36cad314de0349cbbdc869ba1fe524d2', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('62fc9477cf7c4cd7ad233e9eabf6ddcc', '/shiro/RoleApi/v1/findRoleByPage', '14.16.237.191', null, 'GET', '2018-01-13 10:52:22', '2401ead413d24cb3915af73cd46088e3', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('637bbe7753ee492787a8622ca0aa3101', '/RoleApi/v1/findAllRoles', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@5a695117, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 10:59:35', 'd010ba82b93c4ea9917e94a5287dab2e', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('63e5d02be7594aaea72002103f356bd6', '/SysApi/v1/findAttributesByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:59:23', 'd010ba82b93c4ea9917e94a5287dab2e', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('646904c748f4405fa3218e0d523b0729', '/shiro/SysApi/v1/findUserLoginLogByPage', '14.16.237.191', null, 'GET', '2018-01-13 10:59:25', 'd010ba82b93c4ea9917e94a5287dab2e', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('6652710c2bb24ffcb2a249aeeedb6ffa', '/shiro/SysApi/v1/findUserLoginTotal', '14.16.237.191', null, 'GET', '2018-01-13 10:57:50', 'c19c039d1d044302849b00d107b1522d', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('67f60a98090e4a2087628d78b06d3726', '/SysApi/v1/findUserLoginTotal', '14.24.29.87', '[]', 'GET', '2018-01-14 09:38:47', 'd010ba82b93c4ea9917e94a5287dab2e', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('68ad4a90f3fd4567bed6b62f323f671e', '/LoginApi/v1/login', '61.140.205.186', '[admin, dc483e80a7a0bd9ef71d8cf973673924, org.apache.catalina.session.StandardSessionFacade@7c950b0a, org.apache.shiro.web.servlet.ShiroHttpServletRequest@63d070d0]', 'POST', '2018-01-15 22:27:33', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('69385b591e6a4c6b86cdfc7aa72ec4b4', '/shiro/LoginApi/v1/login', '61.140.205.186', null, 'POST', '2018-01-15 22:27:33', 'e6c835a78a134931861f07d5631a45e4', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('69bc55b965c6459aa916353ed5842c28', '/SysApi/v1/findAttributeDetailByAttrId', '14.16.237.191', '[ParamsDto{id=\'d73d7a9c471f4aba884e79152cb1ace0\', ids=null, type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'GET', '2018-01-13 11:01:53', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('6a2e40a97cca423cbee6c6a2ead213aa', '/SysApi/v1/findOperatingRecordByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:59:54', 'b1d35db370254cce944b0af6bc82294b', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('6ab32766054742559f2af3ce88ec5fb4', '/RoleApi/v1/findRoleByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:26:13', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('6b6457af9e1641eca7dfcf12fa3af284', '/SysApi/v1/findOperatingRecordByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 11:04:53', '36cad314de0349cbbdc869ba1fe524d2', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('6c3fe815fef24a7bb6797bf143deddaf', '/PermisApi/v1/findBasePermission', '14.16.237.191', '[]', 'GET', '2018-01-13 11:02:45', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('6e5c7b892a834ce1bd43f30613726926', '/SysApi/v1/findUserLoginTotal', '61.140.185.153', '[]', 'GET', '2018-01-13 16:22:14', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('6f35cc8f1ee84820b97db784c57511ea', '/UserApi/v1/findUserByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 11:04:38', '36cad314de0349cbbdc869ba1fe524d2', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('7004dd900c414a3b9d4f321175e56800', '/SysApi/v1/findUserLoginLogByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 11:04:59', '36cad314de0349cbbdc869ba1fe524d2', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('707674c814ab4a98b53982a8cb90097c', '/SysApi/v1/findOperatingRecordByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:58:18', '2268a789b99b471992366e969e4b4284', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('707c389147c74b96af52bc36221fbc42', '/LoginApi/v1/login', '14.16.237.191', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@30e6fd76, org.apache.shiro.web.servlet.ShiroHttpServletRequest@46018df6]', 'POST', '2018-01-13 10:46:45', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('708a0f99c90b4bdd8ffeb147e102eb32', '/SysApi/v1/findUserReqTotal', '14.24.29.87', '[]', 'GET', '2018-01-14 09:38:47', 'd010ba82b93c4ea9917e94a5287dab2e', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('7117dd1103be43d2ae9c57ed59b461cb', '/SysApi/v1/findUserReqTotal', '14.16.237.191', '[]', 'GET', '2018-01-13 10:48:46', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('711f34a35bba4f84b04cb9a786c1321a', '/UserApi/v1/editUserStatus', '61.140.205.186', '[ParamsDto{id=\'c19c039d1d044302849b00d107b1522d\', ids=null, type=0, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'POST', '2018-01-15 22:24:04', 'c19c039d1d044302849b00d107b1522d', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('718c803fc4bd46ccb5c2bca5e4750e2e', '/RoleApi/v1/findAllRoles', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@7124b377, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 10:58:09', '2268a789b99b471992366e969e4b4284', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('72a1046a5ec3408b96753e20a400724f', '/shiro/LoginApi/v1/login', '14.16.237.191', null, 'POST', '2018-01-13 11:01:02', null, '请求出错');
INSERT INTO `sys_operating_record` VALUES ('732eee5f8e3d4167b8f550568c49ebf3', '/shiro/RoleApi/v1/findRoleByPage', '14.16.237.191', null, 'GET', '2018-01-13 10:58:14', '2268a789b99b471992366e969e4b4284', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('733e72d64b484872877b91afaa385e53', '/LoginApi/v1/login', '14.16.237.191', '[Kelly, dc483e80a7a0bd9ef71d8cf973673924, org.apache.catalina.session.StandardSessionFacade@30e6fd76, org.apache.shiro.web.servlet.ShiroHttpServletRequest@5b7e3345]', 'POST', '2018-01-13 10:49:19', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('73838884eb2442e29a6549747ca1cc77', '/shiro/SysApi/v1/findUserLoginLogByPage', '14.16.237.191', null, 'GET', '2018-01-13 10:52:28', '2401ead413d24cb3915af73cd46088e3', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('73c8d0f774e64c158cc15f0adb2b7249', '/SysApi/v1/findAttributeDetailByAttrId', '61.140.205.186', '[ParamsDto{id=\'d73d7a9c471f4aba884e79152cb1ace0\', ids=null, type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'GET', '2018-01-15 22:23:51', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('74d451db870142a6b8536c9ffcfcf24b', '/SysApi/v1/findUserLoginTotal', '14.16.237.191', '[]', 'GET', '2018-01-13 10:48:46', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('751a589374754f8182a051828b3417a7', '/SysApi/v1/findUserLoginLogByPage', '14.24.29.87', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-14 09:38:46', 'd010ba82b93c4ea9917e94a5287dab2e', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('753bae82a51c4c5c88f0ae89b673bd20', '/SysApi/v1/findUserLoginTotal', '14.16.237.191', '[]', 'GET', '2018-01-13 10:57:50', 'c19c039d1d044302849b00d107b1522d', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('755a79ee448b48479517e2aa9cd0c711', '/SysApi/v1/findUserLoginTotal', '117.73.240.236', '[]', 'GET', '2018-01-14 20:31:07', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('758ba69cb9ce41a6994b7f582c92e4bc', '/SysApi/v1/findAttributeDetailByAttrId', '14.16.237.191', '[ParamsDto{id=\'d73d7a9c471f4aba884e79152cb1ace0\', ids=null, type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'GET', '2018-01-13 11:02:03', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('75ceed21668b44a7a6f80dfb590a0658', '/LoginApi/v1/login', '14.16.237.191', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@4086e4c4, org.apache.shiro.web.servlet.ShiroHttpServletRequest@7a8e9b82]', 'POST', '2018-01-13 11:01:47', null, '授权通过');
INSERT INTO `sys_operating_record` VALUES ('765d1224aad945f7ac36f5cc9b4a5408', '/SysApi/v1/findOperatingRecordByPage', '117.73.240.236', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-14 20:31:03', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('76deb0952e1e4de784d5924f43df4b89', '/RoleApi/v1/findRoleByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 11:02:02', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('7728b7eff09e4c89a54bf651de23ea03', '/shiro/SysApi/v1/findUserLoginLogByPage', '14.16.237.191', null, 'GET', '2018-01-13 10:49:53', 'b1d35db370254cce944b0af6bc82294b', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('7786cd6c3c34403290a851d5f8ad9f6f', '/SysApi/v1/findAttributeDetailByAttrId', '14.16.237.191', '[ParamsDto{id=\'d73d7a9c471f4aba884e79152cb1ace0\', ids=null, type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'GET', '2018-01-13 10:59:32', 'd010ba82b93c4ea9917e94a5287dab2e', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('77d642cadaf24f00bc4c4aec51836b53', '/RoleApi/v1/findAllRoles', '61.140.185.153', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@552b206c, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 16:21:44', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('77f161bfd5894c34a0d98923d3554bb3', '/SysApi/v1/findUserLoginLogByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:49:58', 'b1d35db370254cce944b0af6bc82294b', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('78b4a5789c8e458fbf7d43ea7bcaa2be', '/SysApi/v1/findAttributeDetailByAttrId', '61.140.205.186', '[ParamsDto{id=\'d73d7a9c471f4aba884e79152cb1ace0\', ids=null, type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'GET', '2018-01-15 22:22:26', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('78c866f182d94425b5eeccd9f22dcd9e', '/PermisApi/v1/findBasePermission', '14.16.237.191', '[]', 'GET', '2018-01-13 11:02:52', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('78e85510326243bab896a70654676b01', '/RoleApi/v1/findAllRoles', '61.140.205.186', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@49ff1327, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-15 22:27:02', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('7948921489fd4e959ce2140d86302416', '/shiro/SysApi/v1/findUserLoginTotal', '14.16.237.191', null, 'GET', '2018-01-13 10:59:54', 'b1d35db370254cce944b0af6bc82294b', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('7bc53a24a505484e83dd7f48357779d7', '/LoginApi/v1/login', '61.140.185.153', '[Salad, dc483e80a7a0bd9ef71d8cf973673924, org.apache.catalina.session.StandardSessionFacade@3d993965, org.apache.shiro.web.servlet.ShiroHttpServletRequest@7a3297c7]', 'POST', '2018-01-13 14:42:23', null, '授权通过');
INSERT INTO `sys_operating_record` VALUES ('7bf802d34a10460b9435df183c9ed3fc', '/RoleApi/v1/findAllRoles', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@5a48ab85, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 11:01:48', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('7c7df75ad2c642e3ad6ae8599fc38760', '/SysApi/v1/findAttributesDetailByPage', '61.140.205.186', '[ParamsDto{id=\'d73d7a9c471f4aba884e79152cb1ace0\', ids=null, type=null, status=null, keyword=\'null\', startPage=1, pageSize=5}]', 'GET', '2018-01-15 22:26:19', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('7ebd792160034b07a8df6a0d434bc058', '/shiro/LoginApi/v1/login', '14.24.29.87', null, 'POST', '2018-01-14 09:37:48', 'c19c039d1d044302849b00d107b1522d', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('7ec04ca0c25a4be6ae7dec4b81f93704', '/RoleApi/v1/findRolesPermisByRole', '14.16.237.191', '[ParamsDto{id=\'1648121042d441f8a85a0231fb747454\', ids=null, type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'GET', '2018-01-13 11:04:21', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('7ec7a28bbdd8499dabf28f0db6323c9b', '/RoleApi/v1/findAllRoles', '61.140.185.153', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@9ce2d7f, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 14:42:25', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('7fbb26863c534cbd8404f1d651f920f0', '/PermisApi/v1/findPermissionByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 11:04:40', '36cad314de0349cbbdc869ba1fe524d2', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('7fcbb5825b0a434bb90538de5f13f8d5', '/SysApi/v1/findUserReqTotal', '14.16.237.191', '[]', 'GET', '2018-01-13 10:52:30', '2401ead413d24cb3915af73cd46088e3', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('804c4b4381d34a5981c993550af5c24e', '/RoleApi/v1/findAllRoles', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@6b8168c8, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 10:57:35', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('8194b19f848a42b4ba0c8e0c07818d61', '/LoginApi/v1/login', '14.24.29.87', '[Petty, af8f9dffa5d420fbc249141645b962ee, org.apache.catalina.session.StandardSessionFacade@6d8f52c1, org.apache.shiro.web.servlet.ShiroHttpServletRequest@3ac134c0]', 'POST', '2018-01-14 09:38:36', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('8221a7f5c2a4493093ba07d94740b475', '/UserApi/v1/editUserInfo', '61.140.205.186', '[com.shiro.shirodemo.pojo.vo.UserInfoVo@2f3ca448]', 'POST', '2018-01-15 22:22:08', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('84c248643d104cb88523ebe29902c486', '/SysApi/v1/findUserLoginTotal', '14.16.237.191', '[]', 'GET', '2018-01-13 10:48:58', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('84d483adbee84b13a15a41ab137548c9', '/RoleApi/v1/findRoleByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:58:14', '2268a789b99b471992366e969e4b4284', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('858b60cf35f64d51918476fa2c8d1857', '/shiro/LoginApi/v1/login', '61.140.205.186', null, 'POST', '2018-01-15 22:27:00', 'c19c039d1d044302849b00d107b1522d', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('86baaa910ca04333936c8b284319740f', '/UserApi/v1/findUserByPage', '61.140.185.153', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 14:42:26', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('87620c2f78a649c7a1ef46906529ecae', '/SysApi/v1/findUserLoginLogByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:48:59', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('89ce51bad2fe4cb69d42acad501bb493', '/shiro/LoginApi/v1/login', '14.16.237.191', null, 'POST', '2018-01-13 11:01:08', null, '请求出错');
INSERT INTO `sys_operating_record` VALUES ('8b0d04f528a246e38cc0683c79b25a10', '/RoleApi/v1/findRoleByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:22:31', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('8c17a6a343e5462196fbe804dae97cf2', '/RoleApi/v1/findAllRoles', '61.140.205.186', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@217eb977, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-15 22:22:15', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('8c42b0d7c72e4529a46b9cd023548354', '/UserApi/v1/uploadHander', '61.140.205.186', '[org.springframework.web.multipart.support.StandardMultipartHttpServletRequest@17414274]', 'POST', '2018-01-15 22:27:16', null, '授权通过');
INSERT INTO `sys_operating_record` VALUES ('8c8d4ce842be4035bb6db576600e17f2', '/LoginApi/v1/login', '14.24.29.87', '[admin, dc483e80a7a0bd9ef71d8cf973673924, org.apache.catalina.session.StandardSessionFacade@6d8f52c1, org.apache.shiro.web.servlet.ShiroHttpServletRequest@4dce1b31]', 'POST', '2018-01-14 09:37:48', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('8d1c4f81de1e41a3bfe94201b8d0c4ef', '/SysApi/v1/findUserReqTotal', '14.16.237.191', '[]', 'GET', '2018-01-13 10:57:50', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('8e09c07cf2e645018ce638b0f9977df1', '/LoginApi/v1/login', '14.16.237.191', '[admin, af9954a6d6ba0c2337fe8b7637e4e9b5, org.apache.catalina.session.StandardSessionFacade@4086e4c4, org.apache.shiro.web.servlet.ShiroHttpServletRequest@618eaa6a]', 'POST', '2018-01-13 11:01:39', null, '授权通过');
INSERT INTO `sys_operating_record` VALUES ('8ea08e2a6da74c24a8a224366a029a4f', '/SysApi/v1/findAttributeDetailByAttrId', '14.16.237.191', '[ParamsDto{id=\'d73d7a9c471f4aba884e79152cb1ace0\', ids=null, type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'GET', '2018-01-13 10:52:17', '2401ead413d24cb3915af73cd46088e3', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('922484a740184e3fbd070721801844c8', '/RoleApi/v1/findAllRoles', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@7dd516a, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 10:52:13', '2401ead413d24cb3915af73cd46088e3', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('9239cfd1e64d43178b0742edfd313761', '/SysApi/v1/findAttributesByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:26:15', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('92da50620f384548bded05a92756cbbb', '/SysApi/v1/findAttributeDetailByAttrId', '61.140.205.186', '[ParamsDto{id=\'d73d7a9c471f4aba884e79152cb1ace0\', ids=null, type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'GET', '2018-01-15 22:23:54', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('930f8b583a404174b5e95964d535532c', '/PermisApi/v1/findPermissionByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:59:32', 'd010ba82b93c4ea9917e94a5287dab2e', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('93119e709d3e4c2da1f676f218d19bd5', '/UserApi/v1/findUserByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:22:15', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('9353c480caff46e48db1423dd04e27d4', '/SysApi/v1/findUserReqTotal', '61.140.185.153', '[]', 'GET', '2018-01-13 16:22:14', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('93ffd36dab4a47f1ad88d37217446dbb', '/RoleApi/v1/findRolesPermisByRole', '14.16.237.191', '[ParamsDto{id=\'d9908d75b9ee4256805472f3c7e8349d\', ids=null, type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'GET', '2018-01-13 11:02:46', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('940587dbc0964d2295b48aaa86e87374', '/SysApi/v1/findUserReqTotal', '14.16.237.191', '[]', 'GET', '2018-01-13 10:59:54', 'b1d35db370254cce944b0af6bc82294b', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('955ca6fe89374042a48d39461a347399', '/LoginApi/v1/login', '14.16.237.191', '[Petty, dc483e80a7a0bd9ef71d8cf973673924, org.apache.catalina.session.StandardSessionFacade@30e6fd76, org.apache.shiro.web.servlet.ShiroHttpServletRequest@1cff9bc0]', 'POST', '2018-01-13 10:59:15', '2268a789b99b471992366e969e4b4284', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('95f7badea89b4e0785fba248cab196a7', '/UserApi/v1/editUserStatus', '61.140.205.186', '[ParamsDto{id=\'c19c039d1d044302849b00d107b1522d\', ids=null, type=0, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'POST', '2018-01-15 22:24:12', 'c19c039d1d044302849b00d107b1522d', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('970a1ac3723a4a938aa596166a67321f', '/RoleApi/v1/findAllRoles', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@61705965, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 10:49:20', 'b1d35db370254cce944b0af6bc82294b', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('972d861aca0749c8ae45eb7db09849ea', '/SysApi/v1/findUserLoginLogByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:49:53', 'b1d35db370254cce944b0af6bc82294b', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('988c36c1cdc14ff4bdf2166b193e5584', '/SysApi/v1/findAttributesByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:49:02', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('98b360b804cd429f84f772d5dae1dffe', '/RoleApi/v1/findRoleByPage', '117.73.240.236', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-14 20:30:56', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('99cd2c5858fc4dee9bde1990d22187dc', '/LoginApi/v1/login', '117.73.240.236', '[Salad, dc483e80a7a0bd9ef71d8cf973673924, org.apache.catalina.session.StandardSessionFacade@3a2b6ed7, org.apache.shiro.web.servlet.ShiroHttpServletRequest@26b5655c]', 'POST', '2018-01-14 20:30:49', null, '授权通过');
INSERT INTO `sys_operating_record` VALUES ('9b7abe2ea842464397915e0000168b96', '/SysApi/v1/findOperatingRecordByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:26:37', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('9cc44c3b3aa54eb09bba4f97fce32d76', '/SysApi/v1/findUserLoginTotal', '14.16.237.191', '[]', 'GET', '2018-01-13 11:05:02', '36cad314de0349cbbdc869ba1fe524d2', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('9cde1409332e4a17969c32da89c848d2', '/SysApi/v1/findAttributeDetailByAttrId', '117.73.240.236', '[ParamsDto{id=\'d73d7a9c471f4aba884e79152cb1ace0\', ids=null, type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'GET', '2018-01-14 20:30:54', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('9d7252da0a854bbb979167cd02831930', '/RoleApi/v1/findRoleByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:51:23', 'b1d35db370254cce944b0af6bc82294b', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('9e555faabf054c0bbac23d4db97f5f16', '/SysApi/v1/findUserLoginTotal', '61.140.205.186', '[]', 'GET', '2018-01-15 22:26:36', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('9e71de8a8cb94720831f12ce6f2c4c66', '/SysApi/v1/findAttributeDetailByAttrId', '14.16.237.191', '[ParamsDto{id=\'d73d7a9c471f4aba884e79152cb1ace0\', ids=null, type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'GET', '2018-01-13 10:53:02', '2401ead413d24cb3915af73cd46088e3', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('a0799b52e67b478db6dc4c2b9c37f59a', '/RoleApi/v1/findRoleByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:59:22', 'd010ba82b93c4ea9917e94a5287dab2e', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('a08f02ec57ef450382e4de659bcd36df', '/shiro/PermisApi/v1/delPermis', '14.16.237.191', null, 'POST', '2018-01-13 11:04:46', '36cad314de0349cbbdc869ba1fe524d2', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('a1051528893843f6bbdfe5326c4783da', '/SysApi/v1/findOperatingRecordByPage', '61.140.185.153', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 16:21:55', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('a3e1ffed40ae446c9e4241b689606429', '/SysApi/v1/findAttributeDetailByAttrId', '14.16.237.191', '[ParamsDto{id=\'d73d7a9c471f4aba884e79152cb1ace0\', ids=null, type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'GET', '2018-01-13 11:04:41', '36cad314de0349cbbdc869ba1fe524d2', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('a4552235b964448c932d1a1cc3bbafb5', '/shiro/SysApi/v1/findUserLoginTotal', '14.16.237.191', null, 'GET', '2018-01-13 10:59:26', 'd010ba82b93c4ea9917e94a5287dab2e', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('a5fe0cdd3e864ebcb04b593bdf5ec589', '/shiro/PermisApi/v1/delPermis', '14.16.237.191', null, 'POST', '2018-01-13 10:49:37', 'b1d35db370254cce944b0af6bc82294b', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('a631d225718347be89290416552be95c', '/SysApi/v1/findUserLoginLogByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:26:35', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('a6d40dc3de744b8fb935077daca4dcfe', '/PermisApi/v1/findPermissionByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 11:04:46', '36cad314de0349cbbdc869ba1fe524d2', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('a75dc88a64ab4970b7164ef38b3326ca', '/PermisApi/v1/findPermissionByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:23:51', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('a83f89f5edf84ce88fad6d94b5aea670', '/RoleApi/v1/findAllRoles', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@7dd516a, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 10:52:13', '2401ead413d24cb3915af73cd46088e3', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('a93ac473bc994f41a3ae09d1adb221b7', '/PermisApi/v1/findPermissionByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:23:54', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('a962dfec9b7b4373b008422974065dd7', '/SysApi/v1/findAttributesByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:59:31', 'd010ba82b93c4ea9917e94a5287dab2e', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('a9fcc551d17b439e8921a6cd7844ea22', '/SysApi/v1/findAttributesByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:51:28', 'b1d35db370254cce944b0af6bc82294b', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('aa34d988057b46f5a1d37155c6342eec', '/SysApi/v1/findUserLoginLogByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:59:25', 'd010ba82b93c4ea9917e94a5287dab2e', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('ac719ba5844b4e9b9638c9b2acc1215e', '/SysApi/v1/findOperatingRecordByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:48:17', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('ad82335023c744b6af6299342ff211c6', '/RoleApi/v1/findAllRoles', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@6b8168c8, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 10:57:35', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('af0ec06bcf684d2e8c6d4cdaf774f303', '/SysApi/v1/findUserLoginLogByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:52:28', '2401ead413d24cb3915af73cd46088e3', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('b04abd7a7dcd45e9bf6714eb92204302', '/SysApi/v1/findUserLoginLogByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:58:20', '2268a789b99b471992366e969e4b4284', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('b2aaed2cfc584f568996950bb4d8508d', '/RoleApi/v1/findAllRoles', '14.24.29.87', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@770ffd0d, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-14 09:37:52', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('b38314de24dc44fe849763eebdf92cde', '/UserApi/v1/findUserByPage', '14.24.29.87', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-14 09:37:39', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('b38cbc69dede4e92bf49c5dc9f66a36b', '/LoginApi/v1/login', '14.16.237.191', '[Carry, dc483e80a7a0bd9ef71d8cf973673924, org.apache.catalina.session.StandardSessionFacade@30e6fd76, org.apache.shiro.web.servlet.ShiroHttpServletRequest@3f593b3d]', 'POST', '2018-01-13 10:51:47', 'b1d35db370254cce944b0af6bc82294b', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('b3b0c4510a8842318ac032043d879c9b', '/RoleApi/v1/findRolesPermisByRole', '14.16.237.191', '[ParamsDto{id=\'1648121042d441f8a85a0231fb747454\', ids=null, type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'GET', '2018-01-13 11:02:53', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('b3d20110a1ab4893b9e81d80aa4f9146', '/SysApi/v1/findOperatingRecordByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:52:49', '2401ead413d24cb3915af73cd46088e3', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('b54018d8b8c44d6b81162f1235c688a5', '/SysApi/v1/findUserLoginLogByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:59:28', 'd010ba82b93c4ea9917e94a5287dab2e', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('b761804043af43f5ab612c4d2963d224', '/RoleApi/v1/findAllRoles', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@26ea211d, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 10:51:17', 'b1d35db370254cce944b0af6bc82294b', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('b8dbdc0105334baaa0dfa24d5aa94c36', '/SysApi/v1/findAttributesByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:52:51', '2401ead413d24cb3915af73cd46088e3', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('ba2e5b46fc25444a95993300eb363ee9', '/UserApi/v1/findUserByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:51:17', 'b1d35db370254cce944b0af6bc82294b', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('bba5e3558ccc4d859ba097b9aab7e75e', '/SysApi/v1/findOperatingRecordByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:57:48', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('bbd6f349fb3b4388ad5bd18ff36074f1', '/RoleApi/v1/findAllRoles', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@26ea211d, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 10:51:17', 'b1d35db370254cce944b0af6bc82294b', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('bc28116f3c814d35942edcf4839ddfc7', '/UserApi/v1/findUserByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:27:02', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('bc87d2568da1444c8ddc8ae527717e8e', '/SysApi/v1/findUserLoginLogByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:57:49', 'c19c039d1d044302849b00d107b1522d', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('bcfae6dc73324d6ea5f5240e4628b669', '/SysApi/v1/findUserLoginLogByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:52:48', '2401ead413d24cb3915af73cd46088e3', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('be4f10bf9d0448afb9f7d6604de46e6d', '/RoleApi/v1/findAllRoles', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@7f7f46fa, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 10:58:02', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('be89e86676514e8c878b32b7d06553ca', '/LoginApi/v1/login', '61.140.205.186', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@7c950b0a, org.apache.shiro.web.servlet.ShiroHttpServletRequest@7a0dfcd8]', 'POST', '2018-01-15 22:27:01', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('be97c5b7c8264d56823324a9bd492449', '/PermisApi/v1/findPermissionByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:52:17', '2401ead413d24cb3915af73cd46088e3', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('beabdeb4c31a4775b8fb0d98c94938a3', '/RoleApi/v1/findAllRoles', '117.73.240.236', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@79291471, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-14 20:31:12', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('beadd946da0b4d9f8db5a31bcfd80c7b', '/shiro/UserApi/v1/delUsers', '14.16.237.191', null, 'POST', '2018-01-13 11:04:38', '36cad314de0349cbbdc869ba1fe524d2', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('c02f399389b94675863891355c9abad6', '/RoleApi/v1/findAllRoles', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@7124b377, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 10:58:09', '2268a789b99b471992366e969e4b4284', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('c1428dd432684a74b5776ceb38d871eb', '/UserApi/v1/findUserByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 11:00:18', '36cad314de0349cbbdc869ba1fe524d2', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('c159fee27f934249b048806f96a503dc', '/RoleApi/v1/findAllRoles', '61.140.205.186', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@6f719862, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-15 11:41:55', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('c182eb13a78b49049570264e296d4e43', '/UserApi/v1/findUserByPage', '117.73.240.236', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-14 20:31:12', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('c3382fbb88a54e69b4c5e67ff8ab2ece', '/RoleApi/v1/findRoleByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:23:52', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('c57345d00b054b61bb4abd2fd9c91381', '/UserApi/v1/findUserByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:57:35', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('c635f63bb4a94253bbc81babc6ed018f', '/SysApi/v1/findUserLoginTotal', '14.16.237.191', '[]', 'GET', '2018-01-13 11:02:15', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('c6c3e48393c54934b5658226d4bb54b6', '/UserApi/v1/findUserByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:27:36', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('c72060e733c14088832cd800d5b5446d', '/SysApi/v1/findUserLoginLogByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:26:41', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('c7da69e2b9434a7da0f1ef380ac515fd', '/PermisApi/v1/findPermissionByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:58:13', '2268a789b99b471992366e969e4b4284', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('c841c8466f064901abd6e509b5e0e91a', '/RoleApi/v1/findAllRoles', '14.24.29.87', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@505ef1b8, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-14 09:37:39', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('c8cc72fd05a24ad38c5779c2bb0e6cc9', '/UserApi/v1/findUserByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:52:13', '2401ead413d24cb3915af73cd46088e3', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('cb62d9ac599b4d419fbe73e34725b149', '/LoginApi/v1/login', '14.16.237.191', '[Cary, dc483e80a7a0bd9ef71d8cf973673924, org.apache.catalina.session.StandardSessionFacade@30e6fd76, org.apache.shiro.web.servlet.ShiroHttpServletRequest@71ef71be]', 'POST', '2018-01-13 10:52:12', 'b1d35db370254cce944b0af6bc82294b', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('cb9d3c4778fb4362b4cfca56bcfa6e65', '/RoleApi/v1/findAllRoles', '61.140.205.186', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@6f719862, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-15 11:41:55', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('cbb46fea3c1b445ebe746f4f7deb716e', '/shiro/LoginApi/v1/login', '14.24.29.87', null, 'POST', '2018-01-14 09:38:36', 'e6c835a78a134931861f07d5631a45e4', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('cd308f1a956240c79b1bb4dc38711978', '/SysApi/v1/findUserLoginLogByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:26:38', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('cd6b5bdf54d54e919cacf393ceeed885', '/PermisApi/v1/findPermissionByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:57:44', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('ce35c06409384fd1ba1939f1f39c7d5f', '/RoleApi/v1/findAllRoles', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@1446f1d, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 10:59:50', 'b1d35db370254cce944b0af6bc82294b', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('cfb6c704666b4d5daafcda08b9d210df', '/UserApi/v1/findUserByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:59:16', 'd010ba82b93c4ea9917e94a5287dab2e', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('cfe491fbaba447a591dde72d61602c39', '/SysApi/v1/findOperatingRecordByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:49:00', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('cff8de8c806e498c8d6562a70b1cc1d1', '/UserApi/v1/findUserByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:59:50', 'b1d35db370254cce944b0af6bc82294b', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('d045bee5a35f4cd7a3ed8eb677f09963', '/SysApi/v1/findAttributesByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 11:04:50', '36cad314de0349cbbdc869ba1fe524d2', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('d0baf046cef44c318f141ec751ca7b4e', '/SysApi/v1/findUserLoginLogByPage', '14.24.29.87', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-14 09:38:14', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('d0cde34cdd0c462c9771fec6cbb14283', '/PermisApi/v1/findPermissionByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:49:04', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('d15d279c3e5f4f9f9cb160ad90230ae1', '/PermisApi/v1/findPermissionByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 11:01:55', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('d15e236172ea494b9e99d6070bf53f2c', '/SysApi/v1/findUserLoginLogByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:48:56', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('d232d9b4f695475aa9940f29b05f0170', '/shiro/SysApi/v1/findUserLoginTotal', '14.16.237.191', null, 'GET', '2018-01-13 10:58:24', '2268a789b99b471992366e969e4b4284', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('d3f5fc6b6ad8449597ae140c5887f442', '/shiro/SysApi/v1/findUserLoginLogByPage', '14.16.237.191', null, 'GET', '2018-01-13 10:59:27', 'd010ba82b93c4ea9917e94a5287dab2e', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('d4da0c13568840258f06b6849c42d233', '/RoleApi/v1/findRoleByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 11:04:48', '36cad314de0349cbbdc869ba1fe524d2', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('d5962e1315d2466bbf5f7ba44b8a8baa', '/UserApi/v1/findUserByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:24:11', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('d59b663128374df6b656ffe5139c64fd', '/RoleApi/v1/findAllRoles', '61.140.205.186', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@49ff1327, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-15 22:27:02', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('d5f1e4f234b94054aa342bdf301d2ee1', '/shiro/SysApi/v1/findUserLoginLogByPage', '14.16.237.191', null, 'GET', '2018-01-13 10:57:49', 'c19c039d1d044302849b00d107b1522d', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('d7ccb1e3f55b437a9134c76051bbc684', '/PermisApi/v1/findPermissionByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:22:22', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('d8b629209ec24eac86d346d7408e24a6', '/LoginApi/v1/login', '14.16.237.191', '[Lady, dc483e80a7a0bd9ef71d8cf973673924, org.apache.catalina.session.StandardSessionFacade@30e6fd76, org.apache.shiro.web.servlet.ShiroHttpServletRequest@46a78bda]', 'POST', '2018-01-13 10:58:08', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('d8fafb1bbf4e44eaa0accfe3f18fab51', '/SysApi/v1/findAttributeDetailByAttrId', '14.16.237.191', '[ParamsDto{id=\'d73d7a9c471f4aba884e79152cb1ace0\', ids=null, type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'GET', '2018-01-13 10:51:21', 'b1d35db370254cce944b0af6bc82294b', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('d901ce5e10ee47c7935752ddbe29f7cb', '/RoleApi/v1/findAllRoles', '117.73.240.236', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@329d16e4, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-14 20:30:50', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('d98a99c8b07741b995c8a95df5d617e8', '/SysApi/v1/findOperatingRecordByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:59:06', '2268a789b99b471992366e969e4b4284', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('d9911efe9bd34110ac8153a393c3e21e', '/SysApi/v1/findAttributeDetailByAttrId', '117.73.240.236', '[ParamsDto{id=\'d73d7a9c471f4aba884e79152cb1ace0\', ids=null, type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'GET', '2018-01-14 20:31:11', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('d9a06c7545af4760b507478b4c9a90f9', '/RoleApi/v1/findRolesPermisByRole', '14.16.237.191', '[ParamsDto{id=\'d9908d75b9ee4256805472f3c7e8349d\', ids=null, type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'GET', '2018-01-13 11:04:15', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('d9c462f2f9214694ac9a26b4d13de6e9', '/SysApi/v1/findOperatingRecordByPage', '14.24.29.87', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-14 09:37:56', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('da115937c38542438dffaff448b8be58', '/SysApi/v1/findOperatingRecordByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 11:02:39', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('dfad0726c18141faae74f286a32df823', '/shiro/SysApi/v1/findUserLoginTotal', '14.16.237.191', null, 'GET', '2018-01-13 10:59:28', 'd010ba82b93c4ea9917e94a5287dab2e', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('e067f93de67c4081abedbded8566c477', '/UserApi/v1/findUserByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:23:56', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('e0cd040aadcf4667ad1108380ea0687e', '/SysApi/v1/findAttributesByPage', '117.73.240.236', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-14 20:31:00', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('e14177b33f4e4f2dbe080c0d64a79eef', '/SysApi/v1/findUserLoginTotal', '14.16.237.191', '[]', 'GET', '2018-01-13 10:49:55', 'b1d35db370254cce944b0af6bc82294b', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('e20da02e9c274dcf9a23f81dfd823bbc', '/RoleApi/v1/findRoleByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:57:45', 'c19c039d1d044302849b00d107b1522d', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('e3794357f7fa48458a6e55dc98323749', '/shiro/LoginApi/v1/login', '14.16.237.191', null, 'POST', '2018-01-13 10:51:47', 'b1d35db370254cce944b0af6bc82294b', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('e42cdd200b034a6c808788fae7548fb3', '/PermisApi/v1/findPermissionByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:22:25', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('e4fc14a1a3764f09bdfb26751423dcec', '/shiro/RoleApi/v1/findRoleByPage', '14.16.237.191', null, 'GET', '2018-01-13 10:52:18', '2401ead413d24cb3915af73cd46088e3', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('e56d66b29ab54b2e9d88291f08f631a8', '/LoginApi/v1/login', '61.140.205.186', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@7c950b0a, org.apache.shiro.web.servlet.ShiroHttpServletRequest@5f8f0256]', 'POST', '2018-01-15 22:27:35', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('e59c9d839d3b4644a1b45e378ad46a8d', '/LoginApi/v1/login', '61.140.205.186', '[Salad, dc483e80a7a0bd9ef71d8cf973673924, org.apache.catalina.session.StandardSessionFacade@464c9525, org.apache.shiro.web.servlet.ShiroHttpServletRequest@63b96d06]', 'POST', '2018-01-15 11:41:54', null, '授权通过');
INSERT INTO `sys_operating_record` VALUES ('e6141f55cb924dc38ddb14a0e425c8fe', '/SysApi/v1/findAttributeDetailByAttrId', '14.16.237.191', '[ParamsDto{id=\'d73d7a9c471f4aba884e79152cb1ace0\', ids=null, type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'GET', '2018-01-13 10:52:21', '2401ead413d24cb3915af73cd46088e3', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('e61c4778c3a6457f856b003ec84d7a7f', '/SysApi/v1/findAttributeDetailByAttrId', '14.16.237.191', '[ParamsDto{id=\'d73d7a9c471f4aba884e79152cb1ace0\', ids=null, type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'GET', '2018-01-13 10:59:21', 'd010ba82b93c4ea9917e94a5287dab2e', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('e62a50c64df44378a5f7eec7256c0560', '/shiro/RoleApi/v1/findRoleByPage', '14.16.237.191', null, 'GET', '2018-01-13 10:49:40', 'b1d35db370254cce944b0af6bc82294b', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('e71f3a29b0c24384b7f26fc9b1c29d80', '/SysApi/v1/findAttributeDetailByAttrId', '61.140.205.186', '[ParamsDto{id=\'d73d7a9c471f4aba884e79152cb1ace0\', ids=null, type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'GET', '2018-01-15 22:22:22', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('e73be7381c73428daeab80603ce0d351', '/RoleApi/v1/findRolesPermisByRole', '61.140.205.186', '[ParamsDto{id=\'1648121042d441f8a85a0231fb747454\', ids=null, type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'GET', '2018-01-15 22:23:35', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('e79b548f1caa43338e83f7598e4c6602', '/SysApi/v1/findUserLoginTotal', '61.140.205.186', '[]', 'GET', '2018-01-15 22:26:38', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('e86599b4f6704563aea58baa98977a38', '/UserApi/v1/findUserByPage', '14.24.29.87', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-14 09:37:52', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('ea4ad833bc8e41f4a7707c516f753d61', '/PermisApi/v1/findBasePermission', '14.16.237.191', '[]', 'GET', '2018-01-13 11:04:20', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('eaea0d6608d0451ebf4a56fc03769d23', '/PermisApi/v1/findPermissionByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:26:12', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('ec047a24500f458298dae0ed8bc3b6ff', '/UserApi/v1/findUserByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 11:01:48', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('ed26e6195d0f4d328378becf4f0e4413', '/RoleApi/v1/findRoleByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:52:18', '2401ead413d24cb3915af73cd46088e3', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('ee4d6af5b9804e6f96bf5208fc209818', '/PermisApi/v1/delPermis', '14.16.237.191', '[ParamsDto{id=\'null\', ids=[0edebf3ac9f34f6f8d078b19c459d5c4], type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'POST', '2018-01-13 10:49:37', 'b1d35db370254cce944b0af6bc82294b', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('f097eed751d2414aa6b640a92fa96644', '/RoleApi/v1/findAllRoles', '61.140.205.186', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@527f7043, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-15 22:27:36', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('f199290f0df6465aa64968a525d08b06', '/RoleApi/v1/findAllRoles', '117.73.240.236', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@79291471, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-14 20:31:12', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('f2635803451341a198e45991437e2488', '/PermisApi/v1/findPermissionByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:51:21', 'b1d35db370254cce944b0af6bc82294b', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('f265a3398dfb4521adf55522699c4faa', '/shiro/SysApi/v1/findUserLoginLogByPage', '14.16.237.191', null, 'GET', '2018-01-13 10:59:54', 'b1d35db370254cce944b0af6bc82294b', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('f2b75c1ee6cc419d9712ef487496da19', '/LoginApi/v1/login', '14.24.29.87', '[Petty, dc483e80a7a0bd9ef71d8cf973673924, org.apache.catalina.session.StandardSessionFacade@6d8f52c1, org.apache.shiro.web.servlet.ShiroHttpServletRequest@75e70a76]', 'POST', '2018-01-14 09:38:41', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('f3276b2c5f084bc99c59e37a3dce7d27', '/SysApi/v1/findOperatingRecordByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:59:25', 'd010ba82b93c4ea9917e94a5287dab2e', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('f3496fff2e6a4641a3662ba3e4f27660', '/SysApi/v1/findAttributeDetailByAttrId', '14.16.237.191', '[ParamsDto{id=\'d73d7a9c471f4aba884e79152cb1ace0\', ids=null, type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'GET', '2018-01-13 10:49:33', 'b1d35db370254cce944b0af6bc82294b', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('f3520c29961446f6ab39cc86a77ffd8e', '/UserApi/v1/delUsers', '14.16.237.191', '[ParamsDto{id=\'null\', ids=[c19c039d1d044302849b00d107b1522d], type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'POST', '2018-01-13 11:04:38', '36cad314de0349cbbdc869ba1fe524d2', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('f3f88588ab984e6f98e3359a29d1c903', '/UserApi/v1/findUserByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:58:02', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('f40752f22f1d488a9da2e7bb17d577ca', '/RoleApi/v1/findAllRoles', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@7f7f46fa, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 10:58:02', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('f48cf342f1874661aca4e444a4bb697f', '/SysApi/v1/findUserReqTotal', '61.140.205.186', '[]', 'GET', '2018-01-15 22:26:38', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('f55b662281ab4a0c8b6b2a655d9b01bf', '/SysApi/v1/findUserReqTotal', '14.16.237.191', '[]', 'GET', '2018-01-13 11:05:02', '36cad314de0349cbbdc869ba1fe524d2', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('f6494be15f2b4e9b9435f04895f72d4e', '/LoginApi/v1/login', '61.140.205.186', '[admin, dc483e80a7a0bd9ef71d8cf973673924, org.apache.catalina.session.StandardSessionFacade@7c950b0a, org.apache.shiro.web.servlet.ShiroHttpServletRequest@4b8da9a5]', 'POST', '2018-01-15 22:27:00', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('f686145e7e4a4170861cdd56167a49f3', '/RoleApi/v1/findRoleByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:49:40', 'b1d35db370254cce944b0af6bc82294b', '授权不通过');
INSERT INTO `sys_operating_record` VALUES ('f6a06bcae9084cf4b4e2981617781e2c', '/UserApi/v1/findUserByPage', '14.24.29.87', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-14 09:38:43', 'd010ba82b93c4ea9917e94a5287dab2e', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('f6e1b398c19f4feeb6628e96b69d3ed6', '/SysApi/v1/findAttributeDetailByAttrId', '14.16.237.191', '[ParamsDto{id=\'d73d7a9c471f4aba884e79152cb1ace0\', ids=null, type=null, status=null, keyword=\'null\', startPage=null, pageSize=null}]', 'GET', '2018-01-13 10:57:44', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('f711edd0b4724ebdb2dbd78b1627e74d', '/shiro/RoleApi/v1/findRoleByPage', '14.16.237.191', null, 'GET', '2018-01-13 10:57:45', 'c19c039d1d044302849b00d107b1522d', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('f8228e2808b44279a8ac9ac4a77208a1', '/UserApi/v1/findUserByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:49:20', 'b1d35db370254cce944b0af6bc82294b', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('f852f693f65540b5a9378d1542b97db6', '/SysApi/v1/findUserReqTotal', '14.16.237.191', '[]', 'GET', '2018-01-13 11:02:15', 'e6c835a78a134931861f07d5631a45e4', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('f896d713037047d6ad82c9143cb97502', '/shiro/LoginApi/v1/login', '14.16.237.191', null, 'POST', '2018-01-13 11:01:40', null, '请求出错');
INSERT INTO `sys_operating_record` VALUES ('f8d462c0bf6f4d45946e97757dd3cfcc', '/shiro/SysApi/v1/findUserLoginLogByPage', '14.16.237.191', null, 'GET', '2018-01-13 10:59:28', 'd010ba82b93c4ea9917e94a5287dab2e', '请求出错');
INSERT INTO `sys_operating_record` VALUES ('f903e41c20224e63975734d0f9a20939', '/SysApi/v1/findUserLoginLogByPage', '117.73.240.236', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-14 20:31:05', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('fae0a35be78c469fb67f42835ec380dd', '/RoleApi/v1/findAllRoles', '14.16.237.191', '[com.shiro.shirodemo.pojo.dto.RolePermisVo@61705965, org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2018-01-13 10:49:20', 'b1d35db370254cce944b0af6bc82294b', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('fb56bb2f6822411c81e1f8b3ebc06f1b', '/LoginApi/v1/login', '14.16.237.191', '[小明, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@4086e4c4, org.apache.shiro.web.servlet.ShiroHttpServletRequest@2066fb1b]', 'POST', '2018-01-13 11:01:02', null, '授权通过');
INSERT INTO `sys_operating_record` VALUES ('fbdf62926a6d47bbb87f8a582e356d3f', '/SysApi/v1/findAttributesByPage', '14.16.237.191', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-13 10:59:52', 'b1d35db370254cce944b0af6bc82294b', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('fccd1d8b0929445fb112306f64471eeb', '/SysApi/v1/findUserLoginLogByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:26:24', 'c19c039d1d044302849b00d107b1522d', '授权通过');
INSERT INTO `sys_operating_record` VALUES ('ff19598347c44b4c967a94fee0061da3', '/SysApi/v1/findOperatingRecordByPage', '61.140.205.186', '[ParamsDto{id=\'null\', ids=null, type=null, status=null, keyword=\'\', startPage=1, pageSize=30}]', 'GET', '2018-01-15 22:26:23', 'c19c039d1d044302849b00d107b1522d', '授权通过');

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
INSERT INTO `sys_permission` VALUES ('295dc17c610e463e8bec08166814715a', '查询操作记录', '/SysApi/v1/findOperatingRecordByPage', null, '4b43b55df8ee4cd3be549880128a84fe', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-12 09:50:58', '2018-01-12 09:50:58', 'admin', null);
INSERT INTO `sys_permission` VALUES ('2b53ded97d3c4fd3986bbe34e22811a3', '登录统计', '/SysApi/v1/findUserLoginTotal', null, '6d9b4dfd99594ce2a0e3f0e55411ece6', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-12 09:48:44', null, 'admin', null);
INSERT INTO `sys_permission` VALUES ('3f0023392933443e88ca20eac5d20f37', '查询角色', '/RoleApi/v1/findRoleByPage', null, '461a7aba21f54244bcdc7e20e6ab9e1c', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-03 21:12:00', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('461a7aba21f54244bcdc7e20e6ab9e1c', '角色管理', '/roleList', null, 'cb8fa8dd917e4c71a696f753e4ed2bb8', null, '1c81b61ca6ca40ac86c8a32413abfa16', '2018-01-03 21:11:32', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('467f6e5713934130ba9a314b91cc3139', '菜单列表', '/permisList', null, 'cb8fa8dd917e4c71a696f753e4ed2bb8', null, '1c81b61ca6ca40ac86c8a32413abfa16', '2018-01-03 21:09:39', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('4b43b55df8ee4cd3be549880128a84fe', '操作记录', '/permisList', null, 'd3485c53d0754764954f6779d05ffa17', null, '1c81b61ca6ca40ac86c8a32413abfa16', '2018-01-12 09:46:27', null, 'admin', null);
INSERT INTO `sys_permission` VALUES ('5299727441124608b85914e90e300910', '数据字典', '-', null, '0', null, '8b0be3af6d3d46e7aa90cf4073931b13', '2018-01-03 21:13:02', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('5506e49f126a4c07b80aa268987cc589', '查询菜单', '/PermisApi/v1/findPermissionByPage', null, '467f6e5713934130ba9a314b91cc3139', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-03 21:10:12', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('557c1b7134024d4985a58aee24ffc35b', '新增角色', '/RoleApi/v1/addRoles', null, '461a7aba21f54244bcdc7e20e6ab9e1c', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-03 21:12:23', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('5d4559ad34104325bffa8626420674bd', '查询登录日志', '/SysApi/v1/findUserLoginLogByPage', null, 'ac296fc8b2674eda860d0cd7013fb5fb', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-12 09:47:44', null, 'admin', null);
INSERT INTO `sys_permission` VALUES ('68aa741768154727b252c8c91b743c2c', '用户管理', '-', null, '0', null, '8b0be3af6d3d46e7aa90cf4073931b13', '2018-01-03 20:21:18', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('6d9b4dfd99594ce2a0e3f0e55411ece6', '统计图表', '/statistics', null, 'd3485c53d0754764954f6779d05ffa17', null, '1c81b61ca6ca40ac86c8a32413abfa16', '2018-01-12 09:48:17', null, 'admin', null);
INSERT INTO `sys_permission` VALUES ('73d7a6c7ff3e476e95a3bc8c2381406f', '用户列表', '/userlist', null, '68aa741768154727b252c8c91b743c2c', null, '1c81b61ca6ca40ac86c8a32413abfa16', '2018-01-03 20:35:20', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('775012a166cc4144a063c0a0c4e9bfc8', '编辑用户状态', '/UserApi/v1/editUserStatus', null, '73d7a6c7ff3e476e95a3bc8c2381406f', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-10 21:50:53', null, 'admin', null);
INSERT INTO `sys_permission` VALUES ('857997d93b81419b9508a90e55c1e396', '查询属性', '/SysApi/v1/findAttributesByPage', null, '0edebf3ac9f34f6f8d078b19c459d5c4', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-03 21:13:55', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('89a3c8ff80f543efa780459eeb52488b', '新增属性', '/SysApi/v1/addAttributes', null, '0edebf3ac9f34f6f8d078b19c459d5c4', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-03 21:14:19', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('ac1bdcad3d904e3eb61960ceb901604e', '请求统计', '/SysApi/v1/findUserReqTotal', null, '6d9b4dfd99594ce2a0e3f0e55411ece6', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-12 09:49:22', null, 'admin', null);
INSERT INTO `sys_permission` VALUES ('ac296fc8b2674eda860d0cd7013fb5fb', '登录日志', '/loginLog', null, 'd3485c53d0754764954f6779d05ffa17', null, '1c81b61ca6ca40ac86c8a32413abfa16', '2018-01-12 09:51:17', '2018-01-12 09:51:17', 'admin', null);
INSERT INTO `sys_permission` VALUES ('ad324213a12144a6a2a4705ab760188b', '删除用户', '/UserApi/v1/delUsers', null, '73d7a6c7ff3e476e95a3bc8c2381406f', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-04 15:33:10', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('b012f6f664864d5b87e3619558c99b83', '新增属性明细', '/SysApi/v1/addAttributeDetail', null, '0edebf3ac9f34f6f8d078b19c459d5c4', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-03 21:15:35', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('bd8598cca795499eb6d9f3500d90d9c6', '添加/编辑角色权限', '/RoleApi/v1/addRolesPermis', null, '461a7aba21f54244bcdc7e20e6ab9e1c', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-04 21:48:58', null, 'admin', null);
INSERT INTO `sys_permission` VALUES ('ca184d415e504df280d78c28db0ba5e0', '新增用户', '/UserApi/v1/addUser', null, '73d7a6c7ff3e476e95a3bc8c2381406f', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-04 15:35:41', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('cb8fa8dd917e4c71a696f753e4ed2bb8', '权限管理', '-', null, '0', null, '8b0be3af6d3d46e7aa90cf4073931b13', '2018-01-03 21:09:14', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('cbe60313e15c4fb6888ebe58093c74c9', '查询用户', '/UserApi/v1/findUserByPage', null, '73d7a6c7ff3e476e95a3bc8c2381406f', null, '2fd4068ad11b4211bacaa33385b8daae', '2018-01-03 21:07:44', null, 'wangwu', null);
INSERT INTO `sys_permission` VALUES ('d3485c53d0754764954f6779d05ffa17', '系统管理', '-', null, '0', null, '8b0be3af6d3d46e7aa90cf4073931b13', '2018-01-12 09:43:11', null, 'admin', null);
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
  `type` int(11) DEFAULT NULL COMMENT '角色类型  002普通用户 001 超级管理员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1648121042d441f8a85a0231fb747454', 'user', '普通用户', '2');
INSERT INTO `sys_role` VALUES ('d9908d75b9ee4256805472f3c7e8349d', 'admin', '超级管理员', '1');
INSERT INTO `sys_role` VALUES ('dcb8aeca9cca43669865da9c568ecc37', '只能查看用户的角色', '只能查看用户的角色', '2');

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
INSERT INTO `sys_role_permission` VALUES ('0a17053b50a948fdbf891046f4ac1da7', '1648121042d441f8a85a0231fb747454', 'b012f6f664864d5b87e3619558c99b83');
INSERT INTO `sys_role_permission` VALUES ('172b11a515b44389a9cee2494ee12698', 'd9908d75b9ee4256805472f3c7e8349d', '68aa741768154727b252c8c91b743c2c');
INSERT INTO `sys_role_permission` VALUES ('2a1302e6b59c45c7a8e5e4fcb954c868', 'd9908d75b9ee4256805472f3c7e8349d', '0edebf3ac9f34f6f8d078b19c459d5c4');
INSERT INTO `sys_role_permission` VALUES ('2cacab846e4d4ae79018475dc0b334c9', 'd9908d75b9ee4256805472f3c7e8349d', 'ef39e253b6854161beeea78bd6ab26a5');
INSERT INTO `sys_role_permission` VALUES ('30636518e1ca4e228a9e43aa1e58f6f4', 'd9908d75b9ee4256805472f3c7e8349d', '557c1b7134024d4985a58aee24ffc35b');
INSERT INTO `sys_role_permission` VALUES ('314bbfb2305e43ab9dd542dc07cce255', 'd9908d75b9ee4256805472f3c7e8349d', '3f0023392933443e88ca20eac5d20f37');
INSERT INTO `sys_role_permission` VALUES ('335345b4b82649269da81930abbb7c90', 'd9908d75b9ee4256805472f3c7e8349d', '5506e49f126a4c07b80aa268987cc589');
INSERT INTO `sys_role_permission` VALUES ('373df101e792498f9cd173bf9bd381ac', '1648121042d441f8a85a0231fb747454', '857997d93b81419b9508a90e55c1e396');
INSERT INTO `sys_role_permission` VALUES ('3daa6e27364a4367b9d083e0766fcd3c', 'd9908d75b9ee4256805472f3c7e8349d', '05b9b153a88e49b0b5581781e1c5837d');
INSERT INTO `sys_role_permission` VALUES ('4743f6f3653d47c1bccd955c1a3bb84f', 'd9908d75b9ee4256805472f3c7e8349d', '5d4559ad34104325bffa8626420674bd');
INSERT INTO `sys_role_permission` VALUES ('498c79d940ad4e46bd64ca505df91b55', 'd9908d75b9ee4256805472f3c7e8349d', '0c731c8985524757ab6e2c447fd1a8f9');
INSERT INTO `sys_role_permission` VALUES ('4c0953af15a94eaab1dadd3fa4c27ed9', 'd9908d75b9ee4256805472f3c7e8349d', '461a7aba21f54244bcdc7e20e6ab9e1c');
INSERT INTO `sys_role_permission` VALUES ('50c9829276094102b415e90d2b722896', 'd9908d75b9ee4256805472f3c7e8349d', 'ac1bdcad3d904e3eb61960ceb901604e');
INSERT INTO `sys_role_permission` VALUES ('665e70f906704af9a99f827ceb063373', '1648121042d441f8a85a0231fb747454', 'ea0a3cba11d648f387403c0c230ce707');
INSERT INTO `sys_role_permission` VALUES ('6a3f9a8e8dd647a3895f1c05796d680d', '1648121042d441f8a85a0231fb747454', 'd3485c53d0754764954f6779d05ffa17');
INSERT INTO `sys_role_permission` VALUES ('6eb398bb62ff4ed48159a939e34cf855', '1648121042d441f8a85a0231fb747454', 'f517b99e15be4fa8924ea0c1a06c1762');
INSERT INTO `sys_role_permission` VALUES ('71a993fb8fe044c4ada333e0e42471ed', 'd9908d75b9ee4256805472f3c7e8349d', 'ac296fc8b2674eda860d0cd7013fb5fb');
INSERT INTO `sys_role_permission` VALUES ('763a3d94fdc84ef29c7360e91fc4f3e8', '1648121042d441f8a85a0231fb747454', '3f0023392933443e88ca20eac5d20f37');
INSERT INTO `sys_role_permission` VALUES ('78330912f2f442b59aa482de42fe4952', 'd9908d75b9ee4256805472f3c7e8349d', '5299727441124608b85914e90e300910');
INSERT INTO `sys_role_permission` VALUES ('853eaa240d334fdc9fdb98b701bb59b9', '1648121042d441f8a85a0231fb747454', '4b43b55df8ee4cd3be549880128a84fe');
INSERT INTO `sys_role_permission` VALUES ('9a5d9079ffa947c88444bcf33197f6c8', 'd9908d75b9ee4256805472f3c7e8349d', '4b43b55df8ee4cd3be549880128a84fe');
INSERT INTO `sys_role_permission` VALUES ('a479c95963864f1ba9cb69ca5e46ec4c', 'd9908d75b9ee4256805472f3c7e8349d', '2b53ded97d3c4fd3986bbe34e22811a3');
INSERT INTO `sys_role_permission` VALUES ('a57e9f7c1db946c7aa049dd954ea8c82', 'd9908d75b9ee4256805472f3c7e8349d', 'ca184d415e504df280d78c28db0ba5e0');
INSERT INTO `sys_role_permission` VALUES ('a5a008c06853468da7ab19f6dab6e797', '1648121042d441f8a85a0231fb747454', '295dc17c610e463e8bec08166814715a');
INSERT INTO `sys_role_permission` VALUES ('a6fa7af8c1744ab9a48a6c74d62ac399', 'd9908d75b9ee4256805472f3c7e8349d', 'ea0a3cba11d648f387403c0c230ce707');
INSERT INTO `sys_role_permission` VALUES ('b5ae72cd33c845edb9ed4ad99c727743', '1648121042d441f8a85a0231fb747454', 'cbe60313e15c4fb6888ebe58093c74c9');
INSERT INTO `sys_role_permission` VALUES ('ba598f7ec20f4136966cf7b3939558c2', '1648121042d441f8a85a0231fb747454', '2b53ded97d3c4fd3986bbe34e22811a3');
INSERT INTO `sys_role_permission` VALUES ('bd8e7590af8048a993e88006470d6f78', 'd9908d75b9ee4256805472f3c7e8349d', 'ec0b29ae3a7843b69d6a1d765b995f3f');
INSERT INTO `sys_role_permission` VALUES ('c2525d1ee56e4629a61023e144efd877', 'd9908d75b9ee4256805472f3c7e8349d', 'd3485c53d0754764954f6779d05ffa17');
INSERT INTO `sys_role_permission` VALUES ('c68a4b539db2421c92c3def608812209', 'd9908d75b9ee4256805472f3c7e8349d', '775012a166cc4144a063c0a0c4e9bfc8');
INSERT INTO `sys_role_permission` VALUES ('c93446c7bf1c45fb8eaf9dafda064758', '1648121042d441f8a85a0231fb747454', '5506e49f126a4c07b80aa268987cc589');
INSERT INTO `sys_role_permission` VALUES ('c9510fef83d248dc89e5c834083077ab', '1648121042d441f8a85a0231fb747454', '6d9b4dfd99594ce2a0e3f0e55411ece6');
INSERT INTO `sys_role_permission` VALUES ('ca09cc1d2f5e4e949f845bf0786e7fd2', 'd9908d75b9ee4256805472f3c7e8349d', 'f517b99e15be4fa8924ea0c1a06c1762');
INSERT INTO `sys_role_permission` VALUES ('cb5ed97f4236480c800d0fdad76558e9', 'd9908d75b9ee4256805472f3c7e8349d', '857997d93b81419b9508a90e55c1e396');
INSERT INTO `sys_role_permission` VALUES ('cc43bf978a344219bf31a1cb6917079c', 'dcb8aeca9cca43669865da9c568ecc37', 'cbe60313e15c4fb6888ebe58093c74c9');
INSERT INTO `sys_role_permission` VALUES ('d64f0298ee224adb917b7153ed009e52', 'd9908d75b9ee4256805472f3c7e8349d', '6d9b4dfd99594ce2a0e3f0e55411ece6');
INSERT INTO `sys_role_permission` VALUES ('da6005c85797416db285cd0dfec19d63', '1648121042d441f8a85a0231fb747454', 'ac296fc8b2674eda860d0cd7013fb5fb');
INSERT INTO `sys_role_permission` VALUES ('db3fbaa511f245149d94c9c06a0b0e28', 'd9908d75b9ee4256805472f3c7e8349d', 'b012f6f664864d5b87e3619558c99b83');
INSERT INTO `sys_role_permission` VALUES ('db61d109eef8442897cce0cb29fa53d5', 'd9908d75b9ee4256805472f3c7e8349d', '295dc17c610e463e8bec08166814715a');
INSERT INTO `sys_role_permission` VALUES ('dc71edf8d4a041a0a385457e72ba87d7', '1648121042d441f8a85a0231fb747454', '89a3c8ff80f543efa780459eeb52488b');
INSERT INTO `sys_role_permission` VALUES ('de09a113404345538a18d101d9d83193', 'd9908d75b9ee4256805472f3c7e8349d', 'cbe60313e15c4fb6888ebe58093c74c9');
INSERT INTO `sys_role_permission` VALUES ('de592bdbc65440ceb65c7b3e2c14730a', '1648121042d441f8a85a0231fb747454', 'ac1bdcad3d904e3eb61960ceb901604e');
INSERT INTO `sys_role_permission` VALUES ('e47fb2725097494b8da2eb66e23d3c73', 'd9908d75b9ee4256805472f3c7e8349d', 'cb8fa8dd917e4c71a696f753e4ed2bb8');
INSERT INTO `sys_role_permission` VALUES ('ed6d6403f2944cf6a0baf45c149d3022', 'd9908d75b9ee4256805472f3c7e8349d', '467f6e5713934130ba9a314b91cc3139');
INSERT INTO `sys_role_permission` VALUES ('ee8ff54a0f4c4ed4a187140673cfc1d0', '1648121042d441f8a85a0231fb747454', '5d4559ad34104325bffa8626420674bd');
INSERT INTO `sys_role_permission` VALUES ('ef5c265569ae441992bb53e42c5a35f5', 'd9908d75b9ee4256805472f3c7e8349d', 'bd8598cca795499eb6d9f3500d90d9c6');
INSERT INTO `sys_role_permission` VALUES ('f075d451c3b943e9ad0e02e6e30e633e', 'd9908d75b9ee4256805472f3c7e8349d', 'ad324213a12144a6a2a4705ab760188b');
INSERT INTO `sys_role_permission` VALUES ('f1cab28f43e0468aaca616b31b932deb', 'd9908d75b9ee4256805472f3c7e8349d', '89a3c8ff80f543efa780459eeb52488b');
INSERT INTO `sys_role_permission` VALUES ('fbfee5f87eeb44c7a9e93aa62043f44f', 'd9908d75b9ee4256805472f3c7e8349d', '73d7a6c7ff3e476e95a3bc8c2381406f');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(32) NOT NULL,
  `head_portraits` varchar(255) DEFAULT NULL COMMENT '头像',
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
INSERT INTO `sys_user` VALUES ('2268a789b99b471992366e969e4b4284', null, 'lady', 'lady@163.com', 'd477887b0636e5d87f79cc25c99d7dc9', '2018-01-11 20:04:38', '2018-01-13 10:58:08', '1');
INSERT INTO `sys_user` VALUES ('2401ead413d24cb3915af73cd46088e3', null, 'Cary', 'Cary@163.com', 'd477887b0636e5d87f79cc25c99d7dc9', '2018-01-11 20:06:48', '2018-01-13 10:52:12', '1');
INSERT INTO `sys_user` VALUES ('36cad314de0349cbbdc869ba1fe524d2', null, 'Harry', 'Harry@163.com', 'd477887b0636e5d87f79cc25c99d7dc9', '2018-01-04 16:36:20', '2018-01-13 11:00:18', '1');
INSERT INTO `sys_user` VALUES ('67808f6706344947b80ad47ae2cffe89', null, 'Jody', 'Jody@163.com', 'd477887b0636e5d87f79cc25c99d7dc9', '2018-01-04 21:43:31', '2018-01-12 09:21:45', '1');
INSERT INTO `sys_user` VALUES ('b1d35db370254cce944b0af6bc82294b', null, 'Kelly', 'Kelly@163.com', 'd477887b0636e5d87f79cc25c99d7dc9', '2018-01-11 20:04:09', '2018-01-13 10:59:50', '1');
INSERT INTO `sys_user` VALUES ('c19c039d1d044302849b00d107b1522d', '/vue_shiro_photo/userImg/c044b46f-2d85-4385-97f0-95ef7c0de592.png', 'Salad', 'Salad@163.com', 'd477887b0636e5d87f79cc25c99d7dc9', '2018-01-12 11:57:11', '2018-01-15 22:22:15', '1');
INSERT INTO `sys_user` VALUES ('d010ba82b93c4ea9917e94a5287dab2e', null, 'Petty', 'Petty@163.com', 'd477887b0636e5d87f79cc25c99d7dc9', '2018-01-11 20:06:22', '2018-01-14 09:38:41', '1');
INSERT INTO `sys_user` VALUES ('e6c835a78a134931861f07d5631a45e4', '/vue_shiro_photo/userImg/d71ac98e-2894-470e-acf5-f7cba950aa59.png', 'admin', 'admin@163.com', '10a1b727c497d49a85bfff7351f1a4c4', '2018-01-04 21:57:51', '2018-01-15 22:27:35', '1');

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
INSERT INTO `sys_user_role` VALUES ('36e0edadc5274104b29185bb85fc2826', 'ad2bf8fe7a8044e8a9e3f68f29d7adba', 'dcb8aeca9cca43669865da9c568ecc37');
INSERT INTO `sys_user_role` VALUES ('3724c992b5d14ea293032f34dc7abacd', '8a4183cf2e034fd2a51b83c33d3d6739', '1648121042d441f8a85a0231fb747454');
INSERT INTO `sys_user_role` VALUES ('43b72f2dc3a64b299fa47fb3820d8099', 'c19c039d1d044302849b00d107b1522d', '1648121042d441f8a85a0231fb747454');
INSERT INTO `sys_user_role` VALUES ('482839e3fce240d19f57703485a84433', 'f721564dec164374912f148c861b2ff5', 'dcb8aeca9cca43669865da9c568ecc37');
INSERT INTO `sys_user_role` VALUES ('5eca7ef6f1a94733b860f7fdfcad3329', 'b1d35db370254cce944b0af6bc82294b', '1648121042d441f8a85a0231fb747454');
INSERT INTO `sys_user_role` VALUES ('6189e602cf2e4008b02baa5ff7ac1e00', 'e6c835a78a134931861f07d5631a45e4', 'd9908d75b9ee4256805472f3c7e8349d');
INSERT INTO `sys_user_role` VALUES ('b37635ffdf544178b7c3a6f0a18f2e3f', '9d98006266ae407da99bd0131abd8b56', 'dcb8aeca9cca43669865da9c568ecc37');
INSERT INTO `sys_user_role` VALUES ('b7159c13c3174e34890d2095da2591dd', '2268a789b99b471992366e969e4b4284', '1648121042d441f8a85a0231fb747454');
INSERT INTO `sys_user_role` VALUES ('b91755f058994a608c72f1f171a65548', '2401ead413d24cb3915af73cd46088e3', '1648121042d441f8a85a0231fb747454');
INSERT INTO `sys_user_role` VALUES ('c9a6129d1a0a4e4382d7426d087878a1', '67808f6706344947b80ad47ae2cffe89', '1648121042d441f8a85a0231fb747454');
INSERT INTO `sys_user_role` VALUES ('cc7d771379bd406ab4fce46eafc7f038', 'fbc1983550ca448e80f48dd1beaa8b01', '1648121042d441f8a85a0231fb747454');
INSERT INTO `sys_user_role` VALUES ('e1d1a620ec044dc0820537aa6c74d05c', '36cad314de0349cbbdc869ba1fe524d2', '1648121042d441f8a85a0231fb747454');
INSERT INTO `sys_user_role` VALUES ('e8fa84d76ddc4aa6b825ec9735d1a88e', 'd010ba82b93c4ea9917e94a5287dab2e', '1648121042d441f8a85a0231fb747454');
SET FOREIGN_KEY_CHECKS=1;
