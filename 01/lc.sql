-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2020-05-03 19:01:48
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lc`
--

-- --------------------------------------------------------

--
-- 表的结构 `about`
--

CREATE TABLE IF NOT EXISTS `about` (
  `a_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `a_name` varchar(100) NOT NULL COMMENT '小题',
  `a_intro` varchar(100) NOT NULL COMMENT '简介',
  `a_cnt1` text NOT NULL COMMENT '内容1',
  `a_cnt2` text NOT NULL COMMENT '内容2',
  `a_cnt3` text NOT NULL COMMENT '内容3',
  `a_photo` varchar(100) NOT NULL,
  `a_key` int(10) unsigned NOT NULL COMMENT '1top\\2mid\\3bott',
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='关于我们' AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `about`
--

INSERT INTO `about` (`a_id`, `a_name`, `a_intro`, `a_cnt1`, `a_cnt2`, `a_cnt3`, `a_photo`, `a_key`) VALUES
(1, 'LC Land 品牌', '', '<p>成立于2014年</p>\n							<p>致力于休闲旅游与</p>\n							<p>康养旅居地产项目</p>', '<p>占据泰北玫瑰之城</p>\n	                        <p>优势地段</p>\n	                        <p>建造地产领导品牌</p>', '<p>满足用户</p>\n	                        <p>自然 * 智能 * 高端</p>\n	                        <p>的空间审美与生活需求</p>', 'about-advertising.jpg', 1),
(2, '打造泰国最佳旅居地产品牌', '深耕于泰国这个服务意识极强的国家多年', '为延续让更多的人感受这种理想生活状态，「LC」团队通过优选贴近自然的环境、进一步再设计与秉承服务的“理性”供给态度，筑建满足居住者生活，精神层面等多层次“人性”需求的享受型理想住宅。', '', '', '', 2),
(3, '品牌使命', '以自然之名   寻找旅居生活之道', 'LC，经过精心设计，将现代人的生活需求和谐地融入到当地的自然与文化，让古朴与现代，传统与创新，都能在尊重原始风景的基础上高度融合起来，提供一种无尽的生活享受。', '', '', '', 2),
(4, '品牌文化理念', '<p>「L」其含义为 Luxury（奢侈），</p>\r\n<p>「C」的含义为 Character（角色，特性）</p>', 'LC land的品牌文化就是秉承着轻奢时尚的生活理念进行扩展，但我们的品牌理念不局限于此。轻奢，成为当下人们热衷的一种新的生活方式，而 LC 所定义的轻奢更加注重对于精神品质上而言，视以生命之轻，重回自然生活之奢。\r\n时间，空间其实对于每个人而言都是奢侈品，人们更像是时间旅人，而 LC 就是充当时间管家的角色，遵循自然万物不息，四季更迭的规律，打造庭院式完美空间，让人驻足欣赏常常错过的美好事物，打开人们隐藏的内心，满足对理想幸福生活的追求，人们不仅是时间旅人，更是时间主人。LC 把最好的建筑服务，最好的时光交', '', '', '', 2),
(5, '共生设计理念', '', '与自然共生的设计之道尊重所有生命的生存之道', '', '', '', 3),
(6, '追随自然，审视内心', '', '时刻思考居住的终极形态，关注域内\r\n弥漫的气息，以及探索隐匿其中的精\r\n神世界，回归澄澈的心灵，与空间对峙。', '', '', '', 3),
(7, '与“地”结缘\r\n融合历史与风俗', '', '与地结缘，不彰显自我，建立人与场\r\n的关系，演奏大自然之音，再度赋予\r\n空间生命。', '', '', '', 3),
(8, '空间美育，借自然之美', '', '讲究内外的联结，注重室外环境与室内环境\n的相互贯通和融合，观察思考数百种生活形\n态与自然结合的表现，在自然的基础上进行\n加工创造，探索新的生活方式。', '', '', '', 3),
(9, '设计旅居者的心', '', '试图在这里，呼吸新鲜空气，感受慢节奏的\n氛围 , 逃离外界干扰，充分享受自由的感觉 ,\n让身心疲惫的现代都市人能够在此后 , 精力\n充沛地重返生活。', '', '', '', 3),
(10, '寻找极致之美', '', '在朴实单纯中，想象看不见的事物，为每一\n处精神迷失的地方注入灵魂，探索自由境界\n下的丰富内心，与设计的无限可能。', '', '', '', 3),
(11, '选择脱俗，逆向自由', '', '不受约束，时刻从全方位观察心态，不自由、\r\n逆境、难题，都能逆向操作，追逐自由奔放、\r\n自由豁达。', '', '', '', 3),
(12, '与时间同步，与自然共生\r\n平衡生活的艺术，追求精神层次的满足', '', '普通的住宅满足人的基本需求，精致的住宅满足人的精神需求，顶级的住宅讲究生活的艺术，以及自我品位的升级。\r\n区别传统的“小区”概念，LC LAND以建筑空间的角度来注视住宅的人性化特征，建立开放的系统功能，\r\n使小区不再孤立，而是能与周围的环境和文化氛围融为一体，不断地进行信息、文化和情感的交流，对话时间，对话自然，对话生活。', '', '', '', 3),
(13, '联系地址', '', '191 LE ChaMONIx M.13 Tambon Pa Daet\r\namphoe Mueang Chiang Mai', '', '', '', 3);

-- --------------------------------------------------------

--
-- 表的结构 `hxmb`
--

CREATE TABLE IF NOT EXISTS `hxmb` (
  `h_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `h_name` varchar(100) NOT NULL,
  `h_sort` varchar(100) NOT NULL,
  `h_tiji` float NOT NULL,
  `h_img` varchar(100) NOT NULL,
  PRIMARY KEY (`h_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='户型模板' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `hxmb`
--

INSERT INTO `hxmb` (`h_id`, `h_name`, `h_sort`, `h_tiji`, `h_img`) VALUES
(1, 'LeChamoNix 夏蒙尼小镇', '户型A', 29.8, '2@2x.jpg'),
(2, '清迈合院', '户型B', 34.3, 'hxB.png'),
(3, '梅花鹿度假酒店', '户型C', 49.1, 'c.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `list`
--

CREATE TABLE IF NOT EXISTS `list` (
  `l_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `l_name1` varchar(100) NOT NULL,
  `l_intro1` text NOT NULL,
  `l_photo1` varchar(50) NOT NULL,
  `l_intro2` text NOT NULL,
  `l_photo2` varchar(50) NOT NULL,
  `l_intro3` text NOT NULL,
  `l_photo3` varchar(50) NOT NULL,
  `l_intro4` text NOT NULL,
  `l_photo4` varchar(50) NOT NULL,
  `l_intro5` text NOT NULL,
  `l_photo5` varchar(50) NOT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='3个介绍' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `list`
--

INSERT INTO `list` (`l_id`, `l_name1`, `l_intro1`, `l_photo1`, `l_intro2`, `l_photo2`, `l_intro3`, `l_photo3`, `l_intro4`, `l_photo4`, `l_intro5`, `l_photo5`) VALUES
(1, 'LeChamoNix  \n 夏蒙尼小镇', '别致的旅游胜地', 'le_banner.jpg', '<li>异国他乡的归属感(小镇)</li><li>是一种释放 , 也是一种回归</li><li>地址：杭东区XXXXXXXXX</li><li>电话：XXXXXXXXXXXX</li>', 'qm-chair.png', '<li>清迈高端生活区里的花园别墅(小镇)</li><li>清迈合院项目于 2014 年动工开建，</li><li>\n占地 30000平方米，</li><li>\n共 43 套带花园别墅，</li><li>\n于 2017年全部交房入住。</li>', 'qm-scenery.png', '<li>杭东区(小镇)</li><li>地处清迈最大的高端生活</li><li>区：杭东区，与素贴山、</li><li>清迈高尔夫球场相邻。</li>', 'qm-room.png', '<li>邻居(小镇)</li><li>业主大部分来自北上广等<li></li>地，购房目的多为养老自住<li></li>或游学。<li>', 'qm-grass.png'),
(2, '清迈合院', '<p>逃离“北上广”的喧嚣生态园</p>\n环绕，风光美不胜收。', 'qm-banner.jpg', '<li>异国他乡的归属感</li><li>是一种释放 , 也是一种回归</li><li>地址：杭东区XXXXXXXXX</li><li>电话：XXXXXXXXXXXX</li>', 'qm-chair.png', '<li>清迈高端生活区里的花园别墅</li><li>清迈合院项目于 2014 年动工开建，</li><li>\n占地 30000平方米，</li><li>\n共 43 套带花园别墅，</li><li>\n于 2017年全部交房入住。</li>', 'qm-scenery.png', '<li>杭东区</li><li>地处清迈最大的高端生活</li><li>区：杭东区，与素贴山、</li><li>清迈高尔夫球场相邻。</li>', 'qm-room.png', '<li>邻居</li><li>业主大部分来自北上广等<li></li>地，购房目的多为养老自住<li></li>或游学。<li>', 'qm-grass.png'),
(3, '梅花鹿度假酒店', '<p>别有“洞”见</p>\r\n家庭式服务的高尔夫度假酒店', 'mhl_banner.jpg', '<li>细致入微的贴心服务</li><li>让每位居住者惬意地享受生活</li><li>地址：杭东区XXXXXXXXX</li><li>电话：XXXXXXXXXXXX<li>', 'chair.png', '<li>兰纳特色</li>\n					<li>\n						梅花鹿度假酒店于2017年10月正式开业。酒店毗邻清迈高尔夫球<br>\n							场，泰式风格建筑与极具兰纳特色的室内装饰。\n						</li>', 'nala.png', '<li>\n							一站式泰享风情<br>\n							旅游度假模式\n						</li>\n							<li>\n								泰式餐厅、咖啡厅、健身房、<br>室内 3D模拟高尔夫、小动物养<br>殖区，各种娱乐休闲设施一应<br>俱全，为业主及度假来宾提供<br>体贴入微的家庭式服务及一站<br>式旅游服务。\n							</li>', 'golf.jpg', '<li>清迈豪华型酒店</li>\n				<li>第3名</li>', 'hotel-left.png');

-- --------------------------------------------------------

--
-- 表的结构 `nav`
--

CREATE TABLE IF NOT EXISTS `nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `sref` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `nav`
--

INSERT INTO `nav` (`id`, `name`, `sref`) VALUES
(1, '经典案例', 'index'),
(2, '企业新闻', 'news'),
(3, '案例汇总', 'alhz'),
(4, '关于我们', 'about');

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `n_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `n_title` varchar(256) NOT NULL,
  `n_date` varchar(100) NOT NULL,
  `n_intro` varchar(100) NOT NULL,
  `n_photo` varchar(100) NOT NULL,
  `n_cnt` text NOT NULL,
  `n_key` int(10) unsigned NOT NULL COMMENT '用于区分ul新闻表',
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='新闻表' AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`n_id`, `n_title`, `n_date`, `n_intro`, `n_photo`, `n_cnt`, `n_key`) VALUES
(1, '北京大兴国际机场投运在即', '1483200000', '简介', 'a8ec8a13632762d0e5276f1f184b6cff503dc6a6.png', '9月4日拍摄的北京大兴国际机场内部。 随着各项验收的完成，北京大兴国际机场投运在即。北京大兴国际机场是目前世界最大的综合交通枢纽，拥有全球首座高铁地下穿行的机场航站楼、全球首座双层出发双层到达的航站楼、世界最大单体航站楼。工作人员在北京大兴国际机场内部调试设备。 随着各项验收的完成，北京大兴国际机场投运在即。北京大兴国际机场是目前世界最大的综合交通枢纽，拥有全球首座高铁地下穿行的机场航站楼、全球首座双层出发双层到达的航站楼、世界最大单体航站楼。 随着各项验收的完成，北京大兴国际机场投运在', 1),
(2, '泰国合院别墅 泰国合院别墅竣工及交房', '1488297600', '时间：2017年3月', 'index_content_middle3.png', '内容1', 1),
(3, '梅花鹿度假酒店正式投入运营', '1506787200', '时间：2017年10月', '', '内容1', 1),
(4, 'Foresight 立项 轻奢度假公寓 “Foresight·寓见未来” 系列立项', '1525104000', '时间：2018年5月', 'chair.png', '内容1', 1),
(5, 'Le Chamonix 夏蒙尼小镇购置 雨林水系度假公寓 土地 12000 平米', '1543593600', '时间：2018年12月', 'about-advertising-4.png', '内容1', 1),
(6, 'Le Chamonix 夏蒙尼小镇盛大开盘，全球发售2', '1569859200', '9月4日拍摄的北京大兴国际机场内部。 ', 'a8ec8a13632762d0e5276f1f184b6cff503dc6a6.png', '内容2', 2),
(7, 'Le Chamonix 夏蒙尼小镇盛大开盘，全球发售test2', '1569889200', '9月4日拍摄的北京大兴国际机场内部。 ', 'about-advertising-6.png', '内容2', 2),
(8, 'Le Chamonix 夏蒙尼小镇盛大开盘，全球发售test3', '1569879200', '9月4日拍摄的北京大兴国际机场内部。 ', 'a8ec8a13632762d0e5276f1f184b6cff503dc6a6.png', '内容3', 3),
(9, 'Le Chamonix 夏蒙尼小镇盛大开盘，全球发售test4', '1529856200', '9月4日拍摄的北京大兴国际机场内部。 ', 'a8ec8a13632762d0e5276f1f184b6cff503dc6a6.png', '内容4', 4),
(10, 'Le Chamonix 夏蒙尼小镇盛大开盘，全球发售test5', '1563879200', '9月4日拍摄的北京大兴国际机场内部。 ', 'a8ec8a13632762d0e5276f1f184b6cff503dc6a6.png', '内容5', 5),
(11, 'Le Chamonix 夏蒙尼小镇盛大开盘，全球发售test6', '1564259200', '9月4日拍摄的北京大兴国际机场内部。 ', '', '内容6', 6);

-- --------------------------------------------------------

--
-- 表的结构 `peitao`
--

CREATE TABLE IF NOT EXISTS `peitao` (
  `p_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `p_name` varchar(100) NOT NULL,
  `p_intro` varchar(100) NOT NULL,
  `p_cnt` text NOT NULL,
  `p_photo` varchar(100) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='配套列表' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `peitao`
--

INSERT INTO `peitao` (`p_id`, `p_name`, `p_intro`, `p_cnt`, `p_photo`) VALUES
(1, 'LeChamoNix 夏蒙尼小镇', '轻奢公寓', '<p>夏蒙尼，世界闻名的度假圣地</p>\r\n						<p>——夏蒙尼的时光很慢，快乐的成本很低</p>', '148@2x.png'),
(2, '清迈合院', '花园别墅', '<p>清迈，世界闻名的度假圣地</p>\r\n						<p>——清迈的时光很慢，快乐的成本很低</p>', '226@2x.png'),
(3, '梅花鹿度假酒店', '度假酒店', '<p>梅花鹿度假酒店，细心周到的服务</p>\r\n						<p>——设备齐全，吃喝玩乐</p>', '239@2x.png');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
