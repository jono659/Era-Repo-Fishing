-----------------------------------------
-- Spell: Protectra V
-----------------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    local meritBonus = caster:getMerit(MERIT_PROTECTRA_V);
    local duration = 1800;
    
    local power = 175 + meritBonus;
    if (meritBonus > 0) then -- certain mobs can cast this spell, so don't apply the -5 for having 0 merits.
        power = power + meritBonus - 5;
    end
    --printf("Protectra V Power: %d", power);
    
    duration = calculateDurationForLvl(duration, 75, target:getMainLvl());

    local typeEffect = dsp.effects.PROTECT;
    if (target:addStatusEffect(typeEffect, power, 0, duration)) then
        spell:setMsg(230);
    else
        spell:setMsg(75); -- no effect
    end

    return typeEffect;
end;
