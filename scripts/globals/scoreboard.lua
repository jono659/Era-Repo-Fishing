--Contains all common weaponskill calculations including but not limited to:
-- fSTR
-- Alpha
-- Ratio -> cRatio
-- min/max cRatio
-- applications of fTP
-- applications of critical hits ('Critical hit rate varies with TP.')
-- applications of accuracy mods ('Accuracy varies with TP.')
-- applications of damage mods ('Damage varies with TP.')
-- performance of the actual WS (rand numbers, etc)
require("scripts/globals/status");
require("scripts/globals/utils");
require("scripts/globals/magic");




local wstable = { 
 1,{"combo"}, 
 2,{"shoulder_tackle"}, 
 3,{"one_inch_punch"}, 
 4,{"backhand_blow"}, 
 5,{"raging_fists"}, 
 6,{"spinning_attack"}, 
 7,{"howling_fist"}, 
 8,{"dragon_kick"}, 
 9,{"asuran_fists"}, 
 10,{"final_heaven"}, 
 11,{"ascetics_fury"}, 
 12,{"stringing_pummel"}, 
 13,{"tornado_kick"}, 
 14,{"victory_smite"}, 
 15,{"shijin_spiral"}, 
 16,{"wasp_sting"}, 
 19,{"gust_slash"}, 
 18,{"shadowstitch"}, 
 17,{"viper_bite"}, 
 20,{"cyclone"}, 
 21,{"energy_steal"}, 
 22,{"energy_drain"}, 
 23,{"dancing_edge"}, 
 24,{"shark_bite"}, 
 25,{"evisceration"}, 
 30,{"aeolian_edge"}, 
 26,{"mercy_stroke"}, 
 27,{"mandalic_stab"}, 
 28,{"mordant_rime"}, 
 29,{"pyrrhic_kleos"}, 
 31,{"rudras_storm"}, 
 224,{"exenterator"}, 
 32,{"fast_blade"}, 
 33,{"burning_blade"}, 
 34,{"red_lotus_blade"}, 
 35,{"flat_blade"}, 
 36,{"shining_blade"}, 
 37,{"seraph_blade"}, 
 38,{"circle_blade"}, 
 39,{"spirits_within"}, 
 40,{"vorpal_blade"}, 
 41,{"swift_blade"}, 
 238,{"uriel_blade"}, 
 239,{"glory_slash"}, 
 42,{"savage_blade"}, 
 225,{"chant_du_cygne"}, 
 43,{"knights_of_round"}, 
 44,{"death_blossom"}, 
 45,{"atonement"}, 
 46,{"expiacion"}, 
 47,{"sanguine_blade"}, 
 226,{"requiescat"}, 
 48,{"hard_slash"}, 
 49,{"power_slash"}, 
 50,{"frostbite"}, 
 51,{"freezebite"}, 
 52,{"shockwave"}, 
 53,{"crescent_moon"}, 
 54,{"sickle_moon"}, 
 55,{"spinning_slash"}, 
 56,{"ground_strike"}, 
 58,{"herculean_slash"}, 
 57,{"scourge"}, 
 59,{"torcleaver"}, 
 60,{"resolution"}, 
 64,{"raging_axe"}, 
 65,{"smash_axe"}, 
 66,{"gale_axe"}, 
 67,{"avalanche_axe"}, 
 68,{"spinning_axe"}, 
 69,{"rampage"}, 
 70,{"calamity"}, 
 71,{"mistral_axe"}, 
 72,{"decimation"}, 
 75,{"bora_axe"}, 
 73,{"onslaught"}, 
 74,{"primal_rend"}, 
 76,{"cloudsplitter"}, 
 77,{"ruinator"}, 
 80,{"shield_break"}, 
 81,{"iron_tempest"}, 
 82,{"sturmwind"}, 
 83,{"armor_break"}, 
 84,{"keen_edge"}, 
 85,{"weapon_break"}, 
 86,{"raging_rush"}, 
 87,{"full_break"}, 
 88,{"steel_cyclone"}, 
 89,{"metatron_torment"}, 
 90,{"kings_justice"}, 
 91,{"fell_cleave"}, 
 92,{"ukkos_fury"}, 
 93,{"upheaval"}, 
 96,{"slice"}, 
 97,{"dark_harvest"}, 
 98,{"shadow_of_death"}, 
 99,{"nightmare_scythe"}, 
 100,{"spinning_scythe"}, 
 101,{"vorpal_scythe"}, 
 102,{"guillotine"}, 
 103,{"cross_reaper"}, 
 104,{"spiral_hell"}, 
 105,{"catastrophe"}, 
 106,{"insurgency"}, 
 107,{"infernal_scythe"}, 
 108,{"quietus"}, 
 109,{"entropy"}, 
 112,{"double_thrust"}, 
 113,{"thunder_thrust"}, 
 114,{"raiden_thrust"}, 
 115,{"leg_sweep"}, 
 116,{"penta_thrust"}, 
 117,{"vorpal_thrust"}, 
 118,{"skewer"}, 
 119,{"wheeling_thrust"}, 
 120,{"impulse_drive"}, 
 121,{"geirskogul"}, 
 122,{"drakesbane"}, 
 123,{"sonic_thrust"}, 
 124,{"camlanns_torment"}, 
 125,{"stardiver"}, 
 128,{"blade_rin"}, 
 129,{"blade_retsu"}, 
 130,{"blade_teki"}, 
 131,{"blade_to"}, 
 132,{"blade_chi"}, 
 133,{"blade_ei"}, 
 134,{"blade_jin"}, 
 135,{"blade_ten"}, 
 136,{"blade_ku"}, 
 139,{"blade_yu"}, 
 137,{"blade_metsu"}, 
 138,{"blade_kamu"}, 
 140,{"blade_hi"}, 
 141,{"blade_shun"}, 
 144,{"tachi_enpi"}, 
 145,{"tachi_hobaku"}, 
 146,{"tachi_goten"}, 
 147,{"tachi_kagero"}, 
 148,{"tachi_jinpu"}, 
 149,{"tachi_koki"}, 
 150,{"tachi_yukikaze"}, 
 151,{"tachi_gekko"}, 
 152,{"tachi_kasha"}, 
 153,{"tachi_kaiten"}, 
 154,{"tachi_rana"}, 
 155,{"tachi_ageha"}, 
 156,{"tachi_fudo"}, 
 157,{"tachi_shoha"}, 
 160,{"shining_strike"}, 
 161,{"seraph_strike"}, 
 162,{"brainshaker"}, 
 163,{"starlight"}, 
 164,{"moonlight"}, 
 165,{"skullbreaker"}, 
 166,{"true_strike"}, 
 167,{"judgment"}, 
 168,{"hexa_strike"}, 
 169,{"black_halo"}, 
 172,{"flash_nova"}, 
 170,{"randgrith"}, 
 171,{"mystic_boon"}, 
 173,{"dagan"}, 
 174,{"realmrazer"}, 
 176,{"heavy_swing"}, 
 177,{"rock_crusher"}, 
 178,{"earth_crusher"}, 
 179,{"starburst"}, 
 180,{"sunburst"}, 
 181,{"shell_crusher"}, 
 182,{"full_swing"}, 
 183,{"spirit_taker"}, 
 184,{"retribution"}, 
 240,{"tartarus_torpor"}, 
 189,{"cataclysm"}, 
 185,{"gate_of_tartarus"}, 
 186,{"vidohunir"}, 
 187,{"garland_of_bliss"}, 
 188,{"omniscience"}, 
 190,{"myrkr"}, 
 191,{"shattersoul"}, 
 192,{"flaming_arrow"}, 
 193,{"piercing_arrow"}, 
 194,{"dulling_arrow"}, 
 196,{"sidewinder"}, 
 197,{"blast_arrow"}, 
 198,{"arching_arrow"}, 
 199,{"empyreal_arrow"}, 
 201,{"refulgent_arrow"}, 
 200,{"namas_arrow"}, 
 202,{"jishnus_radiance"}, 
 203,{"apex_arrow"}, 
 208,{"hot_shot"}, 
 209,{"split_shot"}, 
 210,{"sniper_shot"}, 
 212,{"slug_shot"}, 
 213,{"blast_shot"}, 
 214,{"heavy_shot"}, 
 215,{"detonator"}, 
 219,{"numbing_shot"}, 
 216,{"coronach"}, 
 217,{"trueflight"}, 
 218,{"leaden_salute"}, 
 220,{"wildfire"}, 
 221,{"last_stand"}, 
};



function getScore(wsID)

	for i=1, table.getn(wstable), 2 do

		if (wstable[i] == wsID) then

			return wstable[i+1];
 
		end
	end
 end;
 
 function scoreCheck(player, wsID, damage, target)
	pid = player:getID();
	plvl = player:getMainLvl();
	moblvl = target:getMainLvl();
	fam = target:getFamily();
	--damage = (damage - 1);
	record = getScore(wsID);
	
	local itadjust = 3;
	
	if plvl <= 30 then 
	itadjust = 1;
	elseif plvl <= 45 then
	itadjust = 0;
	elseif plvl <= 50 then
	itadjust = 0;
	elseif plvl <= 55 then
	itadjust = 0;
	else
	itadjust = 0;
	end;
	
	if player:getVar(record[1]) == nil then
		player:setVar(record[1], 1);
	end
	local mobid  = target:getID();
	if moblvl >= (plvl + (4 + itadjust)) then
		if((fam == (203 or 181 or 205 or 142 or 143 or 86 or 109)) or (mobid == 17195318)) then
			player:PrintToPlayer("This mob family is not eligible for the leaderboards.");
			
			
			
		elseif fam == 109 then 
			player:PrintToPlayer("This mob family is not eligible for the leaderboards.");
			
		elseif damage > player:getVar(record[1]) then
				player:setVar(record[1], damage);
				player:PrintToPlayer("New personal best!");
		end
		
		end
	end;
	

 
 
 