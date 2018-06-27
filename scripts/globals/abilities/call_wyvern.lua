-----------------------------------
-- Ability: Call Wyvern
-- Summons a Wyvern to fight by your side.
-- Obtained: Dragoon Level 1
-- Recast Time: 20:00
-- Duration: Instant
-- Special: Only available if Dragoon is your main class.
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/pets");
require("scripts/globals/msg");
-----------------------------------

function onAbilityCheck(player,target,ability)
    if (player:getPet() ~= nil) then
         return msgBasic.ALREADY_HAS_A_PET,0;
    elseif (player:hasStatusEffect(dsp.effects.SPIRIT_SURGE) == true) then
        return msgBasic.UNABLE_TO_USE_JA,0;
    elseif (not player:canUsePet()) then
        return msgBasic.CANT_BE_USED_IN_AREA,0;
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
    printf("Time: %i | callWyvernTime: %i | Diff: %i", os.time(), AV:getLocalVar("callWyvernTime"), os.time() - AV:getLocalVar("callWyvernTime"));
    if AV:isSpawned() and (os.time()-1) - AV:getLocalVar("callWyvernTime") < 5 then
		if (player:checkDistance(AV) <= 20) and (partyType == 2) then
			AV:setLocalVar("callWyvern", 0)
			printf("locked Call Wyvern")
		end
    end
	end
	
    player:spawnPet(PET_WYVERN);
end;
