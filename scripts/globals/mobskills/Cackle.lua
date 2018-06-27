---------------------------------------------------
-- Cackle
-- Reduces magical attack, accuracy, and defense of targets in an area of effect.
---------------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    -- See PW's script
    local phase = mob:getLocalVar("phase");
    if (phase  % 2 ==  1 ) then
        return 0;
    else
        return 1;
    end
end;

function onMobWeaponSkill(target, mob, skill)
	local typeEffect = dsp.effects.MAGIC_ACC_DOWN;
	
    MobStatusEffectMove(mob, target, dsp.effects.MAGIC_ATK_DOWN, 8, 0, 120);
	MobStatusEffectMove(mob, target, dsp.effects.MAGIC_DEF_DOWN, 8, 0, 120);
	MobStatusEffectMove(mob, target, dsp.effects.MAGIC_ACC_DOWN, 8, 0, 120);
	
	skill:setMsg(MSG_ENFEEB_IS);
	
	return typeEffect;
end;