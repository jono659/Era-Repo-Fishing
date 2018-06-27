-----------------------------------------
-- Spell: Sacrifice
--
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
    local count = 1;

    local removables = {dsp.effects.FLASH, dsp.effects.BLINDNESS, dsp.effects.PARALYSIS, dsp.effects.POISON, dsp.effects.CURSE_I, dsp.effects.CURSE_II, dsp.effects.DISEASE, dsp.effects.PLAGUE};

    -- remove one effect and add it to me
    for i, effect in ipairs(removables) do

        if (target:hasStatusEffect(effect)) then
            spell:setMsg(572);

            local statusEffect = target:getStatusEffect(effect);

            -- only add it to me if I don't have it
            if (caster:hasStatusEffect(effect) == false) then
                caster:addStatusEffect(effect, statusEffect:getPower(), statusEffect:getTickCount(), statusEffect:getDuration());
            end

            target:delStatusEffect(effect);
            return 1;
        end
    end

    spell:setMsg(75); -- no effect
    return 0;
end;
