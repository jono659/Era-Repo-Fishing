 ---------------------------------------------------
-- Damsel Memento
-- Self-Heal
-- Potency: 3000
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    local param = skill:getParam();
    if (param == 0) then
        param = 50;
    end

    if (mob:getHPP() <= param) then
        return 0;
    end

    return 1;
end;

function onMobWeaponSkill(target, mob, skill)
    local baseHeal = 3000;
    local statusHeal = 0;
    local effectCount = 0;
    local dispel = mob:eraseStatusEffect();
    
    while (dispel ~= dsp.effects.NONE)
    do
        effectCount = effectCount + 1;
        dispel = mob:eraseStatusEffect();
    end;

    skill:setMsg(MSG_SELF_HEAL);
    return MobHealMove(mob, statusHeal * effectCount + baseHeal);
end;