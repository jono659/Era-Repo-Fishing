-----------------------------------
-- Ability: Accession
-- Allows avatars to use their full strength and allows summmoning of Odin and Alexander.
-- Obtained: Summoner Level 1
-- Recast Time: 1:00:00
-- Duration: 0:03:00
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
    printf("Time: %i | astralFlowTime: %i | Diff: %i", os.time(), AV:getLocalVar("astralFlowTime"), os.time() - AV:getLocalVar("astralFlowTime"));
		if AV:isSpawned() and (os.time()-1) - AV:getLocalVar("astralFlowTime") < 5 then
			if (player:checkDistance(AV) <= 20) and (partyType == 2) then
				AV:setLocalVar("astralFlow", 0);
				printf("locked AstralFlow");
			end
        end;
    end;
    
    player:addStatusEffect(dsp.effects.ASTRAL_FLOW,1,0,180);

    return dsp.effects.ASTRAL_FLOW;
end;