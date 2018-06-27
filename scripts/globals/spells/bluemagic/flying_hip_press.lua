-----------------------------------------
-- Spell: Flying Hip Press
-- Deals wind damage to enemies within range
-- Spell cost: 125 MP
-- Monster Type: Beastmen
-- Spell Type: Magical (Wind)
-- Blue Magic Points: 3
-- Stat Bonus: AGI+1
-- Level: 58
-- Casting Time: 5.75 seconds
-- Recast Time: 34.5 seconds
-- Magic Bursts On: Detonation, Fragmentation, and Light
-- Combos: Max HP Boost
-----------------------------------------

require("scripts/globals/magic");
require("scripts/globals/status");
require("scripts/globals/bluemagic");

-----------------------------------------
-- OnMagicCastingCheck
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onSpellCast(caster,target,spell)

    local params = {};    
        params.multiplier = 2.775;
        params.tMultiplier = 2.912;
        params.duppercap = 58;
        params.str_wsc = 0.0;
        params.dex_wsc = 0.0;
        params.vit_wsc = 0.0;
        params.agi_wsc = 0.0;
        params.int_wsc = 0.2;
        params.mnd_wsc = 0.5;
        params.chr_wsc = 0.2;
    --damage = BlueMagicalSpell(caster, target, spell, params, MND_BASED);
	local HP = caster:getHP();
    local LVL = caster:getMainLvl();
    damage = (HP / 3);
    if (caster:getEquipID(SLOT_HEAD) == 11465 ) or (caster:getEquipID(SLOT_HEAD) == 11466 ) or (caster:getEquipID(SLOT_HEAD) == 16150 ) then
		damage = damage * 1.1;
	end
    damage = BlueFinalAdjustments(caster, target, spell, damage, params);
        
    return damage;
end;    