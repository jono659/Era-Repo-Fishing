-----------------------------------
-- Retribution
-- Staff weapon skill
-- Skill Level: 230
-- Delivers a single-hit attack. Damage varies with TP.
-- In order to obtain Retribution, the quest Blood and Glory must be completed.
-- Despite the appearance of throwing the staff, this is not a long-range Weapon Skill like Mistral Axe.
-- The range only extends the usual 1 yalm beyond meleeing range.
-- Will stack with Sneak Attack.
-- Aligned with the Shadow Gorget, Soil Gorget & Aqua Gorget.
-- Aligned with the Shadow Belt, Soil Belt & Aqua Belt.
-- Element: None
-- Modifiers: STR:30% ; MND:50%
-- 100%TP    200%TP    300%TP
-- 2.00      2.50      3.00
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/settings");
require("scripts/globals/weaponskills");
-----------------------------------

function onUseWeaponSkill(player, target, wsID, tp, primary, action, taChar)
	local mythic = player:getEquipID(SLOT_MAIN)
local blmpoints = player:getVar("MythicBlm")+1
local smnpoints = player:getVar("MythicSmn")+1
local schpoints = player:getVar("MythicSch")+1
	
	if (mythic == 18974)  and (player:getMainLvl() < target:getMainLvl()) and player:getMainLvl() == 75 then
	    if player:getVar("MythicBlm") <= 499 then
			player:setVar("MythicBlm", (player:getVar("MythicBlm")+1));
			player:PrintToPlayer(string.format("Blackmage Mythic Point! %d/500 points", blmpoints ));
		else player:PrintToPlayer("Congrats, Mythic WeaponSkill Vidohunir is complete!");
		end
	elseif (mythic == 18985)  and (player:getMainLvl() < target:getMainLvl()) and player:getMainLvl() == 75 then
	    if player:getVar("MythicSmn") <= 499 then
			player:setVar("MythicSmn", (player:getVar("MythicSmn")+1));
			player:PrintToPlayer(string.format("Summoner Mythic Point! %d/500 points", smnpoints ));
		else player:PrintToPlayer("Congrats, Mythic WeaponSkill Garland of Bliss is complete!");
		end
	elseif (mythic == 18970)  and (player:getMainLvl() < target:getMainLvl()) and player:getMainLvl() == 75 then
	    if player:getVar("MythicSch") <= 499 then
			player:setVar("MythicSch", (player:getVar("MythicSch")+1));
			player:PrintToPlayer(string.format("Scholar Mythic Point! %d/500 points", schpoints ));
		else player:PrintToPlayer("Congrats, Mythic WeaponSkill Omniscience is complete!");
	end
end

    local params = {};
    params.numHits = 1;
    params.ftp100 = 2; params.ftp200 = 2.5; params.ftp300 = 3;
    params.str_wsc = 0.3; params.dex_wsc = 0.0; params.vit_wsc = 0.0; params.agi_wsc = 0.0; params.int_wsc = 0.0; params.mnd_wsc = 0.5; params.chr_wsc = 0.0;
    params.crit100 = 0.0; params.crit200 = 0.0; params.crit300 = 0.0;
    params.canCrit = false;
    params.acc100 = 0.0; params.acc200= 0.0; params.acc300= 0.0;
    params.atkmulti = 1;

    if (USE_ADOULIN_WEAPON_SKILL_CHANGES == true) then
        params.atkmulti = 1.5;
    end
	local chance = 100
    if (player:getEquipID(SLOT_NECK) == 27510 ) then
		if (math.random(0,100) >= chance ) then
			player:setTP(1000);
		end
	end
    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, tp, primary, action, taChar, params);
    scoreCheck(player, wsID, damage, target); return tpHits, extraHits, criticalHit, damage;

end
