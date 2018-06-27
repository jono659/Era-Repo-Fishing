-----------------------------------------
-- Spell: Reprisal
-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    local duration = 60;
    local maxReflectedDamage = target:getMaxHP() * 2;
    local reflectedPercent = 33;
  local typeEffect = dsp.effects.REPRISAL;
    if (caster:hasStatusEffect(dsp.effects.COMPOSURE) == true and caster:getID() == target:getID()) then
        duration = duration * 3;
    end

   if (target:addStatusEffect(typeEffect,reflectedPercent, 0,duration, 0, maxReflectedDamage, 1)) then
     spell:setMsg(230);
   else
     spell:setMsg(75);
   end

    return typeEffect;
end;
