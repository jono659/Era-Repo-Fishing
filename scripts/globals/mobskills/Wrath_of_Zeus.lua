 ---------------------------------------------------
-- Wrath of Zeus
-- Deals Lightning Damage
-- Range: 14' AoE
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 2.8;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg() * 3.5,ELE_LIGHTNING,dmgmod,TP_MAB_BONUS,1);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_THUNDER,MOBPARAM_IGNORE_SHADOWS);
	local typeEffect = dsp.effects.SILENCE;
    MobPhysicalStatusEffectMove(mob, target, skill, typeEffect, 20, 0, 120);
	target:delHP(dmg);
    return dmg;
end;