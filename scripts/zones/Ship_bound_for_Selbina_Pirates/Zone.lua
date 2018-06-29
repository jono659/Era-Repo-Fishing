-----------------------------------
-- 
-- Zone: Ship_bound_for_Selbina_Pirates (227)
-- 
-----------------------------------
package.loaded["scripts/zones/Ship_bound_for_Selbina_Pirates/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Ship_bound_for_Selbina_Pirates/TextIDs");
require("scripts/zones/Ship_bound_for_Selbina_Pirates/MobIDs");
require("scripts/globals/keyitems");

function onInitialize(zone)
end;

function onZoneIn(player,prevZone)
    local cs = -1;
    
    if ((player:getXPos() == 0) and (player:getYPos() == 0) and (player:getZPos() == 0)) then
        local position = math.random(-2,2) + 0.150;    
        player:setPos(position,-2.100,3.250,64);
			pirate1 = GetServerVariable("boat1");
			printf("Pirate \n",pirate1);
			if (pirate1 >= 920) then
			SpawnMob(17707025); -- Blackbeard
			else 
			SpawnMob(17707024); -- Ship Wight
			end
    end
  
    return cs;

end;

function onTransportEvent(player,transport)
    player:startEvent(255);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
 DespawnMob(17707025);
    if (csid == 255) then
        player:setPos(0,0,0,0,248);
    end
end;
