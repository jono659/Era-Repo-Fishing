-----------------------------------------
-- Spell: Curse
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

    -- Pull base stats.
    dINT = (caster:getStat(MOD_INT) - target:getStat(MOD_INT));

    power = 50;

    -- Duration, including resistance.  Unconfirmed.
    duration = 300;
    local params = {};
    params.diff = nil;
    params.attribute = MOD_INT;
    params.skillType = 35;
    params.bonus = 0;
    params.effect = dsp.effects.CURSE_I;
    duration = duration * applyResistanceEffect(caster, target, spell, params);

    if (duration >= 150) then --Do it!
        if (target:addStatusEffect(dsp.effects.CURSE_I,power,0,duration)) then
            spell:setMsg(236);
        else
            spell:setMsg(75);
        end
    else
        spell:setMsg(85);
    end

    return dsp.effects.CURSE_I;
end;