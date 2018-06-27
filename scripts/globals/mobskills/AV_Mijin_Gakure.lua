---------------------------------------------------
-- Mijin Gakure
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 1;
end;

function onMobWeaponSkill(target, mob, skill)
	
    mob:setLocalVar("mijinGakureTime", os.time());
    mob:setLocalVar("ultTime", mob:getBattleTime() + math.random(45,90));
    
    local dmgmod = 1;
    local hpmod = skill:getHPP() / 100;
    local basePower = 6;
    local power = hpmod * 10 + basePower;
    local baseDmg = mob:getWeaponDmg() * power;

    local info = MobMagicalMove(mob,target,skill,baseDmg,ELE_NONE,dmgmod,TP_MAB_BONUS,1);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_NONE,MOBPARAM_IGNORE_SHADOWS);
    target:delHP(dmg);
    
    return dmg;
end;
