-----------------------------------
-- Ability: Chainspell
-- Allows rapid spellcasting.
-- Obtained: Red Mage Level 1
-- Recast Time: 1:00:00
-- Duration: 0:01:00
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
		printf("Time: %i | chainspellTime: %i | Diff: %i", os.time(), AV:getLocalVar("chainspellTime"), os.time() - AV:getLocalVar("chainspellTime"));
		if AV:isSpawned() and (os.time()-1) - AV:getLocalVar("chainspellTime") < 5 then
			if (player:checkDistance(AV) <= 20) and (partyType == 2) then
				AV:setLocalVar("chainspell", 0);
				printf("locked Chainspell")
			end;
		end
    end;
	
    
    player:addStatusEffect(dsp.effects.CHAINSPELL,1,0,60);
end;