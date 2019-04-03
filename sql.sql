/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.20-log : Database - letao
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`suning` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `suning`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `addressDetail` varchar(200) DEFAULT NULL,
  `isDelete` int(4) DEFAULT NULL,
  `recipients` varchar(100) DEFAULT NULL,
  `postCode` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `address` */

insert  into `address`(`id`,`userId`,`address`,`addressDetail`,`isDelete`,`recipients`,`postCode`,`mobile`) values (1,1,'山西省太原市小店区','解放东路传智播客科技集团14层1402室',1,'周双大','111112',NULL);

/*Table structure for table `brand` */

DROP TABLE IF EXISTS `brand`;

CREATE TABLE `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(50) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `brandLogo` varchar(200) DEFAULT NULL,
  `isDelete` int(4) DEFAULT NULL,
  `hot`int(4) DEFAULT NULL,
  `banner` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `brand` */

insert  into `brand`(`id`,`brandName`,`categoryId`,`brandLogo`,`isDelete`,`hot`,`banner`,`price`) values
/*1*/
(1,'美早大樱桃',1,'/suning/images/yintao1.jpg',1,0,'/suning/images/catebanner-1.jpg','32.5'),
(2,'越南高乐蜜芒果',1,'/suning/images/mangguo1.jpg',1,1,null,'8'),
(3,'天宝香蕉',1,'/suning/images/xiangjiao1.jpg',1,1,null,'3.5'),
(4,'猕猴桃',1,'/suning/images/mihoutao1.jpg',1,1,null,'6'),
(5,'安岳柠檬',1,'/suning/images/ninmeng1.jpg',1,1,null,'6'),
(6,'海南麒麟西瓜',1,'/suning/images/xigua1.jpg',1,1,null,'12'),
(7,'烟台苹果',1,'/suning/images/pingguo1.jpg',1,1,null,'7'),
(8,'奶油草莓',1,'/suning/images/caomei1.jpg',1,1,null,'13'),
(9,'塔罗科血橙',1,'/suning/images/chengzi1.jpg',1,1,null,'5'),
(10,'水蜜桃',1,'/suning/images/taozi1.jpg',1,1,null,'16'),
/*`2*/
(11,'雀巢咖啡',2,'/suning/images/quechao1.jpg',1,1,null,'32'),
(12,'星巴克咖啡',2,'/suning/images/xianmo1.jpg',1,1,null,'35'),
(13,'猫屎咖啡',2,'/suning/images/maoshi1.jpg',1,1,null,'19'),
/*`3 */
(14,'上海小香葱',3,'/suning/images/cong1.jpg',1,1,null,'1.2'),
(15,'小白菜',3,'/suning/images/xiaobaicai1.jpg',1,1,null,'1.5'),
(16,'大红辣椒',3,'/suning/images/lajiao1.jpg',1,1,null,'2'),
(17,'迷你小冬瓜',3,'/suning/images/donggua1.jpg',1,1,null,'3'),
(18,'荷兰小黄瓜',3,'/suning/images/huanggua1.jpg',1,1,null,'2.5'),
(19,'黄糯玉米',3,'/suning/images/yumi1.jpg',1,1,null,'3'),
(20,'靓竹空心菜',3,'/suning/images/kongxingcai1.jpg',1,1,null,'3'),
(21,'大白菜',3,'/suning/images/dabaicai1.jpg',1,1,null,'2.5'),
/* 4 */
(22,'羊肉卷350g',4,'/suning/images/yangrou1.jpg',1,1,null,'50'),
(23,'进口牛腱子',4,'/suning/images/niujian1.jpg',1,1,null,'47'),
(24,'澳洲进口牛排',4,'/suning/images/niupai1.jpg',1,1,null,'78'),
(25,'恒都牛肉丸',4,'/suning/images/niurouwan1.jpg',1,1,null,'29'),
(26,'鲜鸡蛋 32m枚',4,'/suning/images/jidan1.jpg',1,1,null,'22'),
(27,'鸡肉 琵琶腿',4,'/suning/images/jirou1.jpg',1,1,null,'25'),
(28,'越南龙利鱼',4,'/suning/images/yurou1.jpg',1,1,null,'45'),
(29,'精选猪肉',4,'/suning/images/zhurou1.jpg',1,1,null,'19'),
(30,'鸡腿',4,'/suning/images/jitui1.jpg',1,1,null,'28'),
(121,'盐蛋65克10只实惠装',4,'/suning/images/yadan1.jpg',1,1,null,'16.5'),
/* 5*/

(31,'安慕希',5,'/suning/images/anmuxi1.jpg',1,1,null,'5.5'),
(32,'纯甄酸奶',5,'/suning/images/chunzhen1.jpg',1,1,null,'5.5'),
(33,'卡世 3杯',5,'/suning/images/kashi1.jpg',1,1,null,'12'),
(34,'阿萨姆奶茶',5,'/suning/images/asamu1.jpg',1,1,null,'5'),
(35,'营养快线',5,'/suning/images/yingyangkuaixian1.jpg',1,1,null,'5'),
(36,'蛋糕',5,'/suning/images/dangao1.jpg',1,1,null,'2.5'),
(37,'豪士吐司面包',5,'/suning/images/haoshi1.jpg',1,1,null,'2.5'),
(38,'鸡蛋糕 600g',5,'/suning/images/jidangao1.jpg',1,1,null,'7'),
(39,'哈根达斯',5,'/suning/images/xuegao1.jpg',1,1,null,'12'),
(40,'和路雪',5,'/suning/images/heluxue1.jpg',1,1,null,'13'),
(41,'特仑苏',5,'/suning/images/telunsu1.jpg',1,1,null,'6'),
(42,'光明',5,'/suning/images/guangming1.jpg',1,1,null,'12'),
(43,'花生奶',5,'/suning/images/huashengnai1.jpg',1,1,null,'4'),
(44,'AD钙奶',5,'/suning/images/wahaha1.jpg',1,1,null,'8'),
(122,'养乐多',5,'/suning/images/yangleduo1.jpg',1,1,null,'5'),

/* 6*/
(45,'统一酸菜牛肉面',6,'/suning/images/suancai1.jpg',1,1,null,'2.5'),
(46,'康师傅爆椒牛肉面',6,'/suning/images/baojiao1.jpg',1,1,null,'2.5'),
(47,'汤达人桶面',6,'/suning/images/tangdaren1.jpg',1,1,null,'5'),
(48,'统一酱拌面',6,'/suning/images/ganbanmian1.jpg',1,1,null,'6'),
(49,'玉米热狗肠 1根',6,'/suning/images/huotuichang1.jpg',1,1,null,'1'),
(50,'海带片香辣味',6,'/suning/images/haidaia1.jpg',1,1,null,'1'),
(51,'黑芝麻汤圆',6,'/suning/images/tangyuan1.jpg',1,1,null,'8'),
(52,'猪肉水饺',6,'/suning/images/shuijiao1.jpg',1,1,null,'8'),


/* 7*/
(53,'卤鸭脖140',7,'/suning/images/yabo1.jpg',1,1,null,'13'),

/* 8*/
(54,'三只松鼠 芒果干116g',8,'/suning/images/mangguogan1.jpg',1,1,null,'6'),
(55,'三只松鼠_黄桃干106g',8,'/suning/images/huangtaogan1.jpg ',1,1,null,'6'),
(56,'三只松鼠_草莓干106g',8,'/suning/images/caomeigan1.jpg',1,1,null,'6'),
(57,'三只松鼠_菠萝干106g',8,'/suning/images/boluogan1.jpg ',1,1,null,'6'),
(58,'三只松鼠_山药脆片60g',8,'/suning/images/shanyaocuipian1.jpg',1,1,null,'7'),
(59,'三只松鼠_冻干无花果30g',8,'/suning/images/wuhuaguo1.jpg',1,1,null,'12'),
(60,'开心果100g',8,'/suning/images/kaixinguo1.jpg',1,1,null,'10'),
(61,'口味王青果槟榔',8,'/suning/images/binglang1.jpg',1,1,null,'6'),
(62,'旺旺雪饼',8,'/suning/images/wangwang1.jpg',1,1,null,'5'),
(63,'旺仔牛奶糖',8,'/suning/images/tang1.jpg',1,1,null,'2'),
(64,'乐事美国经典原味75克',8,'/suning/images/leshiyuanwei1.jpg',1,1,null,'7'),
(65,'乐事美国经典黄瓜75克',8,'/suning/images/leshihuanggua1.jpg ',1,1,null,'7'),
(66,'乐事意大利香浓红烩味75克',8,'/suning/images/leshihongkuai1.jpg',1,1,null,'7'),
(67,'乐事墨西哥鸡汁番茄味75克',8,'/suning/images/leshifanqie1.jpg ',1,1,null,'7'),

/* 9*/
(68,'农夫山泉',9,'/suning/images/nongfushanquan1.jpg',1,1,null,'2'),
(69,'怡宝 纯净水',9,'/suning/images/yibao1.jpg',1,1,null,'2'),
(70,'可口可乐',9,'/suning/images/kele1.jpg',1,1,null,'3'),
(71,'可口可乐 雪碧',9,'/suning/images/xuebi1.jpg',1,1,null,'3'),
(72,'芬达（Fanta) 橙味汽水',9,'/suning/images/fenda1.jpg',1,1,null,'3'),
(73,'美汁源果粒橙',9,'/suning/images/guolicheng1.jpg',1,1,null,'3'),
(74,'五粮液 52度500ml',9,'/suning/images/wuliangye1.jpg',1,1,null,'1005'),
(75,'薇娜骑士葡萄酒',9,'/suning/images/hongjiu1.jpg ',1,1,null,'88'),
(76,' ROSE鸡尾酒',9,'/suning/images/jiweijiu1.jpg',1,1,null,'7'),
(77,'乐事墨西哥鸡汁番茄味75克',9,'/suning/images/leshifanqie1.jpg ',1,1,null,'7'),
/* 10*/
(78,'金龙大米',10,'/suning/images/mi1.jpg',1,1,null,'45'),
(79,'金龙食用油',10,'/suning/images/you1.jpg',1,1,null,'40'),
(80,'酱油',10,'/suning/images/jiangyou1.jpg',1,1,null,'5'),
(81,'细面条 雪碧',10,'/suning/images/mian1.jpg',1,1,null,'5.5'),
(82,'面粉',10,'/suning/images/mianfen1.jpg',1,1,null,'10'),
(83,'银耳',10,'/suning/images/yiner1.jpg',1,1,null,'25'),
/* 11*/
(84,'曼秀雷敦 洗面奶',11,'/suning/images/ximiannai1.jpg',1,1,null,'22'),
(85,'妮维雅 洗面奶',11,'/suning/images/niweiya1.jpg ',1,1,null,'14'),
(86,'大宝SOD蜜',11,'/suning/images/dabao1.jpg',1,1,null,'8'),
(87,'肌司研 面膜10片',11,'/suning/images/jisiyan1.jpg ',1,1,null,'120'),
(88,'美迪惠尔 黑炭面膜',11,'/suning/images/meidihuier1.jpg',1,1,null,'150'),
(89,'御泥坊 面膜',11,'/suning/images/yunifang1.jpg',1,1,null,'66'),
(90,'DHC 唇膏',11,'/suning/images/runchungao1.jpg',1,1,null,'17'),
(91,'资生堂防晒霜',11,'/suning/images/fangshaishuang1.jpg',1,1,null,'35'),
(92,'云南白药',11,'/suning/images/yagao1.jpg',1,1,null,'24'),
(93,'洁净牙刷',11,'/suning/images/yashua1.jpg',1,1,null,'9'),
(94,'海飞丝',11,'/suning/images/haifeisi1.jpg',1,1,null,'78'),
(95,'多芬洗发水',11,'/suning/images/duofen2.jpg',1,1,null,'55'),
(96,'清扬去屑洗发水',11,'/suning/images/qingyang1.jpg',1,1,null,'46'),
(97,'欧莱雅洗发露',11,'/suning/images/oulaiya1.jpg ',1,1,null,'54'),
(98,'Ryo红吕洗发水',11,'/suning/images/lv1.jpg ',1,1,null,'66'),
(99,'炫诗润发乳50ml',11,'/suning/images/xuanshi1.jpg',1,1,null,'14'),
(100,'阿道夫护发乳液680ml',11,'/suning/images/aerdaofu1.jpg',1,1,null,'68'),
(101,'水之密语润发乳',11,'/suning/images/shuizhimiyu1.jpg',1,1,null,'28'),
(102,'丝蕴洗护套装750ml',11,'/suning/images/siyun1.jpg',1,1,null,'32'),
(103,'潘婷洗发露',11,'/suning/images/panting1.jpg',1,1,null,'29'),
(104,'凌仕男士沐浴露',11,'/suning/images/lingshi1.jpg',1,1,null,'33'),
(105,'力士(Lux)沐浴露',11,'/suning/images/lishi1.jpg',1,1,null,'32'),
/* 12 */
(106,'抽取式纸巾',12,'/suning/images/zhi1.jpg',1,1,null,'15'),
(107,'白猫 洗洁精5kg',12,'/suning/images/xijiej1.jpg',1,1,null,'20'),
(108,'蓝月亮 洗衣液',12,'/suning/images/xiyiye1.jpg',1,1,null,'16'),
(109,'全自动雨伞',12,'/suning/images/san1.jpg',1,1,null,'22'),
(110,'白猫 洗衣粉',12,'/suning/images/xiyifen1.jpg',1,1,null,'12'),
(111,'全棉毛巾',12,'/suning/images/maojin1.jpg',1,1,null,'8'),
/* 13*/
(112,'婴儿湿巾',13,'/suning/images/shijin1.jpg',1,1,null,'15'),
(113,'郁美净',13,'/suning/images/yumeijing1.jpg',1,1,null,'9'),
(114,'宝宝专用洗发水',13,'/suning/images/yingerxifa1.jpg',1,1,null,'90'),
(115,'奶瓶奶嘴',13,'/suning/images/naiping1.jpg',1,1,null,'23'),
(116,'无线遥控汽车',13,'/suning/images/saiche1.jpg',1,1,null,'120'),
/* 14 */
(117,'电热取暖器',14,'/suning/images/qunuanqi1.jpg',1,1,null,'320'),
(118,'电水壶JYK-13F05A',14,'/suning/images/dianshuihu1.jpg',1,1,null,'80'),
(119,'电水壶JYK-17C15',14,'/suning/images/jiuyang1.jpg',1,1,null,'88'),
(120,'飞科 (FLYCO) 电吹风',14,'/suning/images/feike1.jpg',1,1,null,'50');
/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `num` int(20) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `isDelete` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `cart` */

insert  into `cart`(`id`,`userId`,`productId`,`num`,`size`,`isDelete`) values (1,1,1,1,'50',1),(2,1,2,2,'45',1),(3,1,3,4,'40',1);

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(50) DEFAULT NULL,
  `isDelete` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`id`,`categoryName`,`isDelete`) values
(1,'新鲜水果',1),
(2,'现磨咖啡',1),
(3,'时令蔬菜',1),
(4,'肉禽蛋类',1),
(5,'乳品烘焙',1),
(6,'面点素食',1),
(7,'餐饮熟食',1),
(8,'休闲零食',1),
(9,'酒水饮料',1),
(10,'粮油调味',1),
(11,'美妆个护',1),
(12,'日用百货',1),
(13,'母婴用品',1),
(14,'生活家电',1);

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `mobile` char(11) DEFAULT NULL,
  `authority` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `employee` */

insert  into `employee`(`id`,`username`,`password`,`mobile`,`authority`) values (1,'root','4QrcOUm6Wau+VuBX8g+IPg==','13902060052',1);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proName` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `oldPrice` float DEFAULT NULL COMMENT '商品价格',
  `price` float DEFAULT NULL COMMENT '商品折扣价',
  `proDesc` varchar(500) DEFAULT NULL COMMENT '商品描述',
  `size` varchar(500) DEFAULT NULL COMMENT '购物车简介',
  `statu` int(4) DEFAULT NULL COMMENT '是否下架',
  `updateTime` datetime DEFAULT NULL COMMENT '上下架时间',
  `num` int(20) DEFAULT NULL COMMENT '商品库存',
  `brandId` int(11) DEFAULT NULL COMMENT '归属品牌',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`id`,`proName`,`oldPrice`,`price`,`proDesc`,`size`,`statu`,`updateTime`,`num`,`brandId`) values
(1,'果之缘 国产美早大樱桃，顺丰空运，新鲜到家 鲜呗呗箱装其他26mm-28mm',32.5,32,'新鲜、美味','美早大樱桃 5个',1,'2017-01-05 00:28:29',20,1),
(2,'雉鲜生 越南高乐蜜芒果1斤装（单果200-400g）新鲜水果',8,7.5,'肉多、水分足','高乐蜜芒果 1斤',1,'2017-01-05 00:28:29',20,1),
(3,'禾趣 天宝香蕉5斤箱装 新鲜当季水果 香甜软糯皇帝蕉芭蕉批发',3.5,3,'口感细腻舔糯','蕉芭香蕉 1斤',1,'2017-01-05 00:28:29',20,1),
(4,'奇异果猕猴桃5斤大果 绿心猕猴桃新鲜水果 单果100-120g',6,5,'化咳止痰','绿心猕猴桃 1斤',1,'2017-01-05 00:28:29',20,1),
(5,'四川安岳柠檬 8个装 简装 单果重量约75-110g',6,5,'新鲜采摘','柠檬 1个',1,'2017-01-05 00:28:29',20,1),
(6,'展卉 海南麒麟西瓜 1个 单果重2.5kg-3.5kg 新鲜水果',12,11.5,'大红酥瓜','麒麟瓜 3斤',1,'2017-01-05 00:28:29',20,1),
(7,'展卉 山东烟台苹果 2.5kg装 果径75-80mm 新鲜水果',7,5.5,'甜脆爽口','苹果 2.5斤',1,'2017-01-05 00:28:29',20,1),
(8,'果之缘 2斤新鲜甜草莓,奶油草莓水果新鲜水果礼盒顺丰空运包邮鲜呗呗30g盒装',13,12.5,'香甜味美','草莓 2斤',1,'2017-01-05 00:28:29',20,1),
(9,'麻阳塔罗科血橙玫瑰香橙 红橙红肉橙子新鲜水果1斤装 单果110-130克',5,4.5,'可口甜','橙子 1斤',1,'2017-01-05 00:28:29',20,1),
(10,'水蜜桃桃子水果新鲜毛桃非油蟠 批发当季新鲜水果 脆黄心桃非进口水蜜桃',16,15.8,'皮薄肉多','水蜜桃 2斤',1,'2017-01-05 00:28:29',20,1),
/*`2*/
(11,'雀巢(Nestle) 咖啡 1+2特浓 1.17kg(90条x13g) 新老包装随机发货 盒装 速溶咖啡',32,31.2,'醒目提神','雀巢咖啡 1.17kg',1,'2017-01-05 00:28:29',20,1),
(12,'starbucks/星巴克星倍醇焦香玛奇朵味228ml*6 浓咖啡饮料',35,32.8,'醒目提神','星巴克 228*6',1,'2017-01-05 00:28:29',20,1),
(13,'Wake-up 猫屎咖啡味 三合一速溶咖啡1700g（17克x100）冲调饮品 越南进口冲调饮品',68,65,'醒目提神','猫屎咖啡 1700g',1,'2017-01-05 00:28:29',20,1),
/*`3 */
(14,'津沽园艺 蔬菜种子小葱种子 上海小香葱 香味浓 春秋播种 庭院家庭阳台种植',1.2,1.1,'当日采摘','葱 300g',1,'2017-01-05 00:28:29',20,1),
(15,'津沽园艺 春秋播蔬菜种子 泰国四季快菜 小白菜种子 家庭盆栽种植',1.5,1.2,'当日采摘','小白菜 1斤',1,'2017-01-05 00:28:29',20,1),
(16,'七果果 大红尖椒500g 大红辣椒 新鲜蔬菜AS',2,1.8,'湖南辣椒','红辣椒 500g',1,'2017-01-05 00:28:29',20,1),
(17,'七果果 迷你小冬瓜1个装 单个约600-800g 冬瓜盅 新鲜蔬菜AS',3,2.7,'水分充足','小冬瓜 700g',1,'2017-01-05 00:28:29',20,1),
(18,'七果果 荷兰小黄瓜1斤 迷你水果 新鲜蔬菜AS',2.5,2.1,'脆甜可口','小黄瓜1斤',1,'2017-01-05 00:28:29',20,1),
(19,'黄糯玉米穗 鲜香糯代餐 可微波炉 方便速食 包邮 东北老玉米',3,2,'自然清香','黄糯玉米穗 1斤',1,'2017-01-05 00:28:29',20,1),
(20,'津沽园艺 蔬菜种子 空心菜 靓竹通心菜 泰国引进新品种 500克整包',3,2.5,'海南空运','空心菜 1斤',1,'2017-01-05 00:28:29',20,1),
(21,'津沽园艺 蔬菜种子 包心白菜种子 抗热50大白菜 早熟约10克 家庭种菜',2.5,2.4,'当日采摘','大白菜 1斤',1,'2017-01-05 00:28:29',20,1),
/* 4 */
(22,'恒都精选羊肉卷350g',50,49,'健身卤肉食材','羊肉卷 1斤',1,'2017-01-05 00:28:29',20,1),
(23,'科尔沁 速冻牛肉 精选进口牛腱子 冷冻排酸 冷链极力保鲜 袋装 1kg',47,45,'生牛肉新鲜','牛腱子 1斤',1,'2017-01-05 00:28:29',20,1),
(24,'科尔沁 速冻牛肉 儿童牛排 澳洲进口原料 袋装130g',78,76,'鲜嫩肥美不腻口','牛排 130g',1,'2017-01-05 00:28:29',20,1),
(25,'恒都 全牛肉无淀粉牛肉丸200g/袋 火锅油炸炖汤丸子 ',29,28,'正宗潮汕味','牛肉丸200g/袋',1,'2017-01-05 00:28:29',20,1),
(26,'德青源 A级鲜鸡蛋 32枚 ',22,21,'纯农家土鸡蛋','鲜鸡蛋 32枚',1,'2017-01-05 00:28:29',20,1),
(27,'春雪食品 琵琶腿1000g/袋装 国产出口日本级 清真食品 鸡腿 健身食材 鸡肉腿',25,24.5,'冷冻健身','鸡肉 1斤',1,'2017-01-05 00:28:29',20,1),
(28,'冷冻越南龙利鱼柳450g包刺少肉多航空冷链配送袋装国产海产鱼肉',45,45.5,'个体肥美','鱼肉 1斤',1,'2017-01-05 00:28:29',20,1),
(29,'中粮家佳康（JOYCOME）香脆炸猪排500g 精选猪肉',19,17.8,'肉质细腻','猪肉 1斤',1,'2017-01-05 00:28:29',20,1),
(30,'正大食品CP 鸡全腿 500g/袋 烤鸡腿炸鸡腿卤鸡腿 烧烤食材卤味卤煮食材 ',28,27.5,'营养丰富','鸡腿 1斤',1,'2017-01-05 00:28:29',20,1),
(121,'高邮馆 数鸭子高邮咸鸭蛋 咸蛋盐蛋65克10只实惠装 华东',16.5,16.2,'特产熟咸鸭蛋','咸蛋盐蛋 10只',1,'2017-01-05 00:28:29',20,1),
/* 5*/

(31,'伊利安慕希希腊风味酸牛奶常温酸奶',5.5,5,'美味不可挡','安慕希原味酸奶',1,'2017-01-05 00:28:29',20,1),
(32,'纯甄 常温酸牛奶 原味',5.5,5,'慢发酵','纯甄原味酸奶',1,'2017-01-05 00:28:29',20,1),
(33,'卡士酸奶原味鲜酪乳顺丰包邮低温冷藏纯新鲜酸牛奶 3杯',12,12,'进口丹麦种发酵','卡士酸奶 3杯',1,'2017-01-05 00:28:29',20,1),
(34,'晴蓝 阿萨姆奶茶',5,4.5,'顺滑浓郁口感','阿萨姆奶茶',1,'2017-01-05 00:28:29',20,1),
(35,'娃哈哈营养快线350ml 营养早餐奶哇哈哈牛奶小瓶饮料',8,7.5,'营养美味一线牵','营养快线350ml',1,'2017-01-05 00:28:29',20,1),
(36,'达利园 糕点 面包 零食 蛋糕蛋香味 600g(蛋糕礼盒)',2.5,2,'柔滑悠长，细腻口感','达利园蛋糕 600g',1,'2017-01-05 00:28:29',20,1),
(37,'豪士乳酸菌小口袋面包500g散装网红美食小白心里软办公室零食早餐面包下午茶糕点',2.5,2.1,'满满乳酸菌','豪士乳酸菌小口袋面包500g',1,'2017-01-05 00:28:29',20,1),
(38,'然利手工蛋糕600g早餐面包营养鸡蛋糕零食小吃休闲食品糕点心  600g',7,6.5,'满满早餐力','蛋糕600g',1,'2017-01-05 00:28:29',20,1),
(39,'哈根达斯 脆皮三明治冰淇淋雪糕组合',12,11,'酸甜结合','哈根达斯三明治冰淇淋',1,'2017-01-05 00:28:29',20,1),
(40,'哈根达斯 小杯冰激凌雪糕混合装 100ml',13,12,'色彩艳丽','哈根达斯冰激凌 100ml',1,'2017-01-05 00:28:29',20,1),
(41,'蒙牛(MENGNIU) 特仑苏 纯牛奶',6,5.5,'营养丰富','特仑苏 纯牛奶',1,'2017-01-05 00:28:29',20,1),
(42,'光明 酸奶look噜渴盒装',12,11.5,'口感细腻','光明酸奶 1盒',1,'2017-01-05 00:28:29',20,1),
(43,'达利园花生牛奶复合蛋白饮料(原味)',4,3.8,'富含维生素','花生牛奶',1,'2017-01-05 00:28:29',20,1),
(44,'娃哈哈 含乳饮料 AD钙奶 220g*4',8,7.7,'营养均衡','AD钙奶 220g*4',1,'2017-01-05 00:28:29',20,1),
(122,'七果果 养乐多乳酸菌饮料 低糖 100mlX2瓶',5,4.5,'酸甜结合','养乐多 100ml*2瓶',1,'2017-01-05 00:28:29',20,1),
/* 6*/
(45,'老坛酸菜牛肉面方便面 煮面（香辣味）',2.5,2.1,'地倒酸菜','老坛酸菜牛肉面',1,'2017-01-05 00:28:29',20,1),
(46,'康师傅大食桶红油爆椒牛肉面桶装',5,5,'香浓入味','红油爆椒牛肉面',1,'2017-01-05 00:28:29',20,1),
(47,'汤达人桶面 拉面方便面 统一企业 酸酸辣辣/海鲜/日式豚骨泡面韩式辣牛肉/原盅鸡汤面/鱼豆腐汤面',5,5,'汤汁浓郁','汤达人桶面',1,'2017-01-05 00:28:29',20,1),
(48,'老坛酸菜牛肉面/卤香牛肉面/贵州豆鼓辣酱风味/重庆豌杂面',6,5.8,'爽滑筋道','卤香牛肉面',1,'2017-01-05 00:28:29',20,1),
(49,'鲜在玉米热狗肠30g*1根 食品零售小吃香米热狗肠食品零售小吃香脆泡面搭档火腿肠香脆肠 1根',1,0.8,'麻辣香、口感脆甜','热狗肠 1根',1,'2017-01-05 00:28:29',20,1),
(50,'丁同学海带片香辣味1包零食休闲零食礼包下酒菜下饭菜开袋即食海带丝香辣味 ',1,0.9,'酸辣脆爽','海带 1包',1,'2017-01-05 00:28:29',20,1),
(51,'湾仔码头黑芝麻汤圆538g',8,7.8,'五彩内心、内外兼修','黑芝麻汤圆538g',1,'2017-01-05 00:28:29',20,1),
(52,'湾仔码头 玉米蔬菜猪肉水饺 720克 ',8,8,'软糯口感','猪肉水饺 720克',1,'2017-01-05 00:28:29',20,1),


/* 7*/
(53,'卤鸭脖140g 熟食卤味零食 麻辣小吃特产休闲肉干肉脯 ',13,12.5,'变态辣、樱桃谷鸭','卤鸭脖140g',1,'2017-01-05 00:28:29',20,1),

/* 8*/
(54,'三只松鼠threesquirrels休闲零食特产蜜饯果脯水果干袋装  ',6,5.8,'山桃核仁','三只松鼠蜜饯果脯水果干袋装',1,'2017-01-05 00:28:29',20,1),
(55,'三只松鼠threesquirrels零食水果干蜜饯果脯黄桃片袋装国产',6,5.8,'夏威夷果仁','三只松鼠黄桃片',1,'2017-01-05 00:28:29',20,1),
(56,'三只松鼠threesquirrels零食水果干蜜饯果脯草莓片袋装国产',6,5.8,'搭配腰果仁','三只松鼠草莓片',1,'2017-01-05 00:28:29',20,1),
(57,'三只松鼠threesquirrels零食水果干蜜饯果脯菠萝片袋装国产',6,5.8,'巴旦木仁','三只松鼠菠萝片',1,'2017-01-05 00:28:29',20,1),
(58,'三只松鼠threesquirrels 休闲零食小吃番茄味 袋装 其他 薯片',7,6.8,'膨化薯片','三只松鼠零食小吃',1,'2017-01-05 00:28:29',20,1),
(59,'三只松鼠threesquirrels袋装国产零食特产果脯蜜饯水果干无花果干',12,11.5,'口感丝滑','无花果干',1,'2017-01-05 00:28:29',20,1),
(60,'坚果 开心果100gx5袋 坚果炒货批发特产干果网红休闲零食 ',10,9.5,'脆滑爽口','开心果100gx5袋',1,'2017-01-05 00:28:29',20,1),
(61,'青果不烧口带葡萄干九总天生有范和成天下张三疯湘潭铺子叼嘴巴 ',6,5.8,'传统手艺深加工','湘潭铺子槟榔',1,'2017-01-05 00:28:29',20,1),
(62,'旺旺 膨化食品 雪饼 84g(办公室休闲零食)',5,4.8,'香脆美味','旺旺雪饼',1,'2017-01-05 00:28:29',20,1),
(63,'旺仔牛奶糖(原味)126g/袋',2,1.8,'巧遇牛奶、包你喜欢','旺仔牛奶糖 1包',1,'2017-01-05 00:28:29',20,1),
(64,'乐事美国经典原味75克 袋装薯片 ',7,6.8,'脆香鲜美新体验','乐事薯片原味味75克',1,'2017-01-05 00:28:29',20,1),
(65,'乐事美国经典黄瓜75克 袋装薯片 ',7,6.8,'脆香鲜美新体验','乐事薯片黄瓜味75克',1,'2017-01-05 00:28:29',20,1),
(66,'乐事意大利香浓红烩味75克 袋装薯片',7,6.8,'脆香鲜美新体验','乐事薯片红烩味75克',1,'2017-01-05 00:28:29',20,1),
(67,'乐事墨西哥鸡汁番茄味75克 袋装薯片',7,6.8,'脆香鲜美新体验','乐事薯片番茄味75克',1,'2017-01-05 00:28:29',20,1),

/* 9*/
(68,'农夫山泉饮用天然水（适合婴幼儿）1L',2,1.9,'弱碱性天然饮用水','农夫山泉 300ml',1,'2017-01-05 00:28:29',20,1),
(69,'怡宝 纯净水 555ml 饮用水',2,1.9,'弱碱性天然饮用水',' 饮用水 550ml',1,'2017-01-05 00:28:29',20,1),
(70,'可口可乐(Coca-Cola)汽水',3,2.8,'酷爽刺激口感','可口可乐 300ml',1,'2017-01-05 00:28:29',20,1),
(71,'雪碧（Sprite）饮料 雪碧零卡',3,2.8,'标志性气泡','雪碧 300ml',1,'2017-01-05 00:28:29',20,1),
(72,'芬达（Fanta) 橙味汽水 300ml',3,2.8,'独特不可抗拒口味','芬达 300ml',1,'2017-01-05 00:28:29',20,1),
(73,'美汁源果粒橙1.25L',11,10.5,'果汁新鲜','果粒橙1.25L',1,'2017-01-05 00:28:29',20,1),
(74,'五粮液 52度500ml 浓香型白酒 单瓶装',1005,998,'陈坛老酒','五粮液 52度500ml',1,'2017-01-05 00:28:29',20,1),
(75,'法国薇娜骑士干红葡萄酒 750ml ',88,85,'百年有机','红葡萄酒 750ml',1,'2017-01-05 00:28:29',20,1),
(76,'ROSE鸡尾酒（预调酒）薄荷味275ml*1',7,6.9,'低度果酒','ROSE鸡尾酒 275ml*1',1,'2017-01-05 00:28:29',20,1),
(77,'乐事墨西哥鸡汁番茄味75克',7,6.5,'匠心独’酝','墨西哥鸡汁',1,'2017-01-05 00:28:29',20,1),
/* 10*/
(78,'金龙鱼寒地东北大米 5kg ',45,43.5,'颗粒饱满','金龙大米 5kg',1,'2017-01-05 00:28:29',20,1),
(79,'金龙鱼 食用植物调和油（清香）5L / 葵花籽食用调和油 5L 食用油',40,39.6,'物理压榨','金龙食用油',1,'2017-01-05 00:28:29',20,1),
(80,'生抽酱油1900ml 酿造酱油火锅调味品炒菜拌米饭拌面条',5,4.9,'六个月足期发酵','酱油',1,'2017-01-05 00:28:29',20,1),
(81,'想念挂面 龙须面180g 龙须面 细面条',5.5,5.1,'原始口感','龙须面180g',1,'2017-01-05 00:28:29',20,1),
(82,'香满园 美味富强粉 5kg面粉 袋装包子馒头面条水饺通用粉',10,8.8,'老配方、老味道','面粉 5kg',1,'2017-01-05 00:28:29',20,1),
(83,'盛耳 银耳 100g/袋 白木耳干货古田特产雪耳糯耳',25,22,'盖嫩柄脆','银耳 100g/袋',1,'2017-01-05 00:28:29',20,1),
/* 11*/
(84,'曼秀雷敦(MENTHOLATUM)男士洗面奶冰爽活炭+保湿活力150ml*2双支装深层清洁毛孔保湿补水控油洁面乳',22,21,'保湿补水控油','曼秀雷敦洁面乳 150ml*2',1,'2017-01-05 00:28:29',20,1),
(85,'资生堂安耐晒金瓶防晒霜60ml+NIVEA 妮维雅女士舒缓洗面奶150ml',14,13.5,'8种氨基酸+20种植物精粹','妮维雅面奶150ml',1,'2017-01-05 00:28:29',20,1),
(86,'大宝(DABAO)SOD蜜200毫升',8,7.5,'一瓶万金油，全身可用','SOD蜜200毫升',1,'2017-01-05 00:28:29',20,1),
(87,'肌司研 水光针剂急救面膜10片+蜜莹润蜂胶面膜10片 JM面膜',120,117,'补水保湿','肌司研面膜 10片',1,'2017-01-05 00:28:29',20,1),
(88,'美迪惠尔(Mediheal)护肤针剂水库补水保湿水润保湿+保湿黑炭面膜 20片',150,146.5,'补水保湿水润保湿','美迪惠尔面膜 20片',1,'2017-01-05 00:28:29',20,1),
(89,'御泥坊清透盈润面膜套装25ml*21',66,64.5,'补水保湿水','御泥坊面膜25ml*21',1,'2017-01-05 00:28:29',20,1),
(90,'唇膏 1.5g 蝶翠诗防干裂护唇膏无色橄榄保湿滋润补水润唇膏女',17,15.6,'保湿滋润补水','唇膏',1,'2017-01-05 00:28:29',20,1),
(91,'SHISEIDO资生堂 安耐晒金瓶防晒霜女60ml PA++++ 白皙修护防晒隔离 各种肤质 ',35,34.7,'修护防晒隔离','资生堂 防晒霜女',1,'2017-01-05 00:28:29',20,1),
(92,'云南白药(YUNNAN BAIYAO)牙膏180g留兰香型单支装 ',24,23,'留兰香型','云南白药 牙膏180g',1,'2017-01-05 00:28:29',20,1),
(93,'三笑深层洁净牙刷单支装 ',9,8.8,'软毛刷丝','牙刷单支',1,'2017-01-05 00:28:29',20,1),
(94,'海飞丝(Head & Shoulders)去屑洗发露怡神冰凉型洗发水750ml 宝洁出品',78,76,'去屑、去油','海飞丝洗发水',1,'2017-01-05 00:28:29',20,1),
(95,'多芬(Dove)洗发水 男士+护理 强韧洗发露 净透清爽200ml',55,54,'男士+护理 强韧','多芬洗发水',1,'2017-01-05 00:28:29',20,1),
(96,'清扬(CLEAR)男士去屑洗发水 啤酒酷爽型720g',46,45.2,'去屑、强韧发根','清扬洗发水',1,'2017-01-05 00:28:29',20,1),
(97,'欧莱雅（LOREAL）男士去屑洗发露(维他强韧) 400ml',54,52,'强韧发根、去油','欧莱雅洗发露',1,'2017-01-05 00:28:29',20,1),
(98,'Ryo红吕染烫修复损伤无硅油洗发水400ml 去屑滋养 发质修护 柔顺水润 受损发质',66,64.2,'修护发质','Ryo洗发水',1,'2017-01-05 00:28:29',20,1),
(99,'炫诗 (Tresemme) 空气感丰盈润发乳50ml',14,12.9,'润发，绣花发根','炫诗润发乳',1,'2017-01-05 00:28:29',20,1),
(100,'阿道夫植萃精华护发素护发乳液680ml 正品植萃精华配方滋养秀发护发素',68,66.6,'修护发质、柔顺','阿道夫护发乳',1,'2017-01-05 00:28:29',20,1),
(101,'资生堂 水之密语(AQUAIR) 净澄水活护发素 600ml 深层滋养',28,27.4,' 所有发质适用 护发素','水之密语护发素',1,'2017-01-05 00:28:29',20,1),
(102,'丝蕴无硅水润洗护套装750ml洗发露+750ml护发素',32,31,'修护发质、柔顺','丝蕴洗发露',1,'2017-01-05 00:28:29',20,1),
(103,'潘婷(PANTENE)丝质顺滑洗发露洗发水750ml 宝洁出品',29,26,'丝质顺滑','潘婷洗发露',1,'2017-01-05 00:28:29',20,1),
(104,'凌世  LYNX/凌仕男士醒体沐浴露 诱因400ml 沐浴乳',33,32.8,'巧克力香氛','凌仕男士醒体沐浴露',1,'2017-01-05 00:28:29',20,1),
(105,'力士(Lux)沐浴露 香氛沐浴乳 迷情花语1KG',32,31.2,'迷醉芍药香氛 依兰精油','力士沐浴露',1,'2017-01-05 00:28:29',20,1),
/* 12 */
(106,'清风 抽纸 *4包小规格(短幅)抽取式卫生纸巾餐巾纸擦手纸面巾纸',15,14.5,'原木纯品二层150抽','抽纸 4包',1,'2017-01-05 00:28:29',20,1),
(107,'白猫 柠檬红茶洗洁精5kg',20,14.4,'不留污渍不留痕迹','洗洁精 10斤',1,'2017-01-05 00:28:29',20,1),
(108,'蓝月亮 洗衣液(薰衣草) 1kg/瓶 ',16,15.1,'深层洁净护理','洗衣液 2斤',1,'2017-01-05 00:28:29',20,1),
(109,'全自动雨伞开收 大号双人三折防风男女加固晴雨两用学生超大号经典黑',22,19.9,'10骨折叠','自动雨伞',1,'2017-01-05 00:28:29',20,1),
(110,'白猫洗衣粉4000g',12,11.9,'冷水速洁无磷','洗衣粉 4斤',1,'2017-01-05 00:28:29',20,1),
(111,'苏宁极物 埃及全棉毛巾 粉色',8,8,'全棉','全棉毛巾',1,'2017-01-05 00:28:29',20,1),
/* 13*/
(112,'洋甘菊婴儿手口柔湿巾80抽*12包 母婴幼儿童湿巾纸 儿童宝宝带盖湿纸巾',15,14.5,'干湿两用','儿童湿巾纸 12包',1,'2017-01-05 00:28:29',20,1),
(113,'婴幼儿洗护常备用品，富含鲜奶，滋润营养，呵护肌肤',9,8.8,'宝宝专用','婴幼儿洗护',1,'2017-01-05 00:28:29',20,1),
(114,'德露宝(Colutti Kids)母婴幼儿童原装进口洗发沐浴二合一300ml野莓味有香味 婴儿宝宝专用洗发水沐浴露',90,88,'宝宝专用','宝宝专用洗发水',1,'2017-01-05 00:28:29',20,1),
(115,'贝亲(PIGEON)母婴幼儿童AA87玻璃奶瓶120ml ',23,22.5,'标准口径','玻璃奶瓶',1,'2017-01-05 00:28:29',20,1),
(116,'比天才 无线遥控汽车  儿童益智小汽车玩具车 仿真模型赛车 透明礼盒包装 ',120,118,'跑车造型','无线遥控汽车',1,'2017-01-05 00:28:29',20,1),
/* 14 */
(117,'艾美特(Airmate)1电热油汀取暖器HU1315-W 13片 折叠式烘衣架 加湿盒 ',320,315,'隐藏式加湿盒','取暖器HU1315-W',1,'2017-01-05 00:28:29',20,1),
(118,'九阳（Joyoung）电水壶JYK-13F05A 容量1.3L 食品级304不锈钢 双层防烫 国产温控器一键快速烧水',80,78,'大容量食品级内胆','电水壶JYK-13F05A',1,'2017-01-05 00:28:29',20,1),
(119,'九阳（Joyoung） 电水壶JYK-17C15 容量1.7L 不锈钢电热水壶 国产温控器家用 全钢机身快速烧水 ',88,87,'大容量食品级内胆','电水壶JYK-17C15',1,'2017-01-05 00:28:29',20,1),
(120,'飞科 (FLYCO) 电吹风机 FH6232 2000W大功率6防过热冷热风健康柔风模式发廊家用吹风机 ',50,49,'档可调节均衡热量','飞科 电吹风机',1,'2017-01-05 00:28:29',20,1);
/*Table structure for table `product_picture` */

DROP TABLE IF EXISTS `product_picture`;

CREATE TABLE `product_picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picName` varchar(40) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `picAddr` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `product_picture` */

insert  into `product_picture`(`id`,`picName`,`productId`,`picAddr`) values
(1,'樱桃',1,'/suning/images/yintao1.jpg'),
(2,'樱桃',1,'/suning/images/yingtao2.jpg'),
(3,'樱桃',1,'/suning/images/yingtao3.jpg'),
(4,'樱桃',1,'/suning/images/yingtao4.jpg'),

(5,'芒果',2,'/suning/images/mangguo1.jpg'),
(6,'芒果',2,'/suning/images/mangguo2.jpg'),
(7,'芒果',2,'/suning/images/mangguo3.jpg'),
(8,'芒果',2,'/suning/images/mangguo4.jpg'),

(9,'香蕉',3,'/suning/images/xiangjiao1.jpg'),
(10,'香蕉',3,'/suning/images/xiangjiao2.jpg'),
(11,'香蕉',3,'/suning/images/xiangjiao3.jpg'),
(12,'香蕉',3,'/suning/images/xiangjiao4.jpg'),

(13,'猕猴桃',4,'/suning/images/mihoutao1.jpg'),
(14,'猕猴桃',4,'/suning/images/mihoutao2.jpg'),
(15,'猕猴桃',4,'/suning/images/mihoutao3.jpg'),
(16,'猕猴桃',4,'/suning/images/mihoutao4.jpg'),

(17,'柠檬',5,'/suning/images/ninmeng1.jpg'),
(18,'柠檬',5,'/suning/images/ninmeng2.jpg'),
(19,'柠檬',5,'/suning/images/ninmeng3.jpg'),
(20,'柠檬',5,'/suning/images/ninmeng4.jpg'),

(21,'西瓜',6,'/suning/images/xigua1.jpg'),
(22,'西瓜',6,'/suning/images/xigua2.jpg'),
(23,'西瓜',6,'/suning/images/xigua3.jpg'),
(24,'西瓜',6,'/suning/images/xigua4.jpg'),

(25,'苹果',7,'/suning/images/pingguo1.jpg'),
(26,'苹果',7,'/suning/images/pingguo2.jpg'),
(27,'苹果',7,'/suning/images/pingguo3.jpg'),
(28,'苹果',7,'/suning/images/pingguo4.jpg'),


(29,'草莓',8,'/suning/images/caomei1.jpg'),
(30,'草莓',8,'/suning/images/caomei2.jpg'),
(31,'草莓',8,'/suning/images/caomei3.jpg'),
(32,'草莓',8,'/suning/images/caomei4.jpg'),

(33,'橙子',9,'/suning/images/chengzi1.jpg'),
(34,'橙子',9,'/suning/images/chengzi2.jpg'),
(35,'橙子',9,'/suning/images/chengzi3.jpg'),
(36,'橙子',9,'/suning/images/chengzi4.jpg'),

(37,'水蜜桃',10,'/suning/images/taozi1.jpg'),
(38,'水蜜桃',10,'/suning/images/taozi2.jpg'),
(39,'水蜜桃',10,'/suning/images/taozi3.jpg'),
(40,'水蜜桃',10,'/suning/images/taozi4.jpg'),

(41,'雀巢咖啡',11,'/suning/images/quechao1.jpg'),
(42,'雀巢咖啡',11,'/suning/images/quechao2.jpg'),
(43,'雀巢咖啡',11,'/suning/images/quechao3.jpg'),
(44,'雀巢咖啡',11,'/suning/images/quechao4.jpg'),

(45,'星巴克咖啡',12,'/suning/images/xianmo1.jpg'),
(46,'星巴克咖啡',12,'/suning/images/xianmo2.jpg'),
(47,'星巴克咖啡',12,'/suning/images/xianmo3.jpg'),
(48,'星巴克咖啡',12,'/suning/images/xianmo4.jpg'),
(49,'猫屎咖啡',13,'/suning/images/maoshi1.jpg'),
(50,'猫屎咖啡',13,'/suning/images/maoshi2.jpg'),
(51,'猫屎咖啡',13,'/suning/images/maoshi3.jpg'),
(52,'猫屎咖啡',13,'/suning/images/maoshi4.jpg'),

(53,'葱',14,'/suning/images/cong1.jpg'),
(54,'葱',14,'/suning/images/cong2.jpg'),
(55,'葱',14,'/suning/images/cong3.jpg'),
(56,'葱',14,'/suning/images/cong4.jpg'),

(57,'小白菜',15,'/suning/images/xiaobaicai1.jpg'),
(58,'小白菜',15,'/suning/images/xiaobaicai2.jpg'),
(59,'小白菜',15,'/suning/images/xiaobaicai3.jpg'),
(60,'小白菜',15,'/suning/images/xiaobaicai4.jpg'),

(61,'红辣椒',16,'/suning/images/lajiao1.jpg'),
(62,'红辣椒',16,'/suning/images/lajiao2.jpg'),
(63,'红辣椒',16,'/suning/images/lajiao3.jpg'),
(64,'红辣椒',16,'/suning/images/lajiao4.jpg'),

(65,'冬瓜',17,'/suning/images/donggua1.jpg'),
(66,'冬瓜',17,'/suning/images/donggua1.jpg'),
(67,'冬瓜',17,'/suning/images/donggua1.jpg'),
(68,'冬瓜',17,'/suning/images/donggua1.jpg'),

(69,'黄瓜',18,'/suning/images/huanggua1.jpg'),
(70,'黄瓜',18,'/suning/images/huanggua2.jpg'),
(71,'黄瓜',18,'/suning/images/huanggua3.jpg'),
(72,'黄瓜',18,'/suning/images/huanggua4.jpg'),

(73,'玉米',19,'/suning/images/yumi1.jpg'),
(74,'玉米',19,'/suning/images/yumi2.jpg'),
(75,'玉米',19,'/suning/images/yumi3.jpg'),
(76,'玉米',19,'/suning/images/yumi4.jpg'),

(77,'空心菜',20,'/suning/images/kongxingcai1.jpg'),
(78,'空心菜',20,'/suning/images/kongxingcai2.jpg'),
(79,'空心菜',20,'/suning/images/kongxingcai3.jpg'),
(80,'空心菜',20,'/suning/images/kongxingcai4.jpg'),

(81,'大白菜',21,'/suning/images/dabaicai1.jpg'),
(82,'大白菜',21,'/suning/images/dabaicai2.jpg'),
(83,'大白菜',21,'/suning/images/dabaicai3.jpg'),
(84,'大白菜',21,'/suning/images/dabaicai4.jpg'),
(85,'羊肉卷',22,'/suning/images/yangrou1.jpg'),
(86,'羊肉卷',22,'/suning/images/yangrou2.jpg'),
(87,'羊肉卷',22,'/suning/images/yangrou3.jpg'),
(88,'羊肉卷',22,'/suning/images/yangrou4.jpg'),
(89,'牛腱',23,'/suning/images/niujian1.jpg'),
(90,'牛腱',23,'/suning/images/niujian2.jpg'),
(91,'牛腱',23,'/suning/images/niujian3.jpg'),
(92,'牛腱',23,'/suning/images/niujian4.jpg'),
(93,'牛排',24,'/suning/images/niupai1.jpg'),
(94,'牛排',24,'/suning/images/niupai2.jpg'),
(95,'牛排',24,'/suning/images/niupai3.jpg'),
(96,'牛排',24,'/suning/images/niupai4.jpg'),
(97,'牛肉丸',25,'/suning/images/niurouwan1.jpg'),
(98,'牛肉丸',25,'/suning/images/niurouwan1.jpg'),
(99,'牛肉丸',25,'/suning/images/niurouwan1.jpg'),
(100,'牛肉丸',25,'/suning/images/niurouwan1.jpg'),

(101,'鸡蛋',26,'/suning/images/jidan1.jpg'),
(102,'鸡蛋',26,'/suning/images/jidan2.jpg'),
(103,'鸡蛋',26,'/suning/images/jidan3.jpg'),
(104,'鸡蛋',26,'/suning/images/jidan4.jpg'),

(105,'鸡肉',27,'/suning/images/jirou1.jpg'),
(106,'鸡肉',27,'/suning/images/jirou2.jpg'),
(107,'鸡肉',27,'/suning/images/jirou3.jpg'),
(108,'鸡肉',27,'/suning/images/jirou4.jpg'),

(109,'鱼',28,'/suning/images/yurou1.jpg'),
(110,'鱼',28,'/suning/images/yurou2.jpg'),
(111,'鱼',28,'/suning/images/yurou3.jpg'),
(112,'鱼',28,'/suning/images/yurou4.jpg'),

(113,'猪肉',29,'/suning/images/zhurou1.jpg'),
(114,'猪肉',29,'/suning/images/zhurou1.jpg'),
(115,'猪肉',29,'/suning/images/zhurou1.jpg'),
(116,'猪肉',29,'/suning/images/zhurou1.jpg'),
(117,'鸡腿',30,'/suning/images/jitui1.jpg'),
(118,'鸡腿',30,'/suning/images/jitui2.jpg'),
(119,'鸡腿',30,'/suning/images/jitui3.jpg'),
(120,'鸡腿',30,'/suning/images/jitui4.jpg'),

(121,'盐蛋',121,'/suning/images/yadan1.jpg'),
(122,'盐蛋',121,'/suning/images/yadan1.jpg'),
(123,'盐蛋',121,'/suning/images/yadan1.jpg'),
(124,'盐蛋',121,'/suning/images/yadan1.jpg'),

(125,'安慕希',31,'/suning/images/anmuxi1.jpg'),
(126,'安慕希',31,'/suning/images/anmuxi1.jpg'),
(127,'安慕希',31,'/suning/images/anmuxi1.jpg'),
(128,'安慕希',31,'/suning/images/anmuxi1.jpg'),

(129,'纯甄',32,'/suning/images/chunzhen1.jpg'),
(130,'纯甄',32,'/suning/images/chunzhen2.jpg'),
(131,'纯甄',32,'/suning/images/chunzhen3.jpg'),
(132,'纯甄',32,'/suning/images/chunzhen4.jpg'),

(133,'卡世',33,'/suning/images/kashi1.jpg'),
(134,'卡世',33,'/suning/images/kashi2.jpg'),
(135,'卡世',33,'/suning/images/kashi3.jpg'),
(136,'卡世',33,'/suning/images/kashi4.jpg'),

(137,'阿萨姆',34,'/suning/images/asamu1.jpg'),
(138,'阿萨姆',34,'/suning/images/asamu2.jpg'),
(139,'阿萨姆',34,'/suning/images/asamu3.jpg'),
(140,'阿萨姆',34,'/suning/images/asamu4.jpg'),

(141,'营养快线',35,'/suning/images/yingyangkuaixian1.jpg'),
(142,'营养快线',35,'/suning/images/yingyangkuaixian2.jpg'),
(143,'营养快线',35,'/suning/images/yingyangkuaixian3.jpg'),
(144,'营养快线',35,'/suning/images/yingyangkuaixian4.jpg'),

(145,'蛋糕',36,'/suning/images/dangao1.jpg'),
(146,'蛋糕',36,'/suning/images/dangao2.jpg'),
(147,'蛋糕',36,'/suning/images/dangao3.jpg'),
(148,'蛋糕',36,'/suning/images/dangao4.jpg'),

(149,'豪士',37,'/suning/images/haoshi1.jpg'),
(150,'豪士',37,'/suning/images/haoshi2.jpg'),
(151,'豪士',37,'/suning/images/haoshi3.jpg'),
(152,'豪士',37,'/suning/images/haoshi4.jpg'),

(153,'鸡蛋糕',38,'/suning/images/jidangao1.jpg'),
(154,'鸡蛋糕',38,'/suning/images/jidangao2.jpg'),
(155,'鸡蛋糕',38,'/suning/images/jidangao3.jpg'),
(156,'鸡蛋糕',38,'/suning/images/jidangao4.jpg'),

(157,'哈根达斯',39,'/suning/images/xuegao1.jpg'),
(158,'哈根达斯',39,'/suning/images/xuegao2.jpg'),
(159,'哈根达斯',39,'/suning/images/xuegao3.jpg'),
(160,'哈根达斯',39,'/suning/images/xuegao4.jpg'),

(161,'和路雪',40,'/suning/images/heluxue1.jpg'),
(162,'和路雪',40,'/suning/images/heluxue2.jpg'),
(163,'和路雪',40,'/suning/images/heluxue3.jpg'),
(164,'和路雪',40,'/suning/images/heluxue4.jpg'),

(165,'特仑苏',41,'/suning/images/telunsu1.jpg'),
(166,'特仑苏',41,'/suning/images/telunsu2.jpg'),
(167,'特仑苏',41,'/suning/images/telunsu3.jpg'),
(168,'特仑苏',41,'/suning/images/telunsu4.jpg'),

(169,'光明',42,'/suning/images/guangming1.jpg'),
(170,'光明',42,'/suning/images/guangming2.jpg'),
(171,'光明',42,'/suning/images/guangming3.jpg'),
(172,'光明',42,'/suning/images/guangming4.jpg'),

(173,'花生奶',43,'/suning/images/huashengnai1.jpg'),
(174,'花生奶',43,'/suning/images/huashengnai2.jpg'),
(175,'花生奶',43,'/suning/images/huashengnai3.jpg'),
(176,'花生奶',43,'/suning/images/huashengnai4.jpg'),

(177,'AD钙奶',44,'/suning/images/wahaha1.jpg'),
(178,'AD钙奶',44,'/suning/images/wahaha2.jpg'),
(179,'AD钙奶',44,'/suning/images/wahaha3.jpg'),
(180,'AD钙奶',44,'/suning/images/wahaha4.jpg'),

(181,'养乐多',122,'/suning/images/yangleduo1.jpg'),
(182,'养乐多',122,'/suning/images/yangleduo2.jpg'),
(183,'养乐多',122,'/suning/images/yangleduo3.jpg'),
(184,'养乐多',122,'/suning/images/yangleduo4.jpg'),

(185,'酸菜牛肉面',45,'/suning/images/suancai1.jpg'),
(186,'酸菜牛肉面',45,'/suning/images/suancai2.jpg'),
(187,'酸菜牛肉面',45,'/suning/images/suancai3.jpg'),
(188,'酸菜牛肉面',45,'/suning/images/suancai4.jpg'),

(189,'爆椒牛肉面',46,'/suning/images/baojiao1.jpg'),
(190,'爆椒牛肉面',46,'/suning/images/baojiao2.jpg'),

(479,'爆椒牛肉面',46,'/suning/images/baojiao3.jpg'),
(480,'爆椒牛肉面',46,'/suning/images/baojiao4.jpg'),

(481,'汤达人桶面',47,'/suning/images/tangdaren1.jpg'),
(482,'汤达人桶面',47,'/suning/images/tangdaren2.jpg'),
(483,'汤达人桶面',47,'/suning/images/tangdaren3.jpg'),
(484,'汤达人桶面',47,'/suning/images/tangdaren4.jpg'),

(485,'统一酱拌面',48,'/suning/images/ganbanmian1.jpg'),
(486,'统一酱拌面',48,'/suning/images/ganbanmian2.jpg'),
(487,'统一酱拌面',48,'/suning/images/ganbanmian3.jpg'),
(488,'统一酱拌面',48,'/suning/images/ganbanmian4.jpg'),

(191,'玉米热狗肠',49,'/suning/images/huotuichang1.jpg'),
(192,'玉米热狗肠',49,'/suning/images/huotuichang2.jpg'),
(193,'玉米热狗肠',49,'/suning/images/huotuichang3.jpg'),
(194,'玉米热狗肠',49,'/suning/images/huotuichang4.jpg'),

(195,'海带',50,'/suning/images/haidaia1.jpg'),
(196,'海带',50,'/suning/images/haidaia2.jpg'),
(197,'海带',50,'/suning/images/haidaia3.jpg'),
(198,'海带',50,'/suning/images/haidaia4.jpg'),

(199,'汤圆',51,'/suning/images/tangyuan1.jpg'),
(200,'汤圆',51,'/suning/images/tangyuan2.jpg'),
(201,'汤圆',51,'/suning/images/tangyuan3.jpg'),
(202,'汤圆',51,'/suning/images/tangyuan4.jpg'),

(203,'水饺',52,'/suning/images/shuijiao1.jpg'),
(204,'水饺',52,'/suning/images/shuijiao2.jpg'),
(205,'水饺',52,'/suning/images/shuijiao3.jpg'),
(206,'水饺',52,'/suning/images/shuijiao4.jpg'),

(207,'鸭脖',53,'/suning/images/yabo1.jpg'),
(208,'鸭脖',53,'/suning/images/yabo2.jpg'),
(209,'鸭脖',53,'/suning/images/yabo3.jpg'),
(210,'鸭脖',53,'/suning/images/yabo4.jpg'),

(211,'芒果干',54,'/suning/images/mangguogan1.jpg'),
(212,'芒果干',54,'/suning/images/mangguogan2.jpg'),
(213,'芒果干',54,'/suning/images/mangguogan3.jpg'),
(214,'芒果干',54,'/suning/images/mangguogan1.jpg'),

(215,'黄桃干',55,'/suning/images/huangtaogan1.jpg'),
(216,'黄桃干',55,'/suning/images/huangtaogan2.jpg'),
(217,'黄桃干',55,'/suning/images/huangtaogan3.jpg'),
(218,'黄桃干',55,'/suning/images/huangtaogan4.jpg'),

(219,'草莓干',56,'/suning/images/caomeigan1.jpg'),
(220,'草莓干',56,'/suning/images/caomeigan2.jpg'),
(221,'草莓干',56,'/suning/images/caomeigan3.jpg'),
(222,'草莓干',56,'/suning/images/caomeigan2.jpg'),

(223,'菠萝干',57,'/suning/images/boluogan1.jpg'),
(224,'菠萝干',57,'/suning/images/boluogan2.jpg'),
(225,'菠萝干',57,'/suning/images/boluogan3.jpg'),
(226,'菠萝干',57,'/suning/images/boluogan2.jpg'),

(227,'山药脆片',58,'/suning/images/shanyaocuipian1.jpg'),
(228,'山药脆片',58,'/suning/images/shanyaocuipian2.jpg'),
(229,'山药脆片',58,'/suning/images/shanyaocuipian3.jpg'),
(230,'山药脆片',58,'/suning/images/shanyaocuipian2.jpg'),

(231,'无花果',59,'/suning/images/wuhuaguo1.jpg'),
(232,'无花果',59,'/suning/images/wuhuaguo2.jpg'),
(233,'无花果',59,'/suning/images/wuhuaguo3.jpg'),
(234,'无花果',59,'/suning/images/wuhuaguo2.jpg'),

(235,'开心果',60,'/suning/images/kaixinguo1.jpg'),
(236,'开心果',60,'/suning/images/kaixinguo2.jpg'),
(237,'开心果',60,'/suning/images/kaixinguo3.jpg'),
(238,'开心果',60,'/suning/images/kaixinguo2.jpg'),

(239,'槟榔',61,'/suning/images/binglang1.jpg'),
(240,'槟榔',61,'/suning/images/binglang2.jpg'),
(241,'槟榔',61,'/suning/images/binglang3.jpg'),
(242,'槟榔',61,'/suning/images/binglang4.jpg'),

(243,'旺旺雪饼',62,'/suning/images/wangwang1.jpg'),
(244,'旺旺雪饼',62,'/suning/images/wangwang2.jpg'),
(245,'旺旺雪饼',62,'/suning/images/wangwang3.jpg'),
(246,'旺旺雪饼',62,'/suning/images/wangwang4.jpg'),

(247,'旺仔牛奶糖',63,'/suning/images/tang1.jpg'),
(248,'旺仔牛奶糖',63,'/suning/images/tang1.jpg'),
(249,'旺仔牛奶糖',63,'/suning/images/tang1.jpg'),
(250,'旺仔牛奶糖',63,'/suning/images/tang1.jpg'),

(251,'经典原味',64,'/suning/images/leshiyuanwei1.jpg'),
(252,'经典原味',64,'/suning/images/leshiyuanwei2.jpg'),
(253,'经典原味',64,'/suning/images/leshiyuanwei3.jpg'),
(254,'经典原味',64,'/suning/images/leshiyuanwei4.jpg'),

(255,'经典黄瓜',65,'/suning/images/leshihuanggua1.jpg'),
(256,'经典黄瓜',65,'/suning/images/leshihuanggua2.jpg'),
(257,'经典黄瓜',65,'/suning/images/leshihuanggua3.jpg'),
(258,'经典黄瓜',65,'/suning/images/leshihuanggua4.jpg'),

(259,'红烩味',66,'/suning/images/leshihongkuai1.jpg'),
(260,'红烩味',66,'/suning/images/leshihongkuai2.jpg'),
(261,'红烩味',66,'/suning/images/leshihongkuai3.jpg'),
(262,'红烩味',66,'/suning/images/leshihongkuai4.jpg'),

(263,'番茄味',67,'/suning/images/leshifanqie1.jpg'),
(264,'番茄味',67,'/suning/images/leshifanqie2.jpg'),
(265,'番茄味',67,'/suning/images/leshifanqie3.jpg'),
(266,'番茄味',67,'/suning/images/leshifanqie4.jpg'),

(267,'农夫山泉',68,'/suning/images/nongfushanquan1.jpg'),
(268,'农夫山泉',68,'/suning/images/nongfushanquan2.jpg'),
(269,'农夫山泉',68,'/suning/images/nongfushanquan3.jpg'),
(270,'农夫山泉',68,'/suning/images/nongfushanquan4.jpg'),

(271,'怡宝',69,'/suning/images/yibao1.jpg'),
(272,'怡宝',69,'/suning/images/yibao2.jpg'),
(273,'怡宝',69,'/suning/images/yibao3.jpg'),
(274,'怡宝',69,'/suning/images/yibao4.jpg'),

(275,'可口可乐',70,'/suning/images/kele1.jpg'),
(276,'可口可乐',70,'/suning/images/kele2.jpg'),
(277,'可口可乐',70,'/suning/images/kele3.jpg'),
(278,'可口可乐',70,'/suning/images/kele1.jpg'),

(279,'雪碧',71,'/suning/images/xuebi1.jpg'),
(280,'雪碧',71,'/suning/images/xuebi2.jpg'),
(281,'雪碧',71,'/suning/images/xuebi3.jpg'),
(282,'雪碧',71,'/suning/images/xuebi4.jpg'),

(283,'芬达',72,'/suning/images/fenda1.jpg'),
(284,'芬达',72,'/suning/images/fenda2.jpg'),
(285,'芬达',72,'/suning/images/fenda3.jpg'),
(286,'芬达',72,'/suning/images/fenda4.jpg'),

(287,'果粒橙',73,'/suning/images/guolicheng1.jpg'),
(288,'果粒橙',73,'/suning/images/guolicheng2.jpg'),
(289,'果粒橙',73,'/suning/images/guolicheng3.jpg'),
(290,'果粒橙',73,'/suning/images/guolicheng4.jpg'),

(291,'粮液',74,'/suning/images/wuliangye1.jpg'),
(292,'粮液',74,'/suning/images/wuliangye2.jpg'),
(293,'粮液',74,'/suning/images/wuliangye3.jpg'),
(294,'粮液',74,'/suning/images/wuliangye4.jpg'),

(295,'葡萄酒',75,'/suning/images/hongjiu1.jpg'),
(296,'葡萄酒',75,'/suning/images/hongjiu2.jpg'),
(297,'葡萄酒',75,'/suning/images/hongjiu3.jpg'),
(298,'葡萄酒',75,'/suning/images/hongjiu4.jpg'),

(299,'ROSE鸡尾酒',76,'/suning/images/jiweijiu1.jpg'),
(300,'ROSE鸡尾酒',76,'/suning/images/jiweijiu1.jpg'),
(301,'ROSE鸡尾酒',76,'/suning/images/jiweijiu1.jpg'),
(302,'ROSE鸡尾酒',76,'/suning/images/jiweijiu1.jpg'),

(303,'鸡汁',77,'/suning/images/leshifanqie1.jpg'),
(304,'鸡汁',77,'/suning/images/leshifanqie2.jpg'),
(305,'鸡汁',77,'/suning/images/leshifanqie3.jpg'),
(306,'鸡汁',77,'/suning/images/leshifanqie4.jpg'),

(307,'大米',78,'/suning/images/mi1.jpg'),
(308,'大米',78,'/suning/images/mi2.jpg'),
(309,'大米',78,'/suning/images/mi3.jpg'),
(310,'大米',78,'/suning/images/mi4.jpg'),

(311,'油',79,'/suning/images/you1.jpg'),
(312,'油',79,'/suning/images/you2.jpg'),
(313,'油',79,'/suning/images/you3.jpg'),
(314,'油',79,'/suning/images/you4.jpg'),

(315,'酱油',80,'/suning/images/jiangyou1.jpg'),
(316,'酱油',80,'/suning/images/jiangyou2.jpg'),
(317,'酱油',80,'/suning/images/jiangyou3.jpg'),
(318,'酱油',80,'/suning/images/jiangyou4.jpg'),

(319,'细面条',81,'/suning/images/mian1.jpg'),
(320,'细面条',81,'/suning/images/mian2.jpg'),
(321,'细面条',81,'/suning/images/mian3.jpg'),
(322,'细面条',81,'/suning/images/mian4.jpg'),

(323,'面粉',82,'/suning/images/mianfen1.jpg'),
(324,'面粉',82,'/suning/images/mianfen2.jpg'),
(325,'面粉',82,'/suning/images/mianfen3.jpg'),
(326,'面粉',82,'/suning/images/mianfen4.jpg'),

(327,'银耳',83,'/suning/images/yiner1.jpg'),
(328,'银耳',83,'/suning/images/yiner2.jpg'),
(329,'银耳',83,'/suning/images/yiner3.jpg'),
(330,'银耳',83,'/suning/images/yiner4.jpg'),

(331,'曼秀雷敦',84,'/suning/images/ximiannai1.jpg'),
(332,'曼秀雷敦',84,'/suning/images/ximiannai2.jpg'),
(333,'曼秀雷敦',84,'/suning/images/ximiannai3.jpg'),
(334,'曼秀雷敦',84,'/suning/images/ximiannai4.jpg'),

(335,'妮维雅',85,'/suning/images/niweiya1.jpg'),
(336,'妮维雅',85,'/suning/images/niweiya2.jpg'),
(337,'妮维雅',85,'/suning/images/niweiya3.jpg'),
(338,'妮维雅',85,'/suning/images/niweiya4.jpg'),

(339,'大宝SOD蜜',86,'/suning/images/dabao1.jpg'),
(340,'大宝SOD蜜',86,'/suning/images/dabao2.jpg'),
(341,'大宝SOD蜜',86,'/suning/images/dabao3.jpg'),
(342,'大宝SOD蜜',86,'/suning/images/dabao4.jpg'),

(343,'肌司研',87,'/suning/images/jisiyan1.jpg'),
(344,'肌司研',87,'/suning/images/jisiyan2.jpg'),
(345,'肌司研',87,'/suning/images/jisiyan3.jpg'),
(346,'肌司研',87,'/suning/images/jisiyan4.jpg'),

(347,'美迪惠尔',88,'/suning/images/meidihuier1.jpg'),
(348,'美迪惠尔',88,'/suning/images/meidihuier2.jpg'),
(349,'美迪惠尔',88,'/suning/images/meidihuier3.jpg'),
(350,'美迪惠尔',88,'/suning/images/meidihuier4.jpg'),

(351,'御泥坊',89,'/suning/images/yunifang1.jpg'),
(352,'御泥坊',89,'/suning/images/yunifang2.jpg'),
(353,'御泥坊',89,'/suning/images/yunifang3.jpg'),
(354,'御泥坊',89,'/suning/images/yunifang4.jpg'),

(355,'DHC',90,'/suning/images/runchungao1.jpg'),
(356,'DHC',90,'/suning/images/runchungao2.jpg'),
(357,'DHC',90,'/suning/images/runchungao3.jpg'),
(358,'DHC',90,'/suning/images/runchungao4.jpg'),

(359,'防晒霜',91,'/suning/images/fangshaishuang1.jpg'),
(360,'防晒霜',91,'/suning/images/fangshaishuang2.jpg'),
(361,'防晒霜',91,'/suning/images/fangshaishuang3.jpg'),
(362,'防晒霜',91,'/suning/images/fangshaishuang4.jpg'),

(363,'云南白药',92,'/suning/images/yagao1.jpg'),
(364,'云南白药',92,'/suning/images/yagao2.jpg'),
(365,'云南白药',92,'/suning/images/yagao3.jpg'),
(366,'云南白药',92,'/suning/images/yagao4.jpg'),

(367,'牙刷',93,'/suning/images/yashua1.jpg'),
(368,'牙刷',93,'/suning/images/yashua2.jpg'),
(369,'牙刷',93,'/suning/images/yashua3.jpg'),
(370,'牙刷',93,'/suning/images/yashua4.jpg'),

(371,'海飞丝',94,'/suning/images/haifeisi1.jpg'),
(372,'海飞丝',94,'/suning/images/haifeisi1.jpg'),
(373,'海飞丝',94,'/suning/images/haifeisi1.jpg'),
(374,'海飞丝',94,'/suning/images/haifeisi1.jpg'),

(375,'多芬',95,'/suning/images/yagao3.jpg'),
(376,'多芬',95,'/suning/images/yagao4.jpg'),
(377,'多芬',95,'/suning/images/yashua1.jpg'),
(378,'多芬',95,'/suning/images/yashua2.jpg'),

(379,'清扬',96,'/suning/images/qingyang1.jpg'),
(380,'清扬',96,'/suning/images/qingyang2.jpg'),
(381,'清扬',96,'/suning/images/qingyang3.jpg'),
(382,'清扬',96,'/suning/images/qingyang4.jpg'),

(383,'欧莱雅',97,'/suning/images/oulaiya1.jpg'),
(384,'欧莱雅',97,'/suning/images/oulaiya2.jpg'),
(385,'欧莱雅',97,'/suning/images/oulaiya3.jpg'),
(386,'欧莱雅',97,'/suning/images/oulaiya4.jpg'),

(387,'Ryo红吕',98,'/suning/images/lv1.jpg'),
(388,'Ryo红吕',98,'/suning/images/lv1.jpg'),
(389,'Ryo红吕',98,'/suning/images/lv1.jpg'),
(390,'Ryo红吕',98,'/suning/images/lv1.jpg'),

(391,'炫诗',99,'/suning/images/xuanshi1.jpg'),
(392,'炫诗',99,'/suning/images/xuanshi2.jpg'),
(393,'炫诗',99,'/suning/images/xuanshi3.jpg'),
(394,'炫诗',99,'/suning/images/xuanshi4.jpg'),

(395,'阿道夫',100,'/suning/images/aerdaofu1.jpg'),
(396,'阿道夫',100,'/suning/images/aerdaofu1.jpg'),
(397,'阿道夫',100,'/suning/images/aerdaofu1.jpg'),
(398,'阿道夫',100,'/suning/images/aerdaofu1.jpg'),

(399,'水之密语',101,'/suning/images/shuizhimiyu1.jpg'),
(400,'水之密语',101,'/suning/images/shuizhimiyu2.jpg'),
(401,'水之密语',101,'/suning/images/shuizhimiyu3.jpg'),
(402,'水之密语',101,'/suning/images/shuizhimiyu4.jpg'),

(403,'丝蕴',102,'/suning/images/siyun1.jpg'),
(404,'丝蕴',102,'/suning/images/siyun2.jpg'),
(405,'丝蕴',102,'/suning/images/siyun3.jpg'),
(406,'丝蕴',102,'/suning/images/siyun4.jpg'),

(407,'潘婷',103,'/suning/images/panting1.jpg'),
(408,'潘婷',103,'/suning/images/panting2.jpg'),
(409,'潘婷',103,'/suning/images/panting3.jpg'),
(410,'潘婷',103,'/suning/images/panting4.jpg'),

(411,'凌仕',104,'/suning/images/lingshi1.jpg'),
(412,'凌仕',104,'/suning/images/lingshi2.jpg'),
(413,'凌仕',104,'/suning/images/lingshi3.jpg'),
(414,'凌仕',104,'/suning/images/lingshi4.jpg'),

(415,'力士',105,'/suning/images/lishi1.jpg'),
(416,'力士',105,'/suning/images/lishi2.jpg'),
(417,'力士',105,'/suning/images/lishi3.jpg'),
(418,'力士',105,'/suning/images/lishi4.jpg'),

(419,'抽取式纸巾',106,'/suning/images/zhi1.jpg'),
(420,'抽取式纸巾',106,'/suning/images/zhi2.jpg'),
(421,'抽取式纸巾',106,'/suning/images/zhi3.jpg'),
(422,'抽取式纸巾',106,'/suning/images/zhi4.jpg'),

(423,'洗洁精',107,'/suning/images/xijiej1.jpg'),
(424,'洗洁精',107,'/suning/images/xijiej2.jpg'),
(425,'洗洁精',107,'/suning/images/xijiej3.jpg'),
(426,'洗洁精',107,'/suning/images/xijiej4.jpg'),

(427,'蓝月亮',108,'/suning/images/xiyiye1.jpg'),
(428,'蓝月亮',108,'/suning/images/xiyiye2.jpg'),
(429,'蓝月亮',108,'/suning/images/xiyiye3.jpg'),
(430,'蓝月亮',108,'/suning/images/xiyiye4.jpg'),

(431,'雨伞',109,'/suning/images/san1.jpg'),
(432,'雨伞',109,'/suning/images/san2.jpg'),
(433,'雨伞',109,'/suning/images/san3.jpg'),
(434,'雨伞',109,'/suning/images/san4.jpg'),

(435,'洗衣粉',110,'/suning/images/xiyifen1.jpg'),
(436,'洗衣粉',110,'/suning/images/xiyifen2.jpg'),
(437,'洗衣粉',110,'/suning/images/xiyifen3.jpg'),
(438,'洗衣粉',110,'/suning/images/xiyifen4.jpg'),

(439,'毛巾',111,'/suning/images/maojin1.jpg'),
(440,'毛巾',111,'/suning/images/maojin2.jpg'),
(441,'毛巾',111,'/suning/images/maojin3.jpg'),
(442,'毛巾',111,'/suning/images/maojin4.jpg'),

(443,'湿巾',112,'/suning/images/shijin1.jpg'),
(444,'湿巾',112,'/suning/images/shijin2.jpg'),
(445,'湿巾',112,'/suning/images/shijin3.jpg'),
(446,'湿巾',112,'/suning/images/shijin4.jpg'),

(447,'郁美净',113,'/suning/images/yumeijing1.jpg'),
(448,'郁美净',113,'/suning/images/yumeijing1.jpg'),
(449,'郁美净',113,'/suning/images/yumeijing1.jpg'),
(450,'郁美净',113,'/suning/images/yumeijing1.jpg'),

(451,'宝宝洗发水',114,'/suning/images/yingerxifa1.jpg'),
(452,'宝宝洗发水',114,'/suning/images/yingerxifa2.jpg'),
(453,'宝宝洗发水',114,'/suning/images/yingerxifa3.jpg'),
(454,'宝宝洗发水',114,'/suning/images/yingerxifa4.jpg'),

(455,'奶瓶奶嘴',115,'/suning/images/naiping1.jpg'),
(456,'奶瓶奶嘴',115,'/suning/images/naiping2.jpg'),
(457,'奶瓶奶嘴',115,'/suning/images/naiping3.jpg'),
(458,'奶瓶奶嘴',115,'/suning/images/naiping4.jpg'),

(459,'遥控汽车',116,'/suning/images/saiche1.jpg'),
(460,'遥控汽车',116,'/suning/images/saiche2.jpg'),
(461,'遥控汽车',116,'/suning/images/saiche3.jpg'),
(462,'遥控汽车',116,'/suning/images/saiche4.jpg'),

(463,'电热取暖器',117,'/suning/images/qunuanqi1.jpg'),
(464,'电热取暖器',117,'/suning/images/qunuanqi2.jpg'),
(465,'电热取暖器',117,'/suning/images/qunuanqi3.jpg'),
(466,'电热取暖器',117,'/suning/images/qunuanqi4.jpg'),

(467,'JYK-13F05A',118,'/suning/images/dianshuihu1.jpg'),
(468,'JYK-13F05A',118,'/suning/images/dianshuihu2.jpg'),
(469,'JYK-13F05A',118,'/suning/images/dianshuihu3.jpg'),
(470,'JYK-13F05A',118,'/suning/images/dianshuihu4.jpg'),

(471,'JYK-17C15',119,'/suning/images/jiuyang1.jpg'),
(472,'JYK-17C15',119,'/suning/images/jiuyang2.jpg'),
(473,'JYK-17C15',119,'/suning/images/jiuyang3.jpg'),
(474,'JYK-17C15',119,'/suning/images/jiuyang4.jpg'),

(475,'飞科',120,'/suning/images/feike1.jpg'),
(476,'飞科',120,'/suning/images/feike2.jpg'),
(477,'飞科',120,'/suning/images/feike3.jpg'),
(478,'飞科',120,'/suning/images/feike4.jpg');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `mobile` char(11) DEFAULT NULL,
  `isDelete` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`mobile`,`isDelete`) values (1,'itcast','lueSGJZetyySpUndWjMBEg==','15102324243',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
