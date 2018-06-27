----------------------------------
-- Ability: Cover
-- Allows player to protect the
-- target by placing themselves
-- between them and the enemy.
-----------------------------------
 
require("scripts/globals/settings");
require("scripts/globals/status");

-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");

-----------------------------------
-- onAbilityCheck
-----------------------------------

function onAbilityCheck(player,target,ability)
    if (target == nil or target:getID() == player:getID() or not target:isPC()) then
        return MSGBASIC_CANNOT_ON_THAT_TARG, 0;
    else
        return 0, 0;
    end
end;

-----------------------------------
-- onUseAbility
-----------------------------------

function onUseAbility(player,target,ability)
    target:transferEnmity(player, 75, 20.6)
end;