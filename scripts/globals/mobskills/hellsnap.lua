---------------------------------------------------
-- Hellsnap
-- Stuns targets in an area of effect.
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    -- See PW's script
    local phase = mob:getLocalVar("phase");
    if (phase  % 2 ==  1 ) then
        return 0;
    else
        return 1;
    end
end;



function onMobWeaponSkill(target, mob, skill)
    MobPhysicalStatusEffectMove(mob, target, skill, dsp.effects.STUN, 1, 0, 4);

    return dsp.effects.STUN;
end;
