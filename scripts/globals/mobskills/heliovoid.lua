---------------------------------------------
-- Heliovoid
-- Steal one effect
-- 2109,1452,heliovoid,1,20,2000,1500,4
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)

    skill:setMsg(MobDrainStatusEffectMove(mob, target));

    return 1;
end;
