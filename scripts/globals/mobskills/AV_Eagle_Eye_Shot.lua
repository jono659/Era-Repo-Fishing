---------------------------------------------------
-- Eagle Eye Shot
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 1;
end;

function onMobWeaponSkill(target, mob, skill)
    mob:setLocalVar("eagleEyeShotTime", os.time());
    mob:setLocalVar("ultTime", mob:getBattleTime() + math.random(45,90));
    
    local numhits = 1;
    local accmod = 2;
    local dmgmod = 9 + math.random(1,2);

    local info = MobRangedMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);

    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_RANGED,MOBPARAM_PIERCE,info.hitslanded);

    if (dmg > 0) then
       target:addTP(20);
       mob:addTP(80);
    end

    target:delHP(dmg);

    return dmg;
end;
