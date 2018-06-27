-----------------------------------
-- Ability: Perfect Dodge
-- Allows you to dodge all melee attacks.
-- Obtained: Thief Level 1
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
    printf("Time: %i | perfectDodgeTime: %i | Diff: %i", os.time(), AV:getLocalVar("perfectDodgeTime"), os.time() - AV:getLocalVar("perfectDodgeTime"));
    if AV:isSpawned() and (os.time()-1) - AV:getLocalVar("perfectDodgeTime") < 5 then
       if (player:checkDistance(AV) <= 20) and (partyType == 2) then
            AV:setLocalVar("perfectDodge", 0);
			printf("locked Perfect Dodge");
        end
    end
    end
    local duration = 60 + player:getMod(MOD_PERFECT_DODGE);
    player:addStatusEffect(dsp.effects.PERFECT_DODGE,1,0,duration);
end;