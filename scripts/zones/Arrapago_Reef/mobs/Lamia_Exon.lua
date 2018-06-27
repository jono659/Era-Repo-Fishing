-----------------------------------
-- Area: Arrapago Reef
--  MOB: Lamia Exon
-----------------------------------
require("scripts/globals/titles");
-----------------------------------

function onMobSpawn(mob)
end;

function onMobEngaged(mob,target)
	mob:addMod(MOD_REFRESH, 50);
end;

function onMobDeath(mob, player, isKiller)
end;