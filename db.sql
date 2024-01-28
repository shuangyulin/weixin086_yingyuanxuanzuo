/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm110wq
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm110wq` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm110wq`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-03-18 11:17:03',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-18 11:17:03',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-18 11:17:03',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-18 11:17:03',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-18 11:17:03',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-18 11:17:03',6,'宇宙银河系月球1号','月某','13823888886','是');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm110wq/upload/1616038265405.jpg'),(2,'picture2','http://localhost:8080/ssm110wq/upload/1616038273200.jpg'),(3,'picture3','http://localhost:8080/ssm110wq/upload/1616038504888.jpeg'),(6,'homepage',NULL);

/*Table structure for table `dianyingleixing` */

DROP TABLE IF EXISTS `dianyingleixing`;

CREATE TABLE `dianyingleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingleixing` varchar(200) NOT NULL COMMENT '电影类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dianyingleixing` (`dianyingleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1616038390948 DEFAULT CHARSET=utf8 COMMENT='电影类型';

/*Data for the table `dianyingleixing` */

insert  into `dianyingleixing`(`id`,`addtime`,`dianyingleixing`) values (31,'2021-03-18 11:17:03','爱情片'),(32,'2021-03-18 11:17:03','动作片'),(33,'2021-03-18 11:17:03','动漫片'),(34,'2021-03-18 11:17:03','悬疑片'),(1616038390947,'2021-03-18 11:33:10','喜剧片');

/*Table structure for table `dianyingxinxi` */

DROP TABLE IF EXISTS `dianyingxinxi`;

CREATE TABLE `dianyingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingmingcheng` varchar(200) NOT NULL COMMENT '电影名称',
  `dianyingleixing` varchar(200) NOT NULL COMMENT '电影类型',
  `haibao` varchar(200) DEFAULT NULL COMMENT '海报',
  `daoyan` varchar(200) DEFAULT NULL COMMENT '导演',
  `zhuyan` varchar(200) DEFAULT NULL COMMENT '主演',
  `shangyingriqi` datetime DEFAULT NULL COMMENT '上映日期',
  `pianzhang` varchar(200) DEFAULT NULL COMMENT '片长',
  `dianyingyugao` varchar(200) DEFAULT NULL COMMENT '电影预告',
  `dianyingjianjie` longtext COMMENT '电影简介',
  `yingyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '影院名称',
  `fangyingting` varchar(200) DEFAULT NULL COMMENT '放映厅',
  `changci` datetime DEFAULT NULL COMMENT '场次',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `number` int(11) NOT NULL COMMENT '座位总数',
  `selected` longtext COMMENT '已选座位[用,号隔开]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616038459482 DEFAULT CHARSET=utf8 COMMENT='电影信息';

/*Data for the table `dianyingxinxi` */

insert  into `dianyingxinxi`(`id`,`addtime`,`dianyingmingcheng`,`dianyingleixing`,`haibao`,`daoyan`,`zhuyan`,`shangyingriqi`,`pianzhang`,`dianyingyugao`,`dianyingjianjie`,`yingyuanmingcheng`,`fangyingting`,`changci`,`clicktime`,`clicknum`,`price`,`number`,`selected`) values (51,'2021-03-18 11:17:03','电影名称1','动作片','http://localhost:8080/ssm110wq/upload/1616038150972.jpg','导演1','主演1','2021-03-18 11:17:03','片长1','','<p>电影简介1</p>','影院名称1','放映厅1','2021-03-18 11:17:03','2021-03-18 11:29:00',2,99.9,20,'1,3,5,7,9'),(52,'2021-03-18 11:17:03','电影名称2','动作片','http://localhost:8080/ssm110wq/upload/1616038160410.jpg','导演2','主演2','2021-03-18 11:17:03','片长2','','<p>电影简介2</p>','影院名称2','放映厅2','2021-03-18 11:17:03','2021-03-18 11:29:14',3,99.9,20,'1,3,5,7,9'),(53,'2021-03-18 11:17:03','电影名称3','动漫片','http://localhost:8080/ssm110wq/upload/1616038190865.jpg','导演3','主演3','2021-03-18 11:17:03','片长3','','<p>电影简介3</p>','影院名称3','放映厅3','2021-03-18 11:17:03','2021-03-18 11:41:05',12,99.9,20,'1,3,5,7,9'),(54,'2021-03-18 11:17:03','电影名称4','悬疑片','http://localhost:8080/ssm110wq/upload/1616038200798.jpg','导演4','主演4','2021-03-18 11:17:03','片长4','','<p>电影简介4</p>','影院名称4','放映厅4','2021-03-18 11:17:03','2021-03-18 11:29:54',5,99.9,20,'1,3,5,7,9'),(56,'2021-03-18 11:17:03','电影名称6','爱情片','http://localhost:8080/ssm110wq/upload/1616038224086.jpg','导演6','主演6','2021-03-18 11:17:03','片长6','','<p>电影简介6</p>','影院名称6','放映厅6','2021-03-18 11:17:03','2021-03-18 11:30:16',7,99.9,20,'1,3,5,7,9'),(1616038459481,'2021-03-18 11:34:19','你还，李焕英','喜剧片','http://localhost:8080/ssm110wq/upload/1616038412009.jpg','贾玲','贾玲/张小斐','2021-02-12 08:00:00','128分钟','http://localhost:8080/ssm110wq/upload/1616038437790.mp4','<p>2001年的某一天，刚刚考上大学的贾晓玲经历了人生中的一次大起大落。一心想要成为母亲骄傲的她却因母亲突遭严重意外，而悲痛万分。在贾晓玲情绪崩溃的状态下，竟意外的回到了1981年，并与年轻的母亲李焕英相遇，二人形影不离，宛如闺蜜。与此同时，也结识了一群天真善良的好朋友。晓玲以为来到了这片“广阔天地”，她可以凭借自己超前的思维，让母亲“大有作为”，但结果却让晓玲感到意外......。</p>','大地影院','1号厅','2021-03-19 10:00:00','2021-03-18 11:44:30',7,45,20,'1,2,3,4,11,12,14,15,16,17');

/*Table structure for table `discussdianyingxinxi` */

DROP TABLE IF EXISTS `discussdianyingxinxi`;

CREATE TABLE `discussdianyingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616039054312 DEFAULT CHARSET=utf8 COMMENT='电影信息评论表';

/*Data for the table `discussdianyingxinxi` */

insert  into `discussdianyingxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-03-18 11:17:03',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-18 11:17:03',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-18 11:17:03',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-18 11:17:03',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-18 11:17:03',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-18 11:17:03',6,6,'用户名6','评论内容6','回复内容6'),(1616038585489,'2021-03-18 11:36:24',1616038459481,1616038522585,'1','很不错的电影，很感动',''),(1616039054311,'2021-03-18 11:44:14',1616038459481,1616038798967,'2','想起了小时候经常跟妈妈去工厂车间的场景，感谢贾玲的电影，让我想起萦绕在脑海中的一句话，一定要让妈妈高兴','');

/*Table structure for table `discussyingyuanxinxi` */

DROP TABLE IF EXISTS `discussyingyuanxinxi`;

CREATE TABLE `discussyingyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616038892379 DEFAULT CHARSET=utf8 COMMENT='影院信息评论表';

/*Data for the table `discussyingyuanxinxi` */

insert  into `discussyingyuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-03-18 11:17:03',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-03-18 11:17:03',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-03-18 11:17:03',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-03-18 11:17:03',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-03-18 11:17:03',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-03-18 11:17:03',6,6,'用户名6','评论内容6','回复内容6'),(1616038892378,'2021-03-18 11:41:32',1616038383098,1616038798967,'2','很不错的影院','');

/*Table structure for table `fangyingting` */

DROP TABLE IF EXISTS `fangyingting`;

CREATE TABLE `fangyingting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangyingting` varchar(200) NOT NULL COMMENT '放映厅',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangyingting` (`fangyingting`)
) ENGINE=InnoDB AUTO_INCREMENT=1616038397510 DEFAULT CHARSET=utf8 COMMENT='放映厅';

/*Data for the table `fangyingting` */

insert  into `fangyingting`(`id`,`addtime`,`fangyingting`) values (41,'2021-03-18 11:17:03','放映厅1'),(42,'2021-03-18 11:17:03','放映厅2'),(43,'2021-03-18 11:17:03','放映厅3'),(44,'2021-03-18 11:17:03','放映厅4'),(45,'2021-03-18 11:17:03','放映厅5'),(46,'2021-03-18 11:17:03','放映厅6'),(1616038397509,'2021-03-18 11:33:16','1号厅');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616038491180 DEFAULT CHARSET=utf8 COMMENT='电影资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (92,'2021-03-18 11:17:03','标题2','简介2','http://localhost:8080/ssm110wq/upload/1616038247112.jpg','<p>内容2</p>'),(93,'2021-03-18 11:17:03','标题3','简介3','http://localhost:8080/ssm110wq/upload/news_picture3.jpg','内容3'),(94,'2021-03-18 11:17:03','标题4','简介4','http://localhost:8080/ssm110wq/upload/1616038236896.jpg','<p>内容4</p>'),(95,'2021-03-18 11:17:03','标题5','简介5','http://localhost:8080/ssm110wq/upload/news_picture5.jpg','内容5'),(96,'2021-03-18 11:17:03','标题6','简介6','http://localhost:8080/ssm110wq/upload/news_picture6.jpg','内容6'),(1616038491179,'2021-03-18 11:34:50','新电影上线资讯','新电影','http://localhost:8080/ssm110wq/upload/1616038478735.jpg','<p>资讯内容</p><p><img src=\"http://localhost:8080/ssm110wq/upload/1616038488296.jpg\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'dianyingxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1616038943445 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1616038565886,'2021-03-18 11:36:05','20213181136538120831','dianyingxinxi',1616038522585,1616038459481,'你还，李焕英','http://localhost:8080/ssm110wq/upload/1616038412009.jpg',2,45,45,90,90,1,'已完成','14,15'),(1616038943444,'2021-03-18 11:42:23','20213181142238882598','dianyingxinxi',1616038798967,1616038459481,'你还，李焕英','http://localhost:8080/ssm110wq/upload/1616038412009.jpg',2,45,45,90,90,1,'已完成','16,17');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616038910453 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1616038910452,'2021-03-18 11:41:49',1616038798967,1616038459481,'dianyingxinxi','你还，李焕英','http://localhost:8080/ssm110wq/upload/1616038412009.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','ribl5vymun8qsj6z34ybnzf0x38jf7fw','2021-03-18 11:27:15','2021-03-18 12:27:16'),(2,1,'abo','users','管理员','46n9n142znipzh3as1uzyze3v8mzj3hm','2021-03-18 11:28:17','2021-03-18 12:32:00'),(3,1616038522585,'1','yonghu','用户','himk5ao915zf3tslia4nsh32yg113m94','2021-03-18 11:35:29','2021-03-18 12:35:29'),(4,1616038798967,'2','yonghu','用户','4i5usxkjr0mjw7rsdtlxazsdbybrbvd3','2021-03-18 11:40:35','2021-03-18 12:44:28');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-18 11:17:03');

/*Table structure for table `yingyuanxinxi` */

DROP TABLE IF EXISTS `yingyuanxinxi`;

CREATE TABLE `yingyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yingyuanmingcheng` varchar(200) NOT NULL COMMENT '影院名称',
  `yingyuanguimo` varchar(200) DEFAULT NULL COMMENT '影院规模',
  `yingyuantupian` varchar(200) DEFAULT NULL COMMENT '影院图片',
  `yingtingshuliang` int(11) DEFAULT NULL COMMENT '影厅数量',
  `yingyuanjieshao` longtext COMMENT '影院介绍',
  `yingyuandizhi` varchar(200) DEFAULT NULL COMMENT '影院地址',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616038383099 DEFAULT CHARSET=utf8 COMMENT='影院信息';

/*Data for the table `yingyuanxinxi` */

insert  into `yingyuanxinxi`(`id`,`addtime`,`yingyuanmingcheng`,`yingyuanguimo`,`yingyuantupian`,`yingtingshuliang`,`yingyuanjieshao`,`yingyuandizhi`,`lianxidianhua`) values (21,'2021-03-18 11:17:03','影院名称1','小型','http://localhost:8080/ssm110wq/upload/yingyuanxinxi_yingyuantupian1.jpg',1,'影院介绍1','影院地址1','联系电话1'),(23,'2021-03-18 11:17:03','影院名称3','小型','http://localhost:8080/ssm110wq/upload/yingyuanxinxi_yingyuantupian3.jpg',3,'影院介绍3','影院地址3','联系电话3'),(24,'2021-03-18 11:17:03','影院名称4','小型','http://localhost:8080/ssm110wq/upload/yingyuanxinxi_yingyuantupian4.jpg',4,'影院介绍4','影院地址4','联系电话4'),(25,'2021-03-18 11:17:03','影院名称5','小型','http://localhost:8080/ssm110wq/upload/yingyuanxinxi_yingyuantupian5.jpg',5,'影院介绍5','影院地址5','联系电话5'),(26,'2021-03-18 11:17:03','影院名称6','小型','http://localhost:8080/ssm110wq/upload/yingyuanxinxi_yingyuantupian6.jpg',6,'影院介绍6','影院地址6','联系电话6'),(1616038383098,'2021-03-18 11:33:02','大地影院','中型','http://localhost:8080/ssm110wq/upload/1616038356752.jpg',6,'<p>影院介绍</p><p><img src=\"http://localhost:8080/ssm110wq/upload/1616038380805.jpg\"></p>','广州市增城区挂绿广场5楼','020-12345678');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1616038798968 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`money`) values (11,'2021-03-18 11:17:03','用户1','123456','姓名1','男','http://localhost:8080/ssm110wq/upload/yonghu_touxiang1.jpg','13823888881',100),(12,'2021-03-18 11:17:03','用户2','123456','姓名2','男','http://localhost:8080/ssm110wq/upload/yonghu_touxiang2.jpg','13823888882',100),(13,'2021-03-18 11:17:03','用户3','123456','姓名3','男','http://localhost:8080/ssm110wq/upload/yonghu_touxiang3.jpg','13823888883',100),(14,'2021-03-18 11:17:03','用户4','123456','姓名4','男','http://localhost:8080/ssm110wq/upload/yonghu_touxiang4.jpg','13823888884',100),(15,'2021-03-18 11:17:03','用户5','123456','姓名5','男','http://localhost:8080/ssm110wq/upload/yonghu_touxiang5.jpg','13823888885',100),(16,'2021-03-18 11:17:03','用户6','123456','姓名6','男','http://localhost:8080/ssm110wq/upload/yonghu_touxiang6.jpg','13823888886',100),(1616038522585,'2021-03-18 11:35:22','1','1','王明','男','http://localhost:8080/ssm110wq/upload/1616038539244.jpg','12312312312',110),(1616038798967,'2021-03-18 11:39:58','2','2','陈一','女','http://localhost:8080/ssm110wq/upload/1616038840405.jpg','12312345678',110);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
