-----------------------------------------
-- Spell: Repose
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
    local dMND = (caster:getStat(MOD_MND) - target:getStat(MOD_MND));
    local params = {};
    params.diff = nil;
    params.attribute = MOD_MND;
    params.skillType = DIVINE_MAGIC_SKILL;
    params.bonus = 0;
    params.effect = dsp.effects.SLEEP_II;
    resist = applyResistanceEffect(caster, target, spell, params);
    if (resist < 0.5) then
        spell:setMsg(85); -- Resist
        return dsp.effects.SLEEP_II;
    end

    if (target:addStatusEffect(dsp.effects.SLEEP_II,2,0,90*resist)) then
        spell:setMsg(237);
    else
        spell:setMsg(75); -- No effect
    end

    return dsp.effects.SLEEP_II;
end;
