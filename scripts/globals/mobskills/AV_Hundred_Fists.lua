---------------------------------------------------
-- Hundred Fists
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
    local duration = 45;
    mob:setLocalVar("hundredFistsTime", os.time());
    mob:setLocalVar("ultTime", mob:getBattleTime() + math.random(60,90));
    mob:setSpellList(0);

    MobBuffMove(mob, dsp.effects.HUNDRED_FISTS, 1, 0, duration);
    MobBuffMove(mob, dsp.effects.AMNESIA, 1, 0, duration); -- No WS
	

    skill:setMsg(msgBasic.USES);
    return dsp.effects.HUNDRED_FISTS;
end;
