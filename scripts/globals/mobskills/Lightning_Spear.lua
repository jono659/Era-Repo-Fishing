--[[

---------------------------------------------------
-- Lightning Spear
-- Deals Lightning Damage
-- Range: 14' Conal
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)
	local targets = mob:getEnmityList();
	local count = 0;

    for i,v in pairs(targets) do
		count = count + 1;
    end
	
	repeat
		target = targets[math.random(0, count - 1)];
    until target:isPC()

	local typeEffect = dsp.effects.AMNESIA;
    local dmgmod = 3;
	
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg() * 5,ELE_LIGHTNING,dmgmod,TP_MAB_BONUS,1);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_THUNDER,MOBPARAM_IGNORE_SHADOWS);
	MobPhysicalStatusEffectMove(mob,target,skill,typeEffect, 20, 0, 120);	
	target:delHP(dmg);
	return dmg;
end;

]]

---------------------------------------------------
-- Lightning Spear
-- Deals Lightning Damage
-- Range: 14' Conal
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 3;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg() * 5,ELE_LIGHTNING,dmgmod,TP_MAB_BONUS,1);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_THUNDER,MOBPARAM_IGNORE_SHADOWS);
	local typeEffect = dsp.effects.AMNESIA;
    MobPhysicalStatusEffectMove(mob,target,skill,typeEffect, 20, 0, 120);
	target:delHP(dmg);
    return dmg;
end;
