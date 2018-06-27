-----------------------------------
--
-- Zone: Ship_bound_for_Mhaura (221)
--
-----------------------------------
package.loaded["scripts/zones/Ship_bound_for_Mhaura/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/zones/Ship_bound_for_Selbina/MobIDs");
require("scripts/zones/Ship_bound_for_Mhaura/TextIDs");
-----------------------------------

function onInitialize(zone)
end;

function onZoneIn(player,prevZone)
    local cs = -1;
	if (player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0) then
        local position = math.random(-2,2) + 0.150;
        player:setPos(position,-2.100,3.250,64);
    end
	spawnmonk = GetServerVariable("boat3");
		printf("spawnmonk: %u",spawnmonk);
	if ((spawnmonk) > 900) and not(GetMobByID(SEA_HORROR):isSpawned()) and not (GetMobByID(SEA_MONK):isSpawned()) then
        SpawnMob(17682446);		
	elseif ((spawnmonk) < 200) and not(GetMobByID(SEA_HORROR):isSpawned()) and not (GetMobByID(SEA_MONK):isSpawned()) then
        SpawnMob(17682442);
	end		
    return cs;
end;

function onTransportEvent(player,transport)
    player:startEvent(512);
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
	    if (GetMobAction(17682442)~=0) then
        DespawnMob(17682442);
    end
    if (GetMobAction(17682446)~=0) then
        DespawnMob(17682446);
    end
    if (csid == 512) then
        player:setPos(0,0,0,0,249);
    end
end;