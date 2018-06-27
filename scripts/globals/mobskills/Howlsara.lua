---------------------------------------------
--  Howl used by Sara ZNM
--
--  Description: Makes it use the following moves
--  
--  
--  
-----------------------------------------------

require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------

function onMobSkillCheck(target,mob,skill)
	if(mob:hasStatusEffect(dsp.effects.CHAINSPELL) == false) then
    return 0;
	else
		if(mob:hasStatusEffect(dsp.effects.CHAINSPELL) == true) then
	return 1;
	end
	end
end;

function onMobWeaponSkill(target, mob, skill)
	mob:setLocalVar("howl",1);
	return 0;				
end;
