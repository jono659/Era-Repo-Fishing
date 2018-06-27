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

-- Dumping structure for table dspdb.bcnm_info
CREATE TABLE IF NOT EXISTS `bcnm_info` (
  `bcnmId` smallint(5) unsigned NOT NULL,
  `zoneId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL,
  `fastestName` varchar(15) DEFAULT 'Not Set!',
  `fastestPartySize` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `fastestTime` int(10) unsigned DEFAULT '1',
  `timeLimit` smallint(5) unsigned NOT NULL DEFAULT '1800',
  `levelCap` smallint(5) unsigned NOT NULL DEFAULT '75',
  `partySize` smallint(5) unsigned NOT NULL DEFAULT '6',
  `lootDropId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rules` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bcnmId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=56;

-- Dumping data for table dspdb.bcnm_info: 256 rows
/*!40000 ALTER TABLE `bcnm_info` DISABLE KEYS */;
INSERT INTO `bcnm_info` (`bcnmId`, `zoneId`, `name`, `fastestName`, `fastestPartySize`, `fastestTime`, `timeLimit`, `levelCap`, `partySize`, `lootDropId`, `rules`) VALUES
	(0, 139, 'rank_2_mission', 'KnowOne', 1, 18, 1800, 25, 6, 0, 5),
	(1, 139, 'tails_of_woe', 'KnowOne', 1, 18, 1800, 40, 6, 0, 15),
	(2, 139, 'dismemberment_brigade', 'KnowOne', 1, 18, 1800, 60, 6, 0, 15),
	(3, 139, 'the_secret_weapon', 'KnowOne', 1, 18, 1800, 99, 6, 0, 5),
	(4, 139, 'hostile_herbivores', 'KnowOne', 1, 18, 1800, 50, 6, 14, 15),
	(5, 139, 'shattering_stars', 'KnowOne', 1, 18, 600, 99, 1, 0, 22),
	(6, 139, 'shattering_stars', 'KnowOne', 1, 18, 600, 99, 1, 0, 22),
	(7, 139, 'shattering_stars', 'KnowOne', 1, 18, 600, 99, 1, 0, 22),
	(8, 139, 'carapace_combatants', 'KnowOne', 1, 18, 900, 30, 3, 0, 15),
	(9, 139, 'shooting_fish', 'KnowOne', 1, 18, 900, 20, 3, 0, 15),
	(10, 139, 'dropping_like_flies', 'KnowOne', 1, 18, 1800, 30, 6, 12, 15),
	(11, 139, 'horns_of_war', 'KnowOne', 1, 18, 1800, 0, 18, 11, 15),
	(12, 139, 'under_observation', 'KnowOne', 1, 18, 900, 40, 3, 16, 15),
	(13, 139, 'eye_of_the_tiger', 'KnowOne', 1, 18, 900, 50, 3, 0, 15),
	(14, 139, 'shots_in_the_dark', 'KnowOne', 1, 18, 900, 60, 3, 0, 15),
	(15, 139, 'double_dragonian', 'KnowOne', 1, 18, 1800, 0, 6, 15, 15),
	(16, 139, 'todays_horoscope', 'KnowOne', 1, 18, 1800, 0, 6, 0, 15),
	(17, 139, 'contaminated_colosseum', 'KnowOne', 1, 18, 1800, 0, 6, 17, 15),
	(18, 139, 'kindergarten_cap', 'KnowOne', 1, 18, 900, 0, 3, 0, 15),
	(19, 139, 'last_orc-shunned_hero', 'KnowOne', 1, 18, 1800, 0, 6, 0, 15),
	(20, 139, 'beyond_infinity', 'KnowOne', 1, 18, 600, 0, 6, 0, 6),
	(32, 140, 'save_the_children', 'KnowOne', 1, 18, 600, 0, 6, 0, 5),
	(33, 140, 'holy_crest', 'KnowOne', 1, 18, 600, 75, 6, 0, 7),
	(34, 140, 'wings_of_fury', 'KnowOne', 1, 18, 900, 20, 3, 34, 15),
	(35, 140, 'petrifying_pair', 'KnowOne', 1, 18, 900, 30, 3, 35, 15),
	(36, 140, 'toadal_recall', 'KnowOne', 1, 18, 1800, 30, 6, 36, 15),
	(37, 140, 'mirror_mirror', 'KnowOne', 1, 18, 900, 40, 3, 0, 7),
	(64, 144, 'rank_2_mission', 'KnowOne', 1, 18, 1800, 25, 6, 0, 5),
	(65, 144, 'worms_turn', 'KnowOne', 1, 18, 1800, 40, 6, 0, 15),
	(66, 144, 'grimshell_shocktroopers', 'KnowOne', 1, 18, 1800, 60, 6, 0, 15),
	(67, 144, 'on_my_way', 'KnowOne', 1, 18, 1800, 99, 6, 0, 5),
	(68, 144, 'thief_in_norg', 'KnowOne', 1, 18, 1800, 75, 6, 0, 7),
	(69, 144, '3_2_1', 'KnowOne', 1, 18, 1800, 50, 6, 0, 15),
	(70, 144, 'shattering_stars', 'KnowOne', 1, 18, 600, 99, 1, 0, 22),
	(71, 144, 'shattering_stars', 'KnowOne', 1, 18, 600, 99, 1, 0, 22),
	(72, 144, 'shattering_stars', 'KnowOne', 1, 18, 600, 99, 1, 0, 22),
	(73, 144, 'birds_of_a_feather', 'KnowOne', 1, 18, 900, 30, 3, 73, 15),
	(74, 144, 'crustacean_conundrum', 'KnowOne', 1, 18, 900, 20, 3, 0, 15),
	(75, 144, 'grove_guardians', 'KnowOne', 1, 18, 1800, 30, 6, 0, 15),
	(76, 144, 'hills_are_alive', 'KnowOne', 1, 18, 1800, 0, 18, 76, 15),
	(77, 144, 'royal_jelly', 'KnowOne', 1, 18, 900, 40, 3, 0, 15),
	(78, 144, 'final_bout', 'KnowOne', 1, 18, 180, 50, 3, 0, 15),
	(79, 144, 'up_in_arms', 'KnowOne', 1, 18, 900, 60, 3, 79, 15),
	(80, 144, 'copycat', 'KnowOne', 1, 18, 1800, 0, 6, 0, 15),
	(81, 144, 'operation_desert_swarm', 'KnowOne', 1, 18, 1800, 0, 6, 81, 15),
	(82, 144, 'prehistoric_pigeons', 'KnowOne', 1, 18, 1800, 0, 6, 82, 15),
	(83, 144, 'palborough_project', 'KnowOne', 1, 18, 900, 0, 3, 0, 15),
	(84, 144, 'shell_shocked', 'KnowOne', 1, 18, 1800, 0, 6, 0, 15),
	(85, 144, 'beyond_infinity', 'KnowOne', 1, 18, 600, 0, 6, 0, 6),
	(96, 146, 'rank_2_mission', 'KnowOne', 1, 18, 1800, 25, 6, 0, 5),
	(97, 146, 'steamed_sprouts', 'KnowOne', 1, 18, 1800, 40, 6, 0, 15),
	(98, 146, 'divine_punishers', 'KnowOne', 1, 18, 1800, 60, 6, 0, 15),
	(99, 146, 'saintly_invitation', 'KnowOne', 1, 18, 1800, 99, 6, 0, 5),
	(100, 146, 'treasures_and_tribulations', 'KnowOne', 1, 18, 1800, 50, 6, 100, 15),
	(101, 146, 'shattering_stars', 'KnowOne', 1, 18, 600, 99, 1, 0, 22),
	(102, 146, 'shattering_stars', 'KnowOne', 1, 18, 600, 99, 1, 0, 22),
	(103, 146, 'shattering_stars', 'KnowOne', 1, 18, 600, 99, 1, 0, 22),
	(104, 146, 'creeping_doom', 'KnowOne', 1, 18, 900, 30, 3, 104, 15),
	(105, 146, 'charming_trio', 'KnowOne', 1, 18, 900, 20, 3, 105, 15),
	(106, 146, 'harem_scarem', 'KnowOne', 1, 18, 1800, 30, 6, 0, 15),
	(107, 146, 'early_bird_catches_the_wyrm', 'KnowOne', 1, 18, 1800, 0, 18, 107, 15),
	(108, 146, 'royal_succession', 'KnowOne', 1, 18, 900, 40, 3, 0, 15),
	(109, 146, 'rapid_raptors', 'KnowOne', 1, 18, 900, 50, 3, 0, 15),
	(110, 146, 'wild_wild_whiskers', 'KnowOne', 1, 18, 900, 60, 3, 0, 15),
	(111, 146, 'seasons_greetings', 'KnowOne', 1, 18, 1800, 0, 6, 0, 15),
	(112, 146, 'royale_ramble', 'KnowOne', 1, 18, 1800, 0, 6, 0, 15),
	(113, 146, 'moa_constrictors', 'KnowOne', 1, 18, 1800, 0, 6, 0, 15),
	(114, 146, 'v_formation', 'KnowOne', 1, 18, 900, 0, 3, 0, 15),
	(115, 146, 'avian_apostates', 'KnowOne', 1, 18, 1800, 0, 6, 0, 15),
	(116, 146, 'beyond_infinity', 'KnowOne', 1, 18, 600, 0, 6, 0, 6),
	(128, 163, 'temple_of_uggalepih', 'KnowOne', 1, 18, 1800, 99, 6, 0, 5),
	(129, 163, 'jungle_boogymen', 'KnowOne', 1, 18, 1800, 60, 6, 10, 15),
	(130, 163, 'amphibian_assault', 'KnowOne', 1, 18, 1800, 60, 6, 156, 15),
	(131, 163, 'project_shantottofication', 'KnowOne', 1, 18, 1800, 99, 6, 0, 5),
	(132, 163, 'whom_wilt_thou_call', 'KnowOne', 1, 18, 1800, 0, 6, 0, 15),
	(160, 165, 'shadow_lord_battle', 'KnowOne', 1, 18, 1800, 90, 6, 0, 5),
	(161, 165, 'where_two_paths_converge', 'KnowOne', 1, 18, 1800, 90, 6, 0, 5),
	(162, 165, 'kindred_spirits', 'KnowOne', 1, 18, 1800, 90, 6, 0, 15),
	(163, 165, 'survival_of_the_wisest', 'KnowOne', 1, 18, 600, 90, 1, 0, 6),
	(164, 165, 'smash_a_malevolent_menace', 'KnowOne', 1, 18, 1800, 90, 6, 0, 5),
	(192, 168, 'through_the_quicksand_caves', 'KnowOne', 1, 18, 1800, 99, 6, 0, 5),
	(193, 168, 'legion_xi_comitatensis', 'KnowOne', 1, 18, 1800, 60, 6, 0, 15),
	(194, 168, 'shattering_stars', 'KnowOne', 1, 18, 600, 99, 1, 0, 22),
	(195, 168, 'shattering_stars', 'KnowOne', 1, 18, 600, 99, 1, 0, 22),
	(196, 168, 'shattering_stars', 'KnowOne', 1, 18, 600, 99, 1, 0, 22),
	(197, 168, 'cactuar_suave', 'KnowOne', 1, 18, 1800, 0, 6, 0, 15),
	(198, 168, 'eye_of_the_storm', 'KnowOne', 1, 18, 1800, 0, 6, 0, 15),
	(199, 168, 'scarlet_king', 'KnowOne', 1, 18, 1800, 0, 6, 0, 15),
	(200, 168, 'cat_burglar_bares_fangs', 'KnowOne', 1, 18, 1800, 99, 6, 0, 5),
	(201, 168, 'dragon_scales', 'KnowOne', 1, 18, 600, 99, 1, 0, 6),
	(224, 170, 'moonlit_path', 'KnowOne', 1, 18, 1800, 80, 6, 0, 5),
	(225, 170, 'moon_reading', 'KnowOne', 1, 18, 1800, 80, 6, 0, 5),
	(226, 170, 'waking_the_beast_fullmoon', 'KnowOne', 1, 18, 1800, 0, 18, 0, 5),
	(227, 170, 'battaru_royale', 'KnowOne', 1, 18, 1800, 80, 6, 0, 5),
	(256, 179, 'return_to_delkfutts_tower', 'KnowOne', 1, 18, 1800, 75, 6, 0, 5),
	(257, 179, 'indomitable_triumvirate_vs3', 'KnowOne', 1, 18, 900, 60, 6, 0, 4),
	(258, 179, 'dauntless_duo_vs2', 'KnowOne', 1, 18, 900, 60, 6, 0, 4),
	(259, 179, 'solitary_demolisher_vs1', 'KnowOne', 1, 18, 900, 60, 6, 0, 4),
	(260, 179, 'heroines_combat', 'KnowOne', 1, 18, 900, 60, 6, 0, 4),
	(261, 179, 'mercenary_camp', 'KnowOne', 1, 18, 900, 60, 6, 0, 4),
	(262, 179, 'ode_of_life_bestowing', 'KnowOne', 1, 18, 1800, 75, 6, 0, 5),
	(288, 180, 'ark_angels_1', 'KnowOne', 1, 18, 1800, 99, 6, 0, 5),
	(289, 180, 'ark_angels_2', 'KnowOne', 1, 18, 1800, 99, 6, 0, 5),
	(290, 180, 'ark_angels_3', 'KnowOne', 1, 18, 1800, 99, 6, 0, 5),
	(291, 180, 'ark_angels_4', 'KnowOne', 1, 18, 1800, 99, 6, 0, 5),
	(292, 180, 'ark_angels_5', 'KnowOne', 1, 18, 1800, 99, 6, 0, 5),
	(293, 180, 'divine_might', 'KnowOne', 1, 18, 1800, 0, 18, 0, 5),
	(320, 181, 'celestial_nexus', 'KnowOne', 1, 18, 1800, 75, 6, 0, 5),
	(352, 156, 'fiat_lux', 'KnowOne', 1, 18, 1800, 0, 6, 0, 15),
	(353, 156, 'darkness_descends', 'KnowOne', 1, 18, 1800, 99, 6, 0, 5),
	(354, 156, 'bonds_of_mythril', 'KnowOne', 1, 18, 1800, 0, 18, 0, 5),
	(385, 182, 'maiden_of_the_dusk', 'KnowOne', 1, 18, 1800, 99, 6, 0, 5),
	(416, 201, 'trial_by_wind', 'KnowOne', 1, 18, 1800, 0, 6, 0, 5),
	(417, 201, 'carbuncle_debacle', 'KnowOne', 1, 18, 1800, 99, 18, 0, 5),
	(418, 201, 'trial-size_trial_by_wind', 'KnowOne', 1, 18, 900, 20, 1, 0, 5),
	(419, 201, 'waking_the_beast', 'KnowOne', 1, 18, 1800, 0, 18, 0, 5),
	(420, 201, 'sugar-coated_directive', 'KnowOne', 1, 18, 1800, 80, 6, 0, 5),
	(448, 202, 'trial_by_lightning', 'KnowOne', 1, 18, 1800, 0, 6, 0, 5),
	(449, 202, 'carbuncle_debacle', 'KnowOne', 1, 18, 1800, 99, 18, 0, 5),
	(450, 202, 'trial-size_trial_by_lightning', 'KnowOne', 1, 18, 900, 20, 1, 0, 5),
	(451, 202, 'waking_the_beast', 'KnowOne', 1, 18, 1800, 0, 18, 0, 5),
	(452, 202, 'sugar-coated_directive', 'KnowOne', 1, 18, 1800, 80, 6, 0, 5),
	(480, 203, 'trial_by_ice', 'KnowOne', 1, 18, 1800, 0, 6, 0, 5),
	(481, 203, 'class_reunion', 'KnowOne', 1, 18, 1800, 99, 18, 0, 5),
	(482, 203, 'trial-size_trial_by_ice', 'KnowOne', 1, 18, 900, 20, 1, 0, 5),
	(483, 203, 'waking_the_beast', 'KnowOne', 1, 18, 1800, 0, 18, 0, 5),
	(484, 203, 'sugar-coated_directive', 'KnowOne', 1, 18, 1800, 80, 6, 0, 5),
	(512, 206, 'rank_5_mission', 'KnowOne', 1, 18, 900, 50, 6, 0, 5),
	(513, 206, 'come_into_my_parlor', 'KnowOne', 1, 18, 1800, 0, 6, 0, 15),
	(514, 206, 'e-vase-ive_action', 'KnowOne', 1, 18, 1800, 0, 6, 0, 15),
	(515, 206, 'infernal_swarm', 'KnowOne', 1, 18, 1800, 0, 6, 0, 15),
	(516, 206, 'heir_to_the_light', 'KnowOne', 1, 18, 1800, 99, 6, 0, 5),
	(517, 206, 'shattering_stars', 'KnowOne', 1, 18, 600, 99, 1, 0, 22),
	(518, 206, 'shattering_stars', 'KnowOne', 1, 18, 600, 99, 1, 0, 22),
	(519, 206, 'shattering_stars', 'KnowOne', 1, 18, 600, 99, 1, 0, 22),
	(520, 206, 'demolition_squad', 'KnowOne', 1, 18, 1800, 60, 6, 0, 15),
	(521, 206, 'die_by_the_sword', 'KnowOne', 1, 18, 900, 30, 3, 0, 15),
	(522, 206, 'let_sleeping_dogs_die', 'KnowOne', 1, 18, 1800, 30, 6, 0, 15),
	(523, 206, 'brothers_d_aurphe', 'KnowOne', 1, 18, 1800, 60, 6, 0, 15),
	(524, 206, 'undying_promise', 'KnowOne', 1, 18, 900, 40, 3, 0, 15),
	(525, 206, 'factory_rejects', 'KnowOne', 1, 18, 1800, 40, 6, 0, 15),
	(526, 206, 'idol_thoughts', 'KnowOne', 1, 18, 1800, 50, 6, 0, 15),
	(527, 206, 'awful_autopsy', 'KnowOne', 1, 18, 900, 50, 3, 0, 15),
	(528, 206, 'celery', 'KnowOne', 1, 18, 900, 60, 3, 0, 15),
	(529, 206, 'mirror_images', 'KnowOne', 1, 18, 900, 50, 1, 0, 7),
	(530, 206, 'furious_finale', 'KnowOne', 1, 18, 600, 99, 1, 0, 6),
	(531, 206, 'clash_of_the_comrades', 'KnowOne', 1, 18, 600, 0, 1, 0, 7),
	(532, 206, 'those_who_lurk_in_shadows', 'KnowOne', 1, 18, 1800, 99, 6, 0, 5),
	(533, 206, 'beyond_infinity', 'KnowOne', 1, 18, 600, 0, 6, 0, 6),
	(544, 207, 'trial_by_fire', 'KnowOne', 1, 18, 1800, 0, 6, 0, 5),
	(545, 207, 'trial-size_trial_by_fire', 'KnowOne', 1, 18, 900, 20, 1, 0, 5),
	(546, 207, 'waking_the_beast', 'KnowOne', 1, 18, 1800, 0, 18, 0, 5),
	(547, 207, 'sugar-coated_directive', 'KnowOne', 1, 18, 1800, 80, 6, 0, 5),
	(576, 209, 'trial_by_earth', 'KnowOne', 1, 18, 1800, 0, 6, 0, 5),
	(577, 209, 'puppet_master', 'KnowOne', 1, 18, 1800, 99, 18, 0, 5),
	(578, 209, 'trial-size_trial_by_earth', 'KnowOne', 1, 18, 900, 20, 1, 0, 5),
	(579, 209, 'waking_the_beast', 'KnowOne', 1, 18, 1800, 0, 18, 0, 5),
	(580, 209, 'sugar-coated_directive', 'KnowOne', 1, 18, 1800, 80, 6, 0, 5),
	(608, 211, 'trial_by_water', 'KnowOne', 1, 18, 1800, 0, 6, 0, 5),
	(609, 211, 'trial-size_trial_by_water', 'KnowOne', 1, 18, 900, 20, 1, 0, 5),
	(610, 211, 'waking_the_beast', 'KnowOne', 1, 18, 1800, 0, 18, 0, 5),
	(611, 211, 'sugar-coated_directive', 'KnowOne', 1, 18, 1800, 80, 6, 0, 5),
	(640, 6, 'flames_for_the_dead', 'KnowOne', 1, 18, 1800, 60, 6, 0, 5),
	(641, 6, 'follow_the_white_rabbit', 'KnowOne', 1, 18, 1800, 75, 18, 0, 15),
	(642, 6, 'when_hell_freezes_over', 'KnowOne', 1, 18, 900, 75, 18, 0, 15),
	(643, 6, 'brothers', 'KnowOne', 1, 18, 1800, 75, 18, 180, 15),
	(644, 6, 'holy_cow', 'KnowOne', 1, 18, 1800, 75, 18, 0, 15),
	(672, 8, 'head_wind', 'KnowOne', 1, 18, 1800, 50, 6, 0, 5),
	(673, 8, 'like_the_wind', 'KnowOne', 1, 18, 900, 75, 18, 179, 15),
	(674, 8, 'sheep_in_antlions_clothing', 'KnowOne', 1, 18, 1800, 75, 18, 0, 15),
	(675, 8, 'shell_we_dance', 'KnowOne', 1, 18, 1800, 75, 18, 0, 15),
	(676, 8, 'totentanz', 'KnowOne', 1, 18, 1800, 75, 18, 0, 15),
	(677, 8, 'tango_with_a_tracker', 'KnowOne', 1, 18, 1800, 0, 6, 0, 7),
	(678, 8, 'requiem_of_a_sin', 'KnowOne', 1, 18, 1800, 0, 6, 0, 7),
	(679, 8, 'antagonistic_ambuscade', 'KnowOne', 1, 18, 900, 0, 6, 0, 15),
	(704, 10, 'darkness_named', 'KnowOne', 1, 18, 1800, 40, 6, 0, 5),
	(705, 10, 'test_your_mite', 'KnowOne', 1, 18, 1800, 40, 18, 0, 15),
	(706, 10, 'waking_dreams', 'KnowOne', 1, 18, 1800, 0, 18, 0, 5),
	(736, 13, 'century_of_hardship', 'KnowOne', 1, 18, 1800, 60, 6, 0, 5),
	(737, 13, 'return_to_the_depths', 'KnowOne', 1, 18, 1800, 90, 6, 0, 7),
	(738, 13, 'bionic_bug', 'KnowOne', 1, 18, 1800, 0, 18, 0, 15),
	(739, 13, 'pulling_the_strings', 'KnowOne', 1, 18, 900, 0, 1, 0, 15),
	(740, 13, 'automaton_assault', 'KnowOne', 1, 18, 900, 60, 6, 0, 15),
	(741, 13, 'mobline_comedy', 'KnowOne', 1, 18, 900, 0, 6, 0, 15),
	(768, 17, 'ancient_flames_beckon', 'KnowOne', 1, 18, 1800, 30, 6, 0, 5),
	(769, 17, 'simulant', 'KnowOne', 1, 18, 1800, 30, 18, 0, 15),
	(770, 17, 'empty_hopes', 'KnowOne', 1, 18, 900, 0, 6, 0, 5),
	(800, 19, 'ancient_flames_beckon', 'KnowOne', 1, 18, 1800, 30, 6, 0, 5),
	(801, 19, 'you_are_what_you_eat', 'KnowOne', 1, 18, 1800, 30, 18, 0, 15),
	(802, 19, 'empty_dreams', 'KnowOne', 1, 18, 900, 0, 6, 0, 5),
	(832, 21, 'ancient_flames_backon', 'KnowOne', 1, 18, 1800, 30, 6, 0, 5),
	(833, 21, 'playing_host', 'KnowOne', 1, 18, 1800, 30, 18, 0, 15),
	(834, 21, 'empty_desires', 'KnowOne', 1, 18, 900, 0, 6, 0, 5),
	(864, 23, 'desires_of_emptiness', 'KnowOne', 1, 18, 1800, 50, 6, 0, 5),
	(865, 23, 'pulling_the_plug', 'KnowOne', 1, 18, 1800, 50, 18, 0, 15),
	(866, 23, 'empty_aspirations', 'KnowOne', 1, 18, 900, 0, 6, 0, 5),
	(896, 29, 'storms_of_fate', 'KnowOne', 1, 18, 1800, 0, 18, 0, 7),
	(897, 29, 'wyrmking_descends', 'KnowOne', 1, 18, 3600, 0, 18, 300, 15),
	(928, 30, 'ouryu_cometh', 'KnowOne', 1, 18, 3600, 0, 18, 250, 15),
	(960, 31, 'ancient_vows', 'KnowOne', 1, 18, 1800, 40, 6, 0, 5),
	(961, 31, 'savage', 'KnowOne', 1, 18, 1800, 50, 6, 0, 5),
	(962, 31, 'fire_in_the_sky', 'KnowOne', 1, 18, 900, 40, 18, 0, 15),
	(963, 31, 'bad_seed', 'KnowOne', 1, 18, 1800, 40, 18, 0, 15),
	(964, 31, 'bugard_in_the_clouds', 'KnowOne', 1, 18, 900, 50, 18, 0, 15),
	(965, 31, 'beloved_of_the_atlantes', 'KnowOne', 1, 18, 1800, 50, 18, 0, 15),
	(966, 31, 'uninvited_guests', 'KnowOne', 1, 18, 1800, 0, 18, 0, 7),
	(967, 31, 'nest_of_nightmares', 'KnowOne', 1, 18, 900, 0, 6, 0, 15),
	(992, 32, 'one_to_be_feared', 'KnowOne', 1, 18, 2700, 60, 6, 0, 5),
	(993, 32, 'warriors_path', 'KnowOne', 1, 18, 1800, 99, 6, 0, 5),
	(1024, 35, 'when_angels_fall', 'KnowOne', 1, 18, 1800, 0, 6, 0, 5),
	(1056, 36, 'dawn', 'KnowOne', 1, 18, 1800, 85, 6, 0, 5),
	(1057, 36, 'apocalypse_nigh', 'KnowOne', 1, 18, 1800, 75, 6, 0, 7),
	(1088, 57, 'call_to_arms', 'KnowOne', 1, 18, 1800, 60, 6, 0, 15),
	(1089, 57, 'compliments_to_the_chef', 'KnowOne', 1, 18, 1800, 75, 6, 0, 15),
	(1090, 57, 'puppetmaster_blues', 'KnowOne', 1, 18, 1800, 75, 6, 0, 7),
	(1091, 57, 'breaking_the_bonds_of_fate', 'KnowOne', 1, 18, 600, 75, 1, 0, 6),
	(1092, 57, 'legacy_of_the_lost', 'KnowOne', 1, 18, 1800, 99, 6, 0, 5),
	(1120, 64, 'tough_nut_to_crack', 'KnowOne', 1, 18, 1800, 60, 6, 0, 15),
	(1121, 64, 'happy_caster', 'KnowOne', 1, 18, 1800, 75, 6, 0, 15),
	(1122, 64, 'omens', 'KnowOne', 1, 18, 1800, 75, 18, 0, 7),
	(1123, 64, 'achieving_true_power', 'KnowOne', 1, 18, 600, 75, 1, 0, 6),
	(1124, 64, 'shield_of_diplomacy', 'KnowOne', 1, 18, 1800, 99, 6, 0, 5),
	(1152, 67, 'making_a_mockery', 'KnowOne', 1, 18, 1800, 60, 6, 0, 15),
	(1153, 67, 'shadows_of_the_mind', 'KnowOne', 1, 18, 1800, 90, 6, 0, 15),
	(1154, 67, 'beast_within', 'KnowOne', 1, 18, 600, 90, 1, 0, 6),
	(1155, 67, 'moment_of_truth', 'KnowOne', 1, 18, 1800, 0, 6, 0, 7),
	(1156, 67, 'puppet_in_peril', 'KnowOne', 1, 18, 1800, 99, 6, 0, 5),
	(1184, 78, 'rider_cometh', 'KnowOne', 1, 18, 900, 0, 6, 0, 5),
	(1280, 186, 'dynamis_bastok', 'KnowOne', 1, 18, 3600, 0, 64, 0, 7),
	(1281, 185, 'dynamis_sandoria', 'KnowOne', 1, 18, 3600, 0, 64, 0, 7),
	(1282, 187, 'dynamis_windurst', 'KnowOne', 1, 18, 3600, 0, 64, 0, 7),
	(1283, 188, 'dynamis_jeuno', 'KnowOne', 1, 18, 3600, 0, 64, 0, 7),
	(1284, 134, 'dynamis_beaucedine', 'KnowOne', 1, 18, 3600, 0, 64, 0, 7),
	(1285, 135, 'dynamis_xarcabard', 'KnowOne', 1, 18, 3600, 0, 64, 0, 7),
	(1286, 39, 'dynamis_valkurm', 'KnowOne', 1, 18, 3600, 0, 36, 0, 7),
	(1287, 40, 'dynamis_buburimu', 'KnowOne', 1, 18, 3600, 0, 36, 0, 7),
	(1288, 41, 'dynamis_qufim', 'KnowOne', 1, 18, 3600, 0, 36, 0, 7),
	(1289, 42, 'dynamis_tavnazia', 'KnowOne', 1, 18, 3600, 0, 18, 0, 7),
	(1290, 38, 'nw_apollyon', 'KnowOne', 1, 18, 1800, 0, 18, 0, 7),
	(1291, 38, 'sw_apollyon', 'KnowOne', 1, 18, 1800, 0, 18, 0, 7),
	(1292, 38, 'ne_apollyon', 'KnowOne', 1, 18, 1800, 0, 18, 0, 7),
	(1293, 38, 'se_apollyon', 'KnowOne', 1, 18, 1800, 0, 18, 0, 7),
	(1294, 38, 'cs_apollyon', 'KnowOne', 1, 18, 1200, 0, 18, 0, 7),
	(1295, 38, 'cs_apollyon_ii', 'KnowOne', 1, 18, 1200, 0, 18, 0, 7),
	(1296, 38, 'central_apollyon', 'KnowOne', 1, 18, 1800, 0, 18, 0, 7),
	(1297, 38, 'central_apollyon_ii', 'KnowOne', 1, 18, 1800, 0, 18, 0, 7),
	(1298, 37, 'temenos_western_tower', 'KnowOne', 1, 18, 1800, 0, 18, 0, 7),
	(1299, 37, 'temenos_northern_tower', 'KnowOne', 1, 18, 1800, 0, 18, 0, 7),
	(1300, 37, 'temenos_eastern_tower', 'KnowOne', 1, 18, 1800, 0, 18, 0, 7),
	(1301, 37, 'central_temenos_basement', 'KnowOne', 1, 18, 900, 0, 18, 0, 7),
	(1302, 37, 'central_temenos_basement_ii', 'KnowOne', 1, 18, 900, 0, 18, 0, 7),
	(1303, 37, 'central_temenos_1st_floor', 'KnowOne', 1, 18, 2700, 0, 18, 0, 7),
	(1304, 37, 'central_temenos_2nd_floor', 'KnowOne', 1, 18, 2700, 0, 18, 0, 7),
	(1305, 37, 'central_temenos_3rd_floor', 'KnowOne', 1, 18, 2700, 0, 18, 0, 7),
	(1306, 37, 'central_temenos_4th_floor', 'KnowOne', 1, 18, 3600, 0, 18, 0, 7),
	(1307, 37, 'central_temenos_4th_floor_ii', 'KnowOne', 1, 18, 3600, 0, 18, 0, 7);
/*!40000 ALTER TABLE `bcnm_info` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
