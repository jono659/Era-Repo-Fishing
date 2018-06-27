 ---------------------------------------------------
-- Severing Fang
-- Additional effect: Defense Down
-- Range: 7' Frontal AoE
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)

    local numhits = 2;
    local accmod = 1;
    local dmgmod = 3.0;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_H2H,info.hitslanded);

    local typeEffect = dsp.effects.DEFENSE_DOWN;

    MobPhysicalStatusEffectMove(mob, target, skill, typeEffect, 20, 0, 120);

    target:delHP(dmg);
    return dmg;

end;