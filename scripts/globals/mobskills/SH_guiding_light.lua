---------------------------------------------
-- guiding_light
-- Description: Restores HP.
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/msg");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
        return 0;
end;

function onMobWeaponSkill(target, mob, skill)

    local heal = math.random(1000, 1400);


    skill:setMsg(msgBasic.SELF_HEAL);

    return MobHealMove(mob, heal);
end;
