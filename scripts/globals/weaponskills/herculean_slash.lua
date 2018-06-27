-----------------------------------
-- Herculean Slash
-- Great Sword weapon skill
-- Skill Level: 290
-- Paralyzes target. Duration of effect varies with TP.
-- Aligned with the Snow Gorget, Thunder Gorget & Breeze Gorget.
-- Aligned with the Snow Belt, Thunder Belt & Breeze Belt.
-- Element: Ice
-- Modifiers: VIT:60%
-- As this is a magic-based weaponskill it is also modified by Magic Attack Bonus.
-- 100%TP    200%TP    300%TP
-- 3.50      3.50      3.50
-----------------------------------
require("scripts/globals/magic");
require("scripts/globals/status");
require("scripts/globals/settings");
require("scripts/globals/weaponskills");
-----------------------------------

function onUseWeaponSkill(player, target, wsID, tp, primary, action, taChar)

    local params = {};
    params.ftp100 = 3.5; params.ftp200 = 3.5; params.ftp300 = 3.5;
    params.str_wsc = 0.0; params.dex_wsc = 0.0; params.vit_wsc = 0.6; params.agi_wsc = 0.0; params.int_wsc = 0.0; params.mnd_wsc = 0.0; params.chr_wsc = 0.0;
    params.ele = ELE_ICE;
    params.skill = SKILL_GSD;
    params.includemab = true;

    if (USE_ADOULIN_WEAPON_SKILL_CHANGES == true) then
        params.vit_wsc = 0.8;
    end

    local damage, criticalHit, tpHits, extraHits = doMagicWeaponskill(player, target, wsID, tp, primary, action, params);

    if (damage > 0 and target:hasStatusEffect(dsp.effects.PARALYSIS) == false) then
        local duration = (tp/1000 * 60) * applyResistanceAddEffect(player,target,ELE_ICE,0);
        target:addStatusEffect(dsp.effects.PARALYSIS, 30, 0, duration);
    end
	local chance = 100
    if (player:getEquipID(SLOT_NECK) == 27510 ) then
		if (math.random(0,100) >= chance ) then
			player:setTP(1000);
		end
	end
    scoreCheck(player, wsID, damage, target); return tpHits, extraHits, criticalHit, damage;

end
