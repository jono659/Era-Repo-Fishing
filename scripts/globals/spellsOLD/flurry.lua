-----------------------------------------
-- Spell: Flurry
-----------------------------------------

require("scripts/globals/magic");
require("scripts/globals/status");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)

    if target:addStatusEffect(dsp.effects.FLURRY, 15, 0, 180) then
        spell:setMsg(236);
    else
        spell:setMsg(75);
    end;

    return dsp.effects.FLURRY;
end;