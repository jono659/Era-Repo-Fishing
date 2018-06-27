---------------------------------------------
--  Frozen Mist
--  Deals Ice damage to targets in a radial area of effect.
--  Additional Effect: Terror
--  Range: 10'
--  Utsusemi/Blink absorb: Wipes shadows
---------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)

    local dmgmod = 1;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg() * 3.5,ELE_ICE,dmgmod,TP_MAB_BONUS,1);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_ICE,MOBPARAM_WIPE_SHADOWS);
	
	local typeEffect = dsp.effects.TERROR;

    MobPhysicalStatusEffectMove(mob, target, skill, typeEffect, 20, 0, 30);
	skill:setMsg(MobBuffMove(mob, dsp.effects.PHYSICAL_SHIELD, base, 0, 60));
	
    target:delHP(dmg);
    return dmg;
end;
