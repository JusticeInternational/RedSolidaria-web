
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
DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `service_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_points` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Service_Point_ID` int(11) DEFAULT NULL,
  `Created_Date_Time` date DEFAULT NULL,
  `Last_Modification_Date_Time` date DEFAULT NULL,
  `Service_Point_Name` varchar(255) DEFAULT NULL,
  `Contact_User_Profile_ID` int(11) DEFAULT NULL,
  `Admin_User_Profile_ID` int(11) DEFAULT NULL,
  `Address_Street_1` varchar(255) DEFAULT NULL,
  `Address_Street_2` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `Longitude` float DEFAULT NULL,
  `Latitude` float DEFAULT NULL,
  `Services_Available` varchar(255) DEFAULT NULL,
  `Infrastructure_Type` varchar(255) DEFAULT NULL,
  `Overall_Capacity` int(11) DEFAULT NULL,
  `Overall_Rating` int(11) DEFAULT NULL,
  `Promoted` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_service_points_on_Service_Point_ID` (`Service_Point_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

INSERT INTO `schema_migrations` (version) VALUES
('20190727150957');


