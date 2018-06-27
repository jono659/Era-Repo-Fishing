---------------------------------------------
-- Eternal Damnation
--
-- Description: Inflicts Doom upon an enemy.
-- Type: Magical (Dark)
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------
--  2111,1453,eternal_damnation,4,15,2000,1500,4,---
function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = dsp.effects.DOOM;

    skill:setMsg(MobGazeMove(mob, target, typeEffect, 10, 3, 30));

    return typeEffect;
end;
