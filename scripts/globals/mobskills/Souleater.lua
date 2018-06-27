---------------------------------------------------
-- Souleater
-- Souleater Ability.
---------------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if(mob:getHPP() <= 0) then
        return 0;
    end
    return 1;
end;

function onMobWeaponSkill(target, mob, skill)
local typeEffect = dsp.effects.SOULEATER;

	mob:addStatusEffect(dsp.effects.SOULEATER, 0, 0, 60);
  

    skill:setMsg(MSG_BUFF);
    return dsp.effects.SOULEATER;
end;
