---------------------------------------------
--  Decollation
--  Family: Qutrub
--  Description: Deals damage in a threefold attack to targets in a fan-shaped area of effect.
--  Type: Physical
--  Utsusemi/Blink absorb: 3 shadows
--  Range: Front cone
-- 2107,1450,decollation,4,7,2000,1500,4,
---------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local numhits = 3;
    local accmod = 1;
    local dmgmod = 1;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,info.hitslanded);
    target:delHP(dmg);
    return dmg;
end;
