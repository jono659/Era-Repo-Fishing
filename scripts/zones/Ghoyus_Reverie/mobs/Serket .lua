-----------------------------------
-- Area: Ghoyus Reverie
-- MOB:  Serket 
-----------------------------------

require("scripts/globals/titles");



-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    	player:addCurrency("cruor", math.random(300,600));
end;