-----------------------------------
-- Area: Ruhotz Silvermines
-- MOB:  Guivre
-----------------------------------



-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
 	player:addCurrency("cruor", math.random(300,600));
end;