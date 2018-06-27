-----------------------------------------
-- Spell: Utsusemi: San
-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    local effect = target:getStatusEffect(dsp.effects.COPY_IMAGE);
    if (effect == nil) then
        target:addStatusEffectEx(dsp.effects.COPY_IMAGE,dsp.effects.COPY_IMAGE_4,5,0,300);
        target:setMod(MOD_UTSUSEMI, 5);
        spell:setMsg(230);
    elseif (effect:getPower() <= 5) then
        effect:setPower(5);
        effect:setIcon(dsp.effects.COPY_IMAGE_4);
        effect:resetStartTime();
        target:setMod(MOD_UTSUSEMI, 5);
        spell:setMsg(230);
    else
        spell:setMsg(75);
    end
    return dsp.effects.COPY_IMAGE;
end;