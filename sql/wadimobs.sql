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

-- Dumping structure for table dspdb.wadimobs
CREATE TABLE IF NOT EXISTS `wadimobs` (
  `name` varchar(24) DEFAULT NULL,
  `groupid` int(10) unsigned NOT NULL,
  `poolid` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table dspdb.wadimobs: ~38 rows (approximately)
/*!40000 ALTER TABLE `wadimobs` DISABLE KEYS */;
INSERT INTO `wadimobs` (`name`, `groupid`, `poolid`) VALUES
	('Chocoboleech', 9553, 724),
	('Coral_Crab', 9554, 794),
	('Fire_Elemental', 9555, 1341),
	('Geyser_Lizard', 9556, 1508),
	('Giant_Grub', 9557, 1527),
	('Goblin_Ambusher', 9558, 1635),
	('Goblin_Butcher', 9559, 1643),
	('Goblin_Fisher', 9560, 1659),
	('Goblin_Gambler', 9561, 1666),
	('Goblin_Leecher', 9562, 1683),
	('Goblin_Mugger', 9563, 1690),
	('Goblin_Thug', 9564, 1737),
	('Goblin_Tinkerer', 9565, 1738),
	('Goblin_Weaver', 9566, 1744),
	('Hoarder_Hare', 9567, 1965),
	('Land_Crab', 9568, 2372),
	('Rock_Lizard', 9569, 3381),
	('Snipper', 9570, 3682),
	('Steam_Lizard', 9571, 3764),
	('Stickpin', 9572, 3772),
	('Stone_Eater', 9573, 3780),
	('Thread_Leech', 9574, 5133),
	('Treasure_Chest', 9575, 3992),
	('Wadi_Crab', 9576, 4271),
	('Wadi_Hare', 9577, 4272),
	('Wadi_Leech', 9578, 4273),
	('Goblin_Mugger', 10773, 1690),
	('Goblin_Smithy', 10774, 1715),
	('Goblin_Leecher', 10775, 1683),
	('Kuftal_Digger', 10776, 2292),
	('Labyrinth_Leech', 10777, 2310),
	('Wadi_Hare', 10778, 4272),
	('Old_Opo-opo', 10779, 2963),
	('Robber_Crab', 10780, 3375),
	('Labyrinth_Lizard', 10781, 2311),
	('Goblin_Shaman', 10782, 1710),
	('Goblin_Franctireur', 10783, 1662),
	('Goblin_Lengthman', 10784, 1684);
/*!40000 ALTER TABLE `wadimobs` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
