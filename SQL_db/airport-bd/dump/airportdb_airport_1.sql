-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: airportdb
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `airport`
--

DROP TABLE IF EXISTS `airport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airport` (
  `airport_id` smallint NOT NULL AUTO_INCREMENT,
  `iata` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icao` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`airport_id`),
  UNIQUE KEY `icao_unq` (`icao`),
  KEY `name_idx` (`name`),
  KEY `iata_idx` (`iata`)
) ENGINE=InnoDB AUTO_INCREMENT=1352 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airport`
--

LOCK TABLES `airport` WRITE;
/*!40000 ALTER TABLE `airport` DISABLE KEYS */;
INSERT INTO `airport` VALUES (1,'LCG','LECO','A CORUNA'),(2,'N','7Y7','A R S SPORT STRIP'),(3,'TID','DAOB','A. BOUSSOUF AIN BOUCHEKIF'),(4,'DIR','HADR','A.T.D. YILMA INTL'),(5,'QUN','RKNC','A-306'),(6,'N','RKSG','A-511 AAF'),(7,'AAL','EKYT','AALBORG'),(9,'AAR','EKAH','AARHUS'),(10,'N','EKVH','AARS'),(11,'JEG','BGAA','AASIAAT'),(12,'N','EFAA','AAVAHELUKKA'),(13,'JIM','HAJM','ABA SEGUD'),(14,'N','FZJF','ABA'),(15,'ABD','OIAA','ABADAN'),(17,'ABA','UNAA','ABAKAN'),(18,'N','SDLI','ABARE'),(22,'N','LFOI','ABBEVILLE'),(23,'N','EIAB','ABBEYSHRULE'),(24,'YXX','CYXX','ABBOTSFORD'),(25,'EAB','OYBS','ABBS'),(26,'MLG','WIAS','ABDULRACHMAN SALEH AERO'),(27,'AEH','FTTC','ABECHE'),(28,'SNU','MUSC','ABEL SANTA MARIA'),(29,'OGO','DIAU','ABENGOUROU'),(31,'ABR','KABR','ABERDEEN REGL'),(33,'N','KGZS','ABERNATHY'),(34,'N','EGFA','ABERPORTH'),(35,'AHB','OEAB','ABHA'),(38,'ABI','KABI','ABILENE REGL'),(39,'N','DIAO','ABOISSO'),(40,'\\N','FKAG','ABONG-M\'BANG'),(42,'\\N','OEBQ','ABQAIQ'),(43,'CJS','MMCS','ABRAHAM GONZALEZ INTL'),(45,'AUH','OMAA','ABU DHABI INTL'),(46,'ABS','HEBL','ABU SIMBEL'),(47,'\\N','FZFE','ABUMUMBAZI'),(48,'AEU','OIBA','ABUMUSA'),(49,'\\N','SWAB','ABUNA'),(50,'ARA','KARA','ACADIANA REGL'),(51,'\\N','SKAD','ACANDI'),(53,'MFV','KMFV','ACCOMACK CO'),(55,'SRG','WIIS','ACHMAD YANI'),(56,'\\N','EDXA','ACHMER'),(59,'\\N','CEG2','ACME'),(61,'\\N','SNUC','ACU'),(62,'ADT','KADH','ADA MUN'),(64,'\\N','HAAD','ADABA'),(65,'ADK','PADK','ADAK'),(67,'LIT','KLIT','ADAMS'),(68,'ADA','LTAF','ADANA'),(69,'EKX','KEKX','ADDINGTON'),(71,'ADS','KADS','ADDISON'),(73,'ADL','YPAD','ADELAIDE INTL'),(74,'ADE','OYAA','ADEN INTL'),(75,'SOC','WRSQ','ADI SUMARMO WIRYOKUSUMO'),(77,'SLK','KSLK','ADIRONDACK REGL'),(78,'JOG','WIIJ','ADISUTJIPTO'),(79,'ADF','LTCP','ADIYAMAN'),(80,'ADB','LTBJ','ADNAN MENDERES'),(82,'\\N','SNAH','ADUSTINA'),(83,'\\N','LIMA','AERITALIA'),(86,'\\N','EKAE','AERO'),(87,'\\N','SADS','AEROCLUB ARGENTINO'),(93,'QNV','SDNY','AEROCLUB'),(94,'\\N','SNAU','AEROCLUB'),(95,'\\N','SNJO','AEROCLUB'),(96,'\\N','SSAQ','AEROCLUB'),(97,'\\N','SWNV','AERODROMO NACIONAL AVIACAO'),(99,'\\N','YPEC','AEROPELICAN'),(100,'CWB','SBCT','AFONSO PENA'),(101,'AFO','KAFO','AFTON MUN'),(102,'AFY','LTAH','AFYON AB'),(103,'IXA','VEAT','AGARTALA'),(104,'AGX','VOAT','AGATTI'),(106,'\\N','HLAG','AGEDABIA'),(107,'\\N','OIAG','AGHAJARI'),(108,'\\N','CFD2','AGNES LAKE'),(109,'AGR','VIAG','AGRA AB'),(110,'AJI','LTCO','AGRI'),(111,'AGQ','LGAG','AGRINION AB'),(117,'\\N','MMAL','AGUALEGUAS'),(118,'OCV','SKOC','AGUAS CLARAS'),(119,'TMR','DAAT','AGUENAR'),(120,'AGJ','RORA','AGUNI'),(121,'\\N','NTHE','AHE'),(122,'AMD','VAAH','AHMEDABAD'),(123,'\\N','EFAH','AHMOSUO'),(124,'\\N','EDHO','AHRENLOHE'),(125,'AWZ','OIAW','AHWAZ'),(126,'AIK','KAIK','AIKEN MUN'),(127,'\\N','EDGA','AILERTCHEN'),(128,'ANW','KANW','AINSWORTH MUN'),(130,'AEO','GQNA','AIOUN-EL-ATROUSS'),(133,'ILN','KILN','AIRBORNE'),(134,'\\N','CEF4','AIRDRIE'),(135,'\\N','LFDA','AIRE-SUR-L\'ADOUR'),(138,'\\N','KLVN','AIRLAKE'),(144,'AHL','SYAH','AISHALTON'),(145,'\\N','KAIT','AITKIN MUN - KURTZ'),(146,'CMF','LFLB','AIX-LES-BAINS'),(149,'MUK','NCMK','AKATOKA MANAVA'),(150,'\\N','RJOE','AKENO AERO'),(151,'\\N','FZKN','AKETI'),(153,'\\N','LTBT','AKHISAR AB'),(156,'\\N','LTAE','AKINCI AB'),(157,'AXT','RJSK','AKITA'),(158,'AJJ','GQNJ','AKJOUJT'),(159,'LAK','CYKD','AKLAVIK'),(160,'\\N','HSAK','AKOBO'),(161,'AKD','VAAK','AKOLA'),(163,'\\N','DXAK','AKPAKA'),(164,'\\N','KAKR','AKRON FULTON INTL'),(167,'CAK','KCAK','AKRON-CANTON REGL'),(168,'AKT','LCRA','AKROTIRI AB'),(169,'SCO','UATE','AKTAU'),(170,'PVK','LGPZ','AKTION AB'),(171,'AKX','UATT','AKTYUBINSK'),(172,'AKV','CYKO','AKULIVIK'),(173,'AKR','DNAK','AKURE'),(174,'AEY','BIAR','AKUREYRI'),(175,'\\N','OEAH','AL AHSA'),(176,'AAN','OMAL','AL AIN INTL'),(177,'\\N','HEAL','AL ALAMAIN INTL'),(178,'ABT','OEBA','AL BAHA'),(179,'\\N','OMAM','AL DHAFRA'),(180,'AJF','OESK','AL JOUF'),(181,'\\N','OMRS','AL SAQR FIELD'),(184,'ALM','KALM','ALAMOGORDO-WHITE SANDS REGL'),(188,'\\N','EFAL','ALAVUS'),(189,'\\N','LEAB','ALBACETE AB'),(190,'NOV','FNHU','ALBANO MACHADO'),(191,'ALB','KALB','ALBANY INTL'),(195,'ALH','YABA','ALBANY'),(196,'\\N','OYBD','AL-BAYDA'),(197,'ALL','LIMG','ALBENGA'),(198,'\\N','CBS8','ALBERNI VALLEY REGIONAL'),(199,'AEL','KAEL','ALBERT LEA MUN'),(201,'CPE','MMCP','ALBERTO ACUNA ONGAY'),(202,'MRD','SVMD','ALBERTO CARNEVALLI'),(203,'\\N','MUTD','ALBERTO DELGADO'),(204,'SOX','SKSO','ALBERTO LIERAS CAMARGO'),(205,'FEP','KFEP','ALBERTUS'),(206,'\\N','LFKA','ALBERTVILLE'),(208,'\\N','KBVN','ALBION MUN'),(209,'BUK','OYBQ','AL-BOUGH'),(210,'ABQ','KABQ','ALBUQUERQUE INTL SUNPORT'),(211,'ABX','YMAY','ALBURY'),(212,'\\N','LERI','ALCANTARILLA AB'),(213,'EYP','SKYP','ALCARABAN'),(214,'BFS','EGAA','ALDERGROVE'),(216,'ACI','EGJA','ALDERNEY'),(217,'ALQ','SSAL','ALEGRETE'),(218,'CUZ','SPZO','ALEJANDRO VELAZCO ASTETE'),(219,'\\N','EPBA','ALEKSANDROWICE'),(220,'ALP','OSAP','ALEPPO INTL'),(221,'YAL','CYAL','ALERT BAY'),(222,'YLT','CYLT','ALERT'),(223,'ALD','SPAR','ALERTA'),(224,'\\N','LILA','ALESSANDRIA'),(225,'ALJ','FAAB','ALEXANDER BAY'),(226,'ISW','KISW','ALEXANDER FLD SOUTH WOOD CO'),(229,'SAK','BIKR','ALEXANDER'),(230,'ALR','NZLX','ALEXANDRA'),(231,'\\N','LGAX','ALEXANDRIA ARMY'),(232,'ESF','KESF','ALEXANDRIA ESLER REGL'),(233,'ALY','HEAX','ALEXANDRIA INTL'),(234,'AEX','KAEX','ALEXANDRIA INTL'),(237,'\\N','CNS4','ALEXANDRIA'),(238,'JSI','LGSK','ALEXANDROS PAPADIAMANDIS'),(239,'\\N','CAL5','ALEXIS LAKE'),(240,'\\N','SNFE','ALFENAS'),(241,'HUU','SPNC','ALFEREZ DAVID FIGUEROA FERNAN*'),(242,'CLO','SKCL','ALFONSO BONILLA ARAGON INTL'),(243,'VUP','SKVP','ALFONSO LOPEZ'),(244,'LET','SKLT','ALFREDO VASQUEZ COBO'),(245,'\\N','SPAS','ALFREDO VLADIMIR SARA BAVER'),(246,'AAY','OYGD','AL-GHAIDAH'),(248,'AXG','KAXA','ALGONA MUN'),(249,'\\N','OYZM','AL-HAZM'),(250,'ALC','LEAL','ALICANTE'),(251,'ALI','KALI','ALICE INTL'),(252,'ASP','YBAS','ALICE SPRINGS'),(253,'\\N','FEFA','ALINDAO'),(254,'\\N','ESGI','ALINGSAS'),(255,'\\N','FAAN','ALIWAL NORTH'),(257,'\\N','FACO','ALKANTPAN'),(258,'\\N','RPMA','ALLAH VALLEY'),(259,'IXD','VIAL','ALLAHABAD'),(260,'BLM','KBLM','ALLAIRE'),(261,'LHE','OPLA','ALLAMA IQBAL INTL'),(262,'\\N','ESGC','ALLEBERG'),(263,'AGC','KAGC','ALLEGHENY CO'),(264,'\\N','PABI','ALLEN AAF'),(268,'\\N','EDFQ','ALLENDORF/ EDER'),(270,'\\N','EKAL','ALLEROD'),(271,'AIA','KAIA','ALLIANCE MUN'),(273,'\\N','EDBT','ALLSTEDT'),(275,'YTF','CYTF','ALMA'),(276,'AGA','GMAD','AL-MASSIRA'),(277,'ALA','UAAA','ALMATY'),(278,'\\N','HEAZ','ALMAZA AB'),(279,'\\N','SNYA','ALMEIRIM'),(281,'AMJ','SNAR','ALMENARA'),(282,'LEI','LEAM','ALMERIA'),(283,'RCH','SKRH','ALMIRANTE PADILLA'),(284,'\\N','SCDW','ALMIRANTE SCHROEDERS'),(285,'REL','SAVT','ALMIRANTE ZAR'),(286,'VOL','LGBL','ALMIROS AB'),(288,'APN','KAPN','ALPENA CO REGL'),(290,'ABH','YAPH','ALPHA'),(291,'\\N','FSAL','ALPHONSE'),(292,'\\N','PALP','ALPINE AIRSTRIP'),(296,'AFL','SBAT','ALTA FLORESTA'),(299,'ALF','ENAT','ALTA'),(300,'LTI','ZMAT','ALTAI'),(301,'ATM','SBHT','ALTAMIRA'),(302,'\\N','EDSW','ALTDORF-WALLBURG'),(303,'ACH','LSZR','ALTENRHEIN'),(304,'\\N','ETHA','ALTENSTADT ARMY'),(305,'\\N','SWGR','ALTO GARCAS'),(306,'\\N','SDXF','ALTO PARAISO'),(307,'APY','SNAI','ALTO PARNAIBA'),(308,'\\N','CJL6','ALTONA'),(309,'AOO','KAOO','ALTOONA-BLAIR CO'),(310,'\\N','KAAT','ALTURAS MUN'),(311,'LTS','KLTS','ALTUS AFB'),(312,'AXS','KAXS','ALTUS/ QUARTZ MOUNTAIN REGL'),(313,'\\N','OTBH','AL-UDAID'),(314,'MQX','HAMK','ALULA ABA NEGA'),(315,'ALU','HCMA','ALULA'),(316,'\\N','KAVK','ALVA REGL'),(319,'\\N','LPAR','ALVERCA AB'),(321,'\\N','ESUV','ALVSBYN'),(322,'NSK','UOOO','ALYKEL'),(323,'\\N','LILB','ALZATE BRIANZA'),(324,'\\N','LFKG','ALZITONE'),(325,'\\N','RJDA','AMAKUSA'),(326,'\\N','HLAM','AMAL V12'),(327,'\\N','SSAM','AMAMBAI'),(328,'ASJ','RJKA','AMAMI'),(330,'\\N','SBAM','AMAPA'),(331,'\\N','SDAM','AMARAIS'),(332,'AMA','KAMA','AMARILLO INTL'),(333,'WAI','FMNW','AMBALABE'),(334,'\\N','FMSA','AMBALAVAO'),(336,'WAM','FMMZ','AMBATONDRAZAKA'),(338,'\\N','LFXA','AMBERIEU AB'),(339,'\\N','YAMB','AMBERLEY MILITARY'),(340,'AMB','FMNE','AMBILOBE'),(341,'ABL','PAFM','AMBLER'),(342,'ASV','HKAM','AMBOSELI'),(343,'JIB','HDAM','AMBOULI'),(344,'\\N','LSPM','AMBRI'),(345,'AZZ','FNAM','AMBRIZ'),(347,'AHC','KAHC','AMEDEE AAF'),(348,'\\N','EHAL','AMELAND'),(349,'\\N','LIBA','AMENDOLA MIL'),(351,'\\N','SDAI','AMERICANA'),(352,'AHH','KAHH','AMERY MUN'),(353,'AMW','KAMW','AMES MUN'),(355,'\\N','CCQ4','AMHEARST'),(356,'\\N','LGKM','AMIGDHALEON AB'),(357,'XGA','DFOG','AMILCAR CABRAL DE GAOUA'),(358,'SID','GVAC','AMILCAR CABRAL'),(359,'YEY','CYEY','AMOS MUN'),(360,'\\N','EBAM','AMOUGIES'),(361,'AMP','FMSY','AMPANIHY'),(362,'IVA','FMNJ','AMPAPAMENA'),(363,'GOY','VCCG','AMPARAI'),(364,'\\N','EDNA','AMPFING-WALDKRAIBURG'),(365,'SAY','LIQS','AMPUGNANO'),(366,'\\N','LEAP','AMPURIABRAVA'),(367,'ATQ','VIAR','AMRITSAR'),(368,'\\N','ESUA','AMSELE AB'),(369,'AMC','FTTN','AM-TIMAN'),(370,'AAA','NTGA','ANAA'),(371,'AAO','SVAN','ANACO'),(374,'\\N','LTBY','ANADOLU'),(375,'YAA','CAJ4','ANAHIM LAKE'),(376,'AKP','PAKP','ANAKTUVUK PASS'),(377,'HVA','FMNL','ANALALAVA'),(378,'\\N','SBAN','ANAPOLIS AIR BASE'),(379,'APS','SWNS','ANAPOLIS'),(381,'\\N','LFFI','ANCENIS'),(382,'\\N','LFLQ','ANCONE'),(383,'SDN','ENSD','ANDA'),(384,'ANS','SPHY','ANDAHUAYLAS'),(386,'ADO','YAMK','ANDAMOOKA'),(387,'ZWA','FMND','ANDAPA'),(388,'\\N','LFCD','ANDERNOS-LES-BAINS'),(389,'UAM','PGUA','ANDERSEN AFB'),(390,'AID','KAID','ANDERSON MUN-DARLINGTON'),(391,'AND','KAND','ANDERSON REGL'),(393,'\\N','ESMP','ANDERSTORP'),(394,'\\N','SSAN','ANDIRA'),(395,'ANX','ENAN','ANDOYA AB'),(396,'\\N','SDDN','ANDRADINA'),(397,'\\N','FMNK','ANDRAKAKA NAVY'),(398,'PYR','LGAD','ANDRAVIDA AB'),(399,'\\N','CEJ2','ANDREW'),(400,'ADW','KADW','ANDREWS AFB/ NAF'),(403,'\\N','EGSL','ANDREWSFIELD'),(404,'\\N','KRHP','ANDREWS-MURPHY'),(405,'ASD','MYAF','ANDROS TOWN INTL'),(406,'\\N','WBAK','ANDUKI/ SERIA'),(407,'CAS','GMMC','ANFA'),(408,'OUD','GMFO','ANGADS'),(410,'AXX','KAXX','ANGEL FIRE'),(411,'\\N','SUAA','ANGEL S ADAMI INTL'),(412,'AGH','ESDB','ANGELHOLM AB'),(413,'LFK','KLFK','ANGELINA CO'),(414,'YAX','CKB6','ANGLING LAKE'),(415,'ANO','FQAG','ANGOCHE'),(416,'\\N','SBAG','ANGRA DOS REIS'),(417,'\\N','SDAG','ANGRA DOS REIS'),(419,'\\N','EKAT','ANHOLT'),(420,'ANI','PANI','ANIAK'),(422,'\\N','VYAS','ANISAKAN'),(425,'JVA','FMMK','ANKAVANDRA'),(426,'WAK','FMSZ','ANKAZOABO'),(427,'\\N','KIKV','ANKENY REGL'),(428,'\\N','EDCA','ANKLAM'),(429,'ARB','KARB','ANN ARBOR MUN'),(430,'NAI','SYAN','ANNAI'),(431,'\\N','LFLI','ANNEMASSE'),(432,'ANB','KANB','ANNISTON METRO'),(433,'\\N','KANE','ANOKA CO-BLAINE'),(434,'\\N','ETEB','ANSBACH AHP'),(435,'\\N','KAFP','ANSON CO'),(436,'\\N','GAAO','ANSONGO'),(437,'\\N','EDFA','ANSPACH/ TAUNUS'),(438,'AYT','LTAI','ANTALYA'),(441,'\\N','NY28','ANTHONSON'),(442,'ANY','KANY','ANTHONY MUN'),(443,'\\N','LFCG','ANTICHAN'),(444,'\\N','RPVS','ANTIQUE'),(446,'OES','SAVN','ANTOINE DE SAINT EXUPERY'),(448,'SCU','MUCU','ANTONIO MACEO INTL'),(449,'PSO','SKPS','ANTONIO NARINO'),(450,'\\N','TJVQ','ANTONIO RIVERA RODRIGUEZ'),(451,'\\N','SKLC','ANTONIO ROLDAN BETANCOURT'),(454,'\\N','UKKM','ANTONOV'),(455,'ACB','KACB','ANTRIM CO'),(456,'WAQ','FMMG','ANTSALOVA'),(457,'ANM','FMNH','ANTSIRABATO'),(458,'ATJ','FMME','ANTSIRABE'),(459,'WBO','FMSB','ANTSOA'),(460,'ADP','VCCA','ANURADHAPURA AB'),(461,'ANV','PANV','ANVIK'),(462,'AOJ','RJSA','AOMORI'),(463,'AOT','LIMW','AOSTA'),(464,'AAF','KAAF','APALACHICOLA MUN'),(465,'\\N','NTGD','APATAKI'),(466,'APB','SLAP','APOLO'),(468,'\\N','SYAP','APOTERI'),(469,'\\N','CCA7','APPLE RIVER'),(470,'APV','KAPV','APPLE VALLEY'),(471,'\\N','KAQP','APPLETON MUN'),(472,'\\N','SDBP','APT ESTADUAL ARTHUR SIQUEIRA'),(473,'APU','SSAP','APUCARANA'),(474,'AQJ','OJAQ','AQABA INTL'),(475,'\\N','LIAQ','AQUINO'),(476,'\\N','SNAT','ARACATI'),(477,'\\N','SBAU','ARACATUBA'),(478,'\\N','SNUI','ARACUAI'),(480,'ARW','LRAR','ARAD'),(481,'ARS','SWAC','ARAGARCAS'),(482,'\\N','SWGC','ARAGUACEMA'),(483,'\\N','SWAY','ARAGUAIANA'),(484,'AUX','SWGN','ARAGUAINA'),(485,'\\N','SNAG','ARAGUARI'),(486,'\\N','SWAI','ARAGUATINS'),(487,'\\N','OIHR','ARAK'),(488,'ADI','FYAR','ARANDIS'),(489,'RKP','KRKP','ARANSAS CO'),(491,'APQ','SNAL','ARAPIRACA'),(492,'APX','SSOG','ARAPONGAS'),(493,'\\N','SSYA','ARAPOTI'),(494,'RAE','OERR','ARAR'),(495,'ACR','SKAC','ARARACUARA'),(496,'AQA','SBAQ','ARARAQUARA'),(497,'\\N','SDAA','ARARAS'),(498,'ARY','YARA','ARARAT'),(499,'\\N','NTGR','ARATIKA'),(500,'AAX','SBAX','ARAXA'),(501,'GPA','LGRX','ARAXOS AB'),(502,'AMH','HAAM','ARBA MINCH'),(503,'TTB','LIET','ARBATAX'),(504,'\\N','LFLK','ARBENT'),(505,'\\N','ESQO','ARBOGA'),(506,'\\N','LFGD','ARBOIS'),(507,'\\N','CJM6','ARBORFIELD'),(508,'\\N','CJU6','ARBORG'),(509,'\\N','ESUB','ARBRA'),(513,'ACV','KACV','ARCATA'),(516,'\\N','YBAF','ARCHERFIELD'),(517,'\\N','KAOC','ARCO-BUTTE CO'),(518,'\\N','CJA7','ARCOLA'),(520,'\\N','SNAE','ARCOVERDE'),(521,'ARC','PARC','ARCTIC VILLAGE'),(522,'ADU','OITL','ARDABIL'),(524,'ADM','KADM','ARDMORE MUN'),(526,'\\N','NZAR','ARDMORE'),(527,'\\N','SACA','AREA DE MATERIAL'),(528,'RCU','SAOC','AREA DE MATERIAL'),(529,'\\N','KRWN','ARENS'),(530,'\\N','LIQB','AREZZO'),(531,'\\N','LFAJ','ARGENTAN'),(532,'\\N','LFEG','ARGENTON SUR CREUSE'),(535,'GYL','YARG','ARGYLE'),(536,'\\N','DFOY','ARIBINDA'),(537,'KSO','LGKA','ARISTOTELIS'),(539,'BYH','KBYH','ARKANSAS INTL'),(540,'\\N','VOAR','ARKONAM'),(541,'ARN','ESSA','ARLANDA'),(545,'\\N','KAWO','ARLINGTON MUN'),(546,'\\N','KGKY','ARLINGTON MUN'),(547,'\\N','EDVC','ARLOH'),(548,'\\N','DFER','ARLY'),(550,'ARM','YARM','ARMIDALE'),(551,'\\N','LEGA','ARMILLA AB'),(552,'SBK','LFRT','ARMOR'),(553,'MSY','KMSY','ARMSTRONG NEW ORLEANS INTL'),(554,'YYW','CYYW','ARMSTRONG'),(555,'AXV','KAXV','ARMSTRONG'),(556,'LME','LFRM','ARNAGE'),(558,'\\N','EDNB','ARNBRUCK'),(562,'AYX','KAYX','ARNOLD AFB'),(563,'LBE','KLBE','ARNOLD PALMER REGL'),(566,'MOL','ENML','ARO'),(567,'DIE','FMNA','ARRACHART'),(568,'AAI','SWRA','ARRAIAS'),(569,'\\N','SSAE','ARROIO GRANDE'),(571,'ATS','KATS','ARTESIA MUN'),(575,'ATC','MYCA','ARTHUR\'S TOWN'),(576,'ATI','SUAG','ARTIGAS INTL'),(577,'\\N','LFDI','ARTIGUES-DE-LUSSAC'),(578,'SCL','SCEL','ARTURO MERINO BENITEZ INTL'),(579,'VLN','SVVA','ARTURO MICHELENA INTL'),(580,'RUA','HUAR','ARUA'),(581,'\\N','SWNH','ARUANA'),(582,'ARK','HTAR','ARUSHA'),(583,'\\N','NTGU','ARUTUA'),(584,'AVK','ZMAH','ARVAIKHEER'),(585,'YEK','CYEK','ARVIAT'),(586,'AJR','ESNX','ARVIDSJAUR'),(587,'\\N','ESKV','ARVIKA'),(588,'\\N','GMMW','ARWI'),(589,'\\N','OMAR','ARZANAH'),(590,'\\N','RJCA','ASAHIKAWA'),(591,'AKJ','RJEC','ASAHIKAWA'),(592,'\\N','SLAS','ASCENCION DE GUARAYOS'),(593,'\\N','FHAW','ASCENSION AUX AB'),(594,'\\N','EDFC','ASCHAFFENBURG'),(595,'\\N','EDCQ','ASCHERSLEBEN'),(596,'\\N','ESUS','ASELE'),(598,'ASG','NZAS','ASHBURTON'),(599,'\\N','KGEV','ASHE CO'),(600,'\\N','KHBI','ASHEBORO MUN'),(601,'\\N','CJE7','ASHERN'),(602,'AVL','KAVL','ASHEVILLE REGL'),(603,'ASB','UTAA','ASHGABAT'),(604,'\\N','RJFA','ASHIYA AERO'),(607,'\\N','KDWU','ASHLAND-BOYD CO'),(609,'ASY','KASY','ASHLEY MUN'),(611,'\\N','KHZY','ASHTABULA CO'),(612,'\\N','LIDA','ASIAGO'),(613,'ASM','HHAS','ASMARA INTL'),(614,'ASO','HASO','ASOSA'),(615,'ASE','KASE','ASPEN-PITKIN CO/ SARDY'),(616,'\\N','LFNJ','ASPRES SUR BUECH'),(617,'ASA','HHSB','ASSAB INTL'),(618,'\\N','HDAG','ASSA-GUEYLA'),(619,'\\N','CJN4','ASSINIBOIA'),(620,'AIF','SBAS','ASSIS'),(621,'\\N','FSAS','ASSUMPTION'),(622,'TSE','UACC','ASTANA'),(623,'AST','KAST','ASTORIA REGL'),(624,'ASF','URWA','ASTRAKHAN'),(625,'OVD','LEAS','ASTURIAS'),(626,'JTY','LGPL','ASTYPALAIA'),(627,'ASW','HESN','ASWAN INTL'),(628,'ATZ','HEAT','ASYUT INTL'),(629,'\\N','SEIB','ATAHUALPA'),(630,'\\N','SPAY','ATALAYA'),(631,'AXK','OYAT','ATAQ'),(632,'ATR','GQPA','ATAR'),(633,'IST','LTBA','ATATURK'),(634,'ATB','HSAT','ATBARA'),(635,'\\N','CYWM','ATHABASCA'),(637,'AHN','KAHN','ATHENS/ EPPS'),(638,'ATV','FTTI','ATI'),(639,'\\N','SPOY','ATICO'),(640,'YIB','CYIB','ATIKOKAN MUN'),(643,'AKB','PAAK','ATKA'),(644,'PTS','KPTS','ATKINSON MUN'),(647,'ACY','KACY','ATLANTIC CITY INTL'),(648,'AIY','KAIY','ATLANTIC CITY MUN/ BADER'),(649,'AIO','KAIO','ATLANTIC MUN'),(650,'\\N','EDWQ','ATLAS AIRFIELD'),(651,'\\N','CYSQ','ATLIN'),(654,'\\N','KAQR','ATOKA MUN'),(655,'ATK','PATQ','ATQASUK BURNELL MEML'),(656,'ILK','FMMQ','ATSINANANA'),(657,'NJA','RJTA','ATSUGI AERO'),(658,'YAT','CYAT','ATTAWAPISKAT'),(659,'\\N','EDKU','ATTENDORN-FINNENTROP'),(660,'\\N','EDWO','ATTERHEIDE'),(661,'AOU','VLAP','ATTOPEU'),(662,'HIX','NTMN','ATUONA'),(663,'\\N','CAT1','ATWOOD/ COGHLIN'),(664,'\\N','KADT','ATWOOD-RAWLINS CO CITY-CO'),(665,'GUW','UATG','ATYRAU'),(666,'\\N','LFJF','AUBENASSON'),(667,'\\N','FCBU','AUBEVILLE'),(668,'\\N','LFEH','AUBIGNY-SUR-NERE'),(670,'AUN','KAUN','AUBURN MUN'),(671,'LEW','KLEW','AUBURN-LEWISTON MUN'),(672,'AUO','KAUO','AUBURN-OPELIKA-PITTS'),(673,'AKL','NZAA','AUCKLAND INTL'),(675,'\\N','KADU','AUDUBON CO'),(676,'\\N','EDOA','AUERBACH'),(677,'\\N','EDKF','AUF DEM DUMPEL'),(678,'AGB','EDMA','AUGSBURG'),(680,'AGS','KAGS','AUGUSTA REGL AT BUSH'),(681,'AUG','KAUG','AUGUSTA STATE'),(683,'\\N','SGPJ','AUGUSTO ROBERTO FUSTER'),(684,'NAT','SBNT','AUGUSTO SEVERO INTL'),(686,'\\N','AGGA','AUKI'),(687,'YPJ','CYLA','AUPALUK'),(688,'IXU','VAAU','AURANGABAD'),(689,'AUR','LFLW','AURILLAC'),(691,'AUZ','KARR','AURORA MUN'),(692,'\\N','KAUH','AURORA MUN'),(693,'\\N','KUAO','AURORA STATE'),(695,'AUU','YAUR','AURUKUN'),(696,'AUS','KAUS','AUSTIN BERGSTROM INTL'),(697,'AUM','KAUM','AUSTIN MUN'),(698,'GRB','KGRB','AUSTIN STRAUBEL INTL'),(700,'\\N','CJG7','AUSTIN'),(703,'\\N','KAOV','AVA MARTIN MEML'),(704,'\\N','LFGE','AVALLON'),(705,'AVV','YMAV','AVALON'),(706,'WMR','FMNC','AVARATRA'),(707,'WBD','FMNF','AVARATRA'),(708,'QVP','SDRR','AVARE-ARANDU'),(709,'AIT','NCAI','AVARUA'),(710,'SWW','KSWW','AVENGER'),(712,'\\N','ESVA','AVESTA'),(715,'CPC','SAZY','AVIADOR CARLOS CAMPOS (NEUQUEN'),(716,'AVB','LIPA','AVIANO MIL'),(717,'AVO','KAVO','AVON PARK MUN'),(718,'\\N','LFOA','AVORD AB'),(719,'\\N','LFCP','AVY'),(720,'\\N','SYAW','AWARUWAUNAU'),(721,'AWA','HALA','AWASA'),(722,'\\N','HSAW','AWEIL'),(723,'AXU','HAAX','AXUM'),(724,'AYQ','YAYE','AYERS ROCK (CONNELLAN)'),(725,'\\N','LFEX','AZELOT'),(726,'GDQ','HAGN','AZEZO'),(730,'ROR','PTRO','BABELTHUAP/ KOROR'),(731,'\\N','EPBC','BABICE'),(732,'IEG','EPZG','BABIMOST'),(734,'TTE','WAMT','BABULLAH'),(735,'\\N','SNBI','BACABAL'),(736,'\\N','SBBI','BACACHERI'),(737,'BCM','LRBC','BACAU'),(740,'\\N','ESGA','BACKAMO'),(741,'\\N','EDSH','BACKNANG-HEININGEN'),(743,'BCO','HABC','BACO'),(744,'BCD','RPVB','BACOLOD'),(745,'\\N','KAMG','BACON CO'),(746,'\\N','EDOB','BAD BERKA'),(747,'\\N','EDPB','BAD DITZENBACH'),(748,'\\N','EDRF','BAD DURKHEIM'),(749,'\\N','EDXD','BAD ESSEN'),(750,'\\N','EDOF','BAD FRANKENHAUSEN'),(751,'\\N','EDVA','BAD GANDERSHEIM'),(752,'\\N','EDFK','BAD KISSINGEN'),(753,'\\N','EDEB','BAD LANGENSALZA'),(754,'\\N','EDRA','BAD NEUENAHR-AHRWEILER'),(755,'\\N','EDVW','BAD PYRMONT'),(756,'\\N','LSZE','BAD RAGAZ'),(757,'\\N','EDLZ','BAD SASSENDORF'),(758,'\\N','EDRS','BAD SOBERNHEIM-DOMBERG'),(759,'\\N','EDQB','BAD WINDSHEIM'),(760,'\\N','EDNH','BAD WORISHOFEN-NORD'),(761,'FAA','GUFH','BADALA'),(764,'\\N','OIFP','BADR AB'),(765,'\\N','YBAU','BADU ISLAND'),(766,'\\N','FKAF','BAFIA'),(767,'\\N','GABF','BAFOULABE'),(768,'BFX','FKKU','BAFOUSSAM'),(770,'\\N','RPUZ','BAGABAG'),(771,'NYU','VYBG','BAGAN'),(773,'IXB','VEBD','BAGHDOGRA AB'),(775,'BGL','VNBL','BAGLUNG'),(776,'\\N','LFCB','BAGNERES DE LUCHON'),(778,'YBG','CYBG','BAGOTVILLE'),(779,'BAG','RPUB','BAGUIO'),(780,'BHV','OPBW','BAHAWALPUR'),(787,'HUX','MMBT','BAHIAS DE HUATULCO'),(788,'BJR','HABD','BAHIR DAR'),(789,'BAH','OBBI','BAHRAIN INTL'),(790,'\\N','SNBW','BAIAO'),(791,'YBC','CYBC','BAIE-COMEAU'),(793,'\\N','LFFL','BAILLEAU ARMENONVILLE'),(794,'BBR','TFFB','BAILLIF'),(795,'\\N','MYAB','BAIN'),(796,'\\N','LFER','BAINS SUR OUST'),(797,'BSJ','YBNS','BAIRNSDALE'),(798,'HET','ZBHH','BAITA'),(799,'BIT','VNBT','BAITADI'),(800,'\\N','SNBG','BAIXO GUANDU'),(801,'CAN','ZGGG','BAIYUN'),(802,'BJH','VNBG','BAJHANG'),(803,'BJU','VNBR','BAJURA'),(804,'BXE','GOTB','BAKEL'),(805,'BKE','KBKE','BAKER CITY MUN'),(806,'YBK','CYBK','BAKER LAKE'),(807,'IAN','PAIK','BAKER MEML'),(808,'\\N','KBHK','BAKER MUN'),(814,'CEK','USCC','BALANDINO'),(815,'SOB','LHSM','BALATON'),(819,'MLJ','KMLJ','BALDWIN CO'),(821,'\\N','EBKH','BALEN-KEIHEUVEL'),(822,'BQA','RPUR','BALER'),(823,'\\N','LFIP','BALESTAS'),(824,'BQW','YBGO','BALGO HILL'),(825,'DPS','WRRR','BALI INTL'),(827,'KRK','EPKK','BALICE JP II INTL'),(828,'BZI','LTBF','BALIKESIR AB'),(830,'BXH','UAAH','BALKHASH'),(831,'\\N','AGGE','BALLALAE'),(832,'\\N','YBLT','BALLARAT'),(833,'\\N','EDCB','BALLENSTEDT'),(834,'\\N','YLLE','BALLERA'),(835,'BNK','YBNA','BALLINA'),(836,'BBA','SCBA','BALMACEDA'),(837,'BZD','YBRN','BALRANALD'),(838,'BSS','SNBS','BALSAS'),(839,'\\N','LUBL','BALTI'),(840,'BWI','KBWI','BALTIMORE-WASHINGTON INTL'),(841,'BMR','EDWZ','BALTRUM'),(842,'BXR','OIKM','BAM'),(843,'BBY','FEFM','BAMBARI'),(844,'\\N','ETEJ','BAMBERG AAF'),(846,'\\N','FZKB','BAMBILI-DINGILA'),(848,'BPC','FKKV','BAMENDA'),(849,'\\N','ESGD','BAMMELSHED'),(850,'BIN','OABN','BAMYAN'),(851,'\\N','YBMY','BAMYILI'),(852,'OUI','VLHS','BAN HOUEISAY'),(853,'LKL','ENNA','BANAK AB'),(855,'BND','OIKB','BANDAR ABBASS INTL'),(856,'BDH','OIBL','BANDAR LENGEH'),(857,'CMB','VCBI','BANDARANAIKE INTL'),(858,'\\N','SSBR','BANDEIRANTES'),(861,'\\N','GABD','BANDIAGARA'),(862,'BDM','LTBG','BANDIRMA AB'),(865,'FDU','FZBO','BANDUNDU'),(866,'BBU','LRBS','BANEASA'),(867,'BNR','DFOB','BANFORA'),(868,'\\N','VTBT','BANG PRA'),(869,'\\N','FZCI','BANGA'),(870,'BLR','VOBG','BANGALORE'),(871,'\\N','FCPB','BANGAMBA'),(872,'BGU','FEFG','BANGASSOU'),(873,'BKK','VTBD','BANGKOK INTL'),(874,'FKI','FZIC','BANGOKA INTL'),(875,'BGR','KBGR','BANGOR INTL'),(876,'DVO','RPMD','BANGOY INTL'),(877,'\\N','FWBG','BANGULA'),(878,'BNX','LQBK','BANJA LUKA'),(879,'BJL','GBYD','BANJUL INTL'),(880,'\\N','YSBK','BANKSTOWN'),(881,'\\N','VYBM','BANMAW'),(882,'BNG','KBNG','BANNING MUN'),(883,'BNP','OPBN','BANNU'),(884,'BYT','EIBN','BANTRY'),(885,'\\N','FKAB','BANYO'),(886,'SZX','ZGSZ','BAOAN'),(887,'\\N','CPF2','BAR RIVER'),(888,'\\N','KDLL','BARABOO WISCONSIN DELLS'),(889,'MGN','SKMG','BARACOA'),(890,'MAD','LEMD','BARAJAS'),(891,'BKJ','GUOK','BARALANDE'),(892,'SHL','VEBI','BARAPANI'),(893,'QAK','SBBQ','BARBACENA'),(894,'MZI','GAMB','BARBE'),(896,'\\N','LFQB','BARBEREY'),(897,'BCI','YBAR','BARCALDINE'),(898,'BAZ','SWBC','BARCELOS'),(899,'BDU','ENDU','BARDUFOSS AB'),(900,'\\N','VIBY','BAREILLY AB'),(902,'BNS','SVBI','BARINAS'),(903,'BBN','WBGZ','BARIO'),(904,'\\N','SDBY','BARIRI'),(905,'BZL','VGBR','BARISAL'),(906,'\\N','ESKB','BARKARBY'),(907,'YDN','CYDN','BARKER'),(908,'\\N','CAS3','BARKERVILLE'),(909,'BKH','PHBK','BARKING SANDS PMRF'),(910,'PAH','KPAH','BARKLEY REGL'),(911,'BAD','KBAD','BARKSDALE AFB'),(912,'\\N','EGYE','BARKSTON HEATH AB'),(913,'BAX','UNBB','BARNAUL'),(915,'BAF','KBAF','BARNES MUN'),(918,'HYA','KHYA','BARNSTABLE MUN-BOARDMAN/ POLAN'),(919,'BNL','KBNL','BARNWELL CO'),(920,'BRM','SVBM','BARQUISIMETO'),(921,'\\N','MRBC','BARRA DEL COLORADO'),(922,'BDC','SNBC','BARRA DO CORDA'),(923,'BPG','SBBW','BARRA DO GARCAS'),(924,'BRR','EGPR','BARRA'),(925,'BQQ','SNBX','BARRA'),(926,'\\N','SWBQ','BARRACAO QUEIMADO'),(928,'BRA','SNBR','BARREIRAS'),(929,'BRB','SWBI','BARREIRINHA'),(930,'\\N','CEP3','BARRHEAD'),(931,'\\N','CNA3','BARRIE AIRPARK'),(932,'TOQ','SCBE','BARRILES'),(934,'DBN','KDBN','BARRON'),(935,'BWB','YBWX','BARROW I'),(936,'\\N','EDXL','BARSSEL'),(938,'DAG','KDAG','BARSTOW-DAGGETT'),(939,'\\N','LFFR','BAR-SUR-SEINE'),(940,'BTI','PABA','BARTER I LRRS'),(941,'BBH','EDBH','BARTH'),(942,'BVO','KBVO','BARTLESVILLE MUN'),(943,'CAW','SBCP','BARTOLOMEU LISANDRO'),(944,'\\N','EGCB','BARTON'),(945,'BOW','KBOW','BARTOW MUN'),(946,'UUN','ZMBU','BARUUN-URT'),(948,'\\N','RPUF','BASA AB'),(950,'BSU','FZEN','BASANKUSU'),(951,'BSO','RPUO','BASCO'),(952,'SSZ','SBST','BASE AEREA DE SANTOS'),(953,'\\N','SAWB','BASE MARAMBIO'),(954,'\\N','FZBW','BASENGELE'),(955,'\\N','CFK2','BASHAW'),(958,'MLH','LFSB','BASLE-MULHOUSE'),(959,'BAN','FZVR','BASONGO'),(960,'BSR','ORMM','BASRAH INTL'),(962,'\\N','CEN2','BASSANO'),(963,'LTK','OSLK','BASSEL AL-ASSAD INTL'),(964,'PGX','LFBX','BASSILLAC'),(965,'BSG','FGBT','BATA'),(969,'BVX','KBVX','BATESVILLE REGL'),(970,'BRT','YBTI','BATHURST I'),(971,'ZBF','CZBF','BATHURST'),(972,'BHS','YBTH','BATHURST'),(973,'BAL','LTCJ','BATMAN AB'),(974,'BTR','KBTR','BATON ROUGE METRO-RYAN'),(975,'OUR','FKKI','BATOURI'),(976,'BJF','ENBS','BATSFJORD'),(977,'BBM','VDBG','BATTAMBANG'),(978,'RAC','KRAC','BATTEN'),(979,'BTC','VCCB','BATTICALOA AB'),(980,'BAM','KBAM','BATTLE MOUNTAIN'),(981,'\\N','FZVK','BATWA'),(982,'\\N','FZFF','BAU'),(986,'BDE','KBDE','BAUDETTE INTL'),(987,'VLI','NVVV','BAUERFIELD'),(988,'\\N','ETEK','BAUMHOLDER AAF'),(989,'BAU','SBBU','BAURU'),(990,'\\N','EDAB','BAUTZEN'),(991,'\\N','KBHC','BAXLEY MUN'),(992,'WMH','KBPK','BAXTER CO REGL'),(995,'\\N','CCX4','BAY D\'ESPOIR'),(997,'BYN','ZMBH','BAYANKHONGOR'),(999,'BIQ','LFBZ','BAYONNE-ANGLET'),(1001,'BYU','EDQD','BAYREUTH'),(1002,'HPY','KHPY','BAYTOWN'),(1005,'\\N','KFPK','BEACH'),(1006,'BAB','KBAB','BEALE AFB'),(1013,'XBE','CNE3','BEARSKIN LAKE'),(1014,'BIE','KBIE','BEATRICE MUN'),(1015,'BTY','KBTY','BEATTY'),(1017,'BFT','KNBC','BEAUFORT MCAS'),(1018,'\\N','FABW','BEAUFORT WEST'),(1019,'BMT','KBMT','BEAUMONT MUN'),(1020,'\\N','LFHR','BEAUMONT'),(1021,'DRI','KDRI','BEAUREGARD PARISH'),(1022,'\\N','CJK3','BEAUVAL'),(1023,'\\N','EBBE','BEAUVECHAIN AB'),(1024,'BFP','KBVI','BEAVER CO'),(1025,'YXQ','CYXQ','BEAVER CREEK'),(1026,'\\N','KSJX','BEAVER I'),(1031,'\\N','CBA8','BEAVERLEY'),(1032,'\\N','CEU2','BEAVERLODGE'),(1033,'\\N','SDBB','BEBEDOURO'),(1034,'\\N','EGSM','BECCLES'),(1036,'\\N','HLBD','BEDA M3'),(1037,'\\N','KHMZ','BEDFORD CO'),(1039,'BEU','YBIE','BEDOURIE'),(1040,'BEC','KBEC','BEECH FACTORY'),(1041,'\\N','CJH7','BEECHY'),(1043,'\\N','UWKE','BEGISHEVO'),(1044,'\\N','VEBA','BEHALA'),(1045,'BEI','HABE','BEICA'),(1047,'BHN','OYBN','BEIHAN'),(1048,'PEK','ZBAA','BEIJING CAPITAL'),(1049,'\\N','EDNC','BEILNGRIES'),(1050,'BEW','FQBR','BEIRA'),(1051,'BEY','OLBA','BEIRUT INTL'),(1052,'\\N','CFV2','BEISEKER'),(1053,'\\N','LPBJ','BEJA AB'),(1054,'OVA','FMSL','BEKILY'),(1055,'\\N','SSBV','BELA VISTA'),(1056,'\\N','SNFR','BELEM DE SAO FRANCISCO'),(1057,'\\N','HCMN','BELET UEN'),(1058,'BHD','EGAC','BELFAST CITY'),(1059,'\\N','KBST','BELFAST MUN'),(1060,'IXG','VABM','BELGAUM'),(1061,'EGO','UUOB','BELGOROD'),(1062,'BEG','LYBE','BELGRADE'),(1063,'\\N','CCV4','BELL ISLAND'),(1065,'\\N','CAF2','BELLA BELLA (CAMPBELL I)'),(1066,'ZEL','CYJQ','BELLA BELLA (DENNY I)'),(1067,'QBC','CYBD','BELLA COOLA'),(1070,'\\N','KEFC','BELLE FOURCHE MUN'),(1072,'\\N','LFEA','BELLE ILE'),(1073,'\\N','KTZT','BELLE PLAINE MUN'),(1074,'\\N','LFFH','BELLEAU'),(1078,'LIG','LFBL','BELLEGARDE'),(1079,'\\N','KRPB','BELLEVILLE MUN'),(1080,'\\N','LFQF','BELLEVUE'),(1081,'BLI','KBLI','BELLINGHAM INTL'),(1082,'\\N','AGGB','BELLONA'),(1083,'BLX','LIDB','BELLUNO'),(1085,'\\N','LFIF','BELMONT'),(1086,'BVM','SNBL','BELMONTE'),(1087,'BLY','EIBT','BELMULLET'),(1088,'\\N','SNBJ','BELO JARDIM'),(1090,'BRN','LSZB','BELP'),(1091,'\\N','SNEL','BELTERRA'),(1093,'\\N','PABG','BELUGA'),(1095,'BBP','EGHJ','BEMBRIDGE'),(1096,'BJI','KBJI','BEMIDJI-BELTRAMI CO'),(1097,'TLV','LLBG','BEN GURION'),(1098,'BLN','YBLA','BENALLA'),(1099,'BEB','EGPL','BENBECULA'),(1103,'\\N','YBDG','BENDIGO'),(1104,'\\N','SNBT','BENEDITO LEITE'),(1105,'\\N','LKBE','BENESOV'),(1108,'\\N','GMMD','BENI MELLAL'),(1109,'BNC','FZNP','BENI'),(1110,'\\N','FZVO','BENI-DIBELE'),(1111,'\\N','LFQL','BENIFONTAINE'),(1112,'BNI','DNBE','BENIN'),(1113,'BEN','HLLB','BENINA'),(1114,'NVA','SKNV','BENITO SALAS'),(1115,'TUC','SANT','BENJAMIN MATIENZO'),(1116,'\\N','TJCP','BENJAMIN RIVERA NORIEGA'),(1117,'GFL','KGFL','BENNETT MEML'),(1120,'\\N','FZBE','BENO'),(1121,'\\N','FABB','BENONI'),(1122,'BEX','EGUB','BENSON AB'),(1124,'BBB','KBBB','BENSON MUN'),(1125,'\\N','ETHE','BENTLAGE ARMY'),(1130,'\\N','KVBT','BENTONVILLE MUN/ THADEN'),(1131,'\\N','FZEO','BEONGO'),(1132,'BBO','HCMI','BERBERA'),(1133,'BBT','FEFT','BERBERATI'),(1134,'\\N','EDNI','BERCHING'),(1135,'\\N','LFAM','BERCK SUR MER'),(1136,'YBV','CYBV','BERENS RIVER'),(1137,'OTC','FTTL','BERIM'),(1139,'BVG','ENBV','BERLEVAG'),(1140,'BML','KBML','BERLIN MUN'),(1141,'BJO','SLBJ','BERMEJO'),(1142,'UDD','KUDD','BERMUDA DUNES'),(1143,'BDA','TXKF','BERMUDA INTL'),(1148,'BTA','FKKO','BERTOUA'),(1149,'UIZ','KUIZ','BERZ-MACOMB'),(1150,'BPY','FMNQ','BESALAMPY'),(1151,'OGZ','URMO','BESLAN'),(1152,'PES','ULPB','BESOVETS'),(1153,'\\N','KEKY','BESSEMER'),(1154,'\\N','FKAO','BETARE-OYA'),(1156,'\\N','CJM7','BETHANY'),(1158,'BET','PABE','BETHEL'),(1159,'\\N','FABM','BETHLEHEM'),(1160,'BTB','FCOT','BETOU'),(1161,'BTT','PABT','BETTLES'),(1163,'\\N','EDKI','BETZDORF-KIRCHEN'),(1165,'\\N','LFFM','BEUVRON'),(1166,'\\N','EBLE','BEVERLO'),(1167,'BVY','KBVY','BEVERLY MUN'),(1168,'\\N','LSGB','BEX'),(1169,'BWA','VNBW','BHAIRAHAWA'),(1170,'BHR','VNBP','BHARATPUR'),(1171,'BHU','VABV','BHAVNAGAR'),(1172,'BHP','VNBJ','BHOJPUR'),(1173,'BHO','VABP','BHOPAL'),(1174,'BBI','VEBS','BHUBANESHWAR'),(1175,'BHJ','VABJ','BHUJ'),(1176,'\\N','EPBP','BIALA PODLASKA'),(1178,'PIS','LFBI','BIARD'),(1179,'\\N','FZWB','BIBANGA'),(1181,'\\N','EDMB','BIBERACH AN DER RISS'),(1182,'\\N','DNBI','BIDA'),(1185,'SVP','FNKU','BIE'),(1186,'\\N','LSZP','BIEL-KAPPELEN'),(1187,'\\N','EDOI','BIENENFARM'),(1193,'BPI','KBPI','BIG PINEY-MARBLETON'),(1194,'\\N','CJQ9','BIG SAND LAKE'),(1201,'YTL','CYTL','BIG TROUT LAKE'),(1202,'\\N','KFOZ','BIGFORK MUN'),(1203,'\\N','CJF8','BIGGAR'),(1204,'BQH','EGKB','BIGGIN HILL'),(1205,'BIF','KBIF','BIGGS AAF'),(1206,'PAB','VABI','BILASPUR'),(1207,'BIO','LEBB','BILBAO'),(1208,'BIU','BIBD','BILDUDALUR'),(1209,'\\N','FQBI','BILENE'),(1211,'TOP','KTOP','BILLARD MUN'),(1212,'BIL','KBIL','BILLINGS LOGAN INTL'),(1213,'BLL','EKBI','BILLUND'),(1214,'YOS','CYOS','BILLY BISHOP REG\'L'),(1215,'\\N','FTTE','BILTINE'),(1216,'BAK','UBBB','BINA'),(1217,'\\N','ZMBD','BINDER'),(1218,'\\N','FZBQ','BINDJA'),(1219,'\\N','FZGE','BINGA'),(1220,'BGM','KBGM','BINGHAMTON REGL/ LINK'),(1221,'TSN','ZBTJ','BINHAI'),(1222,'\\N','EDSI','BINNINGEN'),(1223,'BTU','WBGB','BINTULU'),(1225,'\\N','GQPT','BIR MOGHREIN'),(1226,'IRO','FEFI','BIRAO'),(1227,'BIR','VNVT','BIRATNAGAR'),(1229,'\\N','CJD3','BIRCH HILLS'),(1230,'\\N','CFM2','BIRCH MOUNTAIN'),(1231,'\\N','YBIR','BIRCHIP'),(1232,'\\N','PABV','BIRCHWOOD'),(1233,'BDI','FSSB','BIRD ISLAND'),(1235,'BVI','YBDV','BIRDSVILLE'),(1236,'TPS','LICT','BIRGI MIL'),(1237,'XBJ','OIMB','BIRJAND'),(1238,'\\N','EGCO','BIRKDALE SANDS'),(1239,'BHM','KBHM','BIRMINGHAM INTL'),(1240,'BHX','EGBB','BIRMINGHAM'),(1241,'\\N','EIBR','BIRR'),(1242,'\\N','LSZF','BIRRFELD'),(1243,'IXR','VERC','BIRSA MUNDA'),(1244,'DUG','KDUG','BISBEE DOUGLAS INTL'),(1246,'BHH','OEBH','BISHA'),(1247,'\\N','OINJ','BISHE KOLA AB'),(1248,'BIY','FABE','BISHO'),(1249,'FNT','KFNT','BISHOP INTL'),(1252,'BIH','KBIH','BISHOP'),(1253,'BPH','RPMF','BISLIG'),(1255,'BIS','KBIS','BISMARCK MUN'),(1257,'BMM','FOOB','BITAM'),(1258,'\\N','SWJP','BITTENCOURT'),(1259,'\\N','CFC2','BITUMOUNT'),(1260,'\\N','ESKX','BJORKVIK AB'),(1261,'SPF','KSPF','BLACK HILLS-ICE'),(1265,'\\N','KBCK','BLACK RIVER FALLS AREA'),(1266,'\\N','KZUN','BLACK ROCK'),(1267,'YBI','CCE4','BLACK TICKLE'),(1268,'BKQ','YBCK','BLACKALL'),(1269,'BBS','EGLK','BLACKBUSHE'),(1271,'BLK','EGNH','BLACKPOOL'),(1272,'BLT','YBTR','BLACKWATER'),(1276,'TLS','LFBO','BLAGNAC'),(1284,'BDG','KBDG','BLANDING MUN'),(1285,'LBC','EDHL','BLANKENSEE'),(1286,'\\N','EDMC','BLAUBEUREN'),(1287,'BID','KBID','BLOCK ISLAND STATE'),(1288,'BFN','FABL','BLOEMFONTEIN'),(1289,'\\N','EDVF','BLOMBERG-BORKHAUSEN'),(1290,'BLO','BIBL','BLONDUOS'),(1291,'YDV','CZTA','BLOODVEIN RIVER'),(1296,'CNK','KCNK','BLOSSER MUN'),(1298,'BLU','KBLU','BLUE CANYON-NYACK'),(1299,'\\N','KSBU','BLUE EARTH MUN'),(1300,'LEX','KLEX','BLUE GRASS'),(1303,'\\N','KMTV','BLUE RIDGE'),(1304,'\\N','CYCP','BLUE RIVER'),(1307,'BEF','MNBL','BLUEFIELDS'),(1310,'\\N','EDSL','BLUMBERG'),(1311,'BNU','SSBL','BLUMENAU'),(1312,'BLH','KBLH','BLYTHE'),(1313,'HKA','KHKA','BLYTHEVILLE MUN'),(1314,'KBS','GFBO','BO'),(1315,'BVB','SBBV','BOA VISTA INTL'),(1317,'BOY','DFOO','BOBO-DIOULASSO'),(1320,'BCT','KBCT','BOCA RATON'),(1321,'\\N','SNBK','BOCAIUVA'),(1322,'\\N','DIBC','BOCANDA'),(1324,'BOC','MPBO','BOCAS DEL TORO INTL'),(1326,'\\N','LICP','BOCCADIFALCO MIL'),(1330,'\\N','EGLA','BODMIN'),(1331,'BOO','ENBO','BODO'),(1332,'BJV','LTFE','BODRUM'),(1333,'BFI','KBFI','BOEING FIELD/ KING CO INTL'),(1334,'BNB','FZGN','BOENDE'),(1336,'\\N','DFEB','BOGANDE'),(1340,'\\N','KNJM','BOGUE MCALF'),(1341,'BGH','GQNE','BOGUE'),(1342,'\\N','EDOE','BOHLEN'),(1343,'\\N','LKBO','BOHUNOVICE'),(1344,'\\N','YBOI','BOIGU'),(1345,'ASH','KASH','BOIRE'),(1347,'BOI','KBOI','BOISE AIR TERMINAL/ GOWEN'),(1349,'BJB','OIMN','BOJNORD'),(1350,'\\N','FZFG','BOKADA'),(1351,'\\N','ESFA','BOKEBERG');
/*!40000 ALTER TABLE `airport` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-12 14:04:54
