-----------------------------------
-- Ability: azure_lore
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");

-----------------------------------
-- OnUseAbility
-----------------------------------

function onAbilityCheck(player,target,ability)

	return 0,0;
end;

function onUseAbility(player, target, ability)
    player:addStatusEffect(dsp.effects.AZURE_LORE,1,0,30);
end;