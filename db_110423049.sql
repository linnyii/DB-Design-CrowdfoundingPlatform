-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: db_110423049
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_Category`
--

DROP TABLE IF EXISTS `tb_Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_Category` (
  `tb_CategoryID` int NOT NULL AUTO_INCREMENT,
  `tb_CategoryTitle` varchar(120) NOT NULL,
  PRIMARY KEY (`tb_CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_Category`
--

LOCK TABLES `tb_Category` WRITE;
/*!40000 ALTER TABLE `tb_Category` DISABLE KEYS */;
INSERT INTO `tb_Category` VALUES (1,'科技'),(2,'遊戲'),(3,'教育'),(4,'地方創生'),(5,'空間'),(6,'飲食'),(7,'時尚'),(8,'音樂'),(9,'新春賀喜'),(10,'攝影');
/*!40000 ALTER TABLE `tb_Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_Comment`
--

DROP TABLE IF EXISTS `tb_Comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_Comment` (
  `tb_CMemberID` int NOT NULL,
  `tb_CProposalID` int NOT NULL,
  `tb_CommentContent` varchar(200) NOT NULL,
  `tb_CommentAnswer` varchar(200) DEFAULT NULL,
  `tb_CommentDate` timestamp NOT NULL,
  `tb_ResponseDate` timestamp NOT NULL,
  `tb_CommentID` int NOT NULL,
  PRIMARY KEY (`tb_CommentID`),
  KEY `tb_CProposalID_idx` (`tb_CProposalID`),
  KEY `tb_CMemberID` (`tb_CMemberID`),
  CONSTRAINT `tb_CMemberID` FOREIGN KEY (`tb_CMemberID`) REFERENCES `tb_Member` (`tb_MemberID`),
  CONSTRAINT `tb_CProposalID` FOREIGN KEY (`tb_CProposalID`) REFERENCES `tb_Proposal` (`tb_ProposalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_Comment`
--

LOCK TABLES `tb_Comment` WRITE;
/*!40000 ALTER TABLE `tb_Comment` DISABLE KEYS */;
INSERT INTO `tb_Comment` VALUES (1,2,'專輯可以簽名嗎','嘖嘖專屬特別活動... 這個我覺得是 簽名會! 希望啦... 因為看 募資結束時間已經超過演唱會了...我也希望可以有讓專輯可以簽名的機會!! 可以當面給旺福簽名更是好','2022-04-28 14:23:00','2022-04-29 14:23:00',1),(5,4,'請問後續更換的活性碳盒如何購買呢？ \n機器如有需維修的流程又是如何呢？',NULL,'2022-05-27 14:23:00','2022-05-27 14:23:00',2),(5,5,'你好，我要想更新贊助方案，請問怎麼修改呢？','您好，您可以來信嘖嘖客服(support@zeczec.com)或詢問我們的官方line(@868vmvki):https://lihi1.cc/Gyvx9','2022-04-27 14:23:00','2022-04-28 14:23:00',3),(9,5,'不好意思，我的贊助編號是P108681B 想問一下什麼時候會收到呢～！ 感謝','您好，禮盒已經送出，和豐店到店，應該已經抵達喔～ 感謝您對募資計畫的支持喔～ :)','2022-04-28 14:23:00','2022-04-28 14:23:00',4),(10,1,'GoPlus 已更新連線方式，你們還支援24小時不斷線嗎','丹尼的影片 1 : 40 秒有講解如何連線 GoPlus 功能喔～','2022-04-28 14:23:00','2022-04-28 14:23:00',5),(3,1,'請問當寶可夢執行背景應用程式or手機休眠時，247還會持續運作抓怪轉牌嗎?',NULL,'2022-04-28 14:23:00','2022-04-28 14:23:00',6),(4,5,'讚！！每日寫日記','太棒了，歡迎在我們FB粉絲頁跟大家分享喔～','2022-04-28 14:23:00','2022-04-28 14:23:00',7),(8,4,'加油！你的作品很有特色，如果size再完整一些，單價低一些應該很有市場的！','謝謝您的支持與鼓勵！！','2022-04-28 14:23:00','2022-04-28 14:23:00',8),(1,10,'上次短褲沒跟到，這次上衣短褲共下買。','謝謝您的支持 : )','2022-04-28 14:23:00','2022-04-28 14:23:00',9),(2,1,'我多訂一個能退嘛','要請您寄一封信到 support@zeczec.com','2022-04-28 14:23:00','2022-04-28 14:23:00',10),(6,2,'請問軟糖保存期限多久呢？因為同事都是垃圾讓人很需要囤貨 :)','您好，保存期限是一年喔！希望可以陪你平靜渡過被垃圾氣到不行的每一天 :)','2022-04-28 14:23:00','2022-04-28 14:23:00',11),(7,1,'有機會可以早點出貨嗎？6/1要等很久',NULL,'2022-04-28 14:23:00','2022-04-28 14:23:00',12),(1,3,'請問留言tag兩個人的活動我不小心讓他的網頁跳出來該怎麼再操作一次，謝謝。','您好！已另外傳送嘖嘖站內信給您，再請查收','2022-04-28 14:23:00','2022-04-28 14:23:00',13);
/*!40000 ALTER TABLE `tb_Comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_FollowingRecord`
--

DROP TABLE IF EXISTS `tb_FollowingRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_FollowingRecord` (
  `tb_FRProposalID` int NOT NULL,
  `tb_FRMemberID` int NOT NULL,
  PRIMARY KEY (`tb_FRProposalID`,`tb_FRMemberID`),
  KEY `tb_FRMemberID_idx` (`tb_FRMemberID`),
  CONSTRAINT `tb_FRMemberID` FOREIGN KEY (`tb_FRMemberID`) REFERENCES `tb_Member` (`tb_MemberID`),
  CONSTRAINT `tb_FRProposalID` FOREIGN KEY (`tb_FRProposalID`) REFERENCES `tb_Proposal` (`tb_ProposalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_FollowingRecord`
--

LOCK TABLES `tb_FollowingRecord` WRITE;
/*!40000 ALTER TABLE `tb_FollowingRecord` DISABLE KEYS */;
INSERT INTO `tb_FollowingRecord` VALUES (1,1),(2,1),(3,1),(10,1),(1,2),(4,2),(5,2),(1,3),(2,3),(3,3),(5,4),(2,6),(1,7),(4,7),(4,8),(6,9),(1,10);
/*!40000 ALTER TABLE `tb_FollowingRecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_FQA`
--

DROP TABLE IF EXISTS `tb_FQA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_FQA` (
  `tb_FQAID` int NOT NULL,
  `tb_FQAQuestion` varchar(100) NOT NULL,
  `tb_FQAAnswer` varchar(200) NOT NULL,
  `tb_FQAProposalID` int NOT NULL,
  PRIMARY KEY (`tb_FQAID`),
  KEY `tb_FQAProposalID_idx` (`tb_FQAProposalID`),
  CONSTRAINT `tb_FQAProposalID` FOREIGN KEY (`tb_FQAProposalID`) REFERENCES `tb_Proposal` (`tb_ProposalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_FQA`
--

LOCK TABLES `tb_FQA` WRITE;
/*!40000 ALTER TABLE `tb_FQA` DISABLE KEYS */;
INSERT INTO `tb_FQA` VALUES (1,'要如何下單？','先點擊想要贊助的方案之後，照著以下步驟 1、選擇您想要「信用卡付款」或是「ATM轉帳」2、選擇您要宅配或是超商取貨，並輸入對應的收件資訊 3、確認贊助人資訊，並按下立刻付款。 4、之後會根據付款方式給您相關的付款資料 5、付款後回到嘖嘖頁面，點選右上角選單的贊助紀錄，就可以確認剛剛是否付款成功囉！',4),(2,'請問何時會出貨？','預計於2022年7月初開始依訂單編號陸續出貨。',4),(3,'請問有什麼需要注意的呢？','由於新品PVC材質，於生產完成即封裝寄送，初次開啟會有些許味道屬於正常，收到後可先打開放置通風處即可消除。若有需清潔，可用中性清潔劑清洗乾淨並完全晾乾，切勿長時間曝曬於太陽下。 ',1),(4,'有多入之大宗採購需求該怎麼做？','歡迎加入LINE@好友搜尋「@550yisos」，將會有專人與您接洽喔！',2),(5,'付款方式有哪些？','目前開放ATM、信用卡。',7),(6,'可以用信用卡分期嗎？','【台灣的募資平台因應政府規定，均沒有提供分期付款的功能】不過，持卡者如果想以自己信卡來做【分期付款】這樣是可以的。但是，這樣就會有分期利率手續費的衍生（相關利率依每家銀行規範為準）所以，想要以分期付款的朋友，請你先與你持卡銀行確認相關資訊。',3),(7,'十月才能收到商品嗎？','事實上如果不受疫情或戰爭的影響~八月就能出貨了！目前確定八月最少可以出100組~先下單先拿到喔',10),(8,'有使用說明嗎?','請至粉絲專頁~魔術吸管~參考一下喔~',6),(9,'是否有分男女版型呢 ?','我們的版型皆為中性版型，中性版是男女皆適合喔！',6),(10,'可否寄送到國外？','目前我們的商品可以寄送到下列地區：香港(運費$250) / 澳門(運費$250) / 中國(運費$250) / 美國(運費$800) / 日本(運費$600)',5);
/*!40000 ALTER TABLE `tb_FQA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_Hashed`
--

DROP TABLE IF EXISTS `tb_Hashed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_Hashed` (
  `tb_HashedID` int NOT NULL AUTO_INCREMENT,
  `tb_HashedMemberID` int NOT NULL,
  `tb_HashedPassword` varchar(200) NOT NULL,
  PRIMARY KEY (`tb_HashedID`),
  KEY `tb_HashedMemberID_idx` (`tb_HashedMemberID`),
  CONSTRAINT `tb_HashedMemberID` FOREIGN KEY (`tb_HashedMemberID`) REFERENCES `tb_Member` (`tb_MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_Hashed`
--

LOCK TABLES `tb_Hashed` WRITE;
/*!40000 ALTER TABLE `tb_Hashed` DISABLE KEYS */;
INSERT INTO `tb_Hashed` VALUES (1,1,'L(3OY2h:C_QB3U6Uu4p7xVcEL+t*O3dW3yv2W!fXJ_JhB*9CM?R#ok=b*.8vJMfatbl3aa(!sgYvcf2)p+6Ny?MgjzlqLb:qUf/6'),(2,2,'07703ba76ae595a212c8317146fb292fb773f34314a3708a6f3e916bbf6e499c'),(3,3,'1caf7cfa34bdb90fd7a332dfed5a5e0d1a153d6a164234aa98b7ba611b83abe7'),(4,4,'ea8ced964d6826e1eede67dccaea05e543e4bcf84ff06d6af8f7877413a91538'),(5,5,'7a09363a667de652e1666b0810219bb7886036dca13af909cd755c80df946365'),(6,6,'ccd108b762527fcdcdb8c5b6cad6480e9b81a5d92f29e6793d6865b274bc50dc'),(7,7,'a5c5e74448987538a8bffda3518f59e2f3785cf460d4f882a2c563af654fe13f'),(8,8,'1a4c96ddeda1e2bfc16abd7bd6f8a72dc416c10c824747cbe5b1f9cc20671c40'),(9,9,'e9c59dd5748d8c0be520b37658c8da542720916cc6d7ff627ad2ba0e76237bca'),(10,10,'5ad2e13f01b6c6597301b4dd8fa5b2a055c6e4245e84f63344f6bbb5c0f3c802'),(11,19,'WWWaGbhlZ62s4G2hqdjHRRYRt2LZsQUXF8ktpQjo3HNQxRA28FyAhUMm9yu0hKjG77KV3TPy5ZMxA6lYyN6kpbqQik9DVEaGLuXXzazB06By3qXpHc3Y8xk0EXYLUxTpA6QZt0rDMicsU17JPYBDxfJMHHaXU2tp9OOXXMown591ZGIChkzPcbAqQTJ2AB46mQnbPXNo'),(12,20,'Rzlf3Jclu2IOXobtO7N8mZHBJnYDKviDAds92vIay7zaBK85CpJOWA01urqpDdOgAkYKC0HZICUvK7baoMidF63UDiEwiRy6gPfLpoyGuTXzGUzqRsGLWtCUMxlC9RrIN5jHUbrGfZdBn1jgxRAue2B8CmUgvbE5YYcASDLQCTgD6rTbuqEhIUNXTx0UYZlrcJtukgTY'),(13,21,'tByCM-=j90WO8I=xfJ/4GCLBswymearAer(J_9ul_H(zZXxJ5@LPm@jLVfvPZLvpgS7NblfPZUV-b#ER11yBLSQ=ce_1dWEf5i+FwtqdMxNxR6hiM*BLvv6YowVcKvMp#Y5.tolJPZLrF.FT!MMKKBun2@?dz1(a.k3!E1q5swlULs4i*H(hh3#=+GLJEVe6fuqZeI-D'),(14,22,'cQ*?#or8k1f0R/:MI8jXcnlU!7WUsCzO-N0Hodi/a5Jv3nfi1pC!s0I-?_i9/UJLU7_3aS20Si_b/?dMRI3=sr)cTF3vEVJ1AaRuxWXGbwiGSQPgTY?YJnnNt:_T_H5u8u3g12O6J-t=NkKnYH+0iQ*IdgIv1im.6edX@yjz#yeDOFn(Mb-ndvIbd8#CocZBPAUoV.!k'),(15,23,'.OXHa(PNox@wM2g?t/i=5N!0Ttu6L4_=DyEk0ks3jmfa/jk255!?=)7v14-bMhrvL7)PQM@98cU-(Cp(XZYoTlDzoGOL@_5VY?yJ'),(16,24,'-H7eFfs7g2BtVMO6vm=AxcUz+iKjYH.Defx?0:HZJ9rCYGJEu2Xf(hQE5t:tOFpI2fT=MSl7S_Lu7RMBT1DR@Lx_Gm=7Kc/AHNG?');
/*!40000 ALTER TABLE `tb_Hashed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_Member`
--

DROP TABLE IF EXISTS `tb_Member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_Member` (
  `tb_MemberID` int NOT NULL AUTO_INCREMENT,
  `tb_MemberName` varchar(64) NOT NULL,
  `tb_MemberEmail` varchar(64) NOT NULL,
  `tb_MemberPhone` varchar(64) DEFAULT NULL,
  `tb_MemberAddress` varchar(64) DEFAULT NULL,
  `tb_Membersalt` varchar(64) NOT NULL,
  PRIMARY KEY (`tb_MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_Member`
--

LOCK TABLES `tb_Member` WRITE;
/*!40000 ALTER TABLE `tb_Member` DISABLE KEYS */;
INSERT INTO `tb_Member` VALUES (1,'毛若穎','in.consequat@yahoo.com','0921003614','366 苗栗縣銅鑼鄉民權路31號','@YyDj=O=jRQJ'),(2,'林芳岑','adipiscing.enim.mi@outlook.com','0988008346','600 嘉義市東區世賢路24號','7gB%z9Svg8EW'),(3,'胡素芝','nullam.velit@yahoo.com','0922830125','325 桃園市龍潭區淮子埔一路29號','JJQF0j%tkx3i'),(4,'童雅婷','sed.auctor@hotmail.com','0958351743','540 南投縣南投市三和一路14號','Rv$uGmL&C!%g'),(5,'賴麗萍','sagittis.nullam@google.com','0912587773','508 彰化縣和美鎮潭北路15號','XcZg6Be^cU2y'),(6,'黃志斌','nec.leo.morbi@protonmail.com','0960105109','711 臺南市歸仁區崙頂二街11號','aZjy*GvZt@s*'),(7,'廖松白','nec.leo.morbi@protonmail.com','0961749001','411 臺中市太平區北田路14號','j8tI5!wG88PM'),(8,'徐嘉柏','proin.non@protonmail.com','0928735721','801 高雄市前金區自立二路18號','n7UDOe0uspZk'),(9,'李麗珠','arcu.vel.quam@hotmail.com','0968169143','201 基隆市信義區義四路22號','wlmM33nAD@SR'),(10,'施泓音','dui.quis.accumsan@google.com','0970691667','622 嘉義縣大林鎮早知31號','&@^ODhk0MH&l'),(19,'yiyi','tingyilin@gmail.com','091234567','台南市中西區小北路100號','3dDNwBU6oK6N'),(20,'jojo','tingtingyi@gmail.com','0922334455','台南市小北區小北路100號','igMPOtNucXTU'),(21,'ww','www@gmail.com','098888888','wwwwww','GL9geHURscjL'),(22,'yy','yyyyy@gmail.com','097777777','yyyyyyy','e-T09IyPW?:I'),(23,'birte','birteliu@gmail.com','0988888845','高雄市三民區三民路100號','o1-JyJFSE3Cs'),(24,'uteliu','uteliu@gmail.com','0922222222','台北市信義區信義路200號','kJUECIe?Kv2C');
/*!40000 ALTER TABLE `tb_Member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_POtionChoose`
--

DROP TABLE IF EXISTS `tb_POtionChoose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_POtionChoose` (
  `tb_POCPOtionID` int NOT NULL,
  `tb_POCMemberID` int NOT NULL,
  PRIMARY KEY (`tb_POCPOtionID`,`tb_POCMemberID`),
  KEY `tb_PCMemberID_idx` (`tb_POCMemberID`),
  CONSTRAINT `tb_PCMemberID` FOREIGN KEY (`tb_POCMemberID`) REFERENCES `tb_Member` (`tb_MemberID`),
  CONSTRAINT `tb_PCPOtionID` FOREIGN KEY (`tb_POCPOtionID`) REFERENCES `tb_ProposalOption` (`tb_ProposalOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_POtionChoose`
--

LOCK TABLES `tb_POtionChoose` WRITE;
/*!40000 ALTER TABLE `tb_POtionChoose` DISABLE KEYS */;
INSERT INTO `tb_POtionChoose` VALUES (5,1),(8,1),(1,3),(3,3),(6,4),(7,4),(2,5),(4,5);
/*!40000 ALTER TABLE `tb_POtionChoose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_Proposal`
--

DROP TABLE IF EXISTS `tb_Proposal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_Proposal` (
  `tb_ProposalID` int NOT NULL AUTO_INCREMENT,
  `tb_ProposalTitle` varchar(120) NOT NULL,
  `tb_ProposalContent` text,
  `tb_ProposalGoal` int unsigned NOT NULL,
  `tb_ProposalAmount` int unsigned DEFAULT NULL,
  `tb_ProposalCreateDate` timestamp NOT NULL,
  `tb_ProposalcolDueDate` timestamp NOT NULL,
  `tb_ProposalStatusID` int NOT NULL,
  `tb_ProposalViewCounts` int unsigned DEFAULT NULL,
  `tb_ProposalCategoryID` int NOT NULL,
  PRIMARY KEY (`tb_ProposalID`),
  KEY `tb_ProposalCategoryID_idx` (`tb_ProposalCategoryID`),
  KEY `tb_ProposalStatusID_idx` (`tb_ProposalStatusID`),
  CONSTRAINT `tb_ProposalCategoryID` FOREIGN KEY (`tb_ProposalCategoryID`) REFERENCES `tb_Category` (`tb_CategoryID`),
  CONSTRAINT `tb_ProposalStatusID` FOREIGN KEY (`tb_ProposalStatusID`) REFERENCES `tb_ProposalStatus` (`tb_ProposalStatusID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_Proposal`
--

LOCK TABLES `tb_Proposal` WRITE;
/*!40000 ALTER TABLE `tb_Proposal` DISABLE KEYS */;
INSERT INTO `tb_Proposal` VALUES (1,'《 247 Catcher 》｜ 最全面的【抓寶 & 打團】輔助道具','大家好！我們是 PhotoFast 銀箭資訊。今年，我們創造出了一款能符合 Pokemon GO 玩家需求的抓寶利器！不只能突破現有的連線一小時限制，更讓您能夠在打團戰或攻道館時輕鬆應戰！',100000,2393696,'2022-03-15 14:23:00','2022-06-14 14:23:00',2,1150,1),(2,'【最後 3 天】台灣首發輕機能舒壓軟糖 ✧ Kimóo 情緒平衡軟糖 ✧ 日本專利「特濃舒壓ＧＡＢＡ」Ｘ「快樂Ｌ色氨酸」，面對再多鳥事也能有平靜好心情！','喜劇演員的起笑配方！募資前百人實測 → 75.8% 有感回饋：「吃了真的有鬆～」——— 你的心累了嗎？\"Not being O.K. is O.K.\" 沒關係，是情緒啊！吃一顆回到內在平靜小宇宙！',200000,377200,'2022-04-08 14:23:00','2022-07-08 14:23:00',2,251,6),(3,'數感宇宙探索課程｜為國小生打造的生活數學 DIY 影音學習組｜給孩子一堂不一樣的數學課','本課程結合數感實驗室逾 10 年數學教育經驗、史丹佛大學「成長型數學思維」理論。內容針對國小中年級以上的孩子，強調具體、跨域、手作、情境。鼓勵孩子探索思考，讓孩子愛上數學。',500000,3737138,'2022-03-16 14:23:00','2022-06-16 14:23:00',2,641,3),(4,'『Organs without body 2014 S/S 服裝秀』','「ORGANS WITHOUT BODY 」為 藝術家「安地羊 Andy Yen」2012創立之服裝品牌。',100000,5050,'2013-08-21 14:23:00','2013-11-21 14:23:00',3,4,7),(5,'x5 Project 台灣茶葉禮盒 | 邀請您一起用45款台灣茶重新認識『在地』','本次募資計畫是由茶品牌 Three Leafs Tea 透過45款茶做為與消費者連結的媒介，結合茶與藝術向世界說台灣。以「人、事、物、學、遊」五個層面介紹清晰易懂的台灣在地文化故事。',50000,852482,'2021-12-11 16:00:00','2022-03-11 16:00:00',3,194,4),(6,'【 HOMI｜地表最強全情境短袖 & EAM 登山防曬衣 】featuring CORDURA fabric / MIT 設計製造！','ㄧ件夏天的短袖可以有什麼不同？CORDURA 柔軟強韌，非塗層物理涼感，抗UV 前所未有的透氣調節，MIT 質感獨家設計製造 # 針對夏天的穿著環境，更舒適的穿著體驗而衍生出 HOMI 的第一件短袖物件 Movement T shirt，利用材料及設計創造出ㄧ件可以在夏日的不同環境下，隨時給你舒適機能與質感外型的短袖！',100000,1556942,'2021-07-20 11:39:35','2021-10-20 11:39:35',3,3148,5),(7,'樂待STAY 桃園水岸店 on Line 募資企劃-我們讓孩子樂呆 父母樂待','台灣有超過20萬以上的人有睡眠障礙，你是不是也是其中一員？經常睡不好、睡不飽、醒來卻還是滿身疲累，一夜好眠成了一種奢求。',943038,282244,'2022-05-29 11:33:33','2022-08-27 11:33:33',2,63,3),(8,'謎路⼈Way of Puzzle 2022【It\'s All I Have】專輯發⾏企劃','台灣有超過20萬以上的人有睡眠障礙，你是不是也是其中一員？經常睡不好、睡不飽、醒來卻還是滿身疲累，一夜好眠成了一種奢求。',400000,45651,'2022-05-29 11:35:20','2022-08-27 11:35:20',2,31,2),(9,'邏輯解謎｜密室逃脫桌遊 破解古老的秘密','本次募資計畫是由茶品牌 Three Leafs Tea 透過45款茶做為與消費者連結的媒介，結合茶與藝術向世界說台灣。以「人、事、物、學、遊」五個層面介紹清晰易懂的台灣在地文化故事。',100000,NULL,'2022-05-29 11:37:44','2022-08-27 11:37:44',1,0,10),(10,'SIRUI 75mm ​變形鏡頭','還停留在變形鏡頭既沉且大的印象中？還以為變形鏡頭是高昂的貴族鏡頭？不！消費級別的變形鏡頭世界早已誕生——思銳1.33X寬銀幕變形鏡頭！目前，思銳已推出24mm/F2.8、35mm/F1.8、50mm/F1.8三個焦段，其以更小的體積、更高的性價比、更強的電影質感，讓大眾影友真正能無負擔地接觸變形鏡頭。',100000,532600,'2021-07-20 11:39:35','2021-10-20 11:39:35',3,200,1),(11,'【 HOMI｜地表最強全情境短袖 & EAM 登山防曬衣 】featuring CORDURA fabric / MIT 設計製造！','123',10000,NULL,'2022-05-29 11:44:33','2022-08-27 11:44:33',1,NULL,1),(12,'456','456',10000,NULL,'2022-05-29 13:35:20','2022-08-27 13:35:20',1,NULL,2),(13,'888','888',10000,NULL,'2022-05-29 13:40:32','2021-10-20 11:39:35',1,NULL,1),(14,'123','123',10000,NULL,'2022-06-03 11:39:21','2022-09-01 11:39:21',1,NULL,1),(15,'1000','100000',10000,NULL,'2022-06-11 10:30:01','2022-09-09 10:30:01',1,NULL,1);
/*!40000 ALTER TABLE `tb_Proposal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ProposalMember`
--

DROP TABLE IF EXISTS `tb_ProposalMember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_ProposalMember` (
  `tb_PMMemberID` int NOT NULL,
  `tb_PMProposalID` int NOT NULL,
  PRIMARY KEY (`tb_PMMemberID`,`tb_PMProposalID`),
  KEY `tb_PMProposalID_idx` (`tb_PMProposalID`),
  CONSTRAINT `tb_PMMemberID` FOREIGN KEY (`tb_PMMemberID`) REFERENCES `tb_Member` (`tb_MemberID`),
  CONSTRAINT `tb_PMProposalID` FOREIGN KEY (`tb_PMProposalID`) REFERENCES `tb_Proposal` (`tb_ProposalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ProposalMember`
--

LOCK TABLES `tb_ProposalMember` WRITE;
/*!40000 ALTER TABLE `tb_ProposalMember` DISABLE KEYS */;
INSERT INTO `tb_ProposalMember` VALUES (3,1),(7,1),(1,2),(2,2),(6,2),(4,3),(5,4),(8,4),(5,5),(9,5),(3,6),(4,6),(1,7),(3,7),(2,8),(3,9),(10,9),(1,10),(4,10),(8,10),(2,11),(1,12),(2,13),(1,14),(1,15);
/*!40000 ALTER TABLE `tb_ProposalMember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ProposalOption`
--

DROP TABLE IF EXISTS `tb_ProposalOption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_ProposalOption` (
  `tb_ProposalOptionID` int NOT NULL,
  `tb_POProposalID` int NOT NULL,
  `tb_POptionTitle` varchar(45) DEFAULT NULL,
  `tb_POptionDescription` varchar(200) DEFAULT NULL,
  `tb_POptionPrice` int unsigned NOT NULL,
  `tb_POptionRemainQTY` int NOT NULL,
  PRIMARY KEY (`tb_ProposalOptionID`),
  KEY `tb_POProposalID_idx` (`tb_POProposalID`),
  CONSTRAINT `tb_POProposalID` FOREIGN KEY (`tb_POProposalID`) REFERENCES `tb_Proposal` (`tb_ProposalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ProposalOption`
--

LOCK TABLES `tb_ProposalOption` WRITE;
/*!40000 ALTER TABLE `tb_ProposalOption` DISABLE KEYS */;
INSERT INTO `tb_ProposalOption` VALUES (1,1,'247 早鳥超值組','內容物包含：247 Catcher x 1 自動點擊器 x 1 usb - C 充電線 x 1 專屬收納包 x 1 247 Catcher 說明書 x 1【重要提醒】台灣本島地區免運費，外島地區收額外運費。全球地區皆可寄，運費於結帳時顯示。若需統編請輸入收件資訊時備註。',2290,55),(2,3,'單組 體驗初學','Ａ數學分析／Ｂ邏輯推演／Ｃ策略規劃：３組擇１',1790,11),(3,9,'【好評追加！超早鳥衣褲組合】','Movement 全情境短T X1 +  Movement 全情境短褲 X1 +  ▲未來售價：5060，現省1161',3899,100),(4,5,'小資支持 12個月每月茶包禮','【感謝禮】回饋您對我們計畫的支持，我們每個月會寄一包茶葉體驗包 + 電子刊物',900,21),(5,10,'75mm 超級早鳥價格','75mm F1.8 Anamorphic 1.33X Lens X1',18800,169),(6,8,'【 嘖嘖超早鳥優惠 】 未來售價 $1790｜現省300元','金字塔、諾克斯碉堡、龍之屋（三選一） ×1 款',1490,37),(7,6,'x5 Project 台灣茶葉禮盒 | 邀請您一起用45款台灣茶重新認識『在地』','想參與STAY最有名的親子活動嗎，此為一大一小體驗邀請，歡迎爸媽帶著你的孩子，或是孩子帶著你最愛的爸媽，參加我們90分鐘的專屬親子派對，和我們一起慶祝STAY桃園水岸店的開幕',1888,9999),(8,7,'【只想聽歌組】','【謎路人 2022 It\'s All I Have】 概念專輯 1張',720,147),(9,4,'原畫畫作一件10號','原畫畫作',15000,3),(10,2,'【嘖嘖價】1 入 83 折','Kimóo情緒平衡軟糖 1 盒',690,101);
/*!40000 ALTER TABLE `tb_ProposalOption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ProposalStatus`
--

DROP TABLE IF EXISTS `tb_ProposalStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_ProposalStatus` (
  `tb_ProposalStatusID` int NOT NULL,
  `tb_StatuDescription` varchar(45) NOT NULL,
  PRIMARY KEY (`tb_ProposalStatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ProposalStatus`
--

LOCK TABLES `tb_ProposalStatus` WRITE;
/*!40000 ALTER TABLE `tb_ProposalStatus` DISABLE KEYS */;
INSERT INTO `tb_ProposalStatus` VALUES (1,'UNDER-REVIEWING'),(2,'ONGOING'),(3,'EXPIRED');
/*!40000 ALTER TABLE `tb_ProposalStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_SponsorRecord`
--

DROP TABLE IF EXISTS `tb_SponsorRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_SponsorRecord` (
  `tb_SRProposalID` int NOT NULL,
  `tb_SRMemberID` int NOT NULL,
  PRIMARY KEY (`tb_SRProposalID`,`tb_SRMemberID`),
  KEY `tb_SRMemberID_idx` (`tb_SRMemberID`),
  CONSTRAINT `tb_SRMemberID` FOREIGN KEY (`tb_SRMemberID`) REFERENCES `tb_Member` (`tb_MemberID`),
  CONSTRAINT `tb_SRProposalID` FOREIGN KEY (`tb_SRProposalID`) REFERENCES `tb_Proposal` (`tb_ProposalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_SponsorRecord`
--

LOCK TABLES `tb_SponsorRecord` WRITE;
/*!40000 ALTER TABLE `tb_SponsorRecord` DISABLE KEYS */;
INSERT INTO `tb_SponsorRecord` VALUES (1,1),(2,1),(3,2),(4,2),(1,3),(5,3),(2,4),(3,4),(4,5),(1,7),(7,7);
/*!40000 ALTER TABLE `tb_SponsorRecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_110423049'
--
/*!50003 DROP PROCEDURE IF EXISTS ` sp_GetRecommendedProposals` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE ` sp_GetRecommendedProposals`(
 IN inmember_id int,
 OUT outResult_row_num INT
)
BEGIN
   DECLARE found_rows int;
  
   
   IF EXISTS(SELECT tb_SRMemberID FROM tb_SponsorRecord WHERE tb_SRMemberID= inmember_id)
     THEN 
	   SELECT tb_ProposalID,tb_ProposalTitle,tb_ProposalStatusID,tb_ProposalViewCounts
	   FROM tb_Proposal,tb_SponsorRecord
       WHERE tb_ProposalStatusID=2 AND tb_SponsorRecord.tb_SRProposalID=tb_Proposal.tb_ProposalID
       AND tb_SRMemberID IN 
       #底下兩個SLECT要找出和inmeneber_id 贊助相同提案的人
       (SELECT DISTINCT(tb_SRMemberID) FROM tb_SponsorRecord WHERE tb_SRProposalID IN 
       (SELECT tb_SRProposalID FROM tb_SponsorRecord WHERE tb_SRMemberID =inmember_id))
       AND tb_ProposalID NOT IN 
       # 底下這個SELECT 是要找出 不是inmemebr 自己提案的提案
       (SELECT tb_PMProposalID FROM tb_ProposalMember WHERE tb_PMMemberID =inmember_id)
        AND tb_ProposalID NOT IN
       # 底下這個SLECT 要找出inmember 不曾贊助過的提案
       (SELECT tb_SRProposalID FROM tb_SponsorRecord WHERE tb_SRMemberID =inmember_id);
        
        #如果inmember_id 有贊助過，但是不符合上述條件，則會找到0筆資料
        SELECT FOUND_ROWS() INTO outResult_row_num;
        
        #如果找到0筆資料，則顯示viewcounts 前五名的proposal items
        IF outResult_row_num=0
         THEN
          SELECT tb_ProposalID,tb_ProposalTitle,tb_ProposalStatusID,tb_ProposalCategoryID,tb_ProposalViewCounts
          FROM tb_Proposal
          ORDER BY tb_Proposal.tb_ProposalViewCounts DESC LIMIT 5;
          SELECT FOUND_ROWS() INTO outResult_row_num;
        
        END IF;
       
       
   Else  #如果inmenber_id 沒有贊助過，也是顯示viewCounts 前五名的proposal items
	
    begin
        SELECT tb_ProposalID,tb_ProposalTitle,tb_ProposalStatusID,tb_ProposalCategoryID,tb_ProposalViewCounts
        FROM tb_Proposal
        ORDER BY tb_Proposal.tb_ProposalViewCounts DESC LIMIT 5;
        SELECT FOUND_ROWS() INTO outResult_row_num;

	end;
  END IF; 
    
   #SELECT FOUND_ROWS() INTO outResult_row_num;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CreateProposal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_CreateProposal`(
IN inmember_id int,
IN intitle varchar(120),
IN incontent text,
IN ingoal int,
IN incategory int,
OUT affected_row_num int
)
BEGIN
   DECLARE created_proposal_id int;
   DECLARE affected_count int;
   DECLARE checked_member_id int;
   DECLARE create_date datetime;
   DECLARE due_date datetime;
   
   #  先檢查帶入參數inmember_id 有沒有存在於tb_Menber 的table 裡面
   SET checked_member_id := (SELECT tb_MemberID FROM tb_Member WHERE tb_MemberID = inmember_id);
    
   #如果inmember_id 不存在
   IF ISNULL(checked_member_id)
     THEN  
        # 就顯示底下訊息
        SELECT "member does not exist, not available to create proposal";
	#如果inmember_id 存在，則進行ELSE 底下create porposal的動作
	ELSE
     BEGIN
       # 設定create_date 與due_date 變數
       SET create_date = NOW();
       SET due_date = create_date + interval 90 day ;
       # 在proposal table 裡面insert 新的一筆資料
       INSERT INTO tb_Proposal (tb_ProposalTitle,tb_ProposalContent,tb_ProposalGoal,tb_ProposalCreateDate,
       tb_ProposalcolDueDate,tb_ProposalStatusID,tb_ProposalCategoryID)
       VALUES (intitle,incontent,ingoal,create_date,due_date,1,incategory);
       
       #計算上面Insert 動作所影響的列數
       SET affected_count = ROW_COUNT();
       #拿取剛剛create 的proposal id
       SET created_proposal_id = LAST_INSERT_ID();
       
       # 在ProposalMember 的table 維護剛剛建立的proposal_id 跟proposer
       INSERT INTO tb_ProposalMember (tb_PMMemberID,tb_PMProposalID)
       VALUES (inmember_id,created_proposal_id);
       
       #再次計算（累加）Insert 動作所影響的列數
       SET affected_count = affected_count+ROW_COUNT();
       
       # 列印出剛剛所建立的proposal 資料
       SELECT tb_ProposalID AS proposal_id,tb_ProposalTitle AS proposal_title,tb_ProposalContent AS proposal_content
       ,tb_ProposalAmount AS amount,tb_ProposalGoal AS Goal,
       tb_ProposalStatusID AS status,tb_ProposalViewCounts AS viewed_num,tb_ProposalCreateDate AS create_date,
       tb_ProposalcolDueDate AS due_date,tb_CategoryTitle AS category 
       FROM tb_Category,tb_Proposal
       WHERE tb_Proposal.tb_ProposalCategoryID=tb_Category.tb_CategoryID
       AND tb_Proposal.tb_ProposalID= created_proposal_id;
       
       # affected_count （affected_row_num）應該總共有兩筆
       # 因為我們總共在兩個table (tb_Proposal 與tb_ProposalMember 執行了Insert 動作)
       # 把affected_count 變數寫入affected_row_num
       SELECT affected_count INTO affected_row_num;
	END;
    END IF;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DeleteMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DeleteMember`(
  IN inmember_id int,
  OUT affected_row_num int
)
BEGIN
  DECLARE checked_member_id int;
  #先檢查參數inmember_id 有無存在於tb_Member 裡面
  SET checked_member_id :=(SELECT tb_MemberID FROM tb_Member WHERE tb_MemberID= inmember_id );
  
  IF ISNULL(checked_member_id) # 如果inmember_id 不存在，
	THEN
        BEGIN # 則顯示底下訊息
		    SELECT "member does not exist, cannot do delete action";
        END;
  ELSEIF EXISTS(SELECT tb_CMemberID FROM tb_Comment WHERE tb_CMemberID= inmember_id)OR
    EXISTS(SELECT tb_PMMemberID FROM tb_ProposalMember WHERE tb_PMMemberID= inmember_id)OR
    EXISTS(SELECT tb_SRMemberID FROM tb_SponsorRecord WHERE tb_SRMemberID= inmember_id)OR
    EXISTS(SELECT tb_FRMemberID FROM tb_FollowingRecord WHERE tb_FRMemberID= inmember_id)
     THEN #如果inmember_id 存在於其他tables 則顯示底下訊息
         BEGIN
             SELECT "member exits in other tables, which is not allowed to be deleted due to foreign key constaint.";
          END;
  
   ELSE 
     
     DELETE FROM tb_Member
	 WHERE tb_MemberID = inmember_id;
     
     # if this inmember_id exists in other tables, then this store procedure will be failed to execute.
     # Since the foreign key is constraint as On Delete No Action & On Update No Action
     SELECT ROW_COUNT() INTO affected_row_num;
     
 END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetFollowedProposalsByMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetFollowedProposalsByMember`(
 IN inMemberID int,
 OUT outResult_row_num INT
)
BEGIN

SELECT tb_FRMemberID AS member_id , tb_ProposalTitle AS proposal_title ,tb_ProposalAmount AS proposal_amount,
tb_ProposalGoal AS proposal_goal
FROM tb_FollowingRecord ,tb_Proposal
WHERE tb_FRMemberID = inMemberID AND tb_FRProposalID=tb_ProposalID;

SELECT  found_rows() INTO outResult_row_num;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetHistorySponsorByMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetHistorySponsorByMember`(
  IN inmember_id INT,
  OUT outResult_row_num INT
)
BEGIN

  

  SELECT tb_POCMemberID AS member_id, tb_ProposalID AS proposal_id ,tb_ProposalTitle AS proposal_title,
  tb_POptionTitle AS proposal_option_title,tb_POptionPrice AS amount,tb_ProposalStatusID AS status 
  From tb_POtionChoose, tb_ProposalOption,tb_Proposal 
  WHERE tb_POtionChoose.tb_POCMemberID=inmember_id AND tb_POtionChoose.tb_POCPOtionID=tb_ProposalOption.tb_ProposalOptionID
  AND tb_ProposalOption.tb_POProposalID=tb_Proposal.tb_ProposalID;
  
  SELECT FOUND_ROWS() INTO outResult_row_num;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetProposalByCompletionRate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetProposalByCompletionRate`(
 IN inratio DOUBLE,
 OUT outResult_row_num int
)
BEGIN
  
  SELECT tb_ProposalID AS proposal_id,tb_ProposalTitle AS proposal_title,
  tb_ProposalAmount AS amount ,tb_ProposalGoal AS goal, 
  tb_ProposalAmount /tb_ProposalGoal AS 'ratio'
  FROM tb_Proposal
  WHERE (tb_ProposalAmount /tb_ProposalGoal) > inratio;
 
  
  SELECT FOUND_ROWS() INTO outResult_row_num;
  
  
  
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetProposalsByKeyword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetProposalsByKeyword`(
IN inkeyword varchar(64),
OUT outResult_row_num INT
)
BEGIN
     
	
    SELECT tb_ProposalID AS proposal_id, tb_ProposalTitle AS proposal_title, tb_ProposalcolDueDate AS due_date,
    tb_ProposalAmount AS amount
    FROM tb_Proposal
    WHERE tb_ProposalTitle LIKE CONCAT('%',inkeyword,'%');
    
    SELECT FOUND_ROWS() INTO outResult_row_num;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetUnrepliedComments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetUnrepliedComments`(
 IN inmember_id int,
 OUT outResult_row_num int
)
BEGIN
    
    SELECT tb_PMMemberID AS member_id,tb_ProposalID AS proposal_id,tb_ProposalTitle AS proposal_title
    ,tb_CMemberID AS comment_id,tb_CommentContent AS user_comment,tb_CommentDate AS comment_time
    ,tb_CommentAnswer AS proposal_response
    FROM tb_Comment,tb_Proposal,tb_ProposalMember
    WHERE tb_Comment.tb_CProposalID = tb_Proposal.tb_ProposalID 
    AND tb_Proposal.tb_ProposalID=tb_ProposalMember.tb_PMProposalID
    AND tb_ProposalMember.tb_PMMemberID=inmember_id
    AND tb_Comment.tb_CommentAnswer is NULL;
    
    SELECT FOUND_ROWS() INTO outResult_row_num;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Login`(
  IN inemail  varchar(64),
  IN inhashedpwd varchar(200),
  OUT status_code INT
  # status_code = 1  -->  登入成功 
  # status_code = 2  -->  登入失敗 (會員存在但密碼錯誤)
  # status_code = 3  -->  登入失敗 (會員不存在)
)
BEGIN
    #先檢查inemail 有無存在於資料庫
	IF EXISTS (SELECT tb_MemberEmail FROM tb_Member WHERE tb_MemberEmail = inemail)
	THEN
		BEGIN 
			
            DECLARE selected_user_id int;
            DECLARE selected_pwd varchar(200);
            #找出符合inemail的user_id #再找出符合此user_id 的pwd
            SET selected_user_id :=(SELECT tb_MemberID FROM tb_Member WHERE tb_MemberEmail= inemail);
            SET selected_pwd :=(SELECT tb_HashedPassword FROM tb_Hashed WHERE tb_HashedMemberID = selected_user_id);
			
            IF (selected_pwd = inhashedpwd)#檢查找出的pwd 是否符合inhashedpwd
            THEN
				SELECT 1 INTO status_code; #如果符合則status=1
			ELSE
				SELECT 2 INTO status_code; #如果不符合則status=2
			END IF;
		END;
	ELSE #如果inemail 不存在，則status=3
		SELECT 3 INTO status_code;
	END IF;
    
    SELECT status_code;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_RegisterMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_RegisterMember`(
  IN inemail varchar(64),
  IN inhashedPwd varchar(200),
  IN insalt varchar(64),
  IN inusername varchar(64),
  IN inaddress varchar(64),
  IN inphone varchar(64),
  OUT affected_row_num INT

)
BEGIN
     # 先檢查要註冊的inemail 是否已經存在，如已存在，則顯示下列訊息。
      IF EXISTS (SELECT tb_MemberEmail FROM tb_Member WHERE tb_MemberEmail = inemail) THEN
		 BEGIN
			  SELECT "email already exists,please change other email to register or do login";
	     END;
      ELSE #如果不存在，則可進行以下註冊動作
          BEGIN
			  DECLARE created_user_id int;
			  DECLARE affected_count int;
			  #在Member insert 一筆新的會員資訊
			  INSERT INTO tb_Member (tb_MemberEmail,tb_Membersalt,tb_MemberName,tb_MemberAddress,tb_MemberPhone)
			  VALUES (inemail,insalt,inusername,inaddress,inphone);
              
              SET affected_count = ROW_COUNT(); # 計算insert 後影響的列數
              SET created_user_id = LAST_INSERT_ID(); #找出剛剛create 的user_id
              #在tb_Hashed 一筆新的資訊
              INSERT INTO tb_Hashed (tb_HashedMemberID, tb_HashedPassword)
			  VALUES(created_user_id, inhashedPwd);
              # 再次計算(累加)insert 後影響的列數
              SET affected_count = affected_count+ROW_COUNT();
              #列印出結果
              SELECT tb_MemberID AS member_id, tb_MemberName AS name, tb_MemberEmail AS email,
              tb_HashedPassword AS password ,tb_Membersalt AS salt ,tb_MemberPhone AS phone ,
              tb_MemberAddress AS address 
              FROM tb_Member,tb_Hashed 
              WHERE tb_HashedMemberID =tb_MemberID AND tb_MemberID=created_user_id;
              
              # affected_row_num應該會有兩筆
              # 因為我們在兩個table執行了insert 動作
              SELECT affected_count INTO affected_row_num;
	      END;
	  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdateProposalStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpdateProposalStatus`(
 IN inproposal_id INT,
 IN instatus INT,
 OUT affected_row_num INT
)
BEGIN
    
	DECLARE checked_proposal_id int;
	DECLARE checked_status int;
	SET checked_proposal_id := (SELECT tb_ProposalID FROM tb_Proposal WHERE tb_ProposalID = inproposal_id);
	SET checked_status := (SELECT tb_ProposalStatusID FROM tb_Proposal WHERE tb_ProposalID = inproposal_id);
    #先檢查proposal_id 有無存在，如果不存在則顯示底下訊息
    IF ISNULL(checked_proposal_id)
    THEN  
        SELECT "proposal_id not exists";
	ELSE
       #如果proposal_id 存在則執行底下動作
       #檢查目前的proposal_status 有沒有小於instatus 以及instatus與目前的status相差=1
       IF (checked_status < instatus && instatus-checked_status= 1)
       THEN #如果符合上述IF條件，則進行proposal_status更改
          UPDATE tb_Proposal
          SET tb_ProposalStatusID=instatus 
          WHERE tb_ProposalID=inproposal_id;
          
          SELECT ROW_COUNT() INTO affected_row_num;
          #列出status更改後的proposal資訊
          SELECT tb_ProposalID AS proposal_id, tb_ProposalStatusID AS status FROM tb_Proposal
          WHERE tb_ProposalID=inproposal_id;
		
        ELSE #如果不符合上述IF條件，則顯示底下訊息
           SELECT "invalid status update ";
		
	    END IF;
	END IF; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdatePwd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpdatePwd`(
   IN inmember_id INT,
   IN inhashedPwd varchar(200),
   IN insalt varchar(64),
   OUT affected_row_num INT
   
)
BEGIN
    DECLARE affected_count int;
    # 在tb_Member 更新salt
	UPDATE tb_Member SET tb_Membersalt=inSalt
	WHERE tb_MemberID=inmember_id;
	SET affected_count = ROW_COUNT(); #計算影響列數
    #在tb_Hashed更新pwd
	UPDATE tb_Hashed SET tb_HashedPassword=inhashedPwd
	WHERE tb_HashedMemberID=inmember_id;

	SET affected_count = affected_count+ROW_COUNT();#計算（累加）影響列數
    
    # affected_row_num 的數目應該是2
    # 因為我們在兩個table 進行了update 動作
    SELECT affected_count INTO affected_row_num;
    #列出更改完的資訊
    SELECT tb_MemberID AS member_id, tb_MemberName AS name, tb_MemberEmail AS email,
              tb_HashedPassword AS password ,tb_Membersalt AS salt ,tb_MemberPhone AS phone ,
              tb_MemberAddress AS address 
	FROM tb_Member,tb_Hashed 
	WHERE tb_HashedMemberID =tb_MemberID AND tb_MemberID=inmember_id;
    


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-11 18:37:06
