---------------------------------------------------
-- Invincible
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
require("scripts/globals/msg");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 1;
end;

function onMobWeaponSkill(target, mob, skill)
    local duration = 30;
    mob:setLocalVar("invincibleTime", os.time());
    mob:setLocalVar("ultTime", mob:getBattleTime() + math.random(60,90));

    MobBuffMove(mob, dsp.effects.INVINCIBLE, 1, 0, duration);

    skill:setMsg(msgBasic.USES);
    return dsp.effects.INVINCIBLE;
end;
