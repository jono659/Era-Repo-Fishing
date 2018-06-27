-----------------------------------
-- 
-- Zone: Ship_bound_for_Selbina (220)
-- 
-----------------------------------
package.loaded["scripts/zones/Ship_bound_for_Selbina/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Ship_bound_for_Selbina/TextIDs");
require("scripts/zones/Ship_bound_for_Selbina/MobIDs");
require("scripts/globals/keyitems");

function onInitialize(zone)
end;

function onZoneIn(player,prevZone)
    
    local cs = -1;
	if ((player:getXPos() == 0) and (player:getYPos() == 0) and (player:getZPos() == 0)) then
        local position = math.random(-2,2) + 0.150;    
        player:setPos(position,-2.100,3.250,64);
    end    
    if (player:hasKeyItem(SEANCE_STAFF) and player:getVar("Enagakure_Killed") == 0 and not GetMobByID(ENAGAKURE):isSpawned()) then
        SpawnMob(ENAGAKURE);
    end	
	 spawnmonk = GetServerVariable("boat4");
		printf("spawnmonk: %u",spawnmonk);
	if ((spawnmonk) > 900) and not(GetMobByID(SEA_HORROR):isSpawned()) and not (GetMobByID(SEA_MONK):isSpawned()) then
        SpawnMob(17678350);		
	elseif ((spawnmonk) < 200) and not(GetMobByID(SEA_HORROR):isSpawned()) and not (GetMobByID(SEA_MONK):isSpawned()) then
        SpawnMob(17678346);
		end		

    return cs

end;

function onTransportEvent(player,transport)
    player:startEvent(255);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
    if (GetMobAction(17678346)~=0) then
        DespawnMob(17678346);
    end
    if (GetMobAction(17678350)~=0) then
        DespawnMob(17678350);
    end
    if (csid == 255) then
        player:setPos(0,0,0,0,248);
    end
end;
