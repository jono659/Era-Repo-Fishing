-----------------------------------
-- Area: Arrapago Reef
--  NPC: Nuhn
-----------------------------------

require("scripts/globals/status");



-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
	player:addCurrency("cruor", math.random(400,500));
end;