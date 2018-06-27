-----------------------------------
-- Ability: Soul Voice
-- Enhances the effects of your songs.
-- Obtained: Bard Level 1
-- Recast Time: 1:00:00
-- Duration: 0:03:00
-----------------------------------
 
require("scripts/globals/settings");
require("scripts/globals/status");
-----------------------------------

function onAbilityCheck(player,target,ability)
    return 0,0;
end;

function onUseAbility(player, target, ability)
    -- ERA Custom Code
	local partyType = player:checkSoloPartyAlliance();
	local Zone = player:getZoneID();
	
	if Zone == 33 then
    local AV = GetMobByID(16912876);
    printf("Time: %i | soulVoiceTime: %i | Diff: %i", os.time(), AV:getLocalVar("soulVoiceTime"), os.time() - AV:getLocalVar("soulVoiceTime"));
    if AV:isSpawned() and (os.time()-1) - AV:getLocalVar("soulVoiceTime") < 5 then
		if (player:checkDistance(AV) <= 20) and (partyType == 2) then
                AV:setLocalVar("soulVoice", 0);
				printf("locked soulVoice");
        end;
    end;
	end
    
    player:addStatusEffect(dsp.effects.SOUL_VOICE,1,0,180);
end;