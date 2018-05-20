-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-05-20 04:58:11
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbs`
--
CREATE DATABASE IF NOT EXISTS `dbs` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `dbs`;

-- --------------------------------------------------------

--
-- 表的结构 `banner`
--

CREATE TABLE `banner` (
  `id` int(10) NOT NULL,
  `url` varchar(100) NOT NULL,
  `title` text,
  `minurl` varchar(100) NOT NULL,
  `mintwo` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `banner`
--

INSERT INTO `banner` (`id`, `url`, `title`, `minurl`, `mintwo`) VALUES
(1, 'https://z2.tuanimg.com/imagev2/site/951x304.e8a4b2d97f8cceba406b45311c6bd8cb.951x304+1-1.951x304.jpg', '家纺', 'https://z2.tuanimg.com/imagev2/site/320x320.3e7fcd7a3dacbc804650fc1499335434.160x160.png', 'https://z2.tuanimg.com/imagev2/site/320x320.51c04161065ea2ddb0b07db56ad458ae.160x160.png'),
(2, 'https://z2.tuanimg.com/imagev2/site/950x304.af64c057980eb9663028193bea1ac95c.951x304+1-1.951x304.jpg', '吃货', 'https://z2.tuanimg.com/imagev2/site/320x320.cc20420b132f6aed0b563757db8b1a7b.160x160.png', 'https://z2.tuanimg.com/imagev2/site/320x320.e6193b213cbaf9bc4af4f5101a3d899e.160x160.png'),
(3, 'https://z2.tuanimg.com/imagev2/site/950x304.af64c057980eb9663028193bea1ac95c.951x304+1-1.951x304.jpg', '男装', 'https://z2.tuanimg.com/imagev2/site/320x320.301e978f41ac04c4db8ec0a693699156.160x160.png', 'https://z2.tuanimg.com/imagev2/site/320x320.d2e89ac83dfb9f68bb2d57d0398b4941.160x160.png');

-- --------------------------------------------------------

--
-- 表的结构 `clss`
--

CREATE TABLE `clss` (
  `id` tinyint(5) NOT NULL,
  `title` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `clss`
--

INSERT INTO `clss` (`id`, `title`) VALUES
(1, '性感V领'),
(2, '喇叭袖'),
(3, '刺绣'),
(4, '俏皮露肩'),
(5, '绑带衬衫'),
(6, '条纹控'),
(7, '白衬衫'),
(8, '印花T恤'),
(9, '一字肩'),
(10, '情侣装'),
(11, '时髦皮衣');

-- --------------------------------------------------------

--
-- 表的结构 `djrm`
--

CREATE TABLE `djrm` (
  `id` tinyint(5) NOT NULL,
  `title` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `djrm`
--

INSERT INTO `djrm` (`id`, `title`) VALUES
(1, '夏上新'),
(2, 'oversizeT恤'),
(3, '衬衫'),
(4, 'T恤'),
(5, '入夏套装'),
(6, '长款T恤'),
(7, '轻薄针织'),
(8, '蕾丝top'),
(9, '防晒衫'),
(10, '印花T恤'),
(11, '甜美荷叶边'),
(12, '背心吊带'),
(13, '夏日花卉');

-- --------------------------------------------------------

--
-- 表的结构 `goodslist`
--

CREATE TABLE `goodslist` (
  `sid` tinyint(20) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `url` varchar(300) NOT NULL,
  `price` double(30,2) NOT NULL,
  `sall` int(100) NOT NULL,
  `active` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `goodslist`
--

INSERT INTO `goodslist` (`sid`, `title`, `url`, `price`, `sall`, `active`) VALUES
(1, '【13C】2018春季新款简约百搭慵懒V领宽松打底衫套头针织衫GA17', '"https://img.alicdn.com/tfscom/i2/39090641/TB2BklCcNSYBuNjSspjXXX73VXa_!!39090641.jpg"', 168.00, 5, '卓沃女装夏季新品专场'),
(2, '胖mm遮肚上衣韩版遮肉大码春装2018新款胖妹妹200斤宽松长袖衬衫', '"https://img.alicdn.com/tfscom/i2/2836003954/TB2U5wxdXuWBuNjSszbXXcS7FXa_!!2836003954.jpg"', 69.00, 8, '卓沃女装夏季新品专场'),
(3, '2018夏装新款圆领套头半袖上衣印花抽象画五色T恤女短袖打底衫潮', '"https://img.alicdn.com/tfscom/i2/71460541/TB2TAPYamMmBKNjSZTEXXasKpXa_!!71460541.jpg"', 70.00, 12, '诗美斯格精选好货专场'),
(4, '小谷粒格子外套女中长款春秋原宿风学生翻领抽绳系带收腰百搭外衣', '"https://img.alicdn.com/tfscom/i3/380101244/TB12ucXhnlYBeNjSszcXXbwhFXa_!!0-item_pic.jpg"', 139.00, 36, '卓沃女装夏季新品专场'),
(5, '现货LIVAS JU柔软的客供精纺斜纹全羊毛薄料优雅气质款七分阔腿裤', '"https://img.alicdn.com/tfscom/i4/21411712/TB2s_r6e9BYBeNjy0FeXXbnmFXa_!!21411712.jpg"', 388.00, 78, '诗美斯格精选好货专场'),
(6, 'MIUCO女装2018早春新款重工压褶印花手工花朵上衣+萝卜哈伦裤套装', '"https://img.alicdn.com/tfscom/i1/671012022/TB1pf8aXZIrBKNjSZK9XXagoVXa_!!0-item_pic.jpg"', 298.00, 99, '卓沃女装夏季新品专场'),
(7, '2018早春新款韩版中长款白色水貂绒外套女气质大口袋显瘦双面羊毛', '"https://img.alicdn.com/tfscom/i4/1684079952/TB2Mx5Sc.R1BeNjy0FmXXb0wVXa_!!1684079952.jpg"', 186.00, 44, '诗美斯格精选好货专场'),
(8, '字母印花宽松大T恤女bf风短袖韩范春装2018新款韩版百搭学生社会', '"https://img.alicdn.com/tfscom/i5/TB1VGlhdx9YBuNjy0FfYXFIsVXa_M2.SS2"', 71.12, 55, '卓沃女装夏季新品专场'),
(9, 'Pukka/蒲牌春秋新款原创设计大码女装翻领长袖肌理棉长款衬衫', '"https://img.alicdn.com/tfscom/i2/724119801/TB1S7jPgVOWBuNjy0FiXXXFxVXa_!!0-item_pic.jpg"', 499.00, 23, '卓沃女装夏季新品专场'),
(10, '夕蒙 长袖chic小西装外套薄+高腰休闲短裤春季套装女百搭宽松上衣', '"https://img.alicdn.com/tfscom/i2/84074936/TB2UH.9bbL9F1JjSZFlXXa2sVXa_!!84074936.jpg"', 139.00, 56, '诗美斯格精选好货专场'),
(11, '【88元】梵希蔓清仓2017冬新款撞色毛衣保暖打底长袖半高领针织衫', '"https://img.alicdn.com/tfscom/i1/1037043605/TB22PUdbOCYBuNkSnaVXXcMsVXa_!!1037043605.jpg"', 88.00, 99, '卓沃女装夏季新品专场'),
(12, '【33元清仓】梵希蔓套头针织衫纯色修身高领钩花镂空打底衫毛衣', '"https://img.alicdn.com/tfscom/i3/1037043605/TB2c7T9bOAnBKNjSZFvXXaTKXXa_!!1037043605.jpg"', 33.00, 35, '卓沃女装夏季新品专场'),
(13, '肉色打底裤女冬季外穿保暖加绒加厚光腿袜美腿隐形肤色踩脚裤', '"https://img.alicdn.com/tfscom/i2/733005986/TB1gcWGinnI8KJjy0FfXXcdoVXa_!!0-item_pic.jpg"', 35.00, 66, '诗美斯格精选好货专场'),
(14, '大喜自制2017冬装新款宽松字母刺绣连帽外套中长款套头加厚卫衣女', '"https://img.alicdn.com/tfscom/i1/704298669/TB25MMNXTnI8KJjy0FfXXcdoVXa_!!704298669.jpg"', 168.00, 16, '卓沃女装夏季新品专场'),
(21, '【13C】2018春季新款简约百搭慵懒V领宽松打底衫套头针织衫GA17', '"https://img.alicdn.com/tfscom/i2/39090641/TB2BklCcNSYBuNjSspjXXX73VXa_!!39090641.jpg"', 168.00, 5, '卓沃女装夏季新品专场'),
(22, '胖mm遮肚上衣韩版遮肉大码春装2018新款胖妹妹200斤宽松长袖衬衫', '"https://img.alicdn.com/tfscom/i2/2836003954/TB2U5wxdXuWBuNjSszbXXcS7FXa_!!2836003954.jpg"', 69.00, 8, '卓沃女装夏季新品专场'),
(23, '2018夏装新款圆领套头半袖上衣印花抽象画五色T恤女短袖打底衫潮', '"https://img.alicdn.com/tfscom/i2/71460541/TB2TAPYamMmBKNjSZTEXXasKpXa_!!71460541.jpg"', 70.00, 12, '诗美斯格精选好货专场'),
(24, '小谷粒格子外套女中长款春秋原宿风学生翻领抽绳系带收腰百搭外衣', '"https://img.alicdn.com/tfscom/i3/380101244/TB12ucXhnlYBeNjSszcXXbwhFXa_!!0-item_pic.jpg"', 139.00, 36, '卓沃女装夏季新品专场'),
(25, '现货LIVAS JU柔软的客供精纺斜纹全羊毛薄料优雅气质款七分阔腿裤', '"https://img.alicdn.com/tfscom/i4/21411712/TB2s_r6e9BYBeNjy0FeXXbnmFXa_!!21411712.jpg"', 388.00, 78, '诗美斯格精选好货专场'),
(26, 'MIUCO女装2018早春新款重工压褶印花手工花朵上衣+萝卜哈伦裤套装', '"https://img.alicdn.com/tfscom/i1/671012022/TB1pf8aXZIrBKNjSZK9XXagoVXa_!!0-item_pic.jpg"', 298.00, 99, '卓沃女装夏季新品专场'),
(27, '2018早春新款韩版中长款白色水貂绒外套女气质大口袋显瘦双面羊毛', '"https://img.alicdn.com/tfscom/i4/1684079952/TB2Mx5Sc.R1BeNjy0FmXXb0wVXa_!!1684079952.jpg"', 186.00, 44, '诗美斯格精选好货专场'),
(28, '字母印花宽松大T恤女bf风短袖韩范春装2018新款韩版百搭学生社会', '"https://img.alicdn.com/tfscom/i5/TB1VGlhdx9YBuNjy0FfYXFIsVXa_M2.SS2"', 71.12, 55, '卓沃女装夏季新品专场'),
(29, 'Pukka/蒲牌春秋新款原创设计大码女装翻领长袖肌理棉长款衬衫', '"https://img.alicdn.com/tfscom/i2/724119801/TB1S7jPgVOWBuNjy0FiXXXFxVXa_!!0-item_pic.jpg"', 499.00, 23, '卓沃女装夏季新品专场'),
(30, '夕蒙 长袖chic小西装外套薄+高腰休闲短裤春季套装女百搭宽松上衣', '"https://img.alicdn.com/tfscom/i2/84074936/TB2UH.9bbL9F1JjSZFlXXa2sVXa_!!84074936.jpg"', 139.00, 56, '诗美斯格精选好货专场'),
(31, '【88元】梵希蔓清仓2017冬新款撞色毛衣保暖打底长袖半高领针织衫', '"https://img.alicdn.com/tfscom/i1/1037043605/TB22PUdbOCYBuNkSnaVXXcMsVXa_!!1037043605.jpg"', 88.00, 99, '卓沃女装夏季新品专场'),
(32, '【33元清仓】梵希蔓套头针织衫纯色修身高领钩花镂空打底衫毛衣', '"https://img.alicdn.com/tfscom/i3/1037043605/TB2c7T9bOAnBKNjSZFvXXaTKXXa_!!1037043605.jpg"', 33.00, 35, '卓沃女装夏季新品专场'),
(33, '肉色打底裤女冬季外穿保暖加绒加厚光腿袜美腿隐形肤色踩脚裤', '"https://img.alicdn.com/tfscom/i2/733005986/TB1gcWGinnI8KJjy0FfXXcdoVXa_!!0-item_pic.jpg"', 35.00, 66, '诗美斯格精选好货专场'),
(34, '大喜自制2017冬装新款宽松字母刺绣连帽外套中长款套头加厚卫衣女', '"https://img.alicdn.com/tfscom/i1/704298669/TB25MMNXTnI8KJjy0FfXXcdoVXa_!!704298669.jpg"', 168.00, 16, '卓沃女装夏季新品专场'),
(35, '伴娘服短款2017夏新款韩式伴娘服毕业小礼服裙修身显瘦晚礼服灰色', '"https://img.alicdn.com/bao/uploaded/i2/169102425/TB2.QRjm30kpuFjSspdXXX4YXXa_!!169102425.jpg_2200x2200Q50s50.jpg"', 128.00, 5, '卓沃女装夏季新品专场'),
(36, '正品欢乐颂2刘涛安迪同款显瘦一字肩黑色礼服宴会修身连衣裙', '"https://img.alicdn.com/bao/uploaded/i1/2012169699/TB1Vav8i50TMKJjSZFNXXa_1FXa_!!0-item_pic.jpg_2200x2200Q50s50.jpg"', 978.00, 6, '诗美斯格精选好货专场'),
(40, '伴娘服短款2017夏新款韩式伴娘服毕业小礼服裙修身显瘦晚礼服灰色', '"https://img.alicdn.com/bao/uploaded/i2/169102425/TB2.QRjm30kpuFjSspdXXX4YXXa_!!169102425.jpg_2200x2200Q50s50.jpg"', 128.00, 5, '卓沃女装夏季新品专场'),
(41, '正品欢乐颂2刘涛安迪同款显瘦一字肩黑色礼服宴会修身连衣裙', '"https://img.alicdn.com/bao/uploaded/i1/2012169699/TB1Vav8i50TMKJjSZFNXXa_1FXa_!!0-item_pic.jpg_2200x2200Q50s50.jpg"', 978.00, 6, '诗美斯格精选好货专场');

-- --------------------------------------------------------

--
-- 表的结构 `pinpai`
--

CREATE TABLE `pinpai` (
  `sid` int(10) NOT NULL,
  `pinpai` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pinpai`
--

INSERT INTO `pinpai` (`sid`, `pinpai`, `title`, `url`) VALUES
(1011, 'vivo', '【VIVO】y85全面屏64G低至1668元AI智慧双摄，拍照更出色', 'https://z3.tuanimg.com/imagev2/site/392x200.d2d8a7ae29f7dabb2cc6b045a5c6522e.392x200+1-1.392x200.jpg'),
(1023, '特步', '【特步】夏日鞋服，全场底价', 'https://z3.tuanimg.com/imagev2/site/392x200.efe7cc2915b3453ff20c6f1b474aa654.392x200+1-1.392x200.jpg'),
(1024, '洁柔', '【洁柔】满99元减5元,上不封顶 ', 'https://z3.tuanimg.com/imagev2/site/392x200.73d08a1944376929b202e14f11d64718.392x200+1-1.392x200.jpg'),
(1025, '红豆男装', NULL, 'https://z3.tuanimg.com/imagev2/site/240x120.96f896e10d560962d5fcd8f0bd01bfbb.120x60+1-1.120x60.jpg'),
(1026, 'vivo', NULL, 'https://z3.tuanimg.com/imagev2/site/240x120.a598b4503e4612f4b02d34d562afebbf.120x60+1-1.120x60.jpg'),
(1027, '特步', NULL, 'https://z3.tuanimg.com/imagev2/site/240x120.fd66296070787f67aa346bd33e825b96.120x60+1-1.120x60.jpg'),
(1028, '七格格', NULL, 'https://z2.tuanimg.com/imagev2/site/240x120.3baf98c3d68f055e69823bbccbe59cd0.120x60+1-1.120x60.jpg'),
(1029, '美的', NULL, 'https://z2.tuanimg.com/imagev2/site/240x120.0bb5d2f2f9a24ff69437f325f14764e1.120x60+1-1.120x60.jpg'),
(1031, 'vivo', '【VIVO】y85全面屏64G低至1668元AI智慧双摄，拍照更出色', 'https://z3.tuanimg.com/imagev2/site/392x200.d2d8a7ae29f7dabb2cc6b045a5c6522e.392x200+1-1.392x200.jpg'),
(1043, '特步', '【特步】夏日鞋服，全场底价', 'https://z3.tuanimg.com/imagev2/site/392x200.efe7cc2915b3453ff20c6f1b474aa654.392x200+1-1.392x200.jpg'),
(1034, '洁柔', '【洁柔】满99元减5元,上不封顶 ', 'https://z3.tuanimg.com/imagev2/site/392x200.73d08a1944376929b202e14f11d64718.392x200+1-1.392x200.jpg'),
(1045, '红豆男装', NULL, 'https://z3.tuanimg.com/imagev2/site/240x120.96f896e10d560962d5fcd8f0bd01bfbb.120x60+1-1.120x60.jpg'),
(1056, 'vivo', NULL, 'https://z3.tuanimg.com/imagev2/site/240x120.a598b4503e4612f4b02d34d562afebbf.120x60+1-1.120x60.jpg'),
(1037, '特步', NULL, 'https://z3.tuanimg.com/imagev2/site/240x120.fd66296070787f67aa346bd33e825b96.120x60+1-1.120x60.jpg'),
(1038, '七格格', NULL, 'https://z2.tuanimg.com/imagev2/site/240x120.3baf98c3d68f055e69823bbccbe59cd0.120x60+1-1.120x60.jpg'),
(1039, '美的', NULL, 'https://z2.tuanimg.com/imagev2/site/240x120.0bb5d2f2f9a24ff69437f325f14764e1.120x60+1-1.120x60.jpg'),
(1041, 'vivo', '【VIVO】y85全面屏64G低至1668元AI智慧双摄，拍照更出色', 'https://z3.tuanimg.com/imagev2/site/392x200.d2d8a7ae29f7dabb2cc6b045a5c6522e.392x200+1-1.392x200.jpg'),
(1099, 'vivo', '【VIVO】y85全面屏64G低至1668元AI智慧双摄，拍照更出色', 'https://z3.tuanimg.com/imagev2/site/392x200.d2d8a7ae29f7dabb2cc6b045a5c6522e.392x200+1-1.392x200.jpg'),
(1078, '特步', '【特步】夏日鞋服，全场底价', 'https://z3.tuanimg.com/imagev2/site/392x200.efe7cc2915b3453ff20c6f1b474aa654.392x200+1-1.392x200.jpg'),
(1073, '洁柔', '【洁柔】满99元减5元,上不封顶 ', 'https://z3.tuanimg.com/imagev2/site/392x200.73d08a1944376929b202e14f11d64718.392x200+1-1.392x200.jpg'),
(1074, '红豆男装', NULL, 'https://z3.tuanimg.com/imagev2/site/240x120.96f896e10d560962d5fcd8f0bd01bfbb.120x60+1-1.120x60.jpg'),
(1076, 'vivo', NULL, 'https://z3.tuanimg.com/imagev2/site/240x120.a598b4503e4612f4b02d34d562afebbf.120x60+1-1.120x60.jpg'),
(1069, '特步', NULL, 'https://z3.tuanimg.com/imagev2/site/240x120.fd66296070787f67aa346bd33e825b96.120x60+1-1.120x60.jpg'),
(1068, '七格格', NULL, 'https://z2.tuanimg.com/imagev2/site/240x120.3baf98c3d68f055e69823bbccbe59cd0.120x60+1-1.120x60.jpg'),
(1067, '美的', NULL, 'https://z2.tuanimg.com/imagev2/site/240x120.0bb5d2f2f9a24ff69437f325f14764e1.120x60+1-1.120x60.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `userlist`
--

CREATE TABLE `userlist` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `userlist`
--

INSERT INTO `userlist` (`id`, `username`, `password`, `email`) VALUES
(31, '1111', '111111', '111111111'),
(32, '1111', '111111', '111111111'),
(33, '22222', '222222', '222222'),
(34, '44444', '44444', '4444'),
(35, 'hh', '3546ab441e56fa333f8b44b610d95691', '4444'),
(24, '23456789', '64c125221df319be6902f9a7370dbd27', 'wjkigqw'),
(25, '235425', '34d8957fe139d8525e3dc9e746088585', '24364'),
(26, 'qwet', 'ed48b0977e323bbaabb89e01bb1fd313', 'qtewwqetwqetrw'),
(27, 'qewtq', 'd72b2a70ff84011928e64eb460b95d4a', 'qewytwqyqwet'),
(28, 'wrtwy', '42fcd3b51e3506945378000306c8f497', 'qweywety'),
(29, 'weqt', '2bc7b1e778170339b3d81f60dcbb3940', 'tewqwqer'),
(30, 'qwrer', 'fc242ac501489db105ada9fe0c38fe99', 'qtwwqetqwqtqtew');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clss`
--
ALTER TABLE `clss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `djrm`
--
ALTER TABLE `djrm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goodslist`
--
ALTER TABLE `goodslist`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `pinpai`
--
ALTER TABLE `pinpai`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `userlist`
--
ALTER TABLE `userlist`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `clss`
--
ALTER TABLE `clss`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用表AUTO_INCREMENT `djrm`
--
ALTER TABLE `djrm`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `goodslist`
--
ALTER TABLE `goodslist`
  MODIFY `sid` tinyint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- 使用表AUTO_INCREMENT `pinpai`
--
ALTER TABLE `pinpai`
  MODIFY `sid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1100;
--
-- 使用表AUTO_INCREMENT `userlist`
--
ALTER TABLE `userlist`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
