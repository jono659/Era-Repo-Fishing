---------------------------------------------------
-- Meikyo Shisui
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
    mob:setLocalVar("meikyoShisuiTime", os.time());
    mob:setLocalVar("ultTime", mob:getBattleTime() + math.random(60,90));
	mob:setLocalVar("Sam Mode",1)
    mob:setSpellList(0);
    
    MobBuffMove(mob, dsp.effects.MEIKYO_SHISUI, 1, 0, duration);
    skill:setMsg(msgBasic.USES);
	printf("start %i", mob:getLocalVar("Sam Mode"));
    return dsp.effects.MEIKYO_SHISUI;
end;
