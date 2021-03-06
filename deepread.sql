/*
Navicat MySQL Data Transfer

Source Server         : wcy
Source Server Version : 50168
Source Host           : localhost:3306
Source Database       : deepread

Target Server Type    : MYSQL
Target Server Version : 50168
File Encoding         : 65001

Date: 2018-06-24 16:40:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `isbn` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `intro` text,
  `author` varchar(50) DEFAULT NULL,
  `publisher` varchar(50) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `reallyPrice` float(10,2) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `printed` varchar(255) DEFAULT NULL,
  `caid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`isbn`),
  KEY `id` (`caid`),
  CONSTRAINT `id` FOREIGN KEY (`caid`) REFERENCES `category` (`caid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('7108010364', '中国大历史', '中国历史典籍浩如烟海，常使初学者不得其门而入。作者倡导“大历史”（macro-history），主张利用归纳法将现有史料高度压缩，先构成一个简明而前后连贯的纳领，然后在与欧美史比较的基础上加以研究。本书从技术的角度分析中国历史的进程，着眼于现代型的经济体制如何为传统社会所不容，以及是何契机使其在中国土地上落脚。 \r\n　　为什么称为“中国大历史”？中国过去150年内经过人类历史上规模zui大的一次革命，从一个闭关自守中世纪的国家蜕变而为一个现代国家，影响到10亿人口的思想信仰、婚姻教育与衣食住行，其情形不容许我们用寻常尺度衡量。 ', '黄仁宇', '生活.读书.新知三联书店', '19.00', '14.30', '88', 'http://image31.bookschina.com/2007/20070604/2236426.jpg', '精装本', '001');
INSERT INTO `book` VALUES ('7800129446', '我想有人赶不上校车了', '对于诞生于1950年的史努比来说，他的上一次人（狗）生转折点发生在1960年，他勇敢地站了起来，再也不毫无尊严地四脚着地。他开始独立思考，而不再是那个圆头圆脑的小子的附庸，他发现睡在屋顶上更容易发挥他的才华，即使是摔下来，他也可以说出这样的名句：“生活就是会被从好梦中粗暴地惊醒。” ', '舒尔茨', '中国工商出版社', '25.00', '11.80', '50', 'http://image30.bookschina.com/17/17.05/B935990.jpg', '简裝本', '003');
INSERT INTO `book` VALUES ('7806963375', '脂砚斋重评石头记', '曹雪芹留给后人的《石头记》仅八十回，但带有脂砚斋批语。这部书看似不完整，实际上在前八十回中已交待了八十回后的主要情节和结局，已形成完整的故事。《石头记》与其他作品不同的是：后面的故事内容，作者只馏下一些线索、隐词、批语，让读者自己去思考并完成。由于《石头记》的这一特点，便出现了两种现象：diyi种是续书现象：现存流行的百二十回《红楼梦》中的后四十回，即是后人补缀的，原误认为是出刍高鹗之手，其实高鹗是补订者，非续书者，到现在为止，续书人还无从考证，乃是无名氏。除这种版本外，后来也还出现过其他续书。 \r\n　　第二种是探佚现象：由于现有续书，尤其是高鹗所补订的那种，流传极广，但并不符合曹雪芹本意，于是研究者便纷纷探索《石头记》八十回之后的结构、情节和结局，逐渐形成一种“深佚学”。存这方面，俞平伯、周汝昌、梁归智、王国华等都作出过不少努力。', '曹雪芹', '天津古籍出版社', '470.00', '150.00', '20', 'http://image31.bookschina.com/2013/zuo/6459029tp8.jpg', '简装本', '001');
INSERT INTO `book` VALUES ('9787101075298', '中华生活经典－茶经', '《茶经》上、中、下三卷十章，内容十分丰富。它总结了当时茶叶生产技术与经验，收集历代茶叶史料，记述作者实践调查。从现代学科分科的角度来说，《茶经》是茶叶文化的百科全书，涵盖了茶叶栽培、生产加工、药理、茶具、饮用、历史、文化、茶产区划等方面的内容。', '陆羽', '中华书局', '25.00', '20.00', '25', 'http://image31.bookschina.com/2010/20101110/4938545.jpg', '精装本', '005');
INSERT INTO `book` VALUES ('9787101103540', '世说新语', '刘义庆撰写的《世说新语》是记录中国东汉至南朝刘宋时期士族阶层言行举止风尚与生活轶闻琐事的一部独具特色的文史名著，全书由一千一百多则长短不一的小故事构成，内容广泛，包罗万象，对中古时期政治、哲学、文学、美学及社会思想道德状况等均有涉及，是研究中国魏晋历史文化zui重要的原始典籍之一。 《世说新语(传世经典文白对照)(精)》原文底本采用民国上海涵芬楼影印明袁氏嘉趣堂刊本《世说新语》，参考了余嘉锡《世说新语笺疏》中的校勘、笺疏成果。为方便现代读者阅读，以《世说新语》三十六篇为序，各篇之下按底本次序编目排列若干则故事，不再标出卷数：断句参考了中华书局版徐震堮《世说新语校笺》，但部分语句根据译文作者的理解有所调整；白话译文主要采用直译的方式，以避免意译发挥离原书本意太远', '刘义庆', '中华书局', '32.00', '26.90', '80', 'http://image12.bookschina.com/2015/20150330/6686617.jpg', '暂无', '002');
INSERT INTO `book` VALUES ('9787101116625', '梦溪笔谈', '《梦溪笔谈》，是北宋科学家、政治家沈括（1031—1095）撰，是一部涉及古代汉族自然科学、工艺技术及社会历史现象的综合性笔记体著作。该书在国际亦受重视，英国科学史家李约瑟评价为中国科学史上的里程碑。本书为金良年先生对其2003年点校本的修订，在底本选择、校记写法、体例设计上都有新的开拓。', '沈括', '中华书局', '28.00', '24.10', '20', 'http://image12.bookschina.com/2017/20170905/B7481197.jpg', '简裝本', '002');
INSERT INTO `book` VALUES ('9787111544937', '深入理解计算机系统', '1.第二版销售突破100000册，第三版重磅上市！\r\n2.理解计算机系统*书目， 10余万程序员的共同选择\r\n3.卡内基-梅隆、北京大学、清华大学、上海交通大学等国内外众多知名高校选用指定教材\r\n4.从程序员视角全面剖析的实现细节，使读者深刻理解程序的行为，将所有计算机系统的相关知识融会贯通。\r\n5.新版本全面基于X86-64位处理器\r\n6.全新的阅读和学习体验：由国内名师录制章前导读，使读者可以了解各章的重点内容和知识关联，形成关于计算机系统的知识架构。并开设了本书的网络社区，读者可加入社区，获得本书相关学习资源，了解活动信息。', '兰德尔E.布莱恩特', '机械工业出版社', '139.00', '72.30', '10', 'http://image12.bookschina.com/2016/20161223/B7340367.jpg', '暂无', '006');
INSERT INTO `book` VALUES ('9787115275790', 'JavaScript高级程序设计', '本书是javascript超级畅销书的zui新版。ecmascript 5和html5在标准之争中双双胜出，使大量专有实现和客户端扩展正式进入规范，同时也为javascript增添了很多适应未来发展的新特性。《javascript高级程序设计》这一版除增加5章全新内容外，其他章节也有较大幅度的增补和修订，新内容篇幅约占三分之一。全书从javascript语言实现的各个组成部分——语言核心、dom、bom、事件模型讲起，深入浅出地探讨了面向对象编程、ajax与comet服务器端通信，html5表单、媒体、canvas(包括webgl)及web workers、地理定位、跨文档传递消息、客户端存储(包括indexeddb)等新api，还介绍了离线应用和与维护、性能、部署相关的zui佳开发实践。《javascript高级程序设计(第3版)》附录展望了未来的api和ecmascript harmony规范。 　　本书适合有一定编程经验的web应用开发人员阅读，也可作为高校及社会实用技术培训相关专业课程的教材。\r\n\r\n', 'Nicholas C. Zakas', '人民邮电出版社', '99.00', '64.40', '12', 'http://image12.bookschina.com/2012/20120405/B5486044.jpg', '暂无', '006');
INSERT INTO `book` VALUES ('9787214140401', '城南旧事-珍藏版', '《城南旧事》是林海音的代表作，小说由五个故事构成，透过英子童稚的双眼，观看着大人世界的悲欢离合。林海音用纯真的笔调，描绘出一段段温煦的回忆，道尽人生和命运的曲折凄苦，同时也展现了二十世纪二三十年代的北京风貌，被《亚洲周刊》评选为“二十世纪中文小说一百强”之一。 \r\n　　除《城南旧事》外，本书亦收录了林海音的中长篇小说名篇《春风》和《婚姻的故事》。', '林海音', '江苏人民出版社', '29.80', '14.60', '30', 'http://image12.bookschina.com/2015/20150223/6704821.jpg', '简装本', '001');
INSERT INTO `book` VALUES ('9787504327840', '中国电影史', '《中国电影史》这门课程的目的是向学习电影创作的学生们介绍各个时期主要的艺术运动和艺术思潮、重要的电影艺术家和代表性作品等，以求有助于了解中国电影的历史发展线索和优秀传统。为适应教学的需要，我们以教学中现有的影征资料为基础，着重从艺术发展的角度介绍中国电影的历史。我们希望这些知识能帮助同学们在将来的创作中更好地继承和发扬中国的民族电影传统中有益的经验，推动中国电影的不断发展。\r\n　　电影是一门zui年轻的艺术。19世纪末，当世界文艺从古典时期迈向现代的时候，电影刚刚诞生。在中国，当“五四”之后中国现代文学开始兴起的时候，中国电影才开始故事片创作，无论从内容上和形式上都还没有摆脱原始状态。在短短的几十年中正努力追赶着现代文艺的步代，并正在逐步走向成熟。这使我们无法直接套用传统的历史和文学史的分期方法来叙述电影的历史，而只能尝试寻找更能反映中国电影发展道路的方法进行叙述。', '钟大丰，舒晓鸣 ', '中国广播电视出版社', '18.00', '12.60', '10', 'http://image31.bookschina.com/Big/99/29/2705299.jpg', '平装版', '004');
INSERT INTO `book` VALUES ('9787544826877', '小恐龙的飞行医院', '救护车是一只小恐龙，他会飞翔，会吼叫，还会喷火。还有两位“会飞”的空中医生，行走四方，治病救人，真是好心肠！快快翻开这本书，来看看小恐龙和飞行医院的神奇故事吧！', '朱莉娅•唐纳森', '接力出版社', '14.80', '7.10', '5', 'http://image31.bookschina.com/2017/zuo/8/B5717224.jpg', '简裝本', '003');
INSERT INTO `book` VALUES ('9787547403990', '中国历代文学家书法', '王羲之书法的士人之气；爱颜真卿书法的悲壮之气；爱苏东坡书法的豪放之气；爱赵佶书法的贵族之气，爱徐渭书法的狂狷之气；爱董其昌书法的天真之气；爱赵孟頫书法的中和之气；爱黄山谷书法的书卷之气；爱怀素书法的奔放之气；爱钟繇书法的离古之气……中国书法的发展一直与文人墨客和官僚士大夫阶层水乳交融密不可分。一方面书法是进阶必备的工具，文化表现的方法；另一方面书法艺术作为与日常生活zui为接近的艺术形式，也是文人与文人之间_应答交际的重要手段和流芳百世的必要依据。《中国历代文学家书法》汇集历代文学名家的书法佳作和书法理论，图文并茂，雅俗共赏，有助读者了解中国传统文化的魅力和精华。', '周小儒，张扬', '山东画报出版社', '28.00', '9.00', '15', 'http://image31.bookschina.com/2011/20111203/B5309869.jpg', '暂无', '004');
INSERT INTO `book` VALUES ('9787553415277', '香茶与美味的记忆', '《香茶与美味的记忆》指出饮食见诸上古文献，详为形诸文字，还是靠礼仪规矩，成了生活秩序必须遵循的具体材料。吃饭喝酒皆学问，想要享用精致的美食，就得一丝不苟地做学问。《香茶与美味的记忆》内容涵盖古今中外、各类荼酒美食，丰富多样，秀色可餐，不啻为饮食文学的另一本佳作。', '郑培凯', '吉林出版集团', '29.80', '9.50', '40', 'http://image12.bookschina.com/2015/20150510/B6745733.jpg', '简裝本', '005');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `caid` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `discription` text,
  PRIMARY KEY (`caid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('001', '文学', '主要有小说、青春文学、散文以及世界名著等');
INSERT INTO `category` VALUES ('002', '社科', '社会与科学等图书');
INSERT INTO `category` VALUES ('003', '少儿', '儿童文学、科普读物、绘本、幼儿启蒙等');
INSERT INTO `category` VALUES ('004', '艺术', '绘画、书法、篆刻、摄影、音乐以及艺术理论等相关方面书籍');
INSERT INTO `category` VALUES ('005', '生活', '主要有美食、保健、心理健康、旅游、家庭教育、家居休闲等相关方面的书籍');
INSERT INTO `category` VALUES ('006', '文教', '教辅资料、教材、四六级相关资料、计算机相关资料、考研相关资料等等');

-- ----------------------------
-- Table structure for catetobook
-- ----------------------------
DROP TABLE IF EXISTS `catetobook`;
CREATE TABLE `catetobook` (
  `isbn` varchar(50) NOT NULL,
  `caid` varchar(255) NOT NULL,
  PRIMARY KEY (`isbn`,`caid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of catetobook
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `cmid` varchar(255) NOT NULL,
  `title` text,
  `content` longtext NOT NULL,
  `dislike` int(11) DEFAULT NULL,
  `like` int(11) DEFAULT NULL,
  `rid` varchar(255) NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cmid`),
  KEY `rid` (`rid`),
  KEY `isbn` (`isbn`),
  CONSTRAINT `isbn` FOREIGN KEY (`isbn`) REFERENCES `book` (`isbn`),
  CONSTRAINT `rid` FOREIGN KEY (`rid`) REFERENCES `reader` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('196fcb62-19e5-4977-af17-4ab73be1f912', '文化的作用', '闲人读历史，目的大概有三种，一种是证明了自己博学，一种是追溯上古的八卦，一种是想弄明白为什么是现在这个样子。黄仁宇先生的这本书，没有太多的史料堆积，也没有太多的细节描写，那么，看这本书的人，大致应该是第三种目的了。         在书中，黄仁宇先生不间断地提到一个问题，就是到底是什么，让华夏古文明延续到现在而没有分裂。他给出的答案是文化。因为小自耕农的特点是自给自足，与外界不需要多大联系。在中国的土地上，到处都是这种农业方式，各地的官僚可以随便调任，中国就是一个大的“农村集团”。那么，从政治结构上，一个大的统一的国家不是必须的。反而是文化把中国从古到今团结到了一起，那些入侵的非汉族（蒙，女真，契丹），在来到华夏大地之后，都不约而同地大部分采用了汉人的官僚体制，文字，科举制度。这就是文化的吸引力。        虽然从经济上，小自耕农是分散的，独立的，以家庭为单位，但是农耕文化让人们安定下来，减少了流动，使统治变得容易起来。中央集权的阶级最重要的，就是稳定农民，并向他们收税。这些税收，养活了整个官僚阶级，并且促进了当时的科技进步。并且农业文明对于周围的游牧文明是相对进步的，是易于统治的，这也是为何外族入侵后都采取了相同的做法：采用汉人的驭人方式。        但是这种文化，在遇到了不停扩展的资本主义时，就难以显示出它的优越性来。一个安于现状，一个一心扩张，两者相遇，战事必开。农耕文明虽然易于统治，但是对于战争总是不拿手。接下来就是连续的震荡，战败的农耕文明面临绝境。        整个华夏古代史，就是一部完整的农业文明。就如黄先生在书中的比喻，它像一个美丽的玉器，有完整的外表，有自己的机制，但是却是脆弱的本质，易碎的未来。        当前的中国，仍旧是一个大多数人都是农民的国家。但是农耕文明绝对不可能让她再次焕发出迷人的向心力。怎样走下去，是一个应该考虑的问题。', '0', '0', '02a5323c-b0ca-40dc-badf-0c688933ed8e', '7108010364', '2018-5-25 08:24:59');
INSERT INTO `comment` VALUES ('3dfab182-6777-4036-b30b-9a0b2523967f', '制度与智慧的制衡', '我常听别人说自己小学的时候学习特别好，或者初中的时候学习特好，或者大一的时候学习特好等等之类。我发现这样的人有一个共性，就是他们的内心其实觉得自己学习还是好的，只是不认真学习了，如果一旦认真起来，还是学习好的不行。这样的人还有另一个共性，就是现在的他们以及未来的他们学习也不会变的跟以前一样好了。我现在自己就处在这样一种状态中。不是曾经有一个唐朝，就永远都有那个时代的繁荣，更不是努努力还能比那个时候更好。有的时候，我觉得得承认一个事情，我们其实本来就不怎么样，偶尔表现得好了一点儿就幻想金榜题名非我莫数了，这是非常不成熟的。这就是我读这本书收获的最大的道理。\r\n\r\n我不是搞历史，读历史书只有一个目的，以史为鉴。治理国家的道理和管理自己的道理其实并没有什么太大的区别，不过是内容不同而已。如果你想找一本再客观不过而又有点意思的史书，《中国大历史》再好不过了。合上书的时候，我跟看完每一本历史书一样，什么都没记住，明朝也好，清朝也好，唐朝也好，那些赋税制度征兵制度对我来说跟电脑程序一样你给我掰开了揉碎了我终于明白了过三分钟也得忘一干净。但是这就如同inception一样，他给我根植了一个观念，我们并不是什么天朝，之所以中华文明能流传这么久与我们所生长的土地，以及因此而形成的封建制度有不可分割的关系。任何一个事情的发生决不是突然的，纵然有诗云吴三桂“充冠一怒为红颜”，但清军的入关不过是早晚的事情而已，诗不过是文人押韵的废话而已。当年写“清风不识字，何故乱翻书“的是那些文人，三百年后誓死不肯剪掉大辫子的也是那些个文人，不过是一些肾上腺激素分泌过剩的人而已。\r\n\r\n曾经我们胜在了制度，在刀耕火种的年代，我们早就有了一套制度，能够使政府的意志在一个版图如此辽阔的国家内上行下效。朝代的更迭不过是演员的更换而已，本质上来讲，并没有哪一个朝代的圣主对全国的赋税制度，征兵制度，或者官僚制度做出什么颠覆性或者革命性的改动，科举制的推行可以算是一大明策了。这就如同一个跳级的小朋友，在别人都还在上一年级的时候就开始上四年了，而四年过去了，别人终于费劲拔力的升到四年级的时候，她也没有任何优势可言了。可是这位小朋友，却依然以为自己聪明过人，且由于四年级的功课已经学了4遍了导致更加的闭目塞听，最后大家活全升初中的时候，她不过还是一个老四年级而已。这样的故事和龟兔赛跑类似，但是要明确一点，龟和兔并没有聪明愚钝之分，只是不同而已。前一个时代可能比的是弹跳力，兔子险胜，而后一个时代，或者更久以后的时代比的就不再是弹跳力，比的是养生，胜利的永远是活的长的。我可不想像崇祯一般临死才说出“任贼分裂朕尸 毋伤百姓一人“这样感天动地的废话。\r\n\r\n至于现在的制度，好坏与否我都无能为力，我能做的不过就是以史为鉴，管好自己。如果明确了其实我也不怎么样这个观点，一下子，进步的空间就大了起来。', null, null, '02a5323c-b0ca-40dc-badf-0c688933ed8e', '7108010364', '2018-06-19   18:56:39');
INSERT INTO `comment` VALUES ('4033391a-6569-40f7-af6b-225bacb76952', '<a href=\"https://www.baidu.com\">tttt</a>', '<a href=\"https://www.baidu.com\">', null, null, '44dbebd0-b55b-4aeb-9cba-05e0842fc1a7', '7108010364', '2018-06-20   15:03:57');
INSERT INTO `comment` VALUES ('4553e618-153a-4471-9a12-b50a09906f3b', '测试一下', '11111111111111111111111111111111', null, null, '44dbebd0-b55b-4aeb-9cba-05e0842fc1a7', '9787101075298', '2018-06-20   15:01:28');
INSERT INTO `comment` VALUES ('45bc23d2-967b-4caa-8b92-39e837f8e8c1', '<a href=\"https://www.baidu.com\">tttt</a>', '<a href=\"https://www.baidu.com\">tttt</a>', null, null, '44dbebd0-b55b-4aeb-9cba-05e0842fc1a7', '7108010364', '2018-06-20   15:02:22');
INSERT INTO `comment` VALUES ('6cfa22c3-a939-411c-aa39-544a7f6a8745', '结构决定论下的“黄仁宇模型”', '我以为看一本书是不是好书，除了它能不能告诉你知识外，更重要的是能不能引发读者的思考和共鸣。黄仁宇的《中国大历史》就是提供了一种看历史的思路，足以引发我们的思考。如果说《万历十五年》是从微观角度看历史的话，这本书就是宏观性地高度压缩，并比较成功地塑造出历史学的结构论。    读研究生期间，学到和最常用的一种思维就是结构决定论。经济学和国际关系理论的学科主流中都将这种思维发挥到高度的水准，但以往看历史，好像则很难用这种思维研究。    黄的历史结构论将中国历史上的社会结构比作一个潜水艇夹心面包，上面一块长面包是官僚阶级，下面一块是农民，两者都混同一致，缺乏个别色彩。存在于当中的事物是道德标准，以符合农村里的简单一致。    中国之所以形成这样的社会结构，缘于地理上的需求，使政治体系需要早熟（专制政府不出于专制者的选择，中国的悲剧在于地方组织及技术上的设备尚未规模之际，现已有大帝国之统一，因之上下间缺乏有效的中间阶层）（公元前221年已形成第一帝国秦），构成了中央集权的官僚体系，并导致了此后两千年地方利益和组织无法充分发展构成多元社会。而只用间架性的设计（它来自标准化的要求，意味着国家和社会结构可以人为创造，并导致上层设计比下层运作的实质更重要的统治习惯），构成中央集权的官僚体系。统治阶层并在历史进展中只求全国均匀一致，不计较社会进步。对内以意识形态凝聚官僚结构和社会，对外时常要求封闭，以避免均衡被打破。    但黄认为这种使一切事物按照固定方式维持一成不变的关系，在人口激增导致环境改变后，便会无法维持。因而出现了历代的社会解体与重构，但这种社会模式在近代以前始终没有在本质上改变。与前述分析相对应的是，黄描绘出资本主义运行（并似乎将之等同现代经济模型）所需要的三个条件是信用的广泛展开、经理不受人身关系限制、服务性质的事业全般活用。其精髓是需要有一种货币管理的安排（或曰数目字管理）延伸全国经济各部门，并有适当的司法制度予以扶持，从而使资本而不是政府管制在公众生活中占决定地位，使社会效率最大化。    因而，黄分析出传统中国社会为何与现代型的经济体制所不相容。黄在叙述中国历史进程的分析当中，也就是论述中国大历史的结构中，最常用的一个分析工具就是政府的财政税收。从王莽、王安石的改革到蒋介石低度的财政摄取能力，都表现出国家财税难以发挥出各地的特长及激发社会的潜能，而只能勉强维持国家的平衡与稳定。（值得现实思考的是，当前中国的社会发展思路却是通过动态发展掩盖或解决产生的矛盾和不稳定因素，能否有效尚待观察）    结构决定论的优点是有简洁的分析模式，因而让人迅速地把握中国历史的大脉络；但结构决定论的缺点当然就是它忽视其中的动态能动性，因而看完此书，会让人觉得一切自有天命，社会发展有其自身的规律，历史的偶然性和其中历史人物的能动性难以起到作用（虽然也肯定了蒋、毛、邓的历史作用）。也会让人很自然地联想到，马克思所说的历史是众人合力的结果。人类伟大，但由无数人共同谱写的社会历史则悠静却坚毅地展示着它的容貌。', null, null, '1be3cef5-bf01-4826-b4be-f55b58e7fa54', '7108010364', '2018-06-19   21:29:20');
INSERT INTO `comment` VALUES ('75fe73ba-0905-4fc7-aed1-8ca6330fbb36', '历史的宿命', '今日之首都为何是北京？\r\n\r\n        数十万年的地壳变迁，不仅决定自然景观、生物进化，同样决定着人类社会的演变。纤细的黄土，湿润的季风，时而温柔时而咆哮的黄河，中国的命运从这里开始向前。\r\n\r\n        土壤肥沃奠定农业格局，每个家庭与小块耕种互为表里。公元前一千年，周朝农户均匀一致，儒家文化由此埋下伏笔。季风强弱，黄河难驭致使每年旱涝不定，需强力中枢协调各方救民于水火。公元前221年，始皇帝君临天下,统一概念至今贯彻人心。一条十五英寸等雨线分割大陆，东南农业茂盛，西北则游牧为生。于是又有了无数的农民与牧人的争斗与仇恨。\r\n\r\n        两千年来，思想、文化、政治、经济、军事都由以上的条件延展开来，无论任何时刻，皆如必然。中国的都城则因商业发展由内陆向沿海，因民族交融从江南至华北，北京的今天，冥冥之中早有安排。\r\n\r\n        《中国大历史》超然于历史之外，却又以地缘政治为核心，立意高远，耳目一新。初读此书，似有感悟。模仿作者跳出时空，而力有不逮，一无所获。再读此书，索性只随作者畅游历史长河，忽而繁华万里，转瞬落日残烟，千年往事，悠悠而过。昨夜读罢抚卷，听窗外雨声，欲为Blog一篇，寥寥几句，终不可得。是以笔到虽易，意到犹难。\r\n\r\n        黄土决定中国，宿命(karma)之说，与机械唯物主义出于一辙。却让我想起另一经典故事：美国航天飞机的助推器宽为四英尺八点五英寸（12进制），因何如此？\r\n\r\n        助推器制造地与飞船发射地相隔较远，运载火车须穿行隧道，而隧道宽只比铁轨宽稍大，铁轨宽即为上述尺寸。美国的铁轨最早为英国人建造，英国最早建火车的人是建电车的，最早建电车的人是建马车的，马车的轮距标准也为该尺寸。马车的标准是根据英国的道路辙迹制定的，而这些道路都是罗马人征服欧洲时为适应其战车所铺设，罗马战车的轮距就是如此标准。罗马人为什么以四英尺八点五英寸作为战车的轮距呢？原因很简单，拉车的两匹马屁股一共就是这么宽。\r\n\r\n         就这样2000年前的马屁股，跨越了时间和空间，正指挥着人类踏向新的征途。 ', null, null, '02a5323c-b0ca-40dc-badf-0c688933ed8e', '7108010364', '2018-06-19   17:07:01');
INSERT INTO `comment` VALUES ('a5ec456d-6c7d-4fb7-8f47-40b039f55eed', '与世界的敌对', '宝钗做生辰，贾府开了梨园会搭台看戏。“大家娘儿姐妹等说笑时，贾母因问宝钗爱听何戏，爱吃何物等语。宝钗深知贾母年老人，喜热闹戏文，爱吃甜烂之物，便总依贾母贾母往日素喜着说了出来，贾母更加欢悦。”记得每每有人分析宝钗的性格时，这一段便经常被拿出来引证，总归就是说她如何如何心机和世故，如何如何懂得讨人的欢心，揣测着老祖宗的喜欢，尽挑拣顺耳的话说，比起王熙凤明显的野心，更显得虚伪云云。但这段若不揣着这种偏激的眼光和挑剔的心气去看的话，其实很简单，宝钗那瞬间亦未必就怎样存着野心去巴结讨好，她也只不过应着温厚的本性，顺着喜庆的场合，说了两句孝顺话而已。从这里我突然想到，很多时候，我们是不是陷入了一个怪圈,世界其实并没有我们想象的那么可怕，只是我们对这种小小的虚伪和压抑过于敏感。不管是对虚幻的故事，还是对我们真实生存的环境，不由自主的抱持着天生的敌意与挑剔，甚至不惮以最坏的恶意来揣测身边的一切。在这种心态的指引下，所有的不完美都被我们的想象力所放大。看出去为什么身边人都是愚蠢又自私、虚伪又可悲，而又总觉得自己内心的自由和美好在这种环境下受到了强烈的压制，于是生出对整个人生和社会的悲观情绪。这种情绪让我们以为我们看到了世界的真相，认识了生活的本源，从侧身斜睨变为愤世嫉俗。在这种情绪作为背景的思考和影响下，我们最终变成林夕在《开到荼靡》里所说的那样：“最后剩下自己，舍不得挑剔；最后对着自己，也不大看得起...”我不否认悲愤自有其哲思性和启发性，然而我们的生活就真的就有如此的不堪吗？自怜是人的天性，华美的生命长袍上若不爬几只虱子那简直就无法成就悲剧的美感。可是当我们抗拒着整个世界的时候，我们是否就真的可以以此证明自己的真诚呢？这种抗拒本身，就真的有其意义所在吗？我们厌恶着整个世界，却没有思考过形成这个世界的根源和必然性。我们根本不可能摆脱这一切，相反很多时候正是我们的行为巩固了我们认为吃人的社会规则。那么在别人的眼光里我们是否也一样是虚伪和懦弱呢？如果你像《月亮与六便士》里的高更一样，知道自己要的是什么，又有实现它的勇气，那我一定为你击节。但如果你并不知道自己要什么，而只是对这世界愤愤不平的话，那我想，你也许并没有自己想象的那么真诚。关于宝钗，她在我心里一直都是完美的。我不觉得她虚伪，也不认为她有错，更不要说什么封建礼教的牺牲品之类。她没有伤害过谁，也没有站在整个世界的敌对面，但她一样坚持了她自己。即便没有人懂得她，没有人爱过她，即便她的结局同样是孤单和虚无。但她曾那么努力地丰富过自己的生命，温柔的爱护过他人的感情。那么相比黛玉对于世界那种尖锐的、理想化的敌对来说，宝钗无疑是我觉得更值得爱敬的人。世界不曾亏负我们，其实让我们不快乐的，根本是我们自己。能够让我们不快乐的，也只有我们自己。', null, null, '44dbebd0-b55b-4aeb-9cba-05e0842fc1a7', '7806963375', '2018-06-19   21:38:16');
INSERT INTO `comment` VALUES ('fc3175fc-1934-4669-a695-6bc52c27a1da', '离别之殇，成长之痛', '长亭外，古道边，芳草碧连天。晚风拂柳笛声残，夕阳山外山。伴随着这首凄美婉转的《送别》，听着林海音的《城南旧事》，她笔下的童年旧事宛如一幅副记录画面浮现在眼前。       听完了广播版，觉得还不过瘾，就买了书来读。      《城南旧事》是林海音女士一部自传体小说，写了她3岁到13岁的在北京的童年时光，因为居住在城南，写的有事小时候的人和事，所以取名叫《城南旧事》。本文语言朴实流畅，毫无华丽辞藻的堆砌，以一个10来岁的儿童视角来记录陪伴她成长的、又一个个离她远去的那些亲人、玩伴和朋友。         书中主人公最后都以各种各样的原因离开了，读的过程中会有难以忍受的悲痛和辛酸，听广播版本又会根据内容加进一些插曲，用得最多的就是《梁祝》和《送别》，悲伤的文字配上哀婉的音乐，让人不自觉的随着小英子进入到她那快乐又悲伤的童年时光。        本书有五个小故事构成，最后又加上出版后记《冬阳.童年.骆驼队》。        第一个是《惠安馆传奇》。那时3岁的小英子刚从日本回北京，住在城南的一个小胡同，胡同有一家惠安馆，里面住的是从惠安到北京读书的穷学生，故事就围绕着惠安馆的“疯子”秀贞展开。秀贞与住在惠安馆在北大读书的穷学生思康相恋并生下一女小桂子，思康回家探望病重母亲一去不返，家人在小桂子出生后就把她扔到了齐化门，秀贞想念思康和小桂子变成了人们口中的“疯子”。可是小英子却不这么想，扎着油松辫子，一笑就有两个小酒坑的秀贞怎么能是疯子呢！井窝子的妞儿是小英子的玩伴，又是小桂子，书里面写到这两个人的时候小英子总会迷糊，分不清秀贞和妞儿，因为他们俩有扯不断的联系，很多细节都暗示着小桂子是秀贞的女儿，脸上的涙坑、尖尖的下巴、齐化门、还有身上的胎记。故事的最后是秀贞和妞儿母女相认，踏上火车去寻找思康三叔。原本以为是个美好的结局，可是秀贞和妞儿却在上火车之前死了，这里在小英子大病一场清醒过来后看到金镯子和小手表里有暗示。       《我们看海去》，秀贞和妞儿不在了，小英子的生活却还要继续。英子搬家了，也上了小学。学校里有很多小伙伴，有喜欢的课文：我们看海去　　蓝色的大海上，　　扬着白色的帆。　　金红的太阳，　　从海上升起来，　　照到海面照到船头。　　我们看海去!　　我们看海去!  年幼的英子没有见过大海，分不清太阳是从蓝色的大海还是从蓝色的天空上升起来，也分不清大叔是好人还是坏人。说他是好人，他却偷了东西；说他是坏人，他又艰苦的供着弟弟读书。大叔对聪明真诚的小英子很信任，英子却无意中“出卖”了他，英子在他被抓的时候躲在门里面哭，再也不能和他一起看海了。       兰姨娘是爸爸朋友的姨娘，暂时住在英子家。起初英子还是很喜欢兰姨娘的，偶然一次看见兰姨娘与爸爸做出的不合适的行为对兰姨娘产生了厌恶。继而撮合兰姨娘和德先叔成了一对，机灵的小英子哟，多么惹人疼爱。爸爸在兰姨娘和德先叔离开后，很是伤感，小英子就问爸爸要不要吃豆蔻，英子又开始同情爸爸了。      第四个故事是《驴打滚》，奶妈宋妈把小栓子和小丫头子留在老家只身一人来到北京，本来过得还希望接小栓子来北京上学，最后得知儿女都不在了，宋妈的支点也塌了，无奈只得回家去，又一个人离开了。      《爸爸的花儿落了，我也不再是小孩子》是最后一篇，爸爸因为喝酒、抽烟染上沉疴，院子里的夹竹桃和石榴因为没有爸爸的照料长势也大不如前。英子的小学生涯也到了尽头，毕业典礼，英子没有辜负爸爸的期望，代表班级去领毕业证书并致谢词，可是爸爸却没能来，爸爸把责任给了英子，因为她是最大的一个孩子。花儿落了，爸爸不在了，小英子也长大了。        秀贞、妞儿、不知名的大叔、兰姨娘、宋妈、爸爸，他们都是给小英子留下美好回忆的人，却又在不经意间离开了。经历了离别之殇、成长之痛的小英子，也在一天天的长大，童年的那些人、那些事也被她记录下来，记在了她的心里，记在了她的《城南旧事》里。       在生命的长河中，我们就像一条条小船，本来有很多小船陪着我们一起向前，中途却因为一些原因分道扬镳，留给我们无尽的回忆。 人生难得是相聚，唯有别离多，请珍惜当下的时光吧，不要等失去了才追悔莫及。', null, null, '44dbebd0-b55b-4aeb-9cba-05e0842fc1a7', '9787214140401', '2018-06-19   21:43:42');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `ordersid` varchar(255) NOT NULL,
  `money` float(10,2) NOT NULL,
  `time` varchar(255) NOT NULL,
  `rid` varchar(255) NOT NULL,
  `wid` varchar(255) DEFAULT NULL,
  `finished` char(2) DEFAULT NULL,
  PRIMARY KEY (`ordersid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('3758b346-0253-4fb6-9b4a-da23b95984e7', '20.00', '2018-06-20   13:09:08', '44dbebd0-b55b-4aeb-9cba-05e0842fc1a7', '2014005', '1');
INSERT INTO `orders` VALUES ('644d9fa3-66e2-4a78-ba43-aa3a086cdd1a', '26.10', '2018-06-20   12:52:27', '17ee3c59-3dab-4e75-bc34-2a8780f03137', '2014005', '1');
INSERT INTO `orders` VALUES ('6ee876d6-6901-4973-8a28-efa6e7cf442a', '164.30', '2018-06-21   11:24:12', '1be3cef5-bf01-4826-b4be-f55b58e7fa54', null, '0');
INSERT INTO `orders` VALUES ('7b5bc97c-3c90-4016-8265-c1995d68ede9', '164.30', '2018-06-20   12:53:46', '02a5323c-b0ca-40dc-badf-0c688933ed8e', '2014005', '1');
INSERT INTO `orders` VALUES ('80819e62-440f-427a-982a-ae8d774520dd', '26.90', '2018-06-20   13:00:19', '17ee3c59-3dab-4e75-bc34-2a8780f03137', '2014005', '1');
INSERT INTO `orders` VALUES ('8594a582-6991-41b7-8471-6609e31b2c88', '14.30', '2018-06-20   13:08:52', '44dbebd0-b55b-4aeb-9cba-05e0842fc1a7', '2014005', '1');
INSERT INTO `orders` VALUES ('90cf42ce-a8a1-412e-9536-af5c82f82bd6', '26.90', '2018-06-20   13:00:31', '17ee3c59-3dab-4e75-bc34-2a8780f03137', '2014005', '1');
INSERT INTO `orders` VALUES ('9648c428-b5cb-4fa2-8d6d-a2de91ea8b62', '170.00', '2018-06-20   13:07:56', '1be3cef5-bf01-4826-b4be-f55b58e7fa54', '2014005', '1');
INSERT INTO `orders` VALUES ('9761823e-b98f-4492-bb9c-644156afe5e5', '24.10', '2018-06-20   12:54:03', '02a5323c-b0ca-40dc-badf-0c688933ed8e', '2014005', '1');
INSERT INTO `orders` VALUES ('be2b5446-ba4f-4bb9-9d32-d43736d50e0c', '12.60', '2018-06-20   13:00:43', '17ee3c59-3dab-4e75-bc34-2a8780f03137', '2014005', '1');
INSERT INTO `orders` VALUES ('e7965ccc-eb0d-462b-97b0-6aa6d3a05651', '179.50', '2018-06-20   13:07:34', '1be3cef5-bf01-4826-b4be-f55b58e7fa54', '2014005', '1');
INSERT INTO `orders` VALUES ('efb278d9-8cf6-4665-9794-83a8b6a53a40', '12.60', '2018-06-21   11:24:31', '1be3cef5-bf01-4826-b4be-f55b58e7fa54', null, '0');
INSERT INTO `orders` VALUES ('fe76ca65-8a5b-404b-820c-73aa96314382', '14.30', '2018-06-20   15:00:44', '44dbebd0-b55b-4aeb-9cba-05e0842fc1a7', null, '0');

-- ----------------------------
-- Table structure for orderstobook
-- ----------------------------
DROP TABLE IF EXISTS `orderstobook`;
CREATE TABLE `orderstobook` (
  `isbn` varchar(50) NOT NULL,
  `orderid` varchar(255) NOT NULL,
  PRIMARY KEY (`isbn`,`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderstobook
-- ----------------------------
INSERT INTO `orderstobook` VALUES ('7108010364', '644d9fa3-66e2-4a78-ba43-aa3a086cdd1a');
INSERT INTO `orderstobook` VALUES ('7108010364', '6ee876d6-6901-4973-8a28-efa6e7cf442a');
INSERT INTO `orderstobook` VALUES ('7108010364', '7b5bc97c-3c90-4016-8265-c1995d68ede9');
INSERT INTO `orderstobook` VALUES ('7108010364', '8594a582-6991-41b7-8471-6609e31b2c88');
INSERT INTO `orderstobook` VALUES ('7108010364', 'fe76ca65-8a5b-404b-820c-73aa96314382');
INSERT INTO `orderstobook` VALUES ('7800129446', '644d9fa3-66e2-4a78-ba43-aa3a086cdd1a');
INSERT INTO `orderstobook` VALUES ('7806963375', '6ee876d6-6901-4973-8a28-efa6e7cf442a');
INSERT INTO `orderstobook` VALUES ('7806963375', '7b5bc97c-3c90-4016-8265-c1995d68ede9');
INSERT INTO `orderstobook` VALUES ('7806963375', '9648c428-b5cb-4fa2-8d6d-a2de91ea8b62');
INSERT INTO `orderstobook` VALUES ('7806963375', 'e7965ccc-eb0d-462b-97b0-6aa6d3a05651');
INSERT INTO `orderstobook` VALUES ('9787101075298', '3758b346-0253-4fb6-9b4a-da23b95984e7');
INSERT INTO `orderstobook` VALUES ('9787101075298', '9648c428-b5cb-4fa2-8d6d-a2de91ea8b62');
INSERT INTO `orderstobook` VALUES ('9787101075298', 'e7965ccc-eb0d-462b-97b0-6aa6d3a05651');
INSERT INTO `orderstobook` VALUES ('9787101103540', '80819e62-440f-427a-982a-ae8d774520dd');
INSERT INTO `orderstobook` VALUES ('9787101103540', '90cf42ce-a8a1-412e-9536-af5c82f82bd6');
INSERT INTO `orderstobook` VALUES ('9787101116625', '9761823e-b98f-4492-bb9c-644156afe5e5');
INSERT INTO `orderstobook` VALUES ('9787504327840', 'be2b5446-ba4f-4bb9-9d32-d43736d50e0c');
INSERT INTO `orderstobook` VALUES ('9787504327840', 'efb278d9-8cf6-4665-9794-83a8b6a53a40');
INSERT INTO `orderstobook` VALUES ('9787553415277', 'e7965ccc-eb0d-462b-97b0-6aa6d3a05651');

-- ----------------------------
-- Table structure for reader
-- ----------------------------
DROP TABLE IF EXISTS `reader`;
CREATE TABLE `reader` (
  `rid` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `phone` char(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `membership` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reader
-- ----------------------------
INSERT INTO `reader` VALUES ('02a5323c-b0ca-40dc-badf-0c688933ed8e', '叶欣', '1237127069', '123', '0');
INSERT INTO `reader` VALUES ('17ee3c59-3dab-4e75-bc34-2a8780f03137', '叶雨', '1854754125', '123', '0');
INSERT INTO `reader` VALUES ('1be3cef5-bf01-4826-b4be-f55b58e7fa54', '文初阳', '15779274503', '123', '1');
INSERT INTO `reader` VALUES ('44dbebd0-b55b-4aeb-9cba-05e0842fc1a7', '孙红玲', '15779274503', '123', '0');
INSERT INTO `reader` VALUES ('c979031e-367a-4307-b38f-b71f6b729280', '孙悟空', '15475894565', '123', '0');

-- ----------------------------
-- Table structure for readerbuy
-- ----------------------------
DROP TABLE IF EXISTS `readerbuy`;
CREATE TABLE `readerbuy` (
  `rid` varchar(255) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rid`,`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of readerbuy
-- ----------------------------
INSERT INTO `readerbuy` VALUES ('02a5323c-b0ca-40dc-badf-0c688933ed8e', '7108010364', '2018-06-20   12:53:46');
INSERT INTO `readerbuy` VALUES ('02a5323c-b0ca-40dc-badf-0c688933ed8e', '7806963375', '2018-06-20   12:53:46');
INSERT INTO `readerbuy` VALUES ('02a5323c-b0ca-40dc-badf-0c688933ed8e', '9787101116625', '2018-06-20   12:54:03');
INSERT INTO `readerbuy` VALUES ('17ee3c59-3dab-4e75-bc34-2a8780f03137', '7108010364', '2018-06-20   12:52:27');
INSERT INTO `readerbuy` VALUES ('17ee3c59-3dab-4e75-bc34-2a8780f03137', '7800129446', '2018-06-20   12:52:27');
INSERT INTO `readerbuy` VALUES ('17ee3c59-3dab-4e75-bc34-2a8780f03137', '9787101103540', '2018-06-20   13:00:31');
INSERT INTO `readerbuy` VALUES ('17ee3c59-3dab-4e75-bc34-2a8780f03137', '9787504327840', '2018-06-20   13:00:43');
INSERT INTO `readerbuy` VALUES ('1be3cef5-bf01-4826-b4be-f55b58e7fa54', '7806963375', '2018-06-20   13:07:34');
INSERT INTO `readerbuy` VALUES ('1be3cef5-bf01-4826-b4be-f55b58e7fa54', '9787101075298', '2018-06-20   13:07:34');
INSERT INTO `readerbuy` VALUES ('1be3cef5-bf01-4826-b4be-f55b58e7fa54', '9787553415277', '2018-06-20   13:07:34');
INSERT INTO `readerbuy` VALUES ('44dbebd0-b55b-4aeb-9cba-05e0842fc1a7', '7108010364', '2018-06-20   13:08:52');
INSERT INTO `readerbuy` VALUES ('44dbebd0-b55b-4aeb-9cba-05e0842fc1a7', '9787101075298', '2018-06-20   13:09:08');

-- ----------------------------
-- Table structure for readercollect
-- ----------------------------
DROP TABLE IF EXISTS `readercollect`;
CREATE TABLE `readercollect` (
  `rid` varchar(255) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rid`,`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of readercollect
-- ----------------------------
INSERT INTO `readercollect` VALUES ('02a5323c-b0ca-40dc-badf-0c688933ed8e', '7108010364', '2018-06-19   14:55:48');
INSERT INTO `readercollect` VALUES ('02a5323c-b0ca-40dc-badf-0c688933ed8e', '7806963375', '2018-06-19   14:56:07');
INSERT INTO `readercollect` VALUES ('1be3cef5-bf01-4826-b4be-f55b58e7fa54', '7108010364', '2018-06-19   21:24:46');
INSERT INTO `readercollect` VALUES ('1be3cef5-bf01-4826-b4be-f55b58e7fa54', '9787547403990', '2018-06-20   11:06:09');
INSERT INTO `readercollect` VALUES ('44dbebd0-b55b-4aeb-9cba-05e0842fc1a7', '9787504327840', '2018-06-19   21:36:07');
INSERT INTO `readercollect` VALUES ('c979031e-367a-4307-b38f-b71f6b729280', '7108010364', '2018-06-18   21:00:29');
INSERT INTO `readercollect` VALUES ('c979031e-367a-4307-b38f-b71f6b729280', '7806963375', '2018-06-18   21:00:33');

-- ----------------------------
-- Table structure for readybuy
-- ----------------------------
DROP TABLE IF EXISTS `readybuy`;
CREATE TABLE `readybuy` (
  `rid` varchar(255) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `time` varchar(255) NOT NULL,
  PRIMARY KEY (`rid`,`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of readybuy
-- ----------------------------

-- ----------------------------
-- Table structure for worker
-- ----------------------------
DROP TABLE IF EXISTS `worker`;
CREATE TABLE `worker` (
  `wid` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of worker
-- ----------------------------
INSERT INTO `worker` VALUES ('2014005', '徐麦三', '123');
