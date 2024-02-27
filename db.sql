/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootsl52i
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootsl52i` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootsl52i`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootsl52i/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springbootsl52i/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springbootsl52i/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `duihuanqingdan` */

DROP TABLE IF EXISTS `duihuanqingdan`;

CREATE TABLE `duihuanqingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `wupinbianhao` varchar(200) DEFAULT NULL COMMENT '物品编号',
  `jifen` varchar(200) DEFAULT NULL COMMENT '积分',
  `wupintupian` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='兑换清单';

/*Data for the table `duihuanqingdan` */

insert  into `duihuanqingdan`(`id`,`addtime`,`zhanghao`,`xingming`,`wupinmingcheng`,`wupinbianhao`,`jifen`,`wupintupian`,`sfsh`,`shhf`,`userid`) values (81,'2021-04-01 21:22:56','账号1','姓名1','物品名称1','物品编号1','10000','http://localhost:8080/springbootsl52i/upload/duihuanqingdan_wupintupian1.jpg','是','',1),(82,'2021-04-01 21:22:56','账号2','姓名2','物品名称2','物品编号2','10000','http://localhost:8080/springbootsl52i/upload/duihuanqingdan_wupintupian2.jpg','是','',2),(83,'2021-04-01 21:22:56','账号3','姓名3','物品名称3','物品编号3','10000','http://localhost:8080/springbootsl52i/upload/duihuanqingdan_wupintupian3.jpg','是','',3),(84,'2021-04-01 21:22:56','账号4','姓名4','物品名称4','物品编号4','10000','http://localhost:8080/springbootsl52i/upload/duihuanqingdan_wupintupian4.jpg','是','',4),(85,'2021-04-01 21:22:56','账号5','姓名5','物品名称5','物品编号5','10000','http://localhost:8080/springbootsl52i/upload/duihuanqingdan_wupintupian5.jpg','是','',5),(86,'2021-04-01 21:22:56','账号6','姓名6','物品名称6','物品编号6','10000','http://localhost:8080/springbootsl52i/upload/duihuanqingdan_wupintupian6.jpg','是','',6);

/*Table structure for table `duihuanwupin` */

DROP TABLE IF EXISTS `duihuanwupin`;

CREATE TABLE `duihuanwupin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinbianhao` varchar(200) DEFAULT NULL COMMENT '物品编号',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `wupinxiangqing` varchar(200) DEFAULT NULL COMMENT '物品详情',
  `jifen` varchar(200) DEFAULT NULL COMMENT '积分',
  `wupintupian` varchar(200) DEFAULT NULL COMMENT '物品图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='兑换物品';

/*Data for the table `duihuanwupin` */

insert  into `duihuanwupin`(`id`,`addtime`,`wupinbianhao`,`wupinmingcheng`,`wupinxiangqing`,`jifen`,`wupintupian`) values (61,'2021-04-01 21:22:56','物品编号1','物品名称1','物品详情1','10000','http://localhost:8080/springbootsl52i/upload/duihuanwupin_wupintupian1.jpg'),(62,'2021-04-01 21:22:56','物品编号2','物品名称2','物品详情2','10000','http://localhost:8080/springbootsl52i/upload/duihuanwupin_wupintupian2.jpg'),(63,'2021-04-01 21:22:56','物品编号3','物品名称3','物品详情3','10000','http://localhost:8080/springbootsl52i/upload/duihuanwupin_wupintupian3.jpg'),(64,'2021-04-01 21:22:56','物品编号4','物品名称4','物品详情4','10000','http://localhost:8080/springbootsl52i/upload/duihuanwupin_wupintupian4.jpg'),(65,'2021-04-01 21:22:56','物品编号5','物品名称5','物品详情5','10000','http://localhost:8080/springbootsl52i/upload/duihuanwupin_wupintupian5.jpg'),(66,'2021-04-01 21:22:56','物品编号6','物品名称6','物品详情6','10000','http://localhost:8080/springbootsl52i/upload/duihuanwupin_wupintupian6.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='广告通知';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-04-01 21:22:56','标题1','简介1','http://localhost:8080/springbootsl52i/upload/news_picture1.jpg','内容1'),(112,'2021-04-01 21:22:56','标题2','简介2','http://localhost:8080/springbootsl52i/upload/news_picture2.jpg','内容2'),(113,'2021-04-01 21:22:56','标题3','简介3','http://localhost:8080/springbootsl52i/upload/news_picture3.jpg','内容3'),(114,'2021-04-01 21:22:56','标题4','简介4','http://localhost:8080/springbootsl52i/upload/news_picture4.jpg','内容4'),(115,'2021-04-01 21:22:56','标题5','简介5','http://localhost:8080/springbootsl52i/upload/news_picture5.jpg','内容5'),(116,'2021-04-01 21:22:56','标题6','简介6','http://localhost:8080/springbootsl52i/upload/news_picture6.jpg','内容6');

/*Table structure for table `qiandao` */

DROP TABLE IF EXISTS `qiandao`;

CREATE TABLE `qiandao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `qiandaoshijian` datetime DEFAULT NULL COMMENT '签到时间',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='签到';

/*Data for the table `qiandao` */

insert  into `qiandao`(`id`,`addtime`,`zhanghao`,`xingming`,`qiandaoshijian`,`zhaopian`,`userid`) values (21,'2021-04-01 21:22:56','账号1','姓名1','2021-04-01 21:22:56','http://localhost:8080/springbootsl52i/upload/qiandao_zhaopian1.jpg',1),(22,'2021-04-01 21:22:56','账号2','姓名2','2021-04-01 21:22:56','http://localhost:8080/springbootsl52i/upload/qiandao_zhaopian2.jpg',2),(23,'2021-04-01 21:22:56','账号3','姓名3','2021-04-01 21:22:56','http://localhost:8080/springbootsl52i/upload/qiandao_zhaopian3.jpg',3),(24,'2021-04-01 21:22:56','账号4','姓名4','2021-04-01 21:22:56','http://localhost:8080/springbootsl52i/upload/qiandao_zhaopian4.jpg',4),(25,'2021-04-01 21:22:56','账号5','姓名5','2021-04-01 21:22:56','http://localhost:8080/springbootsl52i/upload/qiandao_zhaopian5.jpg',5),(26,'2021-04-01 21:22:56','账号6','姓名6','2021-04-01 21:22:56','http://localhost:8080/springbootsl52i/upload/qiandao_zhaopian6.jpg',6);

/*Table structure for table `renwu` */

DROP TABLE IF EXISTS `renwu`;

CREATE TABLE `renwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `renwubianhao` varchar(200) DEFAULT NULL COMMENT '任务编号',
  `renwumingcheng` varchar(200) NOT NULL COMMENT '任务名称',
  `renwuleixing` varchar(200) DEFAULT NULL COMMENT '任务类型',
  `renwuxiangqing` longtext NOT NULL COMMENT '任务详情',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `jieshushijian` datetime DEFAULT NULL COMMENT '结束时间',
  `renwunandu` varchar(200) NOT NULL COMMENT '任务难度',
  `jifen` int(11) NOT NULL COMMENT '积分',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='任务';

/*Data for the table `renwu` */

insert  into `renwu`(`id`,`addtime`,`renwubianhao`,`renwumingcheng`,`renwuleixing`,`renwuxiangqing`,`fabushijian`,`jieshushijian`,`renwunandu`,`jifen`,`zhaopian`) values (31,'2021-04-01 21:22:56','任务编号1','任务名称1','任务类型1','任务详情1','2021-04-01 21:22:56','2021-04-01 21:22:56','简单',10000,'http://localhost:8080/springbootsl52i/upload/renwu_zhaopian1.jpg'),(32,'2021-04-01 21:22:56','任务编号2','任务名称2','任务类型2','任务详情2','2021-04-01 21:22:56','2021-04-01 21:22:56','简单',10000,'http://localhost:8080/springbootsl52i/upload/renwu_zhaopian2.jpg'),(33,'2021-04-01 21:22:56','任务编号3','任务名称3','任务类型3','任务详情3','2021-04-01 21:22:56','2021-04-01 21:22:56','简单',10000,'http://localhost:8080/springbootsl52i/upload/renwu_zhaopian3.jpg'),(34,'2021-04-01 21:22:56','任务编号4','任务名称4','任务类型4','任务详情4','2021-04-01 21:22:56','2021-04-01 21:22:56','简单',10000,'http://localhost:8080/springbootsl52i/upload/renwu_zhaopian4.jpg'),(35,'2021-04-01 21:22:56','任务编号5','任务名称5','任务类型5','任务详情5','2021-04-01 21:22:56','2021-04-01 21:22:56','简单',10000,'http://localhost:8080/springbootsl52i/upload/renwu_zhaopian5.jpg'),(36,'2021-04-01 21:22:56','任务编号6','任务名称6','任务类型6','任务详情6','2021-04-01 21:22:56','2021-04-01 21:22:56','简单',10000,'http://localhost:8080/springbootsl52i/upload/renwu_zhaopian6.jpg');

/*Table structure for table `renwufenlei` */

DROP TABLE IF EXISTS `renwufenlei`;

CREATE TABLE `renwufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='任务分类';

/*Data for the table `renwufenlei` */

insert  into `renwufenlei`(`id`,`addtime`,`fenlei`) values (41,'2021-04-01 21:22:56','分类1'),(42,'2021-04-01 21:22:56','分类2'),(43,'2021-04-01 21:22:56','分类3'),(44,'2021-04-01 21:22:56','分类4'),(45,'2021-04-01 21:22:56','分类5'),(46,'2021-04-01 21:22:56','分类6');

/*Table structure for table `tijiaoshenhe` */

DROP TABLE IF EXISTS `tijiaoshenhe`;

CREATE TABLE `tijiaoshenhe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `renwumingcheng` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `renwujifen` varchar(200) DEFAULT NULL COMMENT '任务积分',
  `tijiaoshenhewenjian` varchar(200) DEFAULT NULL COMMENT '提交审核文件',
  `wanchengshijian` datetime DEFAULT NULL COMMENT '完成时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='提交审核';

/*Data for the table `tijiaoshenhe` */

insert  into `tijiaoshenhe`(`id`,`addtime`,`zhanghao`,`xingming`,`renwumingcheng`,`renwujifen`,`tijiaoshenhewenjian`,`wanchengshijian`,`sfsh`,`shhf`,`userid`) values (71,'2021-04-01 21:22:56','账号1','姓名1','任务名称1','任务积分1','','2021-04-01 21:22:56','是','',1),(72,'2021-04-01 21:22:56','账号2','姓名2','任务名称2','任务积分2','','2021-04-01 21:22:56','是','',2),(73,'2021-04-01 21:22:56','账号3','姓名3','任务名称3','任务积分3','','2021-04-01 21:22:56','是','',3),(74,'2021-04-01 21:22:56','账号4','姓名4','任务名称4','任务积分4','','2021-04-01 21:22:56','是','',4),(75,'2021-04-01 21:22:56','账号5','姓名5','任务名称5','任务积分5','','2021-04-01 21:22:56','是','',5),(76,'2021-04-01 21:22:56','账号6','姓名6','任务名称6','任务积分6','','2021-04-01 21:22:56','是','',6);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-01 21:22:56');

/*Table structure for table `wodejifen` */

DROP TABLE IF EXISTS `wodejifen`;

CREATE TABLE `wodejifen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jifen` int(11) DEFAULT NULL COMMENT '积分',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='我的积分';

/*Data for the table `wodejifen` */

insert  into `wodejifen`(`id`,`addtime`,`zhanghao`,`xingming`,`jifen`,`zhaopian`,`userid`) values (51,'2021-04-01 21:22:56','账号1','姓名1',10000,'照片1',1),(52,'2021-04-01 21:22:56','账号2','姓名2',10000,'照片2',2),(53,'2021-04-01 21:22:56','账号3','姓名3',10000,'照片3',3),(54,'2021-04-01 21:22:56','账号4','姓名4',10000,'照片4',4),(55,'2021-04-01 21:22:56','账号5','姓名5',10000,'照片5',5),(56,'2021-04-01 21:22:56','账号6','姓名6',10000,'照片6',6);

/*Table structure for table `xiaojifen` */

DROP TABLE IF EXISTS `xiaojifen`;

CREATE TABLE `xiaojifen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jifen` varchar(200) DEFAULT NULL COMMENT '积分',
  `wupinbianhao` varchar(200) DEFAULT NULL COMMENT '物品编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='消积分';

/*Data for the table `xiaojifen` */

insert  into `xiaojifen`(`id`,`addtime`,`zhanghao`,`xingming`,`jifen`,`wupinbianhao`) values (91,'2021-04-01 21:22:56','账号1','姓名1','10000','物品编号1'),(92,'2021-04-01 21:22:56','账号2','姓名2','10000','物品编号2'),(93,'2021-04-01 21:22:56','账号3','姓名3','10000','物品编号3'),(94,'2021-04-01 21:22:56','账号4','姓名4','10000','物品编号4'),(95,'2021-04-01 21:22:56','账号5','姓名5','10000','物品编号5'),(96,'2021-04-01 21:22:56','账号6','姓名6','10000','物品编号6');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`beizhu`) values (11,'2021-04-01 21:22:56','用户1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/springbootsl52i/upload/yonghu_zhaopian1.jpg','备注1'),(12,'2021-04-01 21:22:56','用户2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/springbootsl52i/upload/yonghu_zhaopian2.jpg','备注2'),(13,'2021-04-01 21:22:56','用户3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/springbootsl52i/upload/yonghu_zhaopian3.jpg','备注3'),(14,'2021-04-01 21:22:56','用户4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/springbootsl52i/upload/yonghu_zhaopian4.jpg','备注4'),(15,'2021-04-01 21:22:56','用户5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/springbootsl52i/upload/yonghu_zhaopian5.jpg','备注5'),(16,'2021-04-01 21:22:56','用户6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/springbootsl52i/upload/yonghu_zhaopian6.jpg','备注6');

/*Table structure for table `zengjifen` */

DROP TABLE IF EXISTS `zengjifen`;

CREATE TABLE `zengjifen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jifen` varchar(200) DEFAULT NULL COMMENT '积分',
  `renwubianhao` varchar(200) DEFAULT NULL COMMENT '任务编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='增积分';

/*Data for the table `zengjifen` */

insert  into `zengjifen`(`id`,`addtime`,`zhanghao`,`xingming`,`jifen`,`renwubianhao`) values (101,'2021-04-01 21:22:56','账号1','姓名1','10000','任务编号1'),(102,'2021-04-01 21:22:56','账号2','姓名2','10000','任务编号2'),(103,'2021-04-01 21:22:56','账号3','姓名3','10000','任务编号3'),(104,'2021-04-01 21:22:56','账号4','姓名4','10000','任务编号4'),(105,'2021-04-01 21:22:56','账号5','姓名5','10000','任务编号5'),(106,'2021-04-01 21:22:56','账号6','姓名6','10000','任务编号6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
