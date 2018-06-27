-----------------------------------
-- Area: Outer Horutoto Ruins
--  MOB: Queen of Swords
-----------------------------------
require("scripts/zones/Outer_Horutoto_Ruins/MobIDs");
mixins = {require("scripts/mixins/job_special")};
require("scripts/globals/missions");
-----------------------------------

function onMobDeath(mob, player, isKiller)
    if (player:getCurrentMission(WINDURST) == THE_JESTER_WHO_D_BE_KING and player:getVar("MissionStatus") == 4 and GetMobAction(17572202) == 0) then
        player:setVar("MissionStatus",5)
    end
end;