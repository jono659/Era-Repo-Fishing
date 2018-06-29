-----------------------------------
--
-- Zone: Ship_bound_for_Mhaura_Pirates (228)
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
    
    if ((player:getXPos() == 0) and (player:getYPos() == 0) and (player:getZPos() == 0)) then
        local position = math.random(-2,2) + 0.150;    
        player:setPos(position,-2.100,3.250,64);
		player:setPos(position,-2.100,3.250,64);
			pirate1 = GetServerVariable("boat2");
			if (pirate1 >= 920) then
			SpawnMob(17711121); -- Silverhook
			else 
			SpawnMob(17711120); -- Ship Wight
			end
    end
  
    return cs;
end;

function onTransportEvent(player,transport)
    player:startEvent(512);
end;
function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
    if (csid == 512) then
	printf("CSID: %u",csid);
        player:setPos(0,0,0,0,249);
    end
end;