-----------------------------------
-- Ability: Familiar
-- Enhances your pet's powers and increases the duration of Charm.
-- Obtained: Beastmaster Level 1
-- Recast Time: 1:00:00
-- Duration: 0:30:00
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/msg");
-----------------------------------

function onAbilityCheck(player,target,ability)
    local pet = player:getPet();
    if not pet then
        return msgBasic.REQUIRES_A_PET,0;
    elseif not player:isJugPet() and pet:getObjType() ~= TYPE_MOB then
        return msgBasic.NO_EFFECT_ON_PET,0;
    else
        return 0,0;
    end
end;

function onUseAbility(player,target,ability)
    -- ERA Custom Code
	local partyType = player:checkSoloPartyAlliance();
	local Zone = player:getZoneID();
	
	if Zone == 33 then
    local AV = GetMobByID(16912876);
    printf("Time: %i | familiarTime: %i | Diff: %i", os.time(), AV:getLocalVar("familiarTime"), os.time() - AV:getLocalVar("familiarTime"));
    if AV:isSpawned() and (os.time()-1) - AV:getLocalVar("familiarTime") < 5 then
		if (player:checkDistance(AV) <= 20) and (partyType == 2) then
            AV:setLocalVar("familiar", 0);
            printf("locked Familiar");
        end;
    end;
	end
    
    player:familiar();

    -- pets powers increase!
    ability:setMsg(msgBasic.FAMILIAR);

    return 0;
end;
