-----------------------------------
--
-- Zone: Ghoyus_Reverie
--
-----------------------------------
require("scripts/globals/settings");
package.loaded["scripts/zones/Ghoyus_Reverie/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Ghoyus_Reverie/TextIDs");
-----------------------------------

function onInitialize(zone)
end;

function onZoneIn(player,prevZone)
    local cs = -1;
	if (prevZone == 95 or prevZone == 97 or prevZone == 98) then
		GetMobByID(17166720):setHP(0);
		GetMobByID(17174888):setHP(0);
		GetMobByID(17178901):setHP(0);
	end
    return cs;
end;

-----------------------------------
-- afterZoneIn
-----------------------------------

function afterZoneIn(player,zone)
	player:PrintToPlayer("Warning: You have 1 hour to complete this challenge.");
end;

-----------------------------------
-- onRegionEnter          
-----------------------------------

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

