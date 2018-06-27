---------------------------------------------------
-- Familiar
-- pet powers increase.
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
    local wynavs = {16912877, 16912878, 16912879, 16912880, 16912881, 16912882};
	local AV = 16912876;
    mob:setLocalVar("familiarTime", os.time());
    mob:setLocalVar("ultTime", mob:getBattleTime() + math.random(45,90));
    
    for i = 1,6 do
        local wynav = GetMobByID(wynavs[i]);
        wynav:setMod(MOD_ATT, 500);
		wynav:addStatusEffect(dsp.effects.MAX_HP_BOOST,100,0,0);
        wynav:addHP(1500);
    end;

    skill:setMsg(msgBasic.FAMILIAR);
    return 0;
end;
