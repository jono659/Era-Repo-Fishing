---------------------------------------------------
-- Soul Voice
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
    local duration = 90;
    mob:setLocalVar("soulVoiceTime", os.time());
    mob:setLocalVar("ultTime", mob:getBattleTime() + math.random(120,150));
    mob:setSpellList(413);
    
    MobBuffMove(mob, EFFECT_SOUL_VOICE, 1, 0, duration);
    MobBuffMove(mob, EFFECT_AMNESIA, 1, 0, duration);

    skill:setMsg(msgBasic.USES);
    return EFFECT_SOUL_VOICE;
end;
