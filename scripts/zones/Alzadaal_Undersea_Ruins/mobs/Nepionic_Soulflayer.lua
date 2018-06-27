-----------------------------------
-- Area: Alzadaal Undersea Ruins (72)
--  MOB: Nepionic Soulflayer
-----------------------------------
mixins = {require("scripts/mixins/job_special")};

function onMobDeath(mob, player, isKiller)
    player:setVar("transformationsprogress",5);
end;