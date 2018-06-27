-----------------------------------------
-- ID: 19163
-- Item: Nightfall
-- Additional Effect: Terror
-----------------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/msg");
-----------------------------------

function onAdditionalEffect(player,target,damage)
    local chance = 5;

    if (math.random(0,99) >= chance or applyResistanceAddEffect(player,target,ELE_DARK,0) <= 0.5) then
        return 0,0,0;
    else
        target:addStatusEffect(dsp.effects.TERROR, 1, 0, 5);
        return SUBEFFECT_TERROR, msgBasic.ADD_EFFECT_STATUS, dsp.effects.TERROR;
    end
end;