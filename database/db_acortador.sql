-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.33 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para acortador
CREATE DATABASE IF NOT EXISTS `acortador` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `acortador`;

-- Volcando estructura para tabla acortador.acortador
CREATE TABLE IF NOT EXISTS `acortador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(300) NOT NULL,
  `url_short` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla acortador.acortador: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `acortador` DISABLE KEYS */;
INSERT INTO `acortador` (`id`, `url`, `url_short`) VALUES
	(1, 'https://getbootstrap.com/docs/5.0/components/alerts/', 'http://127.0.0.1:5000/short/WAT8eHB'),
	(2, 'https://examenredes.com/descargar-cisco-packet-tracer-version-8-para-pc/', 'http://127.0.0.1:5000/short/bqK5Tai');
/*!40000 ALTER TABLE `acortador` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
