---------------------------------------------
-- Vile Belch
--
-- Description: Silences and Plague an enemy.
-- Radial
-- Ignores Shadows
--
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    
    skill:setMsg(MobStatusEffectMove(mob, target, dsp.effects.PLAGUE, 1, 0, 120));
	skill:setMsg(MobStatusEffectMove(mob, target, dsp.effects.SILENCE, 1, 0, 120));

    return dsp.effects.PLAGUE;
end;
