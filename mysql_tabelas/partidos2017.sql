-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: trabalho
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.32-MariaDB

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
-- Table structure for table `partidos2017`
--

DROP TABLE IF EXISTS `partidos2017`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partidos2017` (
  `idPartido` bigint(20) NOT NULL,
  `SiglaPardido` varchar(10) DEFAULT NULL,
  `NomePartido` varchar(50) DEFAULT NULL,
  `SituacaoPartido` varchar(10) DEFAULT NULL,
  `Membros` int(11) DEFAULT NULL,
  `Lider` varchar(50) DEFAULT NULL,
  `urlLogo` varchar(100) DEFAULT NULL,
  `NumFiliados` bigint(20) DEFAULT NULL,
  `DataCriacao` date DEFAULT NULL,
  `EspectroPolitico` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idPartido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidos2017`
--

LOCK TABLES `partidos2017` WRITE;
/*!40000 ALTER TABLE `partidos2017` DISABLE KEYS */;
INSERT INTO `partidos2017` VALUES (36761,'PEN','Partido Ecológico Nacional','Ativo',5,'JUNIOR MARRECA','http://www.camara.leg.br/internet/Deputado/img/partidos/PEN.gif',0,'0000-00-00',''),(36762,'PPL','Partido Pátria Livre','Ativo',1,'ULDURICO JUNIOR','http://www.camara.leg.br/internet/Deputado/img/partidos/PPL.gif',39344,'2021-04-09','centro-esquerda'),(36763,'PROS','Partido Republicano da Ordem Social','Ativo',11,'FELIPE BORNIER','http://www.camara.leg.br/internet/Deputado/img/partidos/PROS.gif',92385,'2001-04-10','centro-direita'),(36765,'SD','Solidariedade','Ativo',11,'WLADIMIR COSTA','http://www.camara.leg.br/internet/Deputado/img/partidos/SD.gif',187604,'2025-10-12','centro-esquerda'),(36769,'DEM','Democratas','Ativo',44,'RODRIGO GARCIA','http://www.camara.leg.br/internet/Deputado/img/partidos/DEM.gif',1094797,'0000-00-00','centro, centro-direita'),(36779,'PCdoB','Partido Comunista do Brasil','Ativo',10,'ORLANDO SILVA','http://www.camara.leg.br/internet/Deputado/img/partidos/PCdoB.gif',393388,'2025-03-22','esquerda, extrema-esquerda'),(36786,'PDT','Partido Democrático Trabalhista','Ativo',20,'WEVERTON ROCHA','http://www.camara.leg.br/internet/Deputado/img/partidos/PDT.gif',123890,'0000-00-00','centro-esquerda, centro'),(36793,'PHS','Partido Humanista da Solidariedade','Ativo',4,'MARCELO ARO','http://www.camara.leg.br/internet/Deputado/img/partidos/PHS.gif',210380,'0000-00-00','centro-direita'),(36800,'PMDB','Partido do Movimento Democrático Brasileiro','Ativo',50,'LELO COIMBRA','http://www.camara.leg.br/internet/Deputado/img/partidos/PMDB.gif',2400703,'0000-00-00','centro'),(36801,'PMN','Partido da Mobilização Nacional','Ativo',0,'null','http://www.camara.leg.br/internet/Deputado/img/partidos/PMN.gif',222457,'0000-00-00',''),(36809,'PP','Partido Progressista','Ativo',49,'ARTHUR LIRA','http://www.camara.leg.br/internet/Deputado/img/partidos/PP.gif',1437953,'0000-00-00','direita'),(36813,'PPS','Partido Popular Socialista','Ativo',8,'ALEX MANENTE','http://www.camara.leg.br/internet/Deputado/img/partidos/PPS.gif',481457,'0000-00-00','centro-esquerda'),(36814,'PR','Partido da República','Ativo',41,'JOSÉ ROCHA','http://www.camara.leg.br/internet/Deputado/img/partidos/PR.gif',798474,'2026-10-06','centro-direita'),(36815,'PRB','Partido Republicano Brasileiro','Ativo',20,'CELSO RUSSOMANNO','http://www.camara.leg.br/internet/Deputado/img/partidos/PRB.gif',392990,'2016-12-13','centro, direita'),(36824,'PRP','Partido Republicano Progressista','Ativo',0,'NIVALDO ALBUQUERQUE','http://www.camara.leg.br/internet/Deputado/img/partidos/PRP.gif',249723,'0000-00-00','centro-direita'),(36829,'PRTB','Partido Renovador Trabalhista Brasileiro','Ativo',0,'null','http://www.camara.leg.br/internet/Deputado/img/partidos/PRTB.gif',136124,'0000-00-00','direita'),(36832,'PSB','Partido Socialista Brasileiro','Ativo',26,'JÚLIO DELGADO','http://www.camara.leg.br/internet/Deputado/img/partidos/PSB.gif',649732,'0000-00-00','centro-esquerda, centro'),(36833,'PSC','Partido Social Cristão','Ativo',9,'GILBERTO NASCIMENTO','http://www.camara.leg.br/internet/Deputado/img/partidos/PSC.gif',422076,'0000-00-00','centro-direita, direita'),(36834,'PSD','Partido Social Democrático','Ativo',38,'DOMINGOS NETO','http://www.camara.leg.br/internet/Deputado/img/partidos/PSD.gif',321661,'0000-00-00','centro, esquerda'),(36835,'PSDB','Partido da Social Democracia Brasileira','Ativo',49,'NILSON LEITÃO','http://www.camara.leg.br/internet/Deputado/img/partidos/PSDB.gif',1450586,'0000-00-00','centro, centro-esquerda, centro-direita'),(36836,'PSDC','Partido Social Democrata Cristão','Ativo',0,'null','http://www.camara.leg.br/internet/Deputado/img/partidos/PSDC.gif',0,'0000-00-00',''),(36837,'PSL','Partido Social Liberal','Ativo',8,'DELEGADO FRANCISCHINI','http://www.camara.leg.br/internet/Deputado/img/partidos/PSL.gif',228171,'0000-00-00','direita, extrema-direita'),(36839,'PSOL','Partido Socialismo e Liberdade','Ativo',6,'CHICO ALENCAR','http://www.camara.leg.br/internet/Deputado/img/partidos/PSOL.gif',146215,'2007-07-04','esquerda, extrema-esquerda'),(36844,'PT','Partido dos Trabalhadores','Ativo',60,'JOSÉ GUIMARÃES','http://www.camara.leg.br/internet/Deputado/img/partidos/PT.gif',1582646,'0000-00-00','centro-esquerda, centro'),(36845,'PTB','Partido Trabalhista Brasileiro','Ativo',15,'JOVAIR ARANTES','http://www.camara.leg.br/internet/Deputado/img/partidos/PTB.gif',0,'0000-00-00',''),(36846,'PTC','Partido Trabalhista Cristão','Ativo',0,'null','http://www.camara.leg.br/internet/Deputado/img/partidos/PTC.gif',197902,'0000-00-00','centro-direita'),(36847,'PTdoB','Partido Trabalhista do Brasil','Extinto',0,'null','http://www.camara.leg.br/internet/Deputado/img/partidos/PTdoB.gif',1193404,'0000-00-00','centro'),(36848,'PTN','Partido Trabalhista Nacional','Extinto',0,'null','http://www.camara.leg.br/internet/Deputado/img/partidos/PTN.gif',0,'0000-00-00',''),(36851,'PV','Partido Verde','Ativo',4,'LEANDRE','http://www.camara.leg.br/internet/Deputado/img/partidos/PV.gif',376965,'0000-00-00','centro'),(36852,'S.PART.','Sem Partido','null',0,'null','http://www.camara.leg.br/internet/Deputado/img/partidos/S.PART..gif',0,'0000-00-00',''),(36886,'REDE','Rede Sustentabilidade','Ativo',2,'JOÃO DERLY','http://www.camara.leg.br/internet/Deputado/img/partidos/REDE.gif',19061,'2016-02-13','centro-esquerda'),(36887,'PMB','Partido da Mulher Brasileira','Ativo',0,'null','http://www.camara.leg.br/internet/Deputado/img/partidos/PMB.gif',38417,'2013-09-08','centro-esquerda'),(36896,'PODE','Podemos','Ativo',17,'BACELAR','http://www.camara.leg.br/internet/Deputado/img/partidos/PODE.gif',161577,'0000-00-00','centro-direita'),(36898,'AVANTE','Avante','Ativo',5,'LUIS TIBÉ','http://www.camara.leg.br/internet/Deputado/img/partidos/AVANTE.gif',185128,'0000-00-00','centro');
/*!40000 ALTER TABLE `partidos2017` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-15 11:24:16
