---------------------------------------------------
--  Feral Peck
--  Ignors Utsusemi
--  Description:  Reduces target's HP to 10% of its maximum value
---------------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local targetCurrentHP = target:getHP();
    local hpset = target:getMaxHP() * 0.10;
  

    if (targetCurrentHP > hpset) then
        dmg = targetCurrentHP - hpset;
    else
        dmg = 0;
    end

    target:delHP(dmg);
    return dmg;
end;
