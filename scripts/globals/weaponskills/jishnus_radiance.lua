-----------------------------------	
-- Sidewinder	
-- Archery weapon skill	
-- Skill level: 175	
-- Delivers an inparams.accurate attack that deals quintuple damage. params.accuracy varies with TP.	
-- Aligned with the Aqua Gorget, Light Gorget & Breeze Gorget.	
-- Aligned with the Aqua Belt, Light Belt & Breeze Belt.	
-- Element: None	
-- Modifiers: STR:16% ; AGI:25%	
-- 100%TP    200%TP    300%TP	
-- 5.00      5.00      5.00	
-----------------------------------	
	
require("scripts/globals/status");	
require("scripts/globals/settings");	
require("scripts/globals/weaponskills");	
-----------------------------------	
	
function onUseWeaponSkill(player, target, wsID, tp, primary, action, taChar)	

local wspack = player:getVar("wspack")
local wsjishnusradiance = player:getVar("wsjishnusradiance")


 if (wsjishnusradiance == 1 or wspack == 1) then
	
	local params = {};
	params.numHits = 1;
	params.ftp100 = 5; params.ftp200 = 5; params.ftp300 = 5;
	params.str_wsc = 0.16; params.dex_wsc = 0.0; params.vit_wsc = 0.0; params.agi_wsc = 0.25; params.int_wsc = 0.0; params.mnd_wsc = 0.0; params.chr_wsc = 0.0;
	params.crit100 = 0.0; params.crit200 = 0.0; params.crit300 = 0.0;
	params.canCrit = false;
	params.acc100 = 0.8; params.acc200= 0.9; params.acc300= 1;
	params.atkmulti = 1;

	local chance = 100
    if (player:getEquipID(SLOT_NECK) == 27510 ) then
		if (math.random(0,100) >= chance ) then
			player:setTP(1000);
		end
	end
	local damage, tpHits, extraHits = doRangedWeaponskill(player, target, wsID, params, tp, primary, action);
    scoreCheck(player, wsID, damage, target); return tpHits, extraHits, criticalHit, damage;
	
    else
        player:PrintToPlayer("This Donation Weapon skill will miss 100% unless you donate for it (Sidewinder copy)");
	             scoreCheck(player, wsID, damage, target); return 0,0,0,0;
	end		
	
end	
