-----------------------------------------
-- Spell: Silena
-- Removes silence and mute from target.
-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    if (target:delStatusEffect(dsp.effects.SILENCE)) then
        spell:setMsg(83);
    else
        spell:setMsg(75);
    end
    return dsp.effects.SILENCE;
end;