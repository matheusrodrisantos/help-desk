u170967265_help.sql                                                                                 0000644 0000000 0000000 00000026216 13400000674 012135  0                                                                                                    ustar                                                                   0000000 0000000                                                                                                                                                                        -- MySQL dump 10.16  Distrib 10.2.17-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: u170967265_help
-- ------------------------------------------------------
-- Server version	10.2.17-MariaDB

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
-- Table structure for table `chamado`
--

DROP TABLE IF EXISTS `chamado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chamado` (
  `id_chamado` int(11) NOT NULL AUTO_INCREMENT,
  `data` varchar(244) COLLATE utf8_unicode_ci NOT NULL,
  `id_maquina` int(11) NOT NULL,
  `id_usuario_problema` int(11) NOT NULL,
  `id_problema` int(11) NOT NULL,
  `descricao` varchar(650) COLLATE utf8_unicode_ci NOT NULL,
  `id_status` int(11) NOT NULL,
  PRIMARY KEY (`id_chamado`),
  KEY `maquina` (`id_maquina`),
  KEY `problema` (`id_problema`),
  KEY `usuario` (`id_usuario_problema`),
  KEY `status_chamado` (`id_status`),
  CONSTRAINT `maquina` FOREIGN KEY (`id_maquina`) REFERENCES `maquina` (`id_maquina`),
  CONSTRAINT `problema` FOREIGN KEY (`id_problema`) REFERENCES `problema` (`id_problema`),
  CONSTRAINT `status_chamado` FOREIGN KEY (`id_status`) REFERENCES `status_chamado` (`id_status`),
  CONSTRAINT `usuario` FOREIGN KEY (`id_usuario_problema`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chamado`
--

/*!40000 ALTER TABLE `chamado` DISABLE KEYS */;
INSERT INTO `chamado` VALUES (2,'2018-11-22',2,9,3,'safhj asdfjfdhasjfh adsadsfhajhahfdjah fah fdja djfha jafdha fahsd fajsdhfjahsdfjhajs fhjahsf ajsfhasjdf hasjfh ajfh ajsdhfjahf asdjhasjfd jadshfj adhf ajsdhfjash fja hdfja hjfha fhjahsdfja sdfjha ',5),(3,'2018-11-29',2,9,2,'sem internet amigo ',1),(4,'2018-11-21',2,9,2,'cheguei e o pc estava sem internet ',1),(5,'2018-11-29',2,9,3,'outro teste ',1),(6,'',2,20,3,'tela preta',2),(7,'2018-11-22',2,9,4,'Est mostrando uma mensagem de falta de atualização aqui ',1),(8,'2018-11-18',3,9,4,'Teste Iuri salah, dhcp não funciona',1),(14,'2018-11-28',3,9,3,'problema no pc ',1),(15,'2018-11-23',4,16,2,'teste',2),(16,'2018-11-23',3,12,1,'kkkkkkkkkkkkkkkk',2),(17,'2018-11-22',2,9,2,'Deu merda',1);
/*!40000 ALTER TABLE `chamado` ENABLE KEYS */;

--
-- Table structure for table `comentario_chamado`
--

DROP TABLE IF EXISTS `comentario_chamado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentario_chamado` (
  `id_comentario_chamado` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_chamado` int(11) NOT NULL,
  `data` varchar(244) COLLATE utf8_unicode_ci NOT NULL,
  `comentario` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_comentario_chamado`),
  KEY `comentario_chamado` (`id_chamado`),
  KEY `comentario_usario` (`id_usuario`),
  CONSTRAINT `comentario_chamado` FOREIGN KEY (`id_chamado`) REFERENCES `chamado` (`id_chamado`),
  CONSTRAINT `comentario_usario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario_chamado`
--

/*!40000 ALTER TABLE `comentario_chamado` DISABLE KEYS */;
INSERT INTO `comentario_chamado` VALUES (3,9,3,'','teste bd'),(4,9,2,'2018-11-16 16:25','llll'),(6,9,3,'2018-11-16 19:00','mais um coment '),(7,9,5,'2018-11-16 19:03','id 5 enviado pela Bia'),(8,9,5,'2018-11-16 19:03','id 5 enviado pela Bia \r\nteste 2'),(9,9,5,'2018-11-17 01:01','testando mais chamado  5 '),(10,9,5,'2018-11-17 01:06','testando mais chamado  5 '),(11,20,5,'2018-11-17 14:43','testtando chamado 5²'),(12,9,5,'2018-11-17 14:56','mais um teste haha'),(13,9,5,'2018-11-17 14:56','teste 2'),(14,9,2,'2018-11-17 15:11','teste arbia '),(15,9,3,'2018-11-17 15:12','hahaha haah '),(16,9,8,'2018-11-18 12:19','Comentário '),(17,9,8,'2018-11-18 12:21',''),(18,9,8,'2018-11-18 12:26',''),(19,9,8,'2018-11-18 12:26',''),(20,2,8,'2018-11-18 16:43','ola o seu ticket está em analise '),(21,2,2,'2018-11-19 12:49','oaoao'),(22,9,4,'2018-11-19 13:07','Hshhssjshhshbdbs dbdb ddb'),(23,2,6,'2018-11-19 18:58','Arnoldo ! este problema será resolvido em breve! '),(24,16,15,'2018-11-19 19:13','Erick José por favor arruma isso aí cara '),(25,2,15,'2018-11-19 19:14','ja vou arrumar'),(26,12,16,'2018-11-21 19:56','uashuahsuah'),(27,11,16,'2018-11-21 19:57','boa risada'),(28,9,2,'2018-11-22 17:22','Barro');
/*!40000 ALTER TABLE `comentario_chamado` ENABLE KEYS */;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(244) COLLATE utf8_unicode_ci NOT NULL,
  `departamento_descricao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (7,'RH ','para encher o saco        '),(8,'Financeiro','O departamento financeiro é o responsável por lidar com todas as questões relativas as finanças, visando o alcance dos objetivos da empresa.'),(9,'Administração','Responsável pelo planejamento estratégico e pela gestão de pessoal e atividades que fazem o negócio acontecer.'),(10,'Recursos Humanos','        Responsável pela seleção, contratação, treinamento, remuneração, formação sobre higiene e segurança no trabalho e estabelecimento de toda a comunicação relativa aos funcionários da organização.');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;

--
-- Table structure for table `maquina`
--

DROP TABLE IF EXISTS `maquina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maquina` (
  `id_maquina` int(11) NOT NULL AUTO_INCREMENT,
  `endereco` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ipv4` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `mac` varchar(18) COLLATE utf8_unicode_ci NOT NULL,
  `fabricante` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `id_departamento` int(11) NOT NULL,
  PRIMARY KEY (`id_maquina`),
  KEY `id_departamento` (`id_departamento`),
  CONSTRAINT `maquina_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maquina`
--

/*!40000 ALTER TABLE `maquina` DISABLE KEYS */;
INSERT INTO `maquina` VALUES (2,'gh','19217817276','mamaama','dell',10),(3,'VOSTRO 230 ','192.168.1.10','','DELL',8),(4,'XX0989','192.168.1.243','09-89-97-87-90','HP',9);
/*!40000 ALTER TABLE `maquina` ENABLE KEYS */;

--
-- Table structure for table `problema`
--

DROP TABLE IF EXISTS `problema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `problema` (
  `id_problema` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(244) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_problema`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problema`
--

/*!40000 ALTER TABLE `problema` DISABLE KEYS */;
INSERT INTO `problema` VALUES (1,'PC não liga '),(2,'sem internet'),(3,'tela preta PC'),(4,'Problema não classificado');
/*!40000 ALTER TABLE `problema` ENABLE KEYS */;

--
-- Table structure for table `status_chamado`
--

DROP TABLE IF EXISTS `status_chamado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_chamado` (
  `id_status` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(244) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_chamado`
--

/*!40000 ALTER TABLE `status_chamado` DISABLE KEYS */;
INSERT INTO `status_chamado` VALUES (1,'Novo'),(2,'Resolvido'),(3,'Aguardando usuário'),(4,'Aguardando suporte '),(5,'Em andamento');
/*!40000 ALTER TABLE `status_chamado` ENABLE KEYS */;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(244) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nivel_user` int(11) NOT NULL,
  `nome` varchar(244) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'matheus','123mudar',0,'matheus'),(2,'suporte','suporte',1,'Erick Jose'),(3,'problema','problema',1,'Problema'),(4,'suporteq','suporteq',1,'matheus'),(5,'suporteq','suporteqwe',0,'matheus'),(6,'tche','tche',0,'matheus'),(7,'tchetche','tchetche',0,'matheus'),(8,'arb','arb',2,'arb'),(9,'arbia','arbia',2,'arbia'),(10,'teste0','teste0',0,'teste'),(11,'teste1','teste1',1,'matheus'),(12,'teste2','teste2',2,'Carlos'),(13,'arn','arn',1,'Arnoldo'),(14,'fei','fei',2,'feichas'),(15,'carlos','carlos',1,'carlos feichas'),(16,'joaquim','joaquim',2,'joaquim '),(17,'wal','wal',2,'walmir'),(18,'omni','omni',2,'omni'),(19,'bea','bea',-1,'bea'),(20,'arnoldo','arnoldo',2,'arnoldo'),(21,'valdivino','valdivino',2,'Valdivino'),(22,'robsinho','robsinho',2,'Robison Crusoe'),(23,'123mudar','123mudar',2,'matheus');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

--
-- Dumping routines for database 'u170967265_help'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-29 15:11:56
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  