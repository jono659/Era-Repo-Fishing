-----------------------------------
require("scripts/globals/status");
require("scripts/zones/Arrapago_Reef/MobIDs");
-----------------------------------

function onMobSpawn(mob)
   mob:hideName(true);
    mob:setModelId(2800);
    mob:untargetable(true);
end;

function onMobEngaged(mob,target)
    mob:hideName(false);
    mob:untargetable(false);
	mob:setModelId(1653);
    SpawnMob(16998868 + 1):updateEnmity(target);
    SpawnMob(16998868 + 2):updateEnmity(target);
end;

function onMobDisengage(mob)
    mob:hideName(true);
    mob:untargetable(true);
	DespawnMob(16998868 + 1);
	DespawnMob(16998868 + 2);
	mob:setModelId(2800);
end;

function onMobDespawn(mob)
	DespawnMob(16998868 + 1);
	DespawnMob(16998868 + 2);
end;

function onMobDeath(mob, player, isKiller)
	DespawnMob(16998868 + 1);
	DespawnMob(16998868 + 2);
end;