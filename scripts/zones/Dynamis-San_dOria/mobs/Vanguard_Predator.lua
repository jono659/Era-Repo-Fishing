-----------------------------------
-- Area: Dynamis San d'Oria
--  NPC: Vanguard Predator - rng
-----------------------------------

mixins = {require("scripts/mixins/job_special")};
require("scripts/globals/status");


function onMobSpawn(mob)
    mob:setLocalVar("mainSpec", jobSpec.EES_ORC);
end;

function onMobEngaged(mob,target)
end;

function onMobDeath(mob, player, isKiller)
end;

function onMobDespawn(mob)

end;