-----------------------------------
-- Ability: Manafont
-- Eliminates the cost of magic spells.
-- Obtained: Black Mage Level 1
-- Recast Time: 1:00:00
-- Duration: 0:01:00
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
    printf("Time: %i | manaFontTime: %i | Diff: %i", os.time(), AV:getLocalVar("manaFontTime"), os.time() - AV:getLocalVar("manaFontTime"));
    if AV:isSpawned() and (os.time()-1) - AV:getLocalVar("manaFontTime") < 5 then
        if (player:checkDistance(AV) <= 20) and (partyType == 2) then
            AV:setLocalVar("manaFont", 0);
			printf("locked Manafont");
        end
    end
	end
    
    player:addStatusEffect(dsp.effects.MANAFONT,1,0,60);
end;