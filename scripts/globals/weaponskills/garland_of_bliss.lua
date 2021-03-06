-----------------------------------
-- Garland Of Bliss
-- Staff weapon skill
-- Skill level: N/A
-- Lowers target's defense. Duration of effect varies with TP. Nirvana: Aftermath effect varies with TP.
-- Reduces enemy's defense by 12.5%.
-- Available only after completing the Unlocking a Myth (Summoner) quest.
-- Aligned with the Flame Gorget, Light Gorget & Aqua Gorget.
-- Aligned with the Flame Belt, Light Belt & Aqua Belt.
-- Element: Light
-- Modifiers: MND:40%
-- 100%TP    200%TP    300%TP
-- 2.00      2.00      2.00
-----------------------------------
require("scripts/globals/magic");
require("scripts/globals/status");
require("scripts/globals/settings");
require("scripts/globals/weaponskills");
-----------------------------------

function onUseWeaponSkill(player, target, wsID, tp, primary, action, taChar)
	if (player:getVar("MythicSmn") >= 500) then

    local params = {};
    params.ftp100 = 2; params.ftp200 = 2; params.ftp300 = 2;
    params.str_wsc = 0.0; params.dex_wsc = 0.0; params.vit_wsc = 0.0; params.agi_wsc = 0.0; params.int_wsc = 0.0; 
    params.mnd_wsc = 0.4; params.chr_wsc = 0.0;
    params.ele = ELE_LIGHT;
    params.skill = SKILL_STF;
    params.includemab = true;

    if (USE_ADOULIN_WEAPON_SKILL_CHANGES == true) then
        params.ftp100 = 2.25; params.ftp200 = 2.25; params.ftp300 = 2.25;
        params.str_wsc = 0.3; params.mnd_wsc = 0.7;
    end

    local damage, criticalHit, tpHits, extraHits = doMagicWeaponskill(player, target, wsID, tp, primary, action, params);
    if (damage > 0 and target:hasStatusEffect(dsp.effects.DEFENSE_DOWN) == false) then
        local duration = (30 + (tp/1000 * 30)) * applyResistanceAddEffect(player,target,ELE_WIND,0);
        target:addStatusEffect(dsp.effects.DEFENSE_DOWN, 12.5, 0, duration);
    end


    if ((player:getEquipID(SLOT_MAIN) == 19005) and (player:getMainJob() == JOBS.SMN)) then
        if (damage > 0) then
            applyAftermathEffect(player, tp)
        end
    end
	local chance = 100
    if (player:getEquipID(SLOT_NECK) == 27510 ) then
		if (math.random(0,100) >= chance ) then
			player:setTP(1000);
		end
	end
    scoreCheck(player, wsID, damage, target); return tpHits, extraHits, criticalHit, damage;

	else
		player:PrintToPlayer("Something is holding you back!");
	scoreCheck(player, wsID, damage, target); return 0,0,0,0;
	end
end