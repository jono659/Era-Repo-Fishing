-----------------------------------------
-- Spell: Aeroga IV
-- Deals wind damage to enemies within area of effect.
-----------------------------------------
 
require("scripts/globals/magic");
require("scripts/globals/status");
 
-----------------------------------------
-- OnSpellCast
-----------------------------------------
 
function onMagicCastingCheck(caster, target, spell)
    return 0;
end;
 
function onSpellCast(caster, target, spell)
    local spellParams = {};
    spellParams.hasMultipleTargetReduction = true;
    spellParams.resistBonus = 1.0;
    spellParams.V0 = 850;
    spellParams.V50 = 1110;
    spellParams.V100 = 1335;
    spellParams.V200 = 1725;
    spellParams.M0 = 5.4;
    spellParams.M50 = 4.8;
    spellParams.M100 = 3.9;
    spellParams.M200 = 3;
 
    return doElementalNuke(caster, spell, target, spellParams);
end;
