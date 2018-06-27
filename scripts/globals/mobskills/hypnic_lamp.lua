---------------------------------------------
-- Hypnic Lamp
-- 15' AoE sleep
-- only used while has eye stalk
-- ignores shadows
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    local animation = mob:getAnimationSub();
	
    if (animation == 0) then
        return 0;
	else
		return 1;
	end
end;

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = dsp.effects.SLEEP_I;

    skill:setMsg(MobStatusEffectMove(mob, target, typeEffect, 1, 0, 20));

    return typeEffect;
end;
