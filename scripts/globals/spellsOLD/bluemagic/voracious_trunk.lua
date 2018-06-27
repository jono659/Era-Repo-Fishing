-----------------------------------------
-- Spell: voracious_trunk
-----------------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------------
-- OnMagicCastingCheck
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
	return 0;
end;

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onSpellCast(caster,target,spell)
    
    local dINT = (caster:getStat(MOD_INT) - target:getStat(MOD_INT));
    local resist = applyResistance(caster,spell,target,dINT,BLUE_SKILL);
    local effect = dsp.effects.NONE;

	--using blank gaze for a dispel at least for now
	
    if (resist > 0.0625) then
        if (target:isFacing(caster)) then
            spell:setMsg(341);
            effect = target:dispelStatusEffect();
            if (effect == dsp.effects.NONE) then
                spell:setMsg(75);
            end;
        else
            spell:setMsg(75);
        end;
    else
        spell:setMsg(85);
    end

    return effect;
end;