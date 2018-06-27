-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.19-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table dspdb.conquest_system
CREATE TABLE IF NOT EXISTS `conquest_system` (
  `region_id` tinyint(2) NOT NULL DEFAULT '0',
  `region_control` tinyint(2) NOT NULL DEFAULT '0',
  `region_control_prev` tinyint(2) NOT NULL DEFAULT '0',
  `sandoria_influence` int(10) NOT NULL DEFAULT '0',
  `bastok_influence` int(10) NOT NULL DEFAULT '0',
  `windurst_influence` int(10) NOT NULL DEFAULT '0',
  `beastmen_influence` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`region_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table dspdb.conquest_system: 19 rows
/*!40000 ALTER TABLE `conquest_system` DISABLE KEYS */;
INSERT INTO `conquest_system` (`region_id`, `region_control`, `region_control_prev`, `sandoria_influence`, `bastok_influence`, `windurst_influence`, `beastmen_influence`) VALUES
	(0, 3, 1, 0, 9385522, 0, 0),
	(1, 1, 1, 0, 13414775, 0, 0),
	(2, 3, 1, 0, 0, 0, 0),
	(3, 3, 1, -86, 43, 43, 43),
	(4, 3, 0, 33855342, 0, 0, 0),
	(5, 3, 0, 1434690, 1633463, 0, -2310842),
	(6, 3, 0, 0, 1758, 1758, -2633),
	(7, 3, 0, 39, 212, 0, 0),
	(8, 2, 0, 0, 0, 369828, 0),
	(9, 0, 3, 847305, 69096, 0, 7664),
	(10, 3, 3, 476322, 0, 0, 0),
	(11, 3, 3, 12145508, 12145508, -24291016, 12145508),
	(12, 1, 3, 24023, 0, 2331270, 0),
	(13, 3, 3, 39285016, -297574, 0, 0),
	(14, 3, 3, 0, 0, 397174, 638922),
	(15, 3, 3, -7161817, 2124851, 6140709, 0),
	(16, 1, 3, -166141, 2987451, 109447, 109447),
	(17, 3, 3, 271076, -542152, 271076, 271076),
	(18, 0, 3, 3627960, 493409, 0, 0);
/*!40000 ALTER TABLE `conquest_system` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
