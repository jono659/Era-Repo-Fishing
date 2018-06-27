---------------------------------------------
--  Deathgnash
--
--  Type: Physical
--  Utsusemi/Blink absorb: Ignores shadows
--  Range: Melee
---------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 1;
end;

function onMobWeaponSkill(target, mob, skill)
    local numhits = 1;
    local accmod = 1;
    local dmgmod = 2;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,MOBPARAM_IGNORE_SHADOWS);
    local targetcurrentHP = target:getHP();
    local targetmaxHP = target:getMaxHP();
    local hpset=targetcurrentHP -1;

    --if (targetcurrentHP > hpset) then
     --   dmg= targetcurrentHP - hpset;
    --else
    dmg= targetcurrentHP - 1;
    --end

    target:delHP(dmg);
	mob:resetEnmity(target);
    return dmg;
end;
