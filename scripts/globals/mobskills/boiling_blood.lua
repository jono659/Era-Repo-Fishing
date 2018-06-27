---------------------------------------------
-- Boiling Blood
-- Increases attack speed.
-- Berserk Effect
-- Defense Down
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = dsp.effects.HASTE;
    
    skill:setMsg(MobBuffMove(mob, dsp.effects.HASTE, 102, 0, 300));
	skill:setMsg(MobBuffMove(mob, dsp.effects.BERSERK, 1, 0, 180));
    return typeEffect;
end
