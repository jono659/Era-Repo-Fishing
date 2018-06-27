---------------------------------------------------
-- Benediction
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
require("scripts/globals/msg");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 1;
end;

function onMobWeaponSkill(target, mob, skill)
    mob:setLocalVar("benedictionTime", os.time());
    mob:setLocalVar("ultTime", mob:getBattleTime() + math.random(45,90));

    
    local maxHeal = mob:getMaxHP() - mob:getHP();
    mob:addHP(maxHeal);
    mob:eraseAllStatusEffect();

    skill:setMsg(msgBasic.SELF_HEAL);
    return maxHeal;
end;
