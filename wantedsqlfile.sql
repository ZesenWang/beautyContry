-- MySQL dump 10.13  Distrib 5.5.50, for Win64 (x86)
--
-- Host: localhost    Database: country
-- ------------------------------------------------------
-- Server version	5.5.50

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
-- Table structure for table `audio`
--

DROP TABLE IF EXISTS `audio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audio` (
  `id` int(11) NOT NULL,
  `header` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `audioPath` varchar(255) DEFAULT NULL,
  `picturePath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audio`
--

LOCK TABLES `audio` WRITE;
/*!40000 ALTER TABLE `audio` DISABLE KEYS */;
INSERT INTO `audio` VALUES (1,'我为了这一山春色而来','随着你的接近，风里涌动着故乡的气味。如同一泓清泉，沉淀出临安一个纯粹的历史','audio\\董贞 - 斩龙.mp3',NULL),(2,'夏始春余','一泓泉水，一池柔情，一抹芳菲，桥外的荻花是老去的故事','audio\\董贞 - 斩龙.mp3',NULL),(3,'我为了这一山春色而来','还记得那年的夏天 ，椰子树占据了海边 ，太阳光灿烂得刺眼 你轻轻吻了我的脸 飞机越过海面 划下微笑弧线 就在一瞬间 你和我之间 相隔一个世纪般遥远 幻想的时间 却带不走回忆里的画面 你是此生最美的风景 让我心碎却如此着迷 就算世界动荡 再绝望也有微笑的勇气 ','audio\\董贞 - 斩龙.mp3',NULL);
/*!40000 ALTER TABLE `audio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id` int(11) DEFAULT NULL,
  `bookname` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `publishDate` varchar(255) DEFAULT NULL,
  `profile` text,
  `cover` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'临安文化志','《临安市文化志》编纂委员会 编','方志出版社','2008-10-1','自东汉史学家班固首创中国“文化志”（《汉书·艺文志》后，历代方志亦取其体，设置“艺文篇（卷）”。清人傅玉露总纂《浙江通，志》，凡208卷，平列门类54个，“艺文”为其一。当今，盛世修志，志苑中各种地方志、专业志宛若雨后春笋、烂漫山花，在经济社会发展中，发挥着“存史、资治、教化”功能。所观当代方志，一般多传承旧体，在其中设“文化编”以记述文化发展脉络和成果，并辅以“丛录”，收入具重要历史价值的艺文。而专以一域之人文历史和文化建设而成志，尚属罕见。临安市文化行政主管部门在市委、市政府支持下，艰辛劳作逾四年，编成《临安市文化，勘，洋洋48万言，上自秦汉置县，下迄改革开放，通贯二千余年，将临安文化发展史迹粹集一书，纵横兼备，图文并茂，实为一大功德无量的美举。','picture\\shuomo.jpg'),(2,'南宋史研究丛书·南宋与杭州:南宋临安文化','','杭州出版社; ','2010年12月1日','《南宋史研究丛书·南宋与杭州:南宋临安文化》以临安三志为基础，以翔实的史料，介绍了南宋都城临安的各类文化情况及其成就。全书分朝廷的文化机关——秘书省、南宋朝廷的图书馆、朝廷的天文、医药机构、国子监与三学、朝廷的修史机构、朝廷的架阁档案、朝廷乐舞机构、临安籍的科技文化名家、临安的餐饮文化、临安的西湖与游乐、临安的文化娱乐、临安的体育与杂技、临安的道教、临安的佛寺、临安的祠庙、临安地方文献等篇章。','picture\\shuomo.jpg'),(3,'南宋名人与临安',NULL,'杭州出版社','2010年12月1日','《南宋名人与临安》是一部关于南宋名人与临安的书。南宋、临安、名人，构成了《南宋名人与临安》的三个关键词。《南宋名人与临安》以《南宋名人与临安》为题，固然要尽可能考订人物生平及其与临安的种种关系，但除此之外，笔者更希望将人物还原到复杂的历史过程中，尽可能对相关背景做出细致的描述，这种宽泛呈现（不可能做到全景呈现）的企图，或许能方便我们更真切地体会人物的命运和都市的发展。','picture\\shuomo.jpg'),(4,'小时代1','郭四娘','长江文艺出版社','2007.5.6','青少年必读',NULL),(5,'小时代2','郭四娘','长江文艺出版社','2008.9.3','培养正确价值观',NULL);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `storyId` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,3,'清风自来','走过我的历史，踏向我的未来，感受文化如氤氲之气的气息，让每一个细胞都有一种吟诗的冲动。'),(2,3,'艾青《献给乡村的诗》','“我想起乡村田野上的道路－－用卵石或石板铺的曲折窄小的道路。”'),(3,3,'南朝宋谢灵运《石室山诗》','“乡村绝闻见，樵苏限风霄。”唐韩愈《论变盐法事宜状》：“平叔又请乡村去州县远处，令所由将盐就村糶易。');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment2`
--

DROP TABLE IF EXISTS `comment2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment2` (
  `id` int(11) NOT NULL,
  `contentId` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment2`
--

LOCK TABLES `comment2` WRITE;
/*!40000 ALTER TABLE `comment2` DISABLE KEYS */;
INSERT INTO `comment2` VALUES (0,2,'清风自来','走过我的历史，踏向我的未来，感受文化如氤氲之气的气息，让每一个细胞都有一种吟诗的冲动。'),(1,2,'艾青《献给乡村的诗》','“我想起乡村田野上的道路－－用卵石或石板铺的曲折窄小的道路。”'),(2,2,'南朝宋谢灵运《石室山诗》','“乡村绝闻见，樵苏限风霄。”唐韩愈《论变盐法事宜状》：“平叔又请乡村去州县远处，令所由将盐就村糶易。');
/*!40000 ALTER TABLE `comment2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `header` varchar(255) DEFAULT NULL,
  `profile` text,
  `full` text,
  `likability` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES (0,1,'临安','临安市位于浙江省西北部，东经118°51\'至119°52\'，北纬29°56\'至30°23\'，是浙江省陆地面积最大的县级市。地处浙江省西北部天目山区，东邻杭州市余杭区，南连富阳市和桐庐县、淳安县，西接安徽省歙县，北界安吉县及安徽省绩溪县、宁国市。临安市境东西宽约100千米，南北长约50千米，总面积3126.8平方千米；辖5个街道13个乡镇298个行政村。市人民政府设在锦城街道。临安是首批全国生态建设示范市，拥有国家级生态市，中国优秀旅游城市、中国竹子之乡等称号。',NULL,88),(1,1,'吴越文化','吴越文化又称江浙文化，是汉文明的重要组成部分，也是江浙的地域文化。吴越文化区以太湖流域为中心，范围与吴语区相吻合，可细分为“吴文化”和“越文化”，两者同源同出。吴越文化形成于周代，《春秋》、《左传》、《国语》等史书都有载，吴王阖闾都于姑苏，越王勾践都于会稽；早期吴越民众以尚武逞勇为风气，粗犷中蕴涵精雅；晋室南渡后士族文化的特质改变了吴越文化的审美取向，逐步给其注入了“士族精神、书生气质” ，开始成为中国文化中精致典雅的代表。',NULL,99),(2,2,'吴语','吴语，又称 江东话、 江南话、 吴越语。 周朝至今有三千多年悠久历史，底蕴深厚。在中国分布于今 浙江、 江苏南部、 上海、 安徽南部、 江西东北、福建北一角，使用人口9000多万。吴语是中国七大方言之一，有国际 语言代码。','吴语，又称江东话、江南话、吴越语。周朝至今有三千多年悠久历史，底蕴深厚。在中国分布于今浙江、江苏南部、上海、安徽南部、江西东北部、福建北一角，使用人口9000多万。吴语是中国七大方言之一，有国际语言代码。\r\n   从历史、文风、语言特性分析，吴语极近中古雅言，继承中古汉语的整齐八声调和三十六字母框架体系。现代吴语比官话具有更多古音因素，字音及语言要素与《切韵》《广韵》等古代韵书高度吻合。\r\n   吴语保留全部浊音，保留平上去入的平仄音韵，部分地区保留尖团音分化，保留较多古汉语用字用语，文化价值高。吴语语法结构和普通话差别大，有上万个特有词汇和诸多特征本字，是江南人思维方式、生活情调、文化涵养的生动体现。吴语是吴越人的母语，一百余城构成以上海为首的吴语城市群和江南文化圈。吴语与吴越文化血脉相连，“醉里吴音相媚好”。',150),(3,2,'戏曲','越剧，长于抒情，以唱为主，声音优美动听，表演真切动人，唯美典雅，极具江南灵秀之气，多“才子佳人”题材。昆曲，百戏之祖，中国最古老的剧种，曲词典雅，行腔婉转。',NULL,250),(4,2,'临安神龙川民间茶俗文化旅游节','神龙川地处浙西临安太湖源头，这里的山势蜿蜒连锦，云雾缭绕，植被茂盛，众山汇集之水明澈清洌，丰盈充沛，飞瀑流泉遍布；这里的空气清新，森林浓密，生成了大量能增强人体免疫功能的负氧离子。好山好水也就有了远近闻名的好茶——神龙川御茶（东坑茶即天目青顶），“东坑茶叶西坑水”，指的就是神龙川、太湖源、东坑一带的水质和茶叶。',NULL,745);
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contentcategory`
--

DROP TABLE IF EXISTS `contentcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contentcategory` (
  `id` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contentcategory`
--

LOCK TABLES `contentcategory` WRITE;
/*!40000 ALTER TABLE `contentcategory` DISABLE KEYS */;
INSERT INTO `contentcategory` VALUES (1,'临安'),(2,'吴语');
/*!40000 ALTER TABLE `contentcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `coverImage` varchar(255) DEFAULT NULL,
  `touristSpot` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery`
--

LOCK TABLES `gallery` WRITE;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
INSERT INTO `gallery` VALUES (0,'picture/ZheXiDaXiaGu/1.jpg','浙西大峡谷','华东第一旅游峡谷'),(1,'picture/TaiHuYuan/1.jpg','太湖源','野生动物的天堂'),(2,'picture/BaoHuQu/1.jpg','浙江清凉峰国家级自然保护区','国家级自然保护区'),(3,'picture/DaMingShan/10.jpg','大明山','镶嵌在杭州至黄山黄金旅游线上的一颗璀璨明珠');
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleryitems`
--

DROP TABLE IF EXISTS `galleryitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleryitems` (
  `id` int(11) NOT NULL,
  `galleryId` int(11) DEFAULT NULL,
  `imagePath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleryitems`
--

LOCK TABLES `galleryitems` WRITE;
/*!40000 ALTER TABLE `galleryitems` DISABLE KEYS */;
INSERT INTO `galleryitems` VALUES (0,3,'picture/DaMingShan/1.jpg'),(1,3,'picture/DaMingShan/2.jpg'),(2,3,'picture/DaMingShan/3.jpg'),(3,3,'picture/DaMingShan/4.jpg'),(4,3,'picture/DaMingShan/5.jpg'),(5,3,'picture/DaMingShan/6.jpg'),(6,3,'picture/DaMingShan/7.jpg'),(7,3,'picture/DaMingShan/8.jpg'),(8,3,'picture/DaMingShan/9.jpg'),(9,3,'picture/DaMingShan/10.jpg'),(10,3,'picture/DaMingShan/11.jpg'),(11,3,'picture/DaMingShan/12.jpg');
/*!40000 ALTER TABLE `galleryitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `story`
--

DROP TABLE IF EXISTS `story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `story` (
  `id` int(11) NOT NULL,
  `header` varchar(255) DEFAULT NULL,
  `profile` text,
  `imagePath` varchar(255) DEFAULT NULL,
  `fullStory` text,
  `likability` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story`
--

LOCK TABLES `story` WRITE;
/*!40000 ALTER TABLE `story` DISABLE KEYS */;
INSERT INTO `story` VALUES (0,'我的临安资源','临安矿产资源丰富，著名的是昌化鸡血石。境内矿产资源有30余种，分四大类：金属矿有钨、铍、锑、铅、锌、钼、锰、铁、镍、铜、铌（钽）铁、独居石和金矿；非金属矿有膨润土、萤石、重晶石、鸡血石、白云石、石灰石、磷、花岗岩、方解石、高岭土矿等；燃料矿有烟煤、沥青煤和石煤等；天然矿泉水主要分布在湍口镇湍口村（温泉）和青山湖街道研里村。除钨、膨润土、萤石、石灰石和鸡血石外，其余矿床品位欠佳或储量较少，开采价值较低。','picture\\shuomo.jpg',NULL,NULL),(1,'临安植物资源','植物资源 临安市有国家一级保护植物5种：银杏（银杏科）、天目铁木（桦木科）、南方红豆杉（红豆杉科）、银缕梅（金缕梅科）、中华水韭（水韭科）；国家二级保护植物22种：金钱松（松科）、华东黄杉（松科）、羊角槭（槭树科）、七子花（忍冬科）、连香树（连香树科）、樟树（樟科）、浙江楠（樟科）、野大豆（豆科）、鹅掌楸（木兰科）、凹叶厚朴（木兰科）、厚朴（木兰科）、香果树（茜草科）、黄山梅（虎耳草科）、长序榆（榆科）、榉树（榆科）、榧（红豆杉科）、台湾水青冈（壳斗科）、长叶榧（红豆杉科）、花榈木（豆科）、秤锤树（安息香科）、野菱（菱科）、金荞麦（蓼科）。','picture\\shuomo.jpg',NULL,NULL),(2,'我的家乡临安','在我的家乡临安，一条日夜流淌着的河将南北两岸的临安人联系在了一起，这就是苕溪河。    \r\n春天，苕溪两岸开满了纯洁淡雅的樱花，微风拂过，片片花瓣当到水平如镜的河面上，便打破了苕溪的沉寂。比起羞涩的樱花，迎春倒是开得热烈，开得豪放，金黄的迎春在碧绿的树叶中，格外显眼，不时传来阵阵芳香。再看迎春花丛后面，那些红色的小花不正是腊梅吗？尽管冬天过去了，它们还是坚强得开放着，这火红的颜色似乎能沁出血来，给光秃秃的枝干上添上了一抹生机，用毛主席的《卜算子·咏梅》来形容这些梅花是再适合不过的了。“一行白鹭上青天”，果然不错，苕溪河上空，时不时会飞来一些白鹭，那些白鹭有的展翅高飞；有的平稳地降落在笤溪的石头上捕鱼吃；还有的站在石头上悠闲地四处张望。 \r\n早晨，一些爷爷奶奶很早就起来在苕溪边做运动了。瞧，他们有的在三五成群地散步；有的在健身器材上做着运动；还有的在苕溪附近打太极，别看他们头发已经雪白了，但身体硬朗着呢！溪边的马路上，那可亲可敬的父母们，也即将开始全新的一天：有的开着那帅气的宝马急着上班去；有的骑着自行车送孩子上学去，构成了一幅温馨的画面，使苕溪又添加了一道亮丽的风景。','picture\\shuomo.jpg',NULL,NULL),(3,'临安中学',' 浙江省临安中学创建于1952年，1953年5月被确定为全省重点办好的9所中学之一，1958年被列为省级16所重点中学之一，1981年又被定为省重点中学。\r\n2011年，临安市开工建设钱王宗庙、市图书馆，钱王宗庙进入内饰设计阶段，市图书馆完成主体工程建设。完成太阳镇、青山湖街道、锦南街道、湍口镇文体中心建设，完成锦北街道文体中心土建工程，清凉','picture\\shuomo.jpg','浙江省临安中学创建于1952年，1953年5月被确定为全省重点办好的9所中学之一，1958年被列为省级16所重点中学之一，1981年又被定为省重点中学。<br />\r\n  2011年，临安市开工建设钱王宗庙、市图书馆，钱王宗庙进入内饰设计阶段，市图书馆完成主体工程建设。完成太阳镇、青山湖街道、锦南街道、湍口镇文体中心建设，完成锦北街道文体中心土建工程，清凉峰镇新建文体中心结顶，河桥镇启动文体中心扩建工程。高虹镇、昌化镇、太湖源镇、河桥镇、龙岗镇、湍口镇、太阳镇、於潜镇、潜川镇、天目山镇、青山湖街道、锦南街道、锦城街道13个镇（街道）建成市图书馆分馆。继续推进“农家书屋”工程， 70%的行政村建有“农家书屋”。创成省级文化强镇1个、文化示范村1个，杭州市级文化示范镇2个、综合文化站示范点1个、文化示范村10个。<br />\r\n&nbsp;&nbsp;&nbsp;2011年，全年获杭州市级以上奖项70项，涵盖美术、书法、摄影、戏曲（小品）、音乐、曲艺故事、民间艺术和群文理论等门类。  <br />\r\n&nbsp;&nbsp;&nbsp;我的中学！在临安！！',100);
/*!40000 ALTER TABLE `story` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('jason','333','888',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-24 11:14:50
