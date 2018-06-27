-----------------------------------------
-- Spell: Tonko: ni
-- Lessens chance of being detected by sound
-- Duration is 5 minutes (non-random duration)
-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    if (target:hasStatusEffect(dsp.effects.INVISIBLE) == false) then
        target:addStatusEffect(dsp.effects.INVISIBLE,0,10,600);
        spell:setMsg(230);
    else
        spell:setMsg(75); -- no effect.
    end

    return dsp.effects.INVISIBLE;
end;
