-----------------------------------
-- Area: Maze of Shakhrami
--  MOB: Argus (NM)
-----------------------------------
require("scripts/zones/Maze_of_Shakhrami/MobIDs");

function onMobDeath(mob, player, isKiller)
end;

function onMobDespawn(mob)

        UpdateNMSpawnPoint(ARGUS);
        GetMobByID(ARGUS):setRespawnTime(math.random(42300, 64800)); -- 18-30 hours
		SetServerVariable("[TOD]Argus", os.time());
end;
