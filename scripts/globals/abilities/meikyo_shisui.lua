-----------------------------------
-- Ability: Meikyo Shisui
-- Reduces cost of weapon skills.
-- Obtained: Samurai Level 1
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
    printf("Time: %i | meikyoShisuiTime: %i | Diff: %i", os.time(), AV:getLocalVar("meikyoShisuiTime"), os.time() - AV:getLocalVar("meikyoShisuiTime"));
    if AV:isSpawned() and (os.time()-1) - AV:getLocalVar("meikyoShisuiTime") < 5 then
		if (player:checkDistance(AV) <= 20) and (partyType == 2) then
                AV:setLocalVar("meikyoShisui", 0);
				printf("locked Meikyo");
        end;
    end;
    end
    player:addStatusEffect(dsp.effects.MEIKYO_SHISUI,1,0,30);
    player:addTP(3000);
end;