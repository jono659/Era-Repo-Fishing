---------------------------------------------------
-- Chainspell
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
    local duration = 60;
    mob:setLocalVar("chainspellTime", os.time());
    mob:setLocalVar("ultTime", mob:getBattleTime() + math.random(90,120));
    mob:setLocalVar("phaseTime", mob:getBattleTime() + 10);
    
    MobBuffMove(mob, dsp.effects.CHAINSPELL, 1, 0, duration);
    MobBuffMove(mob, dsp.effects.AMNESIA, 1, 0, duration); -- No WS

    skill:setMsg(msgBasic.USES);
    return dsp.effects.CHAINSPELL;
end;
