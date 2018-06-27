-----------------------------------------
-- Spell: Viruna
-- Removes disease or plague from target.
-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    if (target:delStatusEffect(dsp.effects.DISEASE)) then
        spell:setMsg(83);
        return dsp.effects.DISEASE;
    elseif (target:delStatusEffect(dsp.effects.PLAGUE)) then
        spell:setMsg(83);
        return dsp.effects.PLAGUE;
    else
        spell:setMsg(75);
    end

    return 0;
end;