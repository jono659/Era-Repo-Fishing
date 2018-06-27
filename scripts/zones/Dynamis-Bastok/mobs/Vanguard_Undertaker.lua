-----------------------------------
-- Area: Dynamis Bastok
--  NPC: SMN Vanguard Undertaker + Vanguard's Avatar
-----------------------------------
mixins = {require("scripts/mixins/job_special")};
require("scripts/globals/status");

function onMobSpawn(mob)
end;

function onMobEngaged(mob,target)
end;

function onMobDeath(mob, player, isKiller)
end;

function onMobDespawn(mob)
    DespawnMob(mob:getID() + 1);
end;