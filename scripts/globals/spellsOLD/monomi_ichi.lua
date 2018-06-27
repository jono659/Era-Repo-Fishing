-----------------------------------------
-- Spell: Monomi: Ichi
-- Lessens chance of being detected by sound
-- Duration is 3 minutes (non-random duration)
-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    if (target:hasStatusEffect(dsp.effects.SNEAK) == false) then
        spell:setMsg(230);
        target:addStatusEffect(dsp.effects.SNEAK,0,10,420);
    else
        spell:setMsg(75); -- no effect.
    end

    return dsp.effects.SNEAK;
end;
