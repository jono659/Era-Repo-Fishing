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

-- Dumping structure for table dspdb.instance_list
CREATE TABLE IF NOT EXISTS `instance_list` (
  `instanceid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `instance_name` varchar(35) NOT NULL DEFAULT '',
  `entrance_zone` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time_limit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `start_x` float(7,3) NOT NULL DEFAULT '0.000',
  `start_y` float(7,3) NOT NULL DEFAULT '0.000',
  `start_z` float(7,3) NOT NULL DEFAULT '0.000',
  `start_rot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `music_day` tinyint(3) NOT NULL DEFAULT '-1',
  `music_night` tinyint(3) NOT NULL DEFAULT '-1',
  `battlesolo` tinyint(3) NOT NULL DEFAULT '-1',
  `battlemulti` tinyint(3) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`instanceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table dspdb.instance_list: ~58 rows (approximately)
/*!40000 ALTER TABLE `instance_list` DISABLE KEYS */;
INSERT INTO `instance_list` (`instanceid`, `instance_name`, `entrance_zone`, `time_limit`, `start_x`, `start_y`, `start_z`, `start_rot`, `music_day`, `music_night`, `battlesolo`, `battlemulti`) VALUES
	(0, 'TEST', 0, 0, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(1, 'leujaoam_cleansing', 79, 30, 280.000, -7.500, 35.000, 195, -1, -1, -1, -1),
	(2, 'orichalcum_survey', 79, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(3, 'escort_professor_chanoix', 79, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(4, 'shanarha_grass_conservation', 79, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(5, 'counting_sheep', 79, 15, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(6, 'supplies_recovery', 79, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(7, 'azure_experiments', 79, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(8, 'imperial_code', 79, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(9, 'red_versus_blue', 79, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(10, 'bloody_rondo', 79, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(11, 'imperial_agent_rescue', 52, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(12, 'preemptive_strike', 52, 30, -60.350, -5.000, 27.670, 46, -1, -1, -1, -1),
	(13, 'sagelord_elimination', 52, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(14, 'breaking_morale', 52, 15, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(15, 'the_double_agent', 52, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(16, 'imperial_treasure_retrieval', 52, 15, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(17, 'blitzkrieg', 52, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(18, 'marids_in_the_mist', 52, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(19, 'azure_ailments', 52, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(20, 'the_susanoo_shuffle', 52, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(21, 'excavation_duty', 61, 30, 124.999, -39.309, 19.999, 0, -1, -1, -1, -1),
	(22, 'lebros_supplies', 61, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(23, 'troll_fugitives', 61, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(24, 'evade_and_escape', 61, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(25, 'siegemaster_assassination', 61, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(26, 'apkallu_breeding', 61, 15, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(27, 'wamoura_farm_raid', 61, 30, 540.977, -39.976, 220.919, 128, -1, -1, -1, -1),
	(28, 'egg_conservation', 61, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(29, 'operation:black_pearl', 61, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(30, 'better_than_one', 61, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(31, 'seagull_grounded', 79, 30, -350.000, -15.245, 380.000, 0, -1, -1, -1, -1),
	(32, 'requiem', 79, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(33, 'saving_private_ryaaf', 79, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(34, 'shooting_down_the_baron', 79, 15, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(35, 'building_bridges', 79, 15, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(36, 'stop_the_bloodshed', 79, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(37, 'defuse_the_threat', 79, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(38, 'operation:snake_eyes', 79, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(39, 'wake_the_puppet', 79, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(40, 'the_price_is_right', 79, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(41, 'golden_salvage', 54, 30, 386.000, -12.000, 17.000, 155, -1, -1, -1, -1),
	(42, 'lamia_no_13', 54, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(43, 'extermination', 54, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(44, 'demolition_duty', 54, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(45, 'searat_salvation', 54, 15, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(46, 'apkallu_seizure', 54, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(47, 'lost_and_found', 54, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(48, 'deserter', 54, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(49, 'desperately_seeking_cephalopods', 54, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(50, 'bellerophon\'s_bliss', 54, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(51, 'nyzul_isle_investigation', 72, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(52, 'nyzul_isle_uncharted_survey', 72, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(53, 'the_black_coffin', 54, 30, 0.000, -22.000, 24.000, 64, -1, -1, -1, -1),
	(54, 'against_all_odds', 54, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(55, 'scouting_the_ashu_talif', 54, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(56, 'royal_painter_escort', 54, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1),
	(57, 'targeting_the_captain', 54, 30, 0.000, 0.000, 0.000, 0, -1, -1, -1, -1);
/*!40000 ALTER TABLE `instance_list` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
