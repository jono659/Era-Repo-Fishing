---------------------------------------------
--  Sea Spray
--
--  Description: Deals water damage to enemies within a fan-shaped area originating from the caster. Additional effect: Slow.
--  Type: Magical (Ice)
--
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
    local typeEffect = dsp.effects.SLOW;

    MobStatusEffectMove(mob, target, typeEffect, 256, 0, 120);

    local dmgmod = MobBreathMove(mob, target, 0.333, 0.625, ELE_WATER, 500);

    local dmg = MobFinalAdjustments(dmgmod,mob,skill,target,MOBSKILL_BREATH,MOBPARAM_WATER,MOBPARAM_IGNORE_SHADOWS);
    target:delHP(dmg);
    return dmg;
end;
