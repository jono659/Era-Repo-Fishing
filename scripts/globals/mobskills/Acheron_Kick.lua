 ---------------------------------------------------
-- Acheron Kick
-- Deals heavy damage to target who takes hate from behind the user.
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
	if (target:isBehind(mob, 48) == false) then
        return 1;
    end
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)

	local typeEffect = dsp.effects.WEIGHT;
    local numhits = 1;
    local accmod = 1;
    local dmgmod = 3.5;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_NONE,MOBPARAM_WIPE_SHADOWS);

	
    MobPhysicalStatusEffectMove(mob, target, skill, typeEffect, 20, 0, 120);
	

    target:delHP(dmg);
    return dmg;

end;