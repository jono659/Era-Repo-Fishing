-----------------------------------
-- Ability: Blood Weapon
-- Causes all attacks to drain enemy's HP.
-- Obtained: Dark Knight Level 1
-- Recast Time: 1:00:00
-- Duration: 0:00:30
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/magic");
-----------------------------------

function onAbilityCheck(player,target,ability)
    return 0,0;
end;

function onUseAbility(player,target,ability)
    -- ERA Custom Code

	local partyType = player:checkSoloPartyAlliance();
	local Zone = player:getZoneID();
	
	if Zone == 33 then
    local AV = GetMobByID(16912876);
    printf("Time: %i | bloodWeaponTime: %i | Diff: %i", os.time(), AV:getLocalVar("bloodWeaponTime"), os.time() - AV:getLocalVar("bloodWeaponTime"));
    if AV:isSpawned() and (os.time()-1) - AV:getLocalVar("bloodWeaponTime") < 5 then
		if (player:checkDistance(AV) <= 20) and (partyType == 2) then
                AV:setLocalVar("bloodWeapon", 0);
				printf("locked bloodweapon");
        end;
    end;
	end
    
    local effect = dsp.effects.BLOOD_WEAPON;
    doEnspell(player,target,nil,effect);
end;