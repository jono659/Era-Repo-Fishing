-----------------------------------
-- Ability: Flashy Shot
-- Your next attack will generate more enmity and ignore level difference penalties.
-- Obtained: Ranger Level 75, from Merit Points
-- Recast Time: 0:10:00
-- Duration: Instant
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");

-----------------------------------
-- onAbilityCheck
-----------------------------------

function onAbilityCheck(player,target,ability)
    return 0,0;
end;

-----------------------------------
-- onUseAbility
-----------------------------------

function onUseAbility(player,target,ability)
    local merits = player:getMerit(MERIT_FLASHY_SHOT);
    player:addStatusEffect(dsp.effects.FLASHY_SHOT,merits-5,0,60);
end;