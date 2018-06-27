---------------------------------------------
-- Immortal Mind
-- Enhances Magic Attack.
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
	skill:setMsg(MobBuffMove(mob, dsp.effects.MAGIC_DEF_BOOST, 20, 0, 300));
	skill:setMsg(MobBuffMove(mob, dsp.effects.MAGIC_ATK_BOOST, 20, 0, 300));
    return dsp.effects.MAGIC_ATK_BOOST;
end;
