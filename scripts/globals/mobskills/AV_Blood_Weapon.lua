---------------------------------------------------
-- Blood Weapon
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
	local typeEffect = dsp.effects.BLOOD_WEAPON;
    mob:setLocalVar("bloodWeaponTime", os.time());
    mob:setLocalVar("ultTime", mob:getBattleTime() + math.random(60,90));
    
    MobBuffMove(mob, dsp.effects.BLOOD_WEAPON, 1, 0, duration);
    
    skill:setMsg(msgBasic.USES);
    return typeEffect;
end;
