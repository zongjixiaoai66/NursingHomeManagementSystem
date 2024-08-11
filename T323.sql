/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t323`;
CREATE DATABASE IF NOT EXISTS `t323` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t323`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'qinshi_types', '寝室类型', 1, '寝室类型1', NULL, NULL, '2023-02-16 07:19:14'),
	(2, 'qinshi_types', '寝室类型', 2, '寝室类型2', NULL, NULL, '2023-02-16 07:19:14'),
	(3, 'status_types', '寝室状态', 2, '已分配', NULL, NULL, '2023-02-16 07:19:14'),
	(4, 'status_types', '寝室状态', 1, '未分配', NULL, NULL, '2023-02-16 07:19:14'),
	(5, 'meishi_types', '食物类型', 1, '食物类型1', NULL, NULL, '2023-02-16 07:19:15'),
	(6, 'meishi_types', '食物类型', 2, '食物类型2', NULL, NULL, '2023-02-16 07:19:15'),
	(7, 'yinshixihao_types', '食物类型', 1, '食物类型1', NULL, NULL, '2023-02-16 07:19:15'),
	(8, 'yinshixihao_types', '食物类型', 2, '食物类型2', NULL, NULL, '2023-02-16 07:19:15'),
	(9, 'tijian_types', '体检项目', 1, '体检项目1', NULL, NULL, '2023-02-16 07:19:15'),
	(10, 'tijian_types', '体检项目', 2, '体检项目2', NULL, NULL, '2023-02-16 07:19:15'),
	(11, 'yaowu_types', '药物类型', 1, '药物类型1', NULL, NULL, '2023-02-16 07:19:15'),
	(12, 'yaowu_types', '药物类型', 2, '药物类型2', NULL, NULL, '2023-02-16 07:19:15'),
	(13, 'xuqiudai_types', '需求状态', 1, '未提交', NULL, NULL, '2023-02-16 07:19:15'),
	(14, 'xuqiudai_types', '需求状态', 2, '已提交', NULL, NULL, '2023-02-16 07:19:15'),
	(15, 'jiashuyijian_types', '类型', 1, '已处理', NULL, NULL, '2023-02-16 07:19:15'),
	(16, 'jiashuyijian_types', '类型', 2, '未处理', NULL, NULL, '2023-02-16 07:19:15'),
	(17, 'waichu_types', '外出目的', 1, '外出目的1', NULL, NULL, '2023-02-16 07:19:15'),
	(18, 'waichu_types', '外出目的', 2, '外出目的2', NULL, NULL, '2023-02-16 07:19:15'),
	(19, 'fangke_types', '来访目的', 1, '来访目的1', NULL, NULL, '2023-02-16 07:19:15'),
	(20, 'fangke_types', '来访目的', 2, '来访目的2', NULL, NULL, '2023-02-16 07:19:15'),
	(21, 'shigu_types', '事故类型', 1, '事故类型', NULL, NULL, '2023-02-16 07:19:15'),
	(22, 'shigu_types', '事故类型', 2, '事故类型2', NULL, NULL, '2023-02-16 07:19:15'),
	(23, 'yanzheng_types', '严重程度', 1, '严重程度', NULL, NULL, '2023-02-16 07:19:15'),
	(24, 'yanzheng_types', '严重程度', 2, '严重程度2', NULL, NULL, '2023-02-16 07:19:15'),
	(25, 'news_types', '公告类型', 1, '重大通知', NULL, NULL, '2023-02-16 07:19:15'),
	(26, 'news_types', '公告类型', 2, '最新资讯', NULL, NULL, '2023-02-16 07:19:15'),
	(27, 'news_types', '公告类型', 3, '其他', NULL, NULL, '2023-02-16 07:19:15'),
	(28, 'sex_types', '性别', 1, '男', NULL, NULL, '2023-02-16 07:19:15'),
	(29, 'sex_types', '性别', 2, '女', NULL, NULL, '2023-02-16 07:19:15'),
	(30, 'baojing_types', '健康报警', 1, '正常', NULL, NULL, '2023-02-16 07:19:15'),
	(31, 'baojing_types', '健康报警', 2, '危险', NULL, NULL, '2023-02-16 07:19:15'),
	(32, 'jiankang_types', '健康状态', 1, '健康状态1', NULL, NULL, '2023-02-16 07:19:15'),
	(33, 'jiankang_types', '健康状态', 2, '健康状态2', NULL, NULL, '2023-02-16 07:19:15'),
	(34, 'jiankang_types', '健康状态', 3, '健康状态3', NULL, NULL, '2023-02-16 07:19:15'),
	(35, 'jiashu_types', '家属身份', 1, '家属身份1', NULL, NULL, '2023-02-16 07:19:15'),
	(36, 'jiashu_types', '家属身份', 2, '家属身份2', NULL, NULL, '2023-02-16 07:19:15'),
	(37, 'jiashu_types', '家属身份', 3, '家属身份3', NULL, NULL, '2023-02-16 07:19:15');

DROP TABLE IF EXISTS `fangke`;
CREATE TABLE IF NOT EXISTS `fangke` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fangke_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `fangke_mingc` varchar(200) DEFAULT NULL COMMENT '来访人名称',
  `fangke_phone` varchar(200) DEFAULT NULL COMMENT '来访人联系方式',
  `fangke_types` int DEFAULT NULL COMMENT '来访目的 Search111',
  `fangke_time` timestamp NULL DEFAULT NULL COMMENT '来访时间',
  `huilia_time` timestamp NULL DEFAULT NULL COMMENT '离开时间',
  `yonghu_id` int DEFAULT NULL COMMENT '老人',
  `fangke_text` text COMMENT '备注',
  `fangke_content` text COMMENT '详情',
  `fangke_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='访客信息';

DELETE FROM `fangke`;
INSERT INTO `fangke` (`id`, `fangke_name`, `fangke_mingc`, `fangke_phone`, `fangke_types`, `fangke_time`, `huilia_time`, `yonghu_id`, `fangke_text`, `fangke_content`, `fangke_delete`, `create_time`) VALUES
	(1, '标题1', '来访人名称1', '17703786901', 1, '2023-02-16 07:19:21', '2023-02-16 07:19:21', 3, '备注1', '详情1', 1, '2023-02-16 07:19:21'),
	(2, '标题2', '来访人名称2', '17703786902', 2, '2023-02-16 07:19:21', '2023-02-16 07:19:21', 1, '备注2', '详情2', 1, '2023-02-16 07:19:21'),
	(3, '标题3', '来访人名称3', '17703786903', 1, '2023-02-16 07:19:21', '2023-02-16 07:19:21', 2, '备注3', '详情3', 1, '2023-02-16 07:19:21'),
	(4, '标题4', '来访人名称4', '17703786904', 2, '2023-02-16 07:19:21', '2023-02-16 07:19:21', 1, '备注4', '详情4', 1, '2023-02-16 07:19:21'),
	(5, '标题5', '来访人名称5', '17703786905', 1, '2023-02-16 07:19:21', '2023-02-16 07:19:21', 1, '备注5', '详情5', 1, '2023-02-16 07:19:21');

DROP TABLE IF EXISTS `jiashu`;
CREATE TABLE IF NOT EXISTS `jiashu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiashu_name` varchar(200) DEFAULT NULL COMMENT '家属名称  Search111 ',
  `jiashu_photo` varchar(200) DEFAULT NULL COMMENT '家属照片',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `jiashu_phone` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiashu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `jiashu_types` int DEFAULT NULL COMMENT '身份',
  `jiashu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='家属';

DELETE FROM `jiashu`;
INSERT INTO `jiashu` (`id`, `username`, `password`, `jiashu_name`, `jiashu_photo`, `sex_types`, `jiashu_phone`, `jiashu_email`, `jiashu_types`, `jiashu_delete`, `create_time`) VALUES
	(1, '家属1', '123456', '家属名称1', 'upload/jiashu1.jpg', 1, '17703786901', '1@qq.com', 2, 1, '2023-02-16 07:19:21'),
	(2, '家属2', '123456', '家属名称2', 'upload/jiashu2.jpg', 2, '17703786902', '2@qq.com', 3, 1, '2023-02-16 07:19:21'),
	(3, '家属3', '123456', '家属名称3', 'upload/jiashu3.jpg', 1, '17703786903', '3@qq.com', 2, 1, '2023-02-16 07:19:21');

DROP TABLE IF EXISTS `jiashuyijian`;
CREATE TABLE IF NOT EXISTS `jiashuyijian` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiashuyijian_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `jiashuyijian_types` int DEFAULT NULL COMMENT '类型 Search111-',
  `jiashu_id` int DEFAULT NULL COMMENT '家属',
  `jiashuyijian_content` text COMMENT '详细信息',
  `jiashuyijian_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='家属意见';

DELETE FROM `jiashuyijian`;
INSERT INTO `jiashuyijian` (`id`, `jiashuyijian_name`, `jiashuyijian_types`, `jiashu_id`, `jiashuyijian_content`, `jiashuyijian_delete`, `create_time`) VALUES
	(1, '标题1', 1, 1, '详细信息1', 1, '2023-02-16 07:19:21'),
	(2, '标题2', 1, 1, '详细信息2', 1, '2023-02-16 07:19:21'),
	(3, '标题3', 1, 2, '详细信息3', 1, '2023-02-16 07:19:21'),
	(4, '标题4', 1, 2, '详细信息4', 1, '2023-02-16 07:19:21'),
	(5, '标题5', 1, 1, '详细信息5', 1, '2023-02-16 07:19:21'),
	(6, '123', 2, 1, '<p>123</p>', 1, '2023-02-16 08:31:34');

DROP TABLE IF EXISTS `meishi`;
CREATE TABLE IF NOT EXISTS `meishi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `meishi_name` varchar(200) DEFAULT NULL COMMENT '食物名称  Search111 ',
  `meishi_photo` varchar(200) DEFAULT NULL COMMENT '食物照片',
  `meishi_types` int DEFAULT NULL COMMENT '食物类型 Search111',
  `meishi_new_money` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `meishi_content` text COMMENT '食物介绍 ',
  `meishi_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='食物';

DELETE FROM `meishi`;
INSERT INTO `meishi` (`id`, `meishi_name`, `meishi_photo`, `meishi_types`, `meishi_new_money`, `meishi_content`, `meishi_delete`, `create_time`) VALUES
	(1, '食物名称1', 'upload/meishi1.jpg', 1, 467.90, '食物介绍1', 1, '2023-02-16 07:19:21'),
	(2, '食物名称2', 'upload/meishi2.jpg', 1, 77.84, '食物介绍2', 1, '2023-02-16 07:19:21'),
	(3, '食物名称3', 'upload/meishi3.jpg', 1, 396.16, '食物介绍3', 1, '2023-02-16 07:19:21'),
	(4, '食物名称4', 'upload/meishi4.jpg', 2, 218.37, '食物介绍4', 1, '2023-02-16 07:19:21'),
	(5, '食物名称5', 'upload/meishi5.jpg', 2, 445.12, '食物介绍5', 1, '2023-02-16 07:19:21');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告信息标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告信息图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告信息标题1', 1, 'upload/news1.jpg', '2023-02-16 07:19:21', '公告详情1', '2023-02-16 07:19:21'),
	(2, '公告信息标题2', 3, 'upload/news2.jpg', '2023-02-16 07:19:21', '公告详情2', '2023-02-16 07:19:21'),
	(3, '公告信息标题3', 3, 'upload/news3.jpg', '2023-02-16 07:19:21', '公告详情3', '2023-02-16 07:19:21'),
	(4, '公告信息标题4', 1, 'upload/news4.jpg', '2023-02-16 07:19:21', '公告详情4', '2023-02-16 07:19:21'),
	(5, '公告信息标题5', 2, 'upload/news5.jpg', '2023-02-16 07:19:21', '公告详情5', '2023-02-16 07:19:21');

DROP TABLE IF EXISTS `qinshi`;
CREATE TABLE IF NOT EXISTS `qinshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qinshi_name` varchar(200) DEFAULT NULL COMMENT '寝室位置  Search111 ',
  `qinshi_types` int DEFAULT NULL COMMENT '寝室类型 Search111',
  `status_types` int DEFAULT NULL COMMENT '寝室状态 Search111',
  `qinshi_content` text COMMENT '寝室详情 ',
  `qinshi_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='寝室信息';

DELETE FROM `qinshi`;
INSERT INTO `qinshi` (`id`, `qinshi_name`, `qinshi_types`, `status_types`, `qinshi_content`, `qinshi_delete`, `create_time`) VALUES
	(1, '寝室位置1', 1, 1, '寝室详情1', 1, '2023-02-16 07:19:21'),
	(2, '寝室位置2', 2, 1, '寝室详情2', 1, '2023-02-16 07:19:21'),
	(3, '寝室位置3', 2, 1, '寝室详情3', 1, '2023-02-16 07:19:21'),
	(4, '寝室位置4', 2, 1, '寝室详情4', 1, '2023-02-16 07:19:21'),
	(5, '寝室位置5', 1, 1, '寝室详情5', 1, '2023-02-16 07:19:21');

DROP TABLE IF EXISTS `qinshifenpei`;
CREATE TABLE IF NOT EXISTS `qinshifenpei` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '老人',
  `qinshi_id` int DEFAULT NULL COMMENT '寝室',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '分配时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='寝室分配信息';

DELETE FROM `qinshifenpei`;

DROP TABLE IF EXISTS `shigu`;
CREATE TABLE IF NOT EXISTS `shigu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shigu_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `shigu_time` timestamp NULL DEFAULT NULL COMMENT '事故时间',
  `shigu_address` varchar(200) DEFAULT NULL COMMENT '地点',
  `shigu_types` int DEFAULT NULL COMMENT '事故类型 Search111',
  `yanzheng_types` int DEFAULT NULL COMMENT '严重程度 Search111',
  `yonghu_id` int DEFAULT NULL COMMENT '老人',
  `shigu_text` text COMMENT '备注',
  `shigu_content` text COMMENT '详情',
  `shigu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='老人事故信息';

DELETE FROM `shigu`;
INSERT INTO `shigu` (`id`, `shigu_name`, `shigu_time`, `shigu_address`, `shigu_types`, `yanzheng_types`, `yonghu_id`, `shigu_text`, `shigu_content`, `shigu_delete`, `create_time`) VALUES
	(1, '标题1', '2023-02-16 07:19:21', '地点1', 2, 1, 2, '备注1', '详情1', 1, '2023-02-16 07:19:21'),
	(2, '标题2', '2023-02-16 07:19:21', '地点2', 2, 2, 3, '备注2', '详情2', 1, '2023-02-16 07:19:21'),
	(3, '标题3', '2023-02-16 07:19:21', '地点3', 1, 2, 1, '备注3', '详情3', 1, '2023-02-16 07:19:21'),
	(4, '标题4', '2023-02-16 07:19:21', '地点4', 1, 1, 2, '备注4', '详情4', 1, '2023-02-16 07:19:21'),
	(5, '标题5', '2023-02-16 07:19:21', '地点5', 2, 2, 1, '备注5', '详情5', 1, '2023-02-16 07:19:21');

DROP TABLE IF EXISTS `tijian`;
CREATE TABLE IF NOT EXISTS `tijian` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `tijian_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `tijian_types` int DEFAULT NULL COMMENT '体检项目 Search111',
  `tijian_file` varchar(200) DEFAULT NULL COMMENT '体检文件',
  `tijian_new_money` decimal(10,2) DEFAULT NULL COMMENT '体检价格',
  `tijian_content` text COMMENT '体检项目介绍',
  `tijian_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='体检';

DELETE FROM `tijian`;
INSERT INTO `tijian` (`id`, `tijian_name`, `tijian_types`, `tijian_file`, `tijian_new_money`, `tijian_content`, `tijian_delete`, `create_time`) VALUES
	(1, '标题1', 1, 'upload/file.rar', 359.60, '体检项目介绍1', 1, '2023-02-16 07:19:21'),
	(2, '标题2', 1, 'upload/file.rar', 244.93, '体检项目介绍2', 1, '2023-02-16 07:19:21'),
	(3, '标题3', 1, 'upload/file.rar', 369.76, '体检项目介绍3', 1, '2023-02-16 07:19:21'),
	(4, '标题4', 2, 'upload/file.rar', 69.91, '体检项目介绍4', 1, '2023-02-16 07:19:21'),
	(5, '标题5', 1, 'upload/file.rar', 170.28, '体检项目介绍5', 1, '2023-02-16 07:19:21');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'kfdwl6jvs9t9ve1f8zn0eey6jin0hgsl', '2023-02-16 06:31:43', '2024-08-04 02:43:36'),
	(2, 1, 'a1', 'jiashu', '家属', 'evbzxp2okqeptirhrjffgv67hxhppcep', '2023-02-16 07:38:17', '2024-08-04 02:45:09'),
	(3, 1, 'a1', 'yonghu', '老人', 'aswpf1wfw5kr7p3mj70kqjafoui7j7bf', '2023-02-16 07:43:50', '2024-08-04 02:45:29'),
	(4, 2, 'a2', 'yonghu', '老人', 'k2o0n1zawf5nsr3krfh2s151z9y2w843', '2023-02-16 08:14:39', '2023-02-16 09:14:40');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `waichu`;
CREATE TABLE IF NOT EXISTS `waichu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `waichu_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `waichu_types` int DEFAULT NULL COMMENT '外出目的 Search111',
  `waichu_time` timestamp NULL DEFAULT NULL COMMENT '外出时间',
  `huilia_time` timestamp NULL DEFAULT NULL COMMENT '回来时间',
  `yonghu_id` int DEFAULT NULL COMMENT '老人',
  `waichu_text` text COMMENT '备注',
  `waichu_content` text COMMENT '详情',
  `waichu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='老人外出信息';

DELETE FROM `waichu`;
INSERT INTO `waichu` (`id`, `waichu_name`, `waichu_types`, `waichu_time`, `huilia_time`, `yonghu_id`, `waichu_text`, `waichu_content`, `waichu_delete`, `create_time`) VALUES
	(1, '标题1', 1, '2023-02-16 07:19:21', '2023-02-16 07:19:21', 1, '备注1', '详情1', 1, '2023-02-16 07:19:21'),
	(2, '标题2', 2, '2023-02-16 07:19:21', '2023-02-16 07:19:21', 3, '备注2', '详情2', 1, '2023-02-16 07:19:21'),
	(3, '标题3', 1, '2023-02-16 07:19:21', '2023-02-16 07:19:21', 3, '备注3', '详情3', 1, '2023-02-16 07:19:21'),
	(4, '标题4', 2, '2023-02-16 07:19:21', '2023-02-16 07:19:21', 3, '备注4', '详情4', 1, '2023-02-16 07:19:21'),
	(5, '标题5', 1, '2023-02-16 07:19:21', '2023-02-16 07:19:21', 1, '备注5', '详情5', 1, '2023-02-16 07:19:21');

DROP TABLE IF EXISTS `xuqiudai`;
CREATE TABLE IF NOT EXISTS `xuqiudai` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yaowu_id` int DEFAULT NULL COMMENT '药物',
  `yonghu_id` int DEFAULT NULL COMMENT '老人',
  `xuqiudai_kucun_number` int DEFAULT NULL COMMENT '需求数量',
  `xuqiudai_types` int DEFAULT NULL COMMENT '需求状态 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='需求袋';

DELETE FROM `xuqiudai`;
INSERT INTO `xuqiudai` (`id`, `yaowu_id`, `yonghu_id`, `xuqiudai_kucun_number`, `xuqiudai_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 101, 2, '2023-02-16 07:19:21', '2023-02-16 07:19:21'),
	(2, 2, 1, 102, 2, '2023-02-16 07:19:21', '2023-02-16 07:19:21'),
	(3, 3, 2, 103, 1, '2023-02-16 07:19:21', '2023-02-16 07:19:21'),
	(4, 4, 1, 104, 2, '2023-02-16 07:19:21', '2023-02-16 07:19:21'),
	(5, 5, 3, 105, 2, '2023-02-16 07:19:21', '2023-02-16 07:19:21'),
	(11, 5, 1, 100, 2, '2023-02-16 08:02:12', '2023-02-16 08:02:12');

DROP TABLE IF EXISTS `yaowu`;
CREATE TABLE IF NOT EXISTS `yaowu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yaowu_name` varchar(200) DEFAULT NULL COMMENT '药物名称  Search111 ',
  `yaowu_types` int DEFAULT NULL COMMENT '药物类型 Search111',
  `yaowu_kucun_number` int DEFAULT NULL COMMENT '药物数量',
  `yaowu_content` text COMMENT '药物介绍 ',
  `yaowu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='药物';

DELETE FROM `yaowu`;
INSERT INTO `yaowu` (`id`, `yaowu_name`, `yaowu_types`, `yaowu_kucun_number`, `yaowu_content`, `yaowu_delete`, `create_time`) VALUES
	(1, '药物名称1', 2, 101, '药物介绍1', 1, '2023-02-16 07:19:21'),
	(2, '药物名称2', 2, 102, '药物介绍2', 1, '2023-02-16 07:19:21'),
	(3, '药物名称3', 1, 103, '药物介绍3', 1, '2023-02-16 07:19:21'),
	(4, '药物名称4', 2, 104, '药物介绍4', 1, '2023-02-16 07:19:21'),
	(5, '药物名称5', 1, 5, '药物介绍5', 1, '2023-02-16 08:02:12');

DROP TABLE IF EXISTS `yinshixihao`;
CREATE TABLE IF NOT EXISTS `yinshixihao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yinshixihao_name` varchar(200) DEFAULT NULL COMMENT '食物名称  Search111 ',
  `yinshixihao_photo` varchar(200) DEFAULT NULL COMMENT '食物照片',
  `yinshixihao_types` int DEFAULT NULL COMMENT '食物类型 Search111',
  `yonghu_id` int DEFAULT NULL COMMENT '老人',
  `yinshixihao_content` text COMMENT '食物介绍 ',
  `yinshixihao_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='饮食喜好';

DELETE FROM `yinshixihao`;
INSERT INTO `yinshixihao` (`id`, `yinshixihao_name`, `yinshixihao_photo`, `yinshixihao_types`, `yonghu_id`, `yinshixihao_content`, `yinshixihao_delete`, `create_time`) VALUES
	(1, '食物名称1', 'upload/meishi1.jpg', 2, 1, '食物介绍1', 1, '2023-02-16 07:19:21'),
	(2, '食物名称2', 'upload/meishi2.jpg', 1, 1, '食物介绍2', 1, '2023-02-16 07:19:21'),
	(3, '食物名称3', 'upload/meishi3.jpg', 2, 1, '食物介绍3', 1, '2023-02-16 07:19:21'),
	(4, '食物名称4', 'upload/meishi4.jpg', 2, 3, '食物介绍4', 1, '2023-02-16 07:19:21'),
	(5, '食物名称5', 'upload/meishi5.jpg', 1, 2, '食物介绍5', 1, '2023-02-16 07:19:21');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '老人姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `jiankang_types` int DEFAULT NULL COMMENT '健康状态 Search111 ',
  `yonghu_age` int DEFAULT NULL COMMENT '年龄',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '紧急联系方式',
  `yonghu_address` varchar(200) DEFAULT NULL COMMENT '住址',
  `baojing_types` int DEFAULT NULL COMMENT '健康报警 Search111 ',
  `jiashu_id` int DEFAULT NULL COMMENT '家属',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='老人';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `sex_types`, `jiankang_types`, `yonghu_age`, `yonghu_phone`, `yonghu_address`, `baojing_types`, `jiashu_id`, `yonghu_delete`, `insert_time`, `create_time`) VALUES
	(1, '老人1', '123456', '老人姓名1', 'upload/yonghu1.jpg', 1, 1, 242, '17703786901', '住址1', 1, 2, 1, '2023-02-16 07:19:21', '2023-02-16 07:19:21'),
	(2, '老人2', '123456', '老人姓名2', 'upload/yonghu2.jpg', 1, 3, 137, '17703786902', '住址2', 2, 3, 1, '2023-02-16 07:19:21', '2023-02-16 07:19:21'),
	(3, '老人3', '123456', '老人姓名3', 'upload/yonghu3.jpg', 2, 3, 326, '17703786903', '住址3', 2, 1, 1, '2023-02-16 07:19:21', '2023-02-16 07:19:21');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
