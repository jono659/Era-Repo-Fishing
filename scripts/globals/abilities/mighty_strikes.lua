-----------------------------------
-- Ability: Mighty Strikes
-- Turns all melee attacks into critical hits.
-- Obtained: Warrior Level 1
-- Recast Time: 1:00:00
-- Duration: 0:00:45
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
    printf("Time: %i | MightyStrikesTime: %i | Diff: %i", os.time(), AV:getLocalVar("mightyStrikesTime"), os.time() - AV:getLocalVar("mightyStrikesTime"));
    if AV:isSpawned() and (os.time()-1) - AV:getLocalVar("mightyStrikesTime") < 5 then
		if (player:checkDistance(AV) <= 20) and (partyType == 2) then
                AV:setLocalVar("mightyStrikes", 0);
				printf("locked mightyStrikes");
        end;
    end;
    end
    player:addStatusEffect(dsp.effects.MIGHTY_STRIKES,1,0,45);
end;