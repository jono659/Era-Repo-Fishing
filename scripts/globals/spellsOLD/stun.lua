-----------------------------------------
-- Spell: Stun
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
    local duration = 5;

    local dINT = caster:getStat(MOD_INT) - target:getStat(MOD_INT);
    local params = {};
    params.diff = nil;
    params.attribute = MOD_INT;
    params.skillType = 37;
    params.bonus = 0;
    params.effect = dsp.effects.STUN;
    resist = applyResistanceEffect(caster, target, spell, params);
    if (resist <= (1/16)) then
        -- resisted!
        spell:setMsg(85);
        return 0;
    end

    if (target:hasStatusEffect(dsp.effects.STUN)) then
        -- no effect
        spell:setMsg(75);
    else
        if (target:addStatusEffect(dsp.effects.STUN,1,0,duration*resist)) then
            spell:setMsg(236);
        else
            spell:setMsg(75);
        end
    end

    return dsp.effects.STUN;
end;