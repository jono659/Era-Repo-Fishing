---------------------------------------------
--  Hydro Wave
--  Deals Water damage to targets in a fan-shaped area of effect.
--  Range: 10'
--  Utsusemi/Blink absorb: Ignores Shadows
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
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg() * 3.5,ELE_WATER,dmgmod,TP_MAB_BONUS,1);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_WATER,MOBPARAM_IGNORE_SHADOWS);
	
	skill:setMsg(MobBuffMove(mob, WATER_ABSORB, base, 100, 60));
	
    target:delHP(dmg);
    return dmg;
end;
