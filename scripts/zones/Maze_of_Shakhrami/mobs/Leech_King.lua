-----------------------------------
-- Area: Maze of Shakhrami
--  MOB: Leech King (NM)
-----------------------------------
require("scripts/zones/Maze_of_Shakhrami/MobIDs");

function onMobDeath(mob, player, isKiller)
end;

function onMobDespawn(mob)

        UpdateNMSpawnPoint(LEECH_KING);
        GetMobByID(LEECH_KING):setRespawnTime(math.random(64800, 108000)); -- 18-30 hours

end;
