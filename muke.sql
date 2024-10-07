/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50738
 Source Host           : localhost:3306
 Source Schema         : muke

 Target Server Type    : MySQL
 Target Server Version : 50738
 File Encoding         : 65001

 Date: 22/03/2024 20:26:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人',
  `phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话',
  `isdefault` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1620659804520 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '地址' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, '2024-03-20 22:51:04', 1, '宇宙银河系金星1号', '金某', '13823888881', '是');
INSERT INTO `address` VALUES (2, '2024-03-20 22:51:04', 2, '宇宙银河系木星1号', '木某', '13823888882', '是');
INSERT INTO `address` VALUES (3, '2024-03-20 22:51:04', 3, '宇宙银河系水星1号', '水某', '13823888883', '是');
INSERT INTO `address` VALUES (4, '2024-03-20 22:51:04', 4, '宇宙银河系火星1号', '火某', '13823888884', '是');
INSERT INTO `address` VALUES (5, '2024-03-20 22:51:04', 5, '宇宙银河系土星1号', '土某', '13823888885', '是');
INSERT INTO `address` VALUES (6, '2024-03-20 22:51:04', 6, '宇宙银河系月球1号', '月某', '13823888886', '是');
INSERT INTO `address` VALUES (1620659804519, '2024-03-20 23:16:43', 1620659023042, '河北省石家庄市正定县正定镇幸福小郡', '李玉', '13132323232', '是');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'kecheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NULL DEFAULT NULL COMMENT '单价',
  `discountprice` float NULL DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1620659697053 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '购物车表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'http://localhost:8080/muke/upload/1620659546367.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'http://localhost:8080/muke/upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'http://localhost:8080/muke/upload/picture3.jpg');
INSERT INTO `config` VALUES (6, 'homepage', 'http://localhost:8080/muke/upload/1620659602209.jpg');

-- ----------------------------
-- Table structure for discussjiaoshi
-- ----------------------------
DROP TABLE IF EXISTS `discussjiaoshi`;
CREATE TABLE `discussjiaoshi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1620659718835 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '教师评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussjiaoshi
-- ----------------------------
INSERT INTO `discussjiaoshi` VALUES (141, '2024-03-20 22:51:04', 1, 1, '用户名1', '评论内容1', '回复内容1');
INSERT INTO `discussjiaoshi` VALUES (142, '2024-03-20 22:51:04', 2, 2, '用户名2', '评论内容2', '回复内容2');
INSERT INTO `discussjiaoshi` VALUES (143, '2024-03-20 22:51:04', 3, 3, '用户名3', '评论内容3', '回复内容3');
INSERT INTO `discussjiaoshi` VALUES (144, '2024-03-20 22:51:04', 4, 4, '用户名4', '评论内容4', '回复内容4');
INSERT INTO `discussjiaoshi` VALUES (145, '2024-03-20 22:51:04', 5, 5, '用户名5', '评论内容5', '回复内容5');
INSERT INTO `discussjiaoshi` VALUES (146, '2024-03-20 22:51:04', 6, 6, '用户名6', '评论内容6', '回复内容6');
INSERT INTO `discussjiaoshi` VALUES (1620659718834, '2024-03-20 23:15:18', 1620659488803, 1620659023042, '001', '这里可以评论老师', NULL);

-- ----------------------------
-- Table structure for discusskecheng
-- ----------------------------
DROP TABLE IF EXISTS `discusskecheng`;
CREATE TABLE `discusskecheng`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1620659667008 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discusskecheng
-- ----------------------------
INSERT INTO `discusskecheng` VALUES (131, '2024-03-20 22:51:04', 1, 1, '用户名1', '评论内容1', '回复内容1');
INSERT INTO `discusskecheng` VALUES (132, '2024-03-20 22:51:04', 2, 2, '用户名2', '评论内容2', '回复内容2');
INSERT INTO `discusskecheng` VALUES (133, '2024-03-20 22:51:04', 3, 3, '用户名3', '评论内容3', '回复内容3');
INSERT INTO `discusskecheng` VALUES (134, '2024-03-20 22:51:04', 4, 4, '用户名4', '评论内容4', '回复内容4');
INSERT INTO `discusskecheng` VALUES (135, '2024-03-20 22:51:04', 5, 5, '用户名5', '评论内容5', '回复内容5');
INSERT INTO `discusskecheng` VALUES (136, '2024-03-20 22:51:04', 6, 6, '用户名6', '评论内容6', '回复内容6');
INSERT INTO `discusskecheng` VALUES (1620659665387, '2024-03-20 23:14:24', 1620659382289, 1620659023042, '001', '这里可以评论', NULL);
INSERT INTO `discusskecheng` VALUES (1620659667007, '2024-03-20 23:14:26', 1620659382289, 1620659023042, '001', '这里可以评论', '恢复');

-- ----------------------------
-- Table structure for discussmingshi
-- ----------------------------
DROP TABLE IF EXISTS `discussmingshi`;
CREATE TABLE `discussmingshi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 157 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '名师评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussmingshi
-- ----------------------------
INSERT INTO `discussmingshi` VALUES (151, '2024-03-20 22:51:04', 1, 1, '用户名1', '评论内容1', '回复内容1');
INSERT INTO `discussmingshi` VALUES (152, '2024-03-20 22:51:04', 2, 2, '用户名2', '评论内容2', '回复内容2');
INSERT INTO `discussmingshi` VALUES (153, '2024-03-20 22:51:04', 3, 3, '用户名3', '评论内容3', '回复内容3');
INSERT INTO `discussmingshi` VALUES (154, '2024-03-20 22:51:04', 4, 4, '用户名4', '评论内容4', '回复内容4');
INSERT INTO `discussmingshi` VALUES (155, '2024-03-20 22:51:04', 5, 5, '用户名5', '评论内容5', '回复内容5');
INSERT INTO `discussmingshi` VALUES (156, '2024-03-20 22:51:04', 6, 6, '用户名6', '评论内容6', '回复内容6');

-- ----------------------------
-- Table structure for jiangshi
-- ----------------------------
DROP TABLE IF EXISTS `jiangshi`;
CREATE TABLE `jiangshi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `jiangshigonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '讲师工号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `jiangshixingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '讲师姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年龄',
  `touxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `jiangshiyouxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '讲师邮箱',
  `money` float NULL DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `jiangshigonghao`(`jiangshigonghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1620659050955 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '讲师' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jiangshi
-- ----------------------------
INSERT INTO `jiangshi` VALUES (21, '2024-03-20 22:51:04', '讲师1', '123456', '讲师姓名1', '男', '年龄1', 'http://localhost:8080/muke/upload/jiangshi_touxiang1.jpg', '13823888881', '773890001@qq.com', 100);
INSERT INTO `jiangshi` VALUES (22, '2024-03-20 22:51:04', '讲师2', '123456', '讲师姓名2', '男', '年龄2', 'http://localhost:8080/muke/upload/jiangshi_touxiang2.jpg', '13823888882', '773890002@qq.com', 100);
INSERT INTO `jiangshi` VALUES (23, '2024-03-20 22:51:04', '讲师3', '123456', '讲师姓名3', '男', '年龄3', 'http://localhost:8080/muke/upload/jiangshi_touxiang3.jpg', '13823888883', '773890003@qq.com', 100);
INSERT INTO `jiangshi` VALUES (24, '2024-03-20 22:51:04', '讲师4', '123456', '讲师姓名4', '男', '年龄4', 'http://localhost:8080/muke/upload/jiangshi_touxiang4.jpg', '13823888884', '773890004@qq.com', 100);
INSERT INTO `jiangshi` VALUES (25, '2024-03-20 22:51:04', '讲师5', '123456', '讲师姓名5', '男', '年龄5', 'http://localhost:8080/muke/upload/jiangshi_touxiang5.jpg', '13823888885', '773890005@qq.com', 100);
INSERT INTO `jiangshi` VALUES (26, '2024-03-20 22:51:04', '讲6', '123456', '讲6', '女', '30', 'http://localhost:8080/muke/upload/jiangshi_touxiang6.jpg', '13823888886', '773890006@qq.com', 100);
INSERT INTO `jiangshi` VALUES (1620659050954, '2024-03-20 23:04:10', '20', '20', '讲了', '男', '30', 'http://localhost:8080/muke/upload/1620659442267.jpg', '13852369852', '20@qq.com', 0);

-- ----------------------------
-- Table structure for jiaoshi
-- ----------------------------
DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE `jiaoshi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `jiangshigonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '讲师工号',
  `jiangshixingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '讲师姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `huojiangzhengshu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '获奖证书',
  `suoshudanwei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属单位',
  `jiaoshoukecheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教授课程',
  `xiangxixinxi` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '详细信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1620659488804 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '教师' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jiaoshi
-- ----------------------------
INSERT INTO `jiaoshi` VALUES (71, '2024-03-20 22:51:04', '讲师工号1', '讲师姓名1', '性别1', 'http://localhost:8080/muke/upload/jiaoshi_touxiang1.jpg', '获奖证书1', '所属单位1', '教授课程1', '详细信息1');
INSERT INTO `jiaoshi` VALUES (72, '2024-03-20 22:51:04', '讲师工号2', '讲师姓名2', '性别2', 'http://localhost:8080/muke/upload/jiaoshi_touxiang2.jpg', '获奖证书2', '所属单位2', '教授课程2', '详细信息2');
INSERT INTO `jiaoshi` VALUES (73, '2024-03-20 22:51:04', '讲师工号3', '讲师姓名3', '性别3', 'http://localhost:8080/muke/upload/jiaoshi_touxiang3.jpg', '获奖证书3', '所属单位3', '教授课程3', '详细信息3');
INSERT INTO `jiaoshi` VALUES (74, '2024-03-20 22:51:04', '讲师工号4', '讲师姓名4', '性别4', 'http://localhost:8080/muke/upload/jiaoshi_touxiang4.jpg', '获奖证书4', '所属单位4', '教授课程4', '详细信息4');
INSERT INTO `jiaoshi` VALUES (75, '2024-03-20 22:51:04', '讲师工号5', '讲师姓名5', '性别5', 'http://localhost:8080/muke/upload/jiaoshi_touxiang5.jpg', '获奖证书5', '所属单位5', '教授课程5', '详细信息5');
INSERT INTO `jiaoshi` VALUES (76, '2024-03-20 22:51:04', '讲师工号6', '讲师姓名6', '性别6', 'http://localhost:8080/muke/upload/jiaoshi_touxiang6.jpg', '获奖证书6', '所属单位6', '教授课程6', '详细信息6');
INSERT INTO `jiaoshi` VALUES (1620659488803, '2024-03-20 23:11:28', '讲6', '讲6', '女', 'http://localhost:8080/muke/upload/jiangshi_touxiang6.jpg', '很6的证书', '负担大学', '语文', '<p>十分丰富</p>');

-- ----------------------------
-- Table structure for kecheng
-- ----------------------------
DROP TABLE IF EXISTS `kecheng`;
CREATE TABLE `kecheng`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `kechengbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `suoshufenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属分类',
  `keshishu` int(11) NULL DEFAULT NULL COMMENT '课时数',
  `suoshujiangshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属讲师',
  `kechengfengmian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程封面',
  `suoshudaxue` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属大学',
  `kechengshipin` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程视频',
  `kechengdagang` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '课程大纲',
  `kechengxiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '课程详情',
  `clicktime` datetime(0) NULL DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) NULL DEFAULT 0 COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `kechengbianhao`(`kechengbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1620659382290 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kecheng
-- ----------------------------
INSERT INTO `kecheng` VALUES (51, '2024-03-20 22:51:04', '课程编号1', '课程名称1', '所属分类1', 1, '所属讲师1', 'http://localhost:8080/muke/upload/kecheng_kechengfengmian1.jpg', '所属大学1', 'http://localhost:8080/muke/upload/1620659346202.mp4', '课程大纲1', '课程详情1', '2024-03-22 20:24:53', 4, 99.9);
INSERT INTO `kecheng` VALUES (52, '2024-03-20 22:51:04', '课程编号2', '课程名称2', '所属分类2', 2, '所属讲师2', 'http://localhost:8080/muke/upload/kecheng_kechengfengmian2.jpg', '所属大学2', 'http://localhost:8080/muke/upload/1620659346202.mp4', '课程大纲2', '课程详情2', '2024-03-20 22:51:04', 2, 99.9);
INSERT INTO `kecheng` VALUES (53, '2024-03-20 22:51:04', '课程编号3', '课程名称3', '所属分类3', 3, '所属讲师3', 'http://localhost:8080/muke/upload/kecheng_kechengfengmian3.jpg', '所属大学3', 'http://localhost:8080/muke/upload/1620659346202.mp4', '课程大纲3', '课程详情3', '2024-03-22 20:25:58', 4, 99.9);
INSERT INTO `kecheng` VALUES (54, '2024-03-20 22:51:04', '课程编号4', '课程名称4', '所属分类4', 4, '所属讲师4', 'http://localhost:8080/muke/upload/kecheng_kechengfengmian4.jpg', '所属大学4', 'http://localhost:8080/muke/upload/1620659346202.mp4', '课程大纲4', '课程详情4', '2024-03-20 22:51:04', 4, 99.9);
INSERT INTO `kecheng` VALUES (55, '2024-03-20 22:51:04', '课程编号5', '课程5', '所属分类5', 10, '所属讲师5', 'http://localhost:8080/muke/upload/kecheng_kechengfengmian5.jpg', '所属大学5', 'http://localhost:8080/muke/upload/1620659346202.mp4', '课程大纲5', '<p>课程详情5</p>', '2024-03-20 23:20:39', 10, 99.9);
INSERT INTO `kecheng` VALUES (1620659382289, '2024-03-20 23:09:41', '1620659278146', '语文是怎么炼成的', '必修', 10, '讲了', 'http://localhost:8080/muke/upload/1620659298471.jpg', '负担大学', 'http://localhost:8080/muke/upload/1620659346202.mp4', '语文是怎么炼成的', '<p>这里课程详情，可以文字和图片</p><p><img src=\"http://localhost:8080/muke/upload/1620659378544.jpg\"></p>', '2024-03-22 20:25:49', 10, 66);

-- ----------------------------
-- Table structure for kechengfenlei
-- ----------------------------
DROP TABLE IF EXISTS `kechengfenlei`;
CREATE TABLE `kechengfenlei`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `fenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1620658898721 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kechengfenlei
-- ----------------------------
INSERT INTO `kechengfenlei` VALUES (61, '2024-03-20 22:51:04', '选修');
INSERT INTO `kechengfenlei` VALUES (62, '2024-03-20 22:51:04', '分类2');
INSERT INTO `kechengfenlei` VALUES (63, '2024-03-20 22:51:04', '分类3');
INSERT INTO `kechengfenlei` VALUES (64, '2024-03-20 22:51:04', '分类4');
INSERT INTO `kechengfenlei` VALUES (65, '2024-03-20 22:51:04', '综合科目');
INSERT INTO `kechengfenlei` VALUES (1620658898720, '2024-03-20 23:01:38', '必修');

-- ----------------------------
-- Table structure for kechengguanliyuan
-- ----------------------------
DROP TABLE IF EXISTS `kechengguanliyuan`;
CREATE TABLE `kechengguanliyuan`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `kechengzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程账号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `kechengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '照片',
  `money` float NULL DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `kechengzhanghao`(`kechengzhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1620658688499 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程管理员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kechengguanliyuan
-- ----------------------------
INSERT INTO `kechengguanliyuan` VALUES (41, '2024-03-20 22:51:04', '课程管理员1', '123456', '课程姓名1', '男', '13823888881', '773890001@qq.com', 'http://localhost:8080/muke/upload/kechengguanliyuan_zhaopian1.jpg', 100);
INSERT INTO `kechengguanliyuan` VALUES (42, '2024-03-20 22:51:04', '课程管理员2', '123456', '课程姓名2', '男', '13823888882', '773890002@qq.com', 'http://localhost:8080/muke/upload/kechengguanliyuan_zhaopian2.jpg', 100);
INSERT INTO `kechengguanliyuan` VALUES (43, '2024-03-20 22:51:04', '课程管理员3', '123456', '课程姓名3', '男', '13823888883', '773890003@qq.com', 'http://localhost:8080/muke/upload/kechengguanliyuan_zhaopian3.jpg', 100);
INSERT INTO `kechengguanliyuan` VALUES (44, '2024-03-20 22:51:04', '课程管理员4', '123456', '课程姓名4', '男', '13823888884', '773890004@qq.com', 'http://localhost:8080/muke/upload/kechengguanliyuan_zhaopian4.jpg', 100);
INSERT INTO `kechengguanliyuan` VALUES (45, '2024-03-20 22:51:04', '课程管理员5', '123456', '课程姓名5', '男', '13823888885', '773890005@qq.com', 'http://localhost:8080/muke/upload/kechengguanliyuan_zhaopian5.jpg', 100);
INSERT INTO `kechengguanliyuan` VALUES (46, '2024-03-20 22:51:04', '课程管理员6', '123456', '课程姓名6', '男', '13823888886', '773890006@qq.com', 'http://localhost:8080/muke/upload/kechengguanliyuan_zhaopian6.jpg', 100);
INSERT INTO `kechengguanliyuan` VALUES (1620658688498, '2024-03-20 22:58:08', '80', '80', '管课', '女', '13852369852', '80@qq.com', 'http://localhost:8080/muke/upload/1620658737137.png', 0);

-- ----------------------------
-- Table structure for mingshi
-- ----------------------------
DROP TABLE IF EXISTS `mingshi`;
CREATE TABLE `mingshi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `jiangshigonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '讲师工号',
  `jiangshixingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '讲师姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `huojiangzhengshu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '获奖证书',
  `suoshudanwei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属单位',
  `jiaoshoukecheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教授课程',
  `xiangxixinxi` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '详细信息',
  `clicktime` datetime(0) NULL DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1620659517296 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '名师' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mingshi
-- ----------------------------
INSERT INTO `mingshi` VALUES (81, '2024-03-20 22:51:04', '讲师工号1', '讲师姓名1', '性别1', 'http://localhost:8080/muke/upload/mingshi_touxiang1.jpg', '获奖证书1', '所属单位1', '教授课程1', '详细信息1', '2024-03-20 22:51:04');
INSERT INTO `mingshi` VALUES (82, '2024-03-20 22:51:04', '讲师工号2', '讲师姓名2', '性别2', 'http://localhost:8080/muke/upload/mingshi_touxiang2.jpg', '获奖证书2', '所属单位2', '教授课程2', '详细信息2', '2024-03-20 22:51:04');
INSERT INTO `mingshi` VALUES (83, '2024-03-20 22:51:04', '讲师工号3', '讲师姓名3', '性别3', 'http://localhost:8080/muke/upload/mingshi_touxiang3.jpg', '获奖证书3', '所属单位3', '教授课程3', '详细信息3', '2024-03-20 22:51:04');
INSERT INTO `mingshi` VALUES (84, '2024-03-20 22:51:04', '讲师工号4', '讲师姓名4', '性别4', 'http://localhost:8080/muke/upload/mingshi_touxiang4.jpg', '获奖证书4', '所属单位4', '教授课程4', '详细信息4', '2024-03-20 22:51:04');
INSERT INTO `mingshi` VALUES (85, '2024-03-20 22:51:04', '讲师工号5', '讲师姓名5', '性别5', 'http://localhost:8080/muke/upload/mingshi_touxiang5.jpg', '获奖证书5', '所属单位5', '教授课程5', '详细信息5', '2024-03-20 22:51:04');
INSERT INTO `mingshi` VALUES (86, '2024-03-20 22:51:04', '讲师工号6', '讲师姓名6', '性别6', 'http://localhost:8080/muke/upload/mingshi_touxiang6.jpg', '获奖证书6', '所属单位6', '教授课程6', '详细信息6', '2024-03-20 22:51:04');
INSERT INTO `mingshi` VALUES (1620659517295, '2024-03-20 23:11:56', '20', '讲了', '男', 'http://localhost:8080/muke/upload/1620659442267.jpg', '一两本证书', '负担大学', '数学', '<p>平淡</p>', '2024-03-20 23:19:21');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `orderid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'kecheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT 0 COMMENT '价格/积分',
  `discountprice` float NULL DEFAULT 0 COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT 0 COMMENT '总价格/总积分',
  `discounttotal` float NULL DEFAULT 0 COMMENT '折扣总价格',
  `type` int(11) NULL DEFAULT 1 COMMENT '支付类型',
  `status` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `orderid`(`orderid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1620659831792 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1620659818409, '2024-03-20 23:16:58', '20215102316591675439', 'kecheng', 1620659023042, 1620659382289, '语文是怎么炼成的', 'http://localhost:8080/muke/upload/1620659298471.jpg', 1, 66, 66, 66, 66, 1, '已发货', '河北省石家庄市正定县正定镇幸福小郡', '13132323232', '李玉');
INSERT INTO `orders` VALUES (1620659831791, '2024-03-20 23:17:10', '202151023171150267379', 'kecheng', 1620659023042, 55, '课程5', 'http://localhost:8080/muke/upload/kecheng_kechengfengmian5.jpg', 1, 99.9, 99.9, 99.9, 99.9, 1, '已退款', '河北省石家庄市正定县正定镇幸福小郡', '13132323232', '李玉');

-- ----------------------------
-- Table structure for putongguanliyuan
-- ----------------------------
DROP TABLE IF EXISTS `putongguanliyuan`;
CREATE TABLE `putongguanliyuan`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `putongzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '普通账号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `putongxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '普通姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '照片',
  `money` float NULL DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `putongzhanghao`(`putongzhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1620658669372 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '普通管理员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of putongguanliyuan
-- ----------------------------
INSERT INTO `putongguanliyuan` VALUES (31, '2024-03-20 22:51:04', '普通管理员1', '123456', '普通姓名1', '男', '13823888881', '773890001@qq.com', 'http://localhost:8080/muke/upload/putongguanliyuan_zhaopian1.jpg', 100);
INSERT INTO `putongguanliyuan` VALUES (32, '2024-03-20 22:51:04', '普通管理员2', '123456', '普通姓名2', '男', '13823888882', '773890002@qq.com', 'http://localhost:8080/muke/upload/putongguanliyuan_zhaopian2.jpg', 100);
INSERT INTO `putongguanliyuan` VALUES (33, '2024-03-20 22:51:04', '普通管理员3', '123456', '普通姓名3', '男', '13823888883', '773890003@qq.com', 'http://localhost:8080/muke/upload/putongguanliyuan_zhaopian3.jpg', 100);
INSERT INTO `putongguanliyuan` VALUES (34, '2024-03-20 22:51:04', '普通管理员4', '123456', '普通姓名4', '男', '13823888884', '773890004@qq.com', 'http://localhost:8080/muke/upload/putongguanliyuan_zhaopian4.jpg', 100);
INSERT INTO `putongguanliyuan` VALUES (35, '2024-03-20 22:51:04', '普通管理员5', '123456', '普通姓名5', '男', '13823888885', '773890005@qq.com', 'http://localhost:8080/muke/upload/putongguanliyuan_zhaopian5.jpg', 100);
INSERT INTO `putongguanliyuan` VALUES (36, '2024-03-20 22:51:04', '普通管理员6', '123456', '普通姓名6', '男', '13823888886', '773890006@qq.com', 'http://localhost:8080/muke/upload/putongguanliyuan_zhaopian6.jpg', 100);
INSERT INTO `putongguanliyuan` VALUES (1620658669371, '2024-03-20 22:57:49', '70', '70', '管用', '男', '13752369852', '70@qq.com', 'http://localhost:8080/muke/upload/1620658722969.png', 0);

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) NULL DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1620659727675 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1620659655480, '2024-03-20 23:14:15', 1620659023042, 1620659382289, 'kecheng', '语文是怎么炼成的', 'http://localhost:8080/muke/upload/1620659298471.jpg');
INSERT INTO `storeup` VALUES (1620659727674, '2024-03-20 23:15:26', 1620659023042, 1620659488803, 'jiaoshi', '讲6', 'http://localhost:8080/muke/upload/jiangshi_touxiang6.jpg');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'abo', 'users', '管理员', 'nam2rajsusb6z42pc3jb5gjpzg1i8fd3', '2024-03-20 22:58:15', '2024-03-22 21:20:55');
INSERT INTO `token` VALUES (2, 1620659023042, '001', 'yonghu', '用户', 'xa99zuhm11o0te2m68xdqaq73l2c1at2', '2024-03-20 23:04:21', '2021-05-11 00:14:00');
INSERT INTO `token` VALUES (3, 1620658669371, '70', 'putongguanliyuan', '普通管理员', 'bprcuqgw2qvrprawi942ndun90xc2x1j', '2024-03-20 23:04:37', '2021-05-11 00:04:37');
INSERT INTO `token` VALUES (4, 1620658688498, '80', 'kechengguanliyuan', '课程管理员', 'x1v4mfspa2cphxabyfszmciozux63m7f', '2024-03-20 23:06:55', '2021-05-11 00:06:56');
INSERT INTO `token` VALUES (5, 1620659050954, '20', 'jiangshi', '讲师', '8jkmo6c8r8gzzsgacu20jtkqzzeo51jr', '2024-03-20 23:18:41', '2021-05-11 00:18:42');
INSERT INTO `token` VALUES (6, 11, '用户1', 'yonghu', '用户', 'i011deq4tzen6bq9mq7smj50ejxu7gd5', '2024-03-22 20:23:22', '2024-03-22 21:23:23');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'abo', 'abo', '管理员', '2024-03-20 22:51:04');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `nicheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '昵称',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '照片',
  `money` float NULL DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `zhanghao`(`zhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1620659161216 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (11, '2024-03-20 22:51:04', '用户1', '123456', '昵称1', '男', '13823888881', '773890001@qq.com', 'http://localhost:8080/muke/upload/yonghu_zhaopian1.jpg', 100);
INSERT INTO `yonghu` VALUES (12, '2024-03-20 22:51:04', '用户2', '123456', '昵称2', '男', '13823888882', '773890002@qq.com', 'http://localhost:8080/muke/upload/yonghu_zhaopian2.jpg', 100);
INSERT INTO `yonghu` VALUES (13, '2024-03-20 22:51:04', '用户3', '123456', '昵称3', '男', '13823888883', '773890003@qq.com', 'http://localhost:8080/muke/upload/yonghu_zhaopian3.jpg', 100);
INSERT INTO `yonghu` VALUES (14, '2024-03-20 22:51:04', '用户4', '123456', '昵称4', '男', '13823888884', '773890004@qq.com', 'http://localhost:8080/muke/upload/yonghu_zhaopian4.jpg', 100);
INSERT INTO `yonghu` VALUES (15, '2024-03-20 22:51:04', '用户5', '123456', '昵称5', '男', '13823888885', '773890005@qq.com', 'http://localhost:8080/muke/upload/yonghu_zhaopian5.jpg', 100);
INSERT INTO `yonghu` VALUES (1620659023042, '2024-03-20 23:03:43', '001', '001', '李玉', '男', '13125896321', '001@qq.com', 'http://localhost:8080/muke/upload/1620659171327.png', 134);
INSERT INTO `yonghu` VALUES (1620659161215, '2024-03-20 23:06:01', '003', '003', '里散步', '男', '13003232323', '003@qq.com', 'http://localhost:8080/muke/upload/1620659160221.png', 0);

SET FOREIGN_KEY_CHECKS = 1;
