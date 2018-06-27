-----------------------------------------
-- Spell: Meteor
-- Deals non-elemental damage to an enemy.
-----------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/magic");
require("scripts/globals/status");
require("scripts/globals/msg");
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
   -- TODO: Correct message is "Incorrect job, job level too low, or required ability not activated."  Unable to locate this in our basic or system message functions.
   -- The client blocks the spell via menus, but it can still be cast via text commands, so we have to block it here, albiet with the wrong message.
    if (caster:isMob()) then
        return 0;
    elseif (caster:hasStatusEffect(dsp.effects.ELEMENTAL_SEAL) == true) then
        return 0;
    else
        return msgBasic.STATUS_PREVENTS;
    end
end;

function onSpellCast(caster,target,spell)

    --calculate raw damage
    --Byrthnoth @ Random Facts Thread: Magic @ BG:
    --Spell Base Damage = MAB/MDB*floor(Int + Elemental Magic Skill/6)*3.5
    --NOT AFFECTED BY DARK BONUSES (bonus ETC)
    --I'll just point this out again. It can't resist, there's no dINT, and the damage is non-elemental. The only terms that affect it for monsters (that we know of) are MDB and MDT. If a --normal monster would take 50k damage from your group, Botulus would take 40k damage. Every. Time.
	--[Single Target] = Base Damage x 1.0
	--[2 to 9 Targets] = 0.9 - 0.05T where T is the number of targets
	--[10+ Targets] = Base Damage x 0.4 
    local dmg = 0;
    if (caster:isPC()) then
        dmg = ((100+caster:getMod(MOD_MATT))/(100+target:getMod(MOD_MDEF))) * (caster:getStat(MOD_INT) + caster:getSkillLevel(ELEMENTAL_MAGIC_SKILL)/6) * 3.5;
    else
	local people = spell:getTotalTargets();
		if people == 1 then
			people = 1;
		elseif people == 2 then
			people = .9;
		elseif people >= 3 and people <= 9 then
			people = .7;
		elseif people >= 10 then
			people = .4;
		end

        dmg = (((100+caster:getMod(MOD_MATT))/(100+target:getMod(MOD_MDEF))) * (caster:getStat(MOD_INT) + (caster:getMaxSkillLevel(caster:getMainLvl(), JOBS.BLM, ELEMENTAL_MAGIC_SKILL))/6)*(people)) * 9.4;
    end

    --add in target adjustment
    dmg = adjustForTarget(target,dmg,spell:getElement());
    --add in final adjustments
    dmg = finalMagicAdjustments(caster,target,spell,dmg);
	if target:hasStatusEffect(dsp.effects.FEALTY) then
		dmg = (dmg/93.8);
	else 
		dmg = dmg;
	end
    return dmg;

end;