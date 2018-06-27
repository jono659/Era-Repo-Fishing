-----------------------------------
-- Ability: Invincible
-- Grants immunity to all physical attacks.
-- Obtained: Paladin Level 1
-- Recast Time: 1:00:00
-- Duration: 0:00:30
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
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
    if AV:isSpawned() and (os.time()-1) - AV:getLocalVar("invincibleTime") < 5 then
		printf("Time: %i | invincibleTime: %i | Diff: %i", os.time(), AV:getLocalVar("invincibleTime"), os.time() - AV:getLocalVar("invincibleTime"));
        if (player:checkDistance(AV) <= 20) and (partyType == 2) then
			AV:setLocalVar("invincible", 0)
				printf("locked invincible")
		end
	end
	end

	player:addStatusEffect(dsp.effects.INVINCIBLE,1,0,30);
end;