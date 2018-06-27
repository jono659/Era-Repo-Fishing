-----------------------------------------
-- ID: 16905
-- Item: bokuto
-- Additional Effect: blind Damage
-----------------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------
function onAdditionalEffect(player,target,damage)
    local chance = 9;
    if (target:getMainLvl() > player:getMainLvl()) then
        chance = chance - 5 * (target:getMainLvl() - player:getMainLvl())
        chance = utils.clamp(chance, 5, 9);
    end
    if (math.random(0,99) >= chance) then
        return 0,0,0;
    else
        local duration = 25;
        if (target:getMainLvl() > player:getMainLvl()) then
            duration = duration - (target:getMainLvl() - player:getMainLvl())
        end
        utils.clamp(duration,1,25);
      --  duration = duration * applyResistanceAddEffect(player,target,dsp.effects.BLINDNESS,0);
        if (not target:hasStatusEffect(dsp.effects.BLINDNESS)) then
            target:addStatusEffect(dsp.effects.BLINDNESS, 1, 0, duration);
        end
        return SUBdsp.effects.BLIND, 160, dsp.effects.BLINDNESS;
    end
end;