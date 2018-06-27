-----------------------------------
-- Ability: Mijin Gakure
-- Sacrifices user's life to deal damage to an enemy.
-- Obtained: Ninja Level 1
-- Recast Time: 1:00:00
-- Duration: Instant
-----------------------------------
require("scripts/globals/monstertpmoves");
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
    printf("Time: %i | mijinGakureTime: %i | Diff: %i", os.time(), AV:getLocalVar("mijinGakureTime"), os.time() - AV:getLocalVar("mijinGakureTime"));
    if AV:isSpawned() and (os.time()-1) - AV:getLocalVar("mijinGakureTime") < 5 then
		if (player:checkDistance(AV) <= 20) and (partyType == 2) then
			AV:setLocalVar("mijinGakure", 0);
				printf("locked mijinGakure");
        end;
    end;
	end
    local dmg = (player:getHP() * 0.8) + (player:getMainLvl() / 0.5);
    local resist = applyPlayerResistance(player, nil, target, player:getStat(MOD_INT)-target:getStat(MOD_INT), 0, ELE_NONE);

    dmg = dmg * resist;

    target:delHP(dmg);

    player:setLocalVar("MijinGakure", 1)
    player:setHP(0)
    return dmg;
end;
