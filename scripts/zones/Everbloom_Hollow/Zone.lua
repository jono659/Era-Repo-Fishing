-----------------------------------
--
-- Zone: Everbloom_Hollow
--
-----------------------------------
require("scripts/globals/settings");
package.loaded["scripts/zones/Everbloom_Hollow/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Everbloom_Hollow/TextIDs");
-----------------------------------

function onInitialize(zone)
end;

function onZoneIn(player,prevZone,zone,mob)
 	local cs = -1;
	if (prevZone == 81 or prevZone == 84)then
 	GetMobByID(17109357):setHP(0);
 	GetMobByID(17121693):setHP(0);
	end
 	return cs;
end;

function afterZoneIn(player,zone)
	player:PrintToPlayer("Warning: You have 1 hour to complete this challenge.");
end;

function onRegionEnter(player,region)
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

