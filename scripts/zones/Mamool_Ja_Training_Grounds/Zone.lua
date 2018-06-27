-----------------------------------
--
-- Zone: Mamool_Ja_Training_Grounds
--
-----------------------------------
require("scripts/globals/settings");
package.loaded["scripts/zones/Mamool_Ja_Training_Grounds/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Mamool_Ja_Training_Grounds/TextIDs");
-----------------------------------

function onInitialize(zone)
end;

function onZoneIn(player,prevZone)
    local cs = -1;

    local pos = player:getPos();
    if (pos.x == 0 and pos.y == 0 and pos.z == 0) then
        local entrypos = instance:getEntryPos();
        player:setPos(entrypos.x, entrypos.y, entrypos.z, entrypos.rot);
    end

    return cs;
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
    if csid == 102 then
        player:setPos(0,0,0,52);
    end
end;

function onInstanceLoadFailed()
    return 79;
end;