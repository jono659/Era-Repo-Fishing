---------------------------------------------
--  Light Of Penance
--------------------------------------------- 
require("scripts/globals/magic");
require("scripts/globals/status");
require("scripts/globals/bluemagic");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
	return 0;
end;

function onSpellCast(caster,target,spell)

local resist = applyResistance(caster,spell,target,caster:getStat(MOD_INT) - target:getStat(MOD_INT),BLUE_SKILL,1.0);

if 		
			((target:getID() == 16912846) or -- Prudence 1
			(target:getID() == 16912847) or -- Prudence 2
			(target:getID() == 16916814) or -- temperance
			(target:getID() == 16912838) or -- hope
			(target:getID() == 16921021) or -- faith
			(target:getID() == 16921015) or -- fortitude
			(target:getID() == 16912839) or -- justice
			(target:getID() == 16912848) or -- love
			(target:getID() == 16912876)) then
	spell:setMsg(75); -- no effect
	
	else

if(resist > 0.3) then
	local typeEffect = dsp.effects.BLINDNESS;
		target:delStatusEffect(typeEffect);
		target:addStatusEffect(typeEffect,10,0,getBlueEffectDuration(caster,resist,typeEffect));
		target:delTP(15);
	end
	
if(resist > 0.3) then	
	local typeEffect = dsp.effects.BIND;
		target:delStatusEffect(typeEffect);
		target:addStatusEffect(typeEffect,1,0,getBlueEffectDuration(caster,resist,typeEffect));
	end
	
end
	return dsp.effects.BLINDNESS;

end;