-----------------------------------------
-- ID: 16535
-- Item: Bronze Sword
-- Additional Effect: Stun
-----------------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(player,target,damage)
    local chance = 100;

    if (math.random(0,99) >= chance or applyResistanceAddEffect(player,target,ELE_LIGHTNING,0) <= 0.5) then
        return 0,0,0;
    else
        target:addStatusEffect(dsp.effects.STUN, 1, 0, 3);
        return SUBdsp.effects.STUN, MSGBASIC_ADD_dsp.effects.STATUS, dsp.effects.STUN;
    end
end;
