---------------------------------------------
-- Viscis Emission
--
-- Description: Inflicts amnesia in an area of effect
-- Type: Enfeebling
-- Utsusemi/Blink absorb: Ignores shadows
-- Range: 15'
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

	local typeEffect = dsp.effects.AMNESIA;
	
    skill:setMsg(MobStatusEffectMove(mob, target, skill, typeEffect, 1, 0, 60));

    return typeEffect;
end;
