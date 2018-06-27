---------------------------------------------
--  Crippling Slam
--
--  Description: Delivers an area attack. 15 yalms
--  Type: Physical (Blunt)
--  Wipes Shadows
--
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local numhits = 1;
    local accmod = 1;
    local dmgmod = 3;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_BLUNT,MOBPARAM_WIPE_SHADOWS);
    MobStatusEffectMove(mob, target, dsp.effects.PARALYSIS, 20, 0, 120);
    target:delHP(dmg);
    return dmg;
end;
