-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springclouddze3k
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springclouddze3k/upload/1620266996883.jpg'),(2,'picture2','http://localhost:8080/springclouddze3k/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springclouddze3k/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussfangyuanxinxi`
--

DROP TABLE IF EXISTS `discussfangyuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussfangyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620267162935 DEFAULT CHARSET=utf8 COMMENT='房源信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussfangyuanxinxi`
--

LOCK TABLES `discussfangyuanxinxi` WRITE;
/*!40000 ALTER TABLE `discussfangyuanxinxi` DISABLE KEYS */;
INSERT INTO `discussfangyuanxinxi` VALUES (111,'2021-05-06 02:08:05',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-05-06 02:08:05',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-05-06 02:08:05',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-05-06 02:08:05',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-05-06 02:08:05',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-05-06 02:08:05',6,6,'用户名6','评论内容6','回复内容6'),(1620267162934,'2021-05-06 02:12:42',1620267083359,1620267027837,'11','发过的地方给对方',NULL);
/*!40000 ALTER TABLE `discussfangyuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangwuhuxing`
--

DROP TABLE IF EXISTS `fangwuhuxing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangwuhuxing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwuhuxing` varchar(200) DEFAULT NULL COMMENT '房屋户型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620266984086 DEFAULT CHARSET=utf8 COMMENT='房屋户型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangwuhuxing`
--

LOCK TABLES `fangwuhuxing` WRITE;
/*!40000 ALTER TABLE `fangwuhuxing` DISABLE KEYS */;
INSERT INTO `fangwuhuxing` VALUES (51,'2021-05-06 02:08:05','房屋户型1'),(52,'2021-05-06 02:08:05','房屋户型2'),(53,'2021-05-06 02:08:05','房屋户型3'),(54,'2021-05-06 02:08:05','房屋户型4'),(55,'2021-05-06 02:08:05','房屋户型5'),(56,'2021-05-06 02:08:05','房屋户型6'),(1620266984085,'2021-05-06 02:09:43','三方一厅');
/*!40000 ALTER TABLE `fangwuhuxing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangyuanleixing`
--

DROP TABLE IF EXISTS `fangyuanleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangyuanleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangyuanleixing` varchar(200) DEFAULT NULL COMMENT '房源类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620266976565 DEFAULT CHARSET=utf8 COMMENT='房源类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangyuanleixing`
--

LOCK TABLES `fangyuanleixing` WRITE;
/*!40000 ALTER TABLE `fangyuanleixing` DISABLE KEYS */;
INSERT INTO `fangyuanleixing` VALUES (41,'2021-05-06 02:08:05','房源类型1'),(42,'2021-05-06 02:08:05','房源类型2'),(43,'2021-05-06 02:08:05','房源类型3'),(44,'2021-05-06 02:08:05','房源类型4'),(45,'2021-05-06 02:08:05','房源类型5'),(46,'2021-05-06 02:08:05','房源类型6'),(1620266976564,'2021-05-06 02:09:35','海景房');
/*!40000 ALTER TABLE `fangyuanleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangyuanxinxi`
--

DROP TABLE IF EXISTS `fangyuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangyuanbianhao` varchar(200) DEFAULT NULL COMMENT '房源编号',
  `fangyuanleixing` varchar(200) DEFAULT NULL COMMENT '房源类型',
  `fangwuhuxing` varchar(200) DEFAULT NULL COMMENT '房屋户型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `mianji` varchar(200) DEFAULT NULL COMMENT '面积',
  `jiaqian` int(11) DEFAULT NULL COMMENT '价钱',
  `fangwuxiangqing` longtext COMMENT '房屋详情',
  `zhongjiezhanghao` varchar(200) DEFAULT NULL COMMENT '中介账号',
  `zhongjiexingming` varchar(200) DEFAULT NULL COMMENT '中介姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangyuanbianhao` (`fangyuanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620267083360 DEFAULT CHARSET=utf8 COMMENT='房源信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangyuanxinxi`
--

LOCK TABLES `fangyuanxinxi` WRITE;
/*!40000 ALTER TABLE `fangyuanxinxi` DISABLE KEYS */;
INSERT INTO `fangyuanxinxi` VALUES (31,'2021-05-06 02:08:05','房源编号1','房源类型1','房屋户型1','http://localhost:8080/springclouddze3k/upload/fangyuanxinxi_tupian1.jpg','面积1',1,'房屋详情1','中介账号1','中介姓名1','联系电话1','2021-05-06','是','','2021-05-06 10:12:07',2),(32,'2021-05-06 02:08:05','房源编号2','房源类型2','房屋户型2','http://localhost:8080/springclouddze3k/upload/fangyuanxinxi_tupian2.jpg','面积2',2,'房屋详情2','中介账号2','中介姓名2','联系电话2','2021-05-06','是','','2021-05-06 10:08:05',2),(33,'2021-05-06 02:08:05','房源编号3','房源类型3','房屋户型3','http://localhost:8080/springclouddze3k/upload/fangyuanxinxi_tupian3.jpg','面积3',3,'房屋详情3','中介账号3','中介姓名3','联系电话3','2021-05-06','是','','2021-05-06 10:08:05',3),(34,'2021-05-06 02:08:05','房源编号4','房源类型4','房屋户型4','http://localhost:8080/springclouddze3k/upload/fangyuanxinxi_tupian4.jpg','面积4',4,'房屋详情4','中介账号4','中介姓名4','联系电话4','2021-05-06','是','','2021-05-06 10:08:05',4),(35,'2021-05-06 02:08:05','房源编号5','房源类型5','房屋户型5','http://localhost:8080/springclouddze3k/upload/fangyuanxinxi_tupian5.jpg','面积5',5,'房屋详情5','中介账号5','中介姓名5','联系电话5','2021-05-06','是','','2021-05-06 10:08:05',5),(36,'2021-05-06 02:08:05','房源编号6','房源类型6','房屋户型6','http://localhost:8080/springclouddze3k/upload/fangyuanxinxi_tupian6.jpg','面积6',6,'房屋详情6','中介账号6','中介姓名6','联系电话6','2021-05-06','是','','2021-05-06 10:08:05',6),(1620267083359,'2021-05-06 02:11:22','1620266956634','海景房','三方一厅','http://localhost:8080/springclouddze3k/upload/1620267069012.jpg','111',22222,'<p>收到发送到发送到否 收到发送到发送到否 收到发送到发送到否 收到发送到发送到否 收到发送到发送到否 收到发送到发送到否 收到发送到发送到否 </p><p><img src=\"http://localhost:8080/springclouddze3k/upload/1620267078755.png\"></p><p><br></p><p><br></p><p><img src=\"http://localhost:8080/springclouddze3k/upload/1620267081060.jpg\"></p><p><br></p><p><br></p>','22','电饭锅','11122222222','2021-05-06','是','11','2021-05-06 10:13:18',13);
/*!40000 ALTER TABLE `fangyuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620267182280 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (101,'2021-05-06 02:08:05',1,'用户名1','留言内容1','回复内容1'),(102,'2021-05-06 02:08:05',2,'用户名2','留言内容2','回复内容2'),(103,'2021-05-06 02:08:05',3,'用户名3','留言内容3','回复内容3'),(104,'2021-05-06 02:08:05',4,'用户名4','留言内容4','回复内容4'),(105,'2021-05-06 02:08:05',5,'用户名5','留言内容5','回复内容5'),(106,'2021-05-06 02:08:05',6,'用户名6','留言内容6','回复内容6'),(1620267182279,'2021-05-06 02:13:02',1620267027837,'11','第三方收到发送到','222');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620267017955 DEFAULT CHARSET=utf8 COMMENT=' 房产资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (91,'2021-05-06 02:08:05','标题1','简介1','http://localhost:8080/springclouddze3k/upload/news_picture1.jpg','内容1'),(92,'2021-05-06 02:08:05','标题2','简介2','http://localhost:8080/springclouddze3k/upload/news_picture2.jpg','内容2'),(93,'2021-05-06 02:08:05','标题3','简介3','http://localhost:8080/springclouddze3k/upload/news_picture3.jpg','内容3'),(94,'2021-05-06 02:08:05','标题4','简介4','http://localhost:8080/springclouddze3k/upload/news_picture4.jpg','内容4'),(95,'2021-05-06 02:08:05','标题5','简介5','http://localhost:8080/springclouddze3k/upload/news_picture5.jpg','内容5'),(96,'2021-05-06 02:08:05','标题6','简介6','http://localhost:8080/springclouddze3k/upload/news_picture6.jpg','内容6'),(1620267017954,'2021-05-06 02:10:17','个梵蒂冈地方','房东给对方鬼地方个电饭锅地方鬼地方个房东给对方鬼地方个电饭锅地方鬼地方个','http://localhost:8080/springclouddze3k/upload/1620267006027.jpg','<p>房东给对方鬼地方个电饭锅地方鬼地方个房东给对方鬼地方个电饭锅地方鬼地方个房东给对方鬼地方个电饭锅地方鬼地方个房东给对方鬼地方个电饭锅地方鬼地方个房东给对方鬼地方个电饭锅地方鬼地方个</p><p><img src=\"http://localhost:8080/springclouddze3k/upload/1620267013338.jpg\"></p><p><br></p><p><br></p><p><img src=\"http://localhost:8080/springclouddze3k/upload/1620267016135.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620267196825 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1620267196824,'2021-05-06 02:13:15',1620267027837,1620267083359,'fangyuanxinxi','1620266956634','http://localhost:8080/springclouddze3k/upload/1620267069012.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','8aubt2r292g4fz2zv78c3dulcgoxmsvz','2021-05-06 02:09:14','2021-05-06 03:14:51'),(2,1620267027837,'11','yonghu','用户','q4cyb9ywt1e2y4wtzoepdha6yhvxf7bo','2021-05-06 02:10:30','2021-05-06 03:15:12'),(3,1620267049600,'22','zhongjie','中介','3qfocw47dn6px1aoxgq3w5jp62b3qkly','2021-05-06 02:10:54','2021-05-06 03:14:44');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-05-06 02:08:05');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` varchar(200) NOT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620267027838 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-05-06 02:08:05','用户1','123456','姓名1','年龄1','男','13823888881','http://localhost:8080/springclouddze3k/upload/yonghu_zhaopian1.jpg'),(12,'2021-05-06 02:08:05','用户2','123456','姓名2','年龄2','男','13823888882','http://localhost:8080/springclouddze3k/upload/yonghu_zhaopian2.jpg'),(13,'2021-05-06 02:08:05','用户3','123456','姓名3','年龄3','男','13823888883','http://localhost:8080/springclouddze3k/upload/yonghu_zhaopian3.jpg'),(14,'2021-05-06 02:08:05','用户4','123456','姓名4','年龄4','男','13823888884','http://localhost:8080/springclouddze3k/upload/yonghu_zhaopian4.jpg'),(15,'2021-05-06 02:08:05','用户5','123456','姓名5','年龄5','男','13823888885','http://localhost:8080/springclouddze3k/upload/yonghu_zhaopian5.jpg'),(16,'2021-05-06 02:08:05','用户6','123456','姓名6','年龄6','男','13823888886','http://localhost:8080/springclouddze3k/upload/yonghu_zhaopian6.jpg'),(1620267027837,'2021-05-06 02:10:27','11','11','梵蒂冈','11','男','11122211111','http://localhost:8080/springclouddze3k/upload/1620267037586.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyuekanfang`
--

DROP TABLE IF EXISTS `yuyuekanfang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuyuekanfang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `fangyuanbianhao` varchar(200) DEFAULT NULL COMMENT '房源编号',
  `fangyuanleixing` varchar(200) DEFAULT NULL COMMENT '房源类型',
  `fangwuhuxing` varchar(200) DEFAULT NULL COMMENT '房屋户型',
  `jiaqian` varchar(200) DEFAULT NULL COMMENT '价钱',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `zhongjiezhanghao` varchar(200) DEFAULT NULL COMMENT '中介账号',
  `zhongjiexingming` varchar(200) DEFAULT NULL COMMENT '中介姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620267172218 DEFAULT CHARSET=utf8 COMMENT='预约看房';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyuekanfang`
--

LOCK TABLES `yuyuekanfang` WRITE;
/*!40000 ALTER TABLE `yuyuekanfang` DISABLE KEYS */;
INSERT INTO `yuyuekanfang` VALUES (61,'2021-05-06 02:08:05','预约编号1','房源编号1','房源类型1','房屋户型1','价钱1','2021-05-06 10:08:05','备注1','中介账号1','中介姓名1','联系电话1','账号1','姓名1','手机1','是',''),(62,'2021-05-06 02:08:05','预约编号2','房源编号2','房源类型2','房屋户型2','价钱2','2021-05-06 10:08:05','备注2','中介账号2','中介姓名2','联系电话2','账号2','姓名2','手机2','是',''),(63,'2021-05-06 02:08:05','预约编号3','房源编号3','房源类型3','房屋户型3','价钱3','2021-05-06 10:08:05','备注3','中介账号3','中介姓名3','联系电话3','账号3','姓名3','手机3','是',''),(64,'2021-05-06 02:08:05','预约编号4','房源编号4','房源类型4','房屋户型4','价钱4','2021-05-06 10:08:05','备注4','中介账号4','中介姓名4','联系电话4','账号4','姓名4','手机4','是',''),(65,'2021-05-06 02:08:05','预约编号5','房源编号5','房源类型5','房屋户型5','价钱5','2021-05-06 10:08:05','备注5','中介账号5','中介姓名5','联系电话5','账号5','姓名5','手机5','是',''),(66,'2021-05-06 02:08:05','预约编号6','房源编号6','房源类型6','房屋户型6','价钱6','2021-05-06 10:08:05','备注6','中介账号6','中介姓名6','联系电话6','账号6','姓名6','手机6','是',''),(1620267172217,'2021-05-06 02:12:52','2021561011094619528','1620266956634','海景房','三方一厅','22222','2021-05-06 10:11:01',' 发顺丰胜多负少的收到','22','电饭锅','11122222222','11','梵蒂冈','11122211111','是','可以雨夜');
/*!40000 ALTER TABLE `yuyuekanfang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaixianqianyue`
--

DROP TABLE IF EXISTS `zaixianqianyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaixianqianyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qianyuebianhao` varchar(200) DEFAULT NULL COMMENT '签约编号',
  `fangyuanbianhao` varchar(200) DEFAULT NULL COMMENT '房源编号',
  `fangyuanleixing` varchar(200) DEFAULT NULL COMMENT '房源类型',
  `fangwuhuxing` varchar(200) DEFAULT NULL COMMENT '房屋户型',
  `jiaqian` varchar(200) DEFAULT NULL COMMENT '价钱',
  `qianyueneirong` longtext COMMENT '签约内容',
  `goufangshijian` date DEFAULT NULL COMMENT '购房时间',
  `zhongjiezhanghao` varchar(200) DEFAULT NULL COMMENT '中介账号',
  `zhongjiexingming` varchar(200) DEFAULT NULL COMMENT '中介姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qianyuebianhao` (`qianyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620267247672 DEFAULT CHARSET=utf8 COMMENT='在线签约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaixianqianyue`
--

LOCK TABLES `zaixianqianyue` WRITE;
/*!40000 ALTER TABLE `zaixianqianyue` DISABLE KEYS */;
INSERT INTO `zaixianqianyue` VALUES (71,'2021-05-06 02:08:05','签约编号1','房源编号1','房源类型1','房屋户型1','价钱1','签约内容1','2021-05-06','中介账号1','中介姓名1','联系电话1','账号1','姓名1','手机1','是','','未支付'),(72,'2021-05-06 02:08:05','签约编号2','房源编号2','房源类型2','房屋户型2','价钱2','签约内容2','2021-05-06','中介账号2','中介姓名2','联系电话2','账号2','姓名2','手机2','是','','未支付'),(73,'2021-05-06 02:08:05','签约编号3','房源编号3','房源类型3','房屋户型3','价钱3','签约内容3','2021-05-06','中介账号3','中介姓名3','联系电话3','账号3','姓名3','手机3','是','','未支付'),(74,'2021-05-06 02:08:05','签约编号4','房源编号4','房源类型4','房屋户型4','价钱4','签约内容4','2021-05-06','中介账号4','中介姓名4','联系电话4','账号4','姓名4','手机4','是','','未支付'),(75,'2021-05-06 02:08:05','签约编号5','房源编号5','房源类型5','房屋户型5','价钱5','签约内容5','2021-05-06','中介账号5','中介姓名5','联系电话5','账号5','姓名5','手机5','是','','未支付'),(76,'2021-05-06 02:08:05','签约编号6','房源编号6','房源类型6','房屋户型6','价钱6','签约内容6','2021-05-06','中介账号6','中介姓名6','联系电话6','账号6','姓名6','手机6','是','','未支付'),(1620267247671,'2021-05-06 02:14:07','1620267132087','1620266956634','海景房','三方一厅','22222','<p>消防水带发送到发送到发送到防守打法收到发送到消防水带发送到发送到发送到防守打法收到发送到消防水带发送到发送到发送到防守打法收到发送到消防水带发送到发送到发送到防守打法收到发送到消防水带发送到发送到发送到防守打法收到发送到</p>','2021-05-06','22','电饭锅','11122222222','11','梵蒂冈','11122211111','是','同意签约','已支付');
/*!40000 ALTER TABLE `zaixianqianyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhongjie`
--

DROP TABLE IF EXISTS `zhongjie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhongjie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhongjiezhanghao` varchar(200) NOT NULL COMMENT '中介账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zhongjiexingming` varchar(200) NOT NULL COMMENT '中介姓名',
  `nianling` varchar(200) NOT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) NOT NULL COMMENT '联系电话',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhongjiezhanghao` (`zhongjiezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620267049601 DEFAULT CHARSET=utf8 COMMENT='中介';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhongjie`
--

LOCK TABLES `zhongjie` WRITE;
/*!40000 ALTER TABLE `zhongjie` DISABLE KEYS */;
INSERT INTO `zhongjie` VALUES (21,'2021-05-06 02:08:05','中介1','123456','中介姓名1','年龄1','男','13823888881','http://localhost:8080/springclouddze3k/upload/zhongjie_zhaopian1.jpg'),(22,'2021-05-06 02:08:05','中介2','123456','中介姓名2','年龄2','男','13823888882','http://localhost:8080/springclouddze3k/upload/zhongjie_zhaopian2.jpg'),(23,'2021-05-06 02:08:05','中介3','123456','中介姓名3','年龄3','男','13823888883','http://localhost:8080/springclouddze3k/upload/zhongjie_zhaopian3.jpg'),(24,'2021-05-06 02:08:05','中介4','123456','中介姓名4','年龄4','男','13823888884','http://localhost:8080/springclouddze3k/upload/zhongjie_zhaopian4.jpg'),(25,'2021-05-06 02:08:05','中介5','123456','中介姓名5','年龄5','男','13823888885','http://localhost:8080/springclouddze3k/upload/zhongjie_zhaopian5.jpg'),(26,'2021-05-06 02:08:05','中介6','123456','中介姓名6','年龄6','男','13823888886','http://localhost:8080/springclouddze3k/upload/zhongjie_zhaopian6.jpg'),(1620267049600,'2021-05-06 02:10:49','22','22','电饭锅','22','男','11122222222','http://localhost:8080/springclouddze3k/upload/1620267057577.jpg');
/*!40000 ALTER TABLE `zhongjie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-12 16:44:26
