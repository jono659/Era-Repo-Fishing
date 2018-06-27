-----------------------------------------
-- Spell: Cursna
-- Removes curse and bane from target.
-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- onMagicCastingCheck
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onSpellCast(caster,target,spell)
    local curse = target:getStatusEffect(dsp.effects.CURSE_I);
    local curse2 = target:getStatusEffect(dsp.effects.CURSE_II);
    local bane = target:getStatusEffect(dsp.effects.BANE);
    local bonus = caster:getMod(MOD_ENHANCES_CURSNA) + target:getMod(MOD_ENHANCES_CURSNA_RCVD);
    local power = 25*((100+bonus)/100); -- This 25 is temp until the skill calculation is in.

    spell:setMsg(75);
    if (target:hasStatusEffect(dsp.effects.DOOM) and power > math.random(1, 100)) then
        -- remove doom
        final = dsp.effects.DOOM;
        target:delStatusEffect(dsp.effects.DOOM);
        spell:setMsg(359);
    elseif (curse ~= nil and curse2 ~= nil and bane ~= nil) then
        target:delStatusEffect(dsp.effects.CURSE_I);
        target:delStatusEffect(dsp.effects.CURSE_II);
        target:delStatusEffect(dsp.effects.BANE);
        final = dsp.effects.CURSE_II;
        spell:setMsg(83);
    elseif (curse ~= nil and bane ~= nil) then
        target:delStatusEffect(dsp.effects.CURSE_I);
        target:delStatusEffect(dsp.effects.BANE);
        final = dsp.effects.CURSE_I;
        spell:setMsg(83);
    elseif (curse2 ~= nil and bane ~= nil) then
        target:delStatusEffect(dsp.effects.CURSE_II);
        target:delStatusEffect(dsp.effects.BANE);
        final = dsp.effects.CURSE_II;
        spell:setMsg(83);
    elseif (curse ~= nil) then
        target:delStatusEffect(dsp.effects.CURSE_I);
        final = dsp.effects.CURSE_I;
        spell:setMsg(83);
    elseif (curse2 ~= nil) then
        target:delStatusEffect(dsp.effects.CURSE_II);
        final = dsp.effects.CURSE_II;
        spell:setMsg(83);
    elseif (bane ~= nil) then
        target:delStatusEffect(dsp.effects.BANE);
        final = dsp.effects.BANE;
        spell:setMsg(83);
    end

    return final;
end;
