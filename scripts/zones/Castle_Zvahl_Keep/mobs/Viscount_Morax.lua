-----------------------------------
-- Area: Castle Zvahl Keep (162)
--  MOB: Viscount_Morax
-----------------------------------
require("scripts/globals/titles");

function onMobDeath(mob, player, isKiller)
    player:addTitle(HELLSBANE);
end;

function onMobDespawn(mob)
end;
