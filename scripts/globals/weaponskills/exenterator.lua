-----------------------------------	
-- Exenterator	
-- Skill level: 357 
-- Terpsichore: Aftermath effect varies with TP. 
-- In order to obtain Exenterator, the quest Martial Mastery must be completed. 
-- Description: Delivers a fourfold attack that lowers enemy's params.accuracy. Effect duration varies with TP.
-- Aligned with the Breeze Gorget, Thunder Gorget & Soil Gorget. 
-- Aligned with the Breeze Belt, Thunder Belt & Soil Belt. 
-- Notes: Stacks with itself allowing continuous params.acc down
-- params.acc down isn't the same as the spell Blind or sources which are the same as blind allowing both to stack 
-- Element: None	
-- Modifiers: AGI:20~100%, depending on merit points ugrades.
-- 100%TP    200%TP    300%TP	
-- 1.0        1.0       1.0
-----------------------------------	
	
require("scripts/globals/status");	
require("scripts/globals/settings");	
require("scripts/globals/weaponskills");	
-----------------------------------	
	
function onUseWeaponSkill(player, target, wsID, tp, primary, action, taChar)	
local wspack = player:getVar("wspack")
local wsexenterator = player:getVar("wsexenterator")
local mythic = player:getEquipID(SLOT_MAIN)
local thfpoints = player:getVar("MythicThf")+1
local brdpoints = player:getVar("MythicBrd")+1
local dncpoints = player:getVar("MythicDnc")+1
	
	if (mythic == 18976)  and (player:getMainLvl() < target:getMainLvl()) and player:getMainLvl() == 75 then
	    if player:getVar("MythicThf") <= 499 then
			player:setVar("MythicThf", (player:getVar("MythicThf")+1));
			player:PrintToPlayer(string.format("Thief Mythic Point! %d/500 points", thfpoints ));
		else player:PrintToPlayer("Congrats, Mythic WeaponSkill Mandalic Stab is complete!");
		end
	elseif (mythic == 18980)  and (player:getMainLvl() < target:getMainLvl()) and player:getMainLvl() == 75 then
	    if player:getVar("MythicBrd") <= 499 then
			player:setVar("MythicBrd", (player:getVar("MythicBrd")+1));
			player:PrintToPlayer(string.format("Bard Mythic Point! %d/500 points", brdpoints ));
		else player:PrintToPlayer("Congrats, Mythic WeaponSkill Mordant Rime is complete!");
		end
	elseif (mythic == 18969)  and (player:getMainLvl() < target:getMainLvl()) and player:getMainLvl() == 75 then
	    if player:getVar("MythicDnc") <= 499 then
			player:setVar("MythicDnc", (player:getVar("MythicDnc")+1));
			player:PrintToPlayer(string.format("Dancer Mythic Point! %d/500 points", dncpoints ));
		else player:PrintToPlayer("Congrats, Mythic WeaponSkill Pyrrhic Kleos is complete!");
	end
end

	if (wsexenterator == 1 or wspack == 1) then
	
    local params = {};
	params.numHits = 5;
	params.ftp100 = 1.1875; params.ftp200 = 1.1875; params.ftp300 = 1.1875;
	params.str_wsc = 0.0; params.dex_wsc = 0.4; params.vit_wsc = 0.0; params.agi_wsc = 0.0; params.int_wsc = 0.0; params.mnd_wsc = 0.0; params.chr_wsc = 0.4;
	params.crit100 = 0.0; params.crit200 = 0.0; params.crit300 = 0.0;
	params.canCrit = false;
	params.acc100 = 0.8; params.acc200= 0.9; params.acc300= 1;
	params.atkmulti = 1;

	local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, tp, primary, action, taChar, params);

	    scoreCheck(player, wsID, damage, target); return tpHits, extraHits, criticalHit, damage;
    
    else
	
		player:PrintToPlayer("This Donation Weapon skill will miss 100% unless you donate for it (Dancing Edge copy)");
	    scoreCheck(player, wsID, damage, target); return 0,0,0,0;
		
	end

	local chance = 100
    if (player:getEquipID(SLOT_NECK) == 27510 ) then
		if (math.random(0,100) >= chance ) then
			player:setTP(1000);
		end
	end	

end;
