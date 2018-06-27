-----------------------------------
-- Area: North Gustaberg bottom
--  NPC: no_name_0)
-- Notes: Use to warp up the cliff
-- JonO659
-----------------------------------
package.loaded["scripts/zones/North_Gustaberg/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/zones/North_Gustaberg/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
local lywarp = player:getVar("lywarpgus");
if (trade:hasItemQty(956,1) and lywarp == 1) then
    player:startEvent(0x0109);
    player:tradeComplete();
elseif (trade:hasItemQty(957,1) and lywarp == 1) then
    player:startEvent(0x0109);
    player:tradeComplete();
elseif (trade:hasItemQty(958,1) and lywarp == 1) then
    player:startEvent(0x0109);
    player:tradeComplete();
elseif (trade:hasItemQty(949,1) and lywarp == 1) then
        player:startEvent(0x0109);
    player:tradeComplete();
elseif (trade:hasItemQty(959,1) and lywarp == 1) then
    player:startEvent(0x0109);
    player:tradeComplete();
elseif (trade:hasItemQty(948,1) and lywarp == 1) then
    player:startEvent(0x0109);
    player:tradeComplete();
elseif (trade:hasItemQty(1120,1) and lywarp == 1) then
    player:startEvent(0x0109);
    player:tradeComplete();
elseif (trade:hasItemQty(2554,1) and lywarp == 1) then
    player:startEvent(0x0109);
    player:tradeComplete();
elseif (trade:hasItemQty(1725,1) and lywarp == 1) then
    player:startEvent(0x0109);
    player:tradeComplete();
elseif (trade:hasItemQty(1410,1) and lywarp == 1) then
    player:startEvent(0x0109);
    player:tradeComplete();
elseif (trade:hasItemQty(1411,1) and lywarp == 1) then
    player:startEvent(0x0109);
elseif (trade:hasItemQty(1413,1) and lywarp == 1) then
    player:startEvent(0x0109);  
    player:tradeComplete();
else 
    player:messageSpecial(NOTHING_HAPPENS);
    return;
end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    player:messageSpecial(NOTHING_HAPPENS);
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