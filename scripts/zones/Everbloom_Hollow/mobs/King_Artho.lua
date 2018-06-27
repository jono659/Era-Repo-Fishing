-----------------------------------
-- Area: Everbloom Hollow
-- MOB:  King Artho
-----------------------------------


-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addTitle(LAMBTON_WORM_DESEGMENTER);
	player:addCurrency("cruor", math.random(300,600));
end;