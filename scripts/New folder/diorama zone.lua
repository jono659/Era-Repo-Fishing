-----------------------------------
-- 
-- Zone: Diorama_Abdhaljs-Ghelsba
-- 
-----------------------------------

require("scripts/globals/settings");
package.loaded["scripts/zones/Diorama_Abdhaljs-Ghelsba/TextIDs"] = nil;
require("scripts/zones/Diorama_Abdhaljs-Ghelsba/TextIDs");
require("scripts/globals/zone");

-----------------------------------
--  onInitialize
-----------------------------------

function onInitialize(zone)
end;

-----------------------------------
-- onZoneIn
-----------------------------------

function onZoneIn(player,prevZone)
if player:getVar("PVPteam") == 1 then
    player:setAllegiance(2);
elseif player:getVar("PVPteam") == 2 then
player:setAllegiance(3);
elseif player:getNation() == 0 then
player:setAllegiance(2);
elseif player:getNation() == 1 then
player:setAllegiance(3);
else
player:setAllegiance(4);
end
  return -1;
end;

-----------------------------------
-- onRegionEnter          
-----------------------------------

function onRegionEnter(player,region)
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

