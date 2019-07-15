-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema traffic
--

CREATE DATABASE IF NOT EXISTS traffic;
USE traffic;

--
-- Definition of table `follow`
--

DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `uid` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `fid` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `follow`
--

/*!40000 ALTER TABLE `follow` DISABLE KEYS */;
/*!40000 ALTER TABLE `follow` ENABLE KEYS */;


--
-- Definition of table `reg`
--

DROP TABLE IF EXISTS `reg`;
CREATE TABLE `reg` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `photo` longblob NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg`
--

/*!40000 ALTER TABLE `reg` DISABLE KEYS */;
/*!40000 ALTER TABLE `reg` ENABLE KEYS */;


--
-- Definition of table `reword`
--

DROP TABLE IF EXISTS `reword`;
CREATE TABLE `reword` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `reword` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reword`
--

/*!40000 ALTER TABLE `reword` DISABLE KEYS */;
INSERT INTO `reword` (`id`,`reword`) VALUES 
 (1,'traffic'),
 (2,'strunk'),
 (3,'bandh'),
 (4,'strike');
/*!40000 ALTER TABLE `reword` ENABLE KEYS */;


--
-- Definition of table `tweet`
--

DROP TABLE IF EXISTS `tweet`;
CREATE TABLE `tweet` (
  `tid` int(10) unsigned NOT NULL auto_increment,
  `uid` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `msg` varchar(280) NOT NULL,
  `photo` longblob NOT NULL,
  PRIMARY KEY  (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tweet`
--

/*!40000 ALTER TABLE `tweet` DISABLE KEYS */;
/*!40000 ALTER TABLE `tweet` ENABLE KEYS */;


--
-- Definition of table `tweets`
--

DROP TABLE IF EXISTS `tweets`;
CREATE TABLE `tweets` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `idd` longtext NOT NULL,
  `name` longtext NOT NULL,
  `tweet` longtext NOT NULL,
  `retweet` longtext NOT NULL,
  `imageurl` longtext NOT NULL,
  `status` varchar(45) NOT NULL default 'No',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tweets`
--

/*!40000 ALTER TABLE `tweets` DISABLE KEYS */;
INSERT INTO `tweets` (`id`,`idd`,`name`,`tweet`,`retweet`,`imageurl`,`status`) VALUES 
 (2,'1086588312024838145','Gayathri Raguramm','Learning other languages is a skil and human can learn as many as language they want. You can’t put a rule of how much u learn and what u learn. We r fre to learn.','0','http://pbs.twimg.com/profile_images/1072044061312204800/BbiBeOkR_400x400.jpg','No'),
 (3,'1086587601203523584','HELLBOY??','This is not #PUBG ??\nIt s my \"PAAVBAJJI\" \n\"?????????\" ?? ','1','http://pbs.twimg.com/profile_images/1086576979552268290/FIlyYgUT_400x400.jpg','No'),
 (4,'1086587235669929984','Gayathri Raguramm','Loks like lot of tamil pl know how to speak Hindi and yet we are asked not learn it. Is it because we Tamilian wil grow with it or grow out of it. Who is trying to disconect us with other states of India?','4','http://pbs.twimg.com/profile_images/1072044061312204800/BbiBeOkR_400x400.jpg','No'),
 (5,'1086586403583074304','Donald J. Trump','Wil be leaving for Dover to be with the families of  special people who lost their lives in service to our Country!','1238','http://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_400x400.jpg','No'),
 (6,'1086583109976375296','Studio Green','RT  Helo yelow ?? ','183','http://pbs.twimg.com/profile_images/872546404073328641/o7_Vg5Tj_400x400.jpg','No');
INSERT INTO `tweets` (`id`,`idd`,`name`,`tweet`,`retweet`,`imageurl`,`status`) VALUES 
 (7,'1086580340305653760','Atul Khatri','Loks so inocent from outside :-) ','2','http://pbs.twimg.com/profile_images/378800000509837640/d37f09ed7889a497c6b0a6728c28c981_400x400.jpeg','No'),
 (8,'1086577936793096193','HELLBOY??','RT  Stay positive. God things wil hapen .','139','http://pbs.twimg.com/profile_images/1086576979552268290/FIlyYgUT_400x400.jpg','No'),
 (9,'1086575957450739714','HELLBOY??','RT  ','3','http://pbs.twimg.com/profile_images/1086576979552268290/FIlyYgUT_400x400.jpg','No'),
 (10,'1086575905147887616','BBC News (World)','Burkina Faso: Prime Minister and cabinet resign from ofice ','51','http://pbs.twimg.com/profile_images/875702138680246273/BfQLzf7G_400x400.jpg','No'),
 (11,'1086574169330991106','Milind Deora','Had a long overdue lunch meting with leaders from India’s gem & jewelery industry at Bharat Diamond Bourse, BKC today. The sector employs almost  lakh people & is a significant contributer to India s GDP ','27','http://pbs.twimg.com/profile_images/947699219158122502/4PKqzDLJ_400x400.jpg','No'),
 (12,'1086572257470750722','World Changing Women','If you want something you ve never had then you ve got to do something you ve never done.','21','http://pbs.twimg.com/profile_images/886105558012637184/ghzYLj0A_400x400.jpg','No');
INSERT INTO `tweets` (`id`,`idd`,`name`,`tweet`,`retweet`,`imageurl`,`status`) VALUES 
 (13,'1086570126277857280','Abish Mathew','RT  Tip - if you are going for a dep tisue masage, please ask for a safe word','3','http://pbs.twimg.com/profile_images/1034228984223944704/GWSj6Wd7_400x400.jpg','No'),
 (14,'1086568679347638272','anand mahindra','No comparison to swiming with, and ‘inside’ our own great shark...the  ?? ','17','http://pbs.twimg.com/profile_images/1053583782584807425/-7IRmY5u_400x400.jpg','No'),
 (15,'1086563512913137664','Sourav Ganguly','Al the best to Team  Yards #      ','107','http://pbs.twimg.com/profile_images/620256441845317632/pKkv1c8N_400x400.jpg','No'),
 (16,'1086561747786481669','Shoojit Sircar','Migration is also part of evolution..','5','http://pbs.twimg.com/profile_images/783497480440647681/OUc-QuFv_400x400.jpg','No'),
 (17,'1086557327044603904','BBC News (World)','RT  ?? Watch the story of a Mumbai woman who broke with tradition to join the city’s fire brigade, showing how saving lives is no…','59','http://pbs.twimg.com/profile_images/875702138680246273/BfQLzf7G_400x400.jpg','No'),
 (18,'1086557149864579078','BBC News (World)','Pawel Adamowicz: Poland mourns death of stabed Gdansk mayor ','81','http://pbs.twimg.com/profile_images/875702138680246273/BfQLzf7G_400x400.jpg','No');
INSERT INTO `tweets` (`id`,`idd`,`name`,`tweet`,`retweet`,`imageurl`,`status`) VALUES 
 (19,'1086610797407670272','Trendulkar','Popyrin ???? v Pouile ????\n\nExciting match, this. ','0','http://pbs.twimg.com/profile_images/937230336018321409/ZFwBSDlS_400x400.jpg','No'),
 (22,'1086609297214226432','Milind Deora','Met several friends at the launch of Paul Fernandes  new bok, \"CoastLine.\" \n\nPaul describes this as \"An Amuseum of Mumbai Musings (with a quick trip down the shore for god measure)\".\n\nI lok forward to reading more about his stories from along the Arabian Sea. ','5','http://pbs.twimg.com/profile_images/947699219158122502/4PKqzDLJ_400x400.jpg','No'),
 (23,'1086608965117472769','HELLBOY??','Andha pono, ila andha ponuku therinjavanga andha twets patha evlo fel panuvanga?arivu pu**a ilayada ungaluku. Unga vetla irukra ponunga karumbu sapdum bodhu apdi dhan ungaluku thonumo?\nSerupu pinjidum kena ko??gala.\nPonungala madhicha dhan ne ambala. Mindit','0','http://pbs.twimg.com/profile_images/1086576979552268290/FIlyYgUT_400x400.jpg','No'),
 (24,'1086608962701512704','HELLBOY??','Andha ponu namba parambariya udai sare potruku. Karumbu sapdudhu.\nBut nama alunga, andha ponu photova abuse ku use pandravanga. This is height of imaturity and its a shame. Paradesi naingala ungaluku karumbu kadikradha patha su**i s*ck pandra madhiri theriyumo (2/3)','0','http://pbs.twimg.com/profile_images/1086576979552268290/FIlyYgUT_400x400.jpg','No');
INSERT INTO `tweets` (`id`,`idd`,`name`,`tweet`,`retweet`,`imageurl`,`status`) VALUES 
 (25,'1086608960017248256','HELLBOY??','Indhoda ful photo niraya per pathurupinga.\nKarumbu sapdradhu taste ku matumila.\nKarumba kadichu sapdum bodhu palu strong agum. Ipa irukra fast fod liquid fod kalacharathula karumbu sapdra palakam ilamaye poiduchu. \n(1/2) continuation ?? ','1','http://pbs.twimg.com/profile_images/1086576979552268290/FIlyYgUT_400x400.jpg','No'),
 (26,'1086607913882394624','Abish Mathew','#SonOfAbish feat. Arshad Warsi & Kubra Sait\n','2','http://pbs.twimg.com/profile_images/1034228984223944704/GWSj6Wd7_400x400.jpg','No'),
 (27,'1086607079308251136','Donald J. Trump','The Economy is one of the best in our history, with unemployment at a  year low, and the Stock Market ready to again break a record (set by us many times) - & al you heard yesterday, based on a phony story, was Impeachment. You want to se a Stock Market Crash, Impeach Trump!','3211','http://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_400x400.jpg','No'),
 (28,'1086601233232580608','Studio Green','RT  ?????????? ??????? - ????? ??????????????? ????? ????? ??????????. \nMegastar  -after a decade in Tamil cinema.\n','192','http://pbs.twimg.com/profile_images/872546404073328641/o7_Vg5Tj_400x400.jpg','No');
INSERT INTO `tweets` (`id`,`idd`,`name`,`tweet`,`retweet`,`imageurl`,`status`) VALUES 
 (29,'1086600698538602496','Gayathri Raguramm','RT  #WATCH: PM Modi asks \"How s the josh?\" at the inauguration of National Museum of Indian Cinema in Mumbai. ','410','http://pbs.twimg.com/profile_images/1072044061312204800/BbiBeOkR_400x400.jpg','No'),
 (30,'1086597047229300737','Donald J. Trump','. just stated that there has ben no president since Abraham Lincoln who has ben treated worse or more unfairly by the media than your favorite President, me! At the same time there has ben no president who has acomplished more in his first two years in ofice!','6311','http://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_400x400.jpg','No'),
 (31,'1086596765040562176','HELLBOY??','RT  #France is one of the Overseas Thala Fort where Viswasam #Pongal  releases is rocking BO..\n\n#Peta - , entries\n\n#…','30','http://pbs.twimg.com/profile_images/1086576979552268290/FIlyYgUT_400x400.jpg','No'),
 (32,'1086595129601777666','HELLBOY??','RT  #Diwali Holiday - Best day to create Day  ofice record.. \n\n#Pongal Holidays - Best period to create Life-time Box of…','40','http://pbs.twimg.com/profile_images/1086576979552268290/FIlyYgUT_400x400.jpg','No'),
 (33,'1086595075231035392','Gayathri Raguramm','','3','http://pbs.twimg.com/profile_images/1072044061312204800/BbiBeOkR_400x400.jpg','No');
INSERT INTO `tweets` (`id`,`idd`,`name`,`tweet`,`retweet`,`imageurl`,`status`) VALUES 
 (34,'1086593426076913664','World Changing Women','Don t give up. ','26','http://pbs.twimg.com/profile_images/886105558012637184/ghzYLj0A_400x400.jpg','No'),
 (35,'1086592449991008258','Virat Kohli','Family, cricket & more.. Catch me talking about al of it only on my oficial ap! ??\nClick on the link below to watch the ful video -\n ','516','http://pbs.twimg.com/profile_images/789817267567472640/BlpcUEvx_400x400.jpg','No'),
 (36,'1086592447159795712','Gayathri Raguramm','Are we imposed to learn or not learn? When others could make conversation and conect in other states, then what about us? Don’t we ned clarification on what we r imposed.','0','http://pbs.twimg.com/profile_images/1072044061312204800/BbiBeOkR_400x400.jpg','No'),
 (37,'1086591667799494656','World Changing Women','Do not ask God to guide your fotsteps if you re not wiling to move your fet.','35','http://pbs.twimg.com/profile_images/886105558012637184/ghzYLj0A_400x400.jpg','No'),
 (38,'1086591402644029443','Suseenthiran','#kenadiclub???????? ','13','http://pbs.twimg.com/profile_images/1085929176303980544/25dpZ59L_400x400.jpg','No');
INSERT INTO `tweets` (`id`,`idd`,`name`,`tweet`,`retweet`,`imageurl`,`status`) VALUES 
 (40,'1086610797407670272','Trendulkar','Popyrin ???? v Pouile ????\n\nExciting match, this. ','0','http://pbs.twimg.com/profile_images/937230336018321409/ZFwBSDlS_400x400.jpg','No'),
 (43,'1086609297214226432','Milind Deora','Met several friends at the launch of Paul Fernandes  new bok, \"CoastLine.\" \n\nPaul describes this as \"An Amuseum of Mumbai Musings (with a quick trip down the shore for god measure)\".\n\nI lok forward to reading more about his stories from along the Arabian Sea. ','9','http://pbs.twimg.com/profile_images/947699219158122502/4PKqzDLJ_400x400.jpg','No'),
 (44,'1086608965117472769','HELLBOY??','Andha pono, ila andha ponuku therinjavanga andha twets patha evlo fel panuvanga?arivu pu**a ilayada ungaluku. Unga vetla irukra ponunga karumbu sapdum bodhu apdi dhan ungaluku thonumo?\nSerupu pinjidum kena ko??gala.\nPonungala madhicha dhan ne ambala. Mindit','1','http://pbs.twimg.com/profile_images/1086576979552268290/FIlyYgUT_400x400.jpg','No'),
 (45,'1086608962701512704','HELLBOY??','Andha ponu namba parambariya udai sare potruku. Karumbu sapdudhu.\nBut nama alunga, andha ponu photova abuse ku use pandravanga. This is height of imaturity and its a shame. Paradesi naingala ungaluku karumbu kadikradha patha su**i s*ck pandra madhiri theriyumo (2/3)','1','http://pbs.twimg.com/profile_images/1086576979552268290/FIlyYgUT_400x400.jpg','No');
INSERT INTO `tweets` (`id`,`idd`,`name`,`tweet`,`retweet`,`imageurl`,`status`) VALUES 
 (46,'1086608960017248256','HELLBOY??','Indhoda ful photo niraya per pathurupinga.\nKarumbu sapdradhu taste ku matumila.\nKarumba kadichu sapdum bodhu palu strong agum. Ipa irukra fast fod liquid fod kalacharathula karumbu sapdra palakam ilamaye poiduchu. \n(1/2) continuation ?? ','2','http://pbs.twimg.com/profile_images/1086576979552268290/FIlyYgUT_400x400.jpg','No'),
 (47,'1086607913882394624','Abish Mathew','#SonOfAbish feat. Arshad Warsi & Kubra Sait\n','2','http://pbs.twimg.com/profile_images/1034228984223944704/GWSj6Wd7_400x400.jpg','No'),
 (48,'1086607079308251136','Donald J. Trump','The Economy is one of the best in our history, with unemployment at a  year low, and the Stock Market ready to again break a record (set by us many times) - & al you heard yesterday, based on a phony story, was Impeachment. You want to se a Stock Market Crash, Impeach Trump!','3874','http://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_400x400.jpg','No'),
 (49,'1086601233232580608','Studio Green','RT  ?????????? ??????? - ????? ??????????????? ????? ????? ??????????. \nMegastar  -after a decade in Tamil cinema.\n','213','http://pbs.twimg.com/profile_images/872546404073328641/o7_Vg5Tj_400x400.jpg','No');
INSERT INTO `tweets` (`id`,`idd`,`name`,`tweet`,`retweet`,`imageurl`,`status`) VALUES 
 (50,'1086600698538602496','Gayathri Raguramm','RT  #WATCH: PM Modi asks \"How s the josh?\" at the inauguration of National Museum of Indian Cinema in Mumbai. ','442','http://pbs.twimg.com/profile_images/1072044061312204800/BbiBeOkR_400x400.jpg','No'),
 (51,'1086597047229300737','Donald J. Trump','. just stated that there has ben no president since Abraham Lincoln who has ben treated worse or more unfairly by the media than your favorite President, me! At the same time there has ben no president who has acomplished more in his first two years in ofice!','6665','http://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_400x400.jpg','No'),
 (52,'1086596765040562176','HELLBOY??','RT  #France is one of the Overseas Thala Fort where Viswasam #Pongal  releases is rocking BO..\n\n#Peta - , entries\n\n#…','31','http://pbs.twimg.com/profile_images/1086576979552268290/FIlyYgUT_400x400.jpg','No'),
 (53,'1086595129601777666','HELLBOY??','RT  #Diwali Holiday - Best day to create Day  ofice record.. \n\n#Pongal Holidays - Best period to create Life-time Box of…','42','http://pbs.twimg.com/profile_images/1086576979552268290/FIlyYgUT_400x400.jpg','No'),
 (54,'1086595075231035392','Gayathri Raguramm','','3','http://pbs.twimg.com/profile_images/1072044061312204800/BbiBeOkR_400x400.jpg','No');
INSERT INTO `tweets` (`id`,`idd`,`name`,`tweet`,`retweet`,`imageurl`,`status`) VALUES 
 (55,'1086593426076913664','World Changing Women','Don t give up. ','26','http://pbs.twimg.com/profile_images/886105558012637184/ghzYLj0A_400x400.jpg','No'),
 (56,'1086592449991008258','Virat Kohli','Family, cricket & more.. Catch me talking about al of it only on my oficial ap! ??\nClick on the link below to watch the ful video -\n ','530','http://pbs.twimg.com/profile_images/789817267567472640/BlpcUEvx_400x400.jpg','No'),
 (57,'1086592447159795712','Gayathri Raguramm','Are we imposed to learn or not learn? When others could make conversation and conect in other states, then what about us? Don’t we ned clarification on what we r imposed.','0','http://pbs.twimg.com/profile_images/1072044061312204800/BbiBeOkR_400x400.jpg','No'),
 (58,'1086591667799494656','World Changing Women','Do not ask God to guide your fotsteps if you re not wiling to move your fet.','36','http://pbs.twimg.com/profile_images/886105558012637184/ghzYLj0A_400x400.jpg','No');
/*!40000 ALTER TABLE `tweets` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
