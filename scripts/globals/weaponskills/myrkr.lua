-----------------------------------
-- Myrkr  
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/settings");
require("scripts/globals/weaponskills");
-----------------------------------

function onUseWeaponSkill(player, target, wsID, tp, primary, action, taChar)

	local wspack = player:getVar("wspack")
	local wsmyrkr = player:getVar("wsmyrkr")

	if (wsmyrkr == 1 or wspack == 1) then	
	
	local params = {};
		params.numHits = 1;
		params.ftp100 = 1; params.ftp200 = 1.5; params.ftp300 = 2;
		params.str_wsc = 0.0; params.dex_wsc = 0.0; params.vit_wsc = 0.0; params.agi_wsc = 0.0; params.int_wsc = 0.5; params.mnd_wsc = 0.5; params.chr_wsc = 0.0;
		params.crit100 = 0.0; params.crit200 = 0.0; params.crit300 = 0.0;
		params.canCrit = false;
		params.acc100 = 0.0; params.acc200= 0.0; params.acc300= 0.0;
		params.atkmulti = 1;

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, tp, primary, action, taChar, params);
		player:addMP(damage);
	local chance = 100
    if (player:getEquipID(SLOT_NECK) == 27510 ) then
		if (math.random(0,100) >= chance ) then
			player:setTP(1000);
		end
	end
			scoreCheck(player, wsID, damage, target); return tpHits, extraHits, criticalHit, damage;
	
    else
		player:PrintToPlayer("This Donation Weapon skill will miss 100% unless you donate for it");
			scoreCheck(player, wsID, damage, target); return 0,0,0,0;
	end	

end
