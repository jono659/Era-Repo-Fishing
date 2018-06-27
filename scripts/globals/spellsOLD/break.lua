-----------------------------------------
-- Spell: Breakga
-- Temporarily blinds an enemy, greatly lowering its accuracy.
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
    local dINT = (caster:getStat(MOD_INT) - target:getStat(MOD_INT));
    local params = {};
    params.diff = nil;
    params.attribute = MOD_INT;
    params.skillType = 35;
    params.bonus = 0;
    params.effect = dsp.effects.PETRIFICATION;
    resist = applyResistanceEffect(caster, target, spell, params);
    -- Duration, including resistance.  Unconfirmed.
    local duration = 30 * resist;

    if (resist > 0.5) then
        if (caster:hasStatusEffect(dsp.effects.SABOTEUR)) then
            duration = duration * 2;
            caster:delStatusEffect(dsp.effects.SABOTEUR);
        end

        if (target:addStatusEffect(dsp.effects.PETRIFICATION,1,0,duration)) then
            spell:setMsg(236);
        else
            spell:setMsg(75);
        end
    else
        spell:setMsg(85);
    end

    return dsp.effects.PETRIFICATION;
end;