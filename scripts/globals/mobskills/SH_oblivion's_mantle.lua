---------------------------------------------------
-- oblivion's_mantle
--
---------------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    local mobSkin = mob:getModelId();

    if (mobSkin == 1820) then
        return 0;
    else
        return 1;
    end
end;

function onMobWeaponSkill(target, mob, skill)
    local shell = dsp.effects.SHELL;
    local power = 100;
    local protect = dsp.effects.PROTECT;
	local blink = dsp.effects.BLINK;
	local base = math.random(10,25);

    skill:setMsg(MobBuffMove(mob, shell, power, 0, 180));
	skill:setMsg(MobBuffMove(mob, protect, power, 0, 180));
    skill:setMsg(MobBuffMove(mob, blink, base, 0, 120));
	skill:setMsg(MobBuffMove(mob, dsp.effects.HASTE, 25, 0, 180));
	
    return protect;
end;