---------------------------------------------------
-- Astral Flow
---------------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 1;
end;

function onMobWeaponSkill(target, mob, skill)
    local wynavs = {16912877, 16912878, 16912879, 16912880, 16912881, 16912882};
    mob:setLocalVar("astralFlowTime", os.time());
    mob:setLocalVar("ultTime", mob:getBattleTime() + math.random(45,90));
    
    for i = 1, 6 do
        local wynav = GetMobByID(wynavs[i]);
        if wynav:isSpawned() then
            wynav:setTP(3000);
            wynav:useMobAbility(899 + math.random(1,6));
        end;
    end;
    
    skill:setMsg(msgBasic.USES);
    return dsp.effects.ASTRAL_FLOW;
end;
