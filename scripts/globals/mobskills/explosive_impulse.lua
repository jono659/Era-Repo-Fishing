---------------------------------------------
--  Explosive Impulse
--
--  Description: High DMG AoE Stun
--  Type: Magical
--  Wipe Shadows
--  Range: 10.0' AoE
--  Notes: Only used by Absolute Virtue
---------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local typeEffect1 = dsp.effects.STUN;

    MobStatusEffectMove(mob, target, typeEffect1, 1, 0, 4);

    local dmgmod = 2;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*3.5,ELE_LIGHT,dmgmod,0,1);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_EARTH,MOBPARAM_WIPE_SHADOWS);
    target:delHP(dmg);
    return dmg;
end;
