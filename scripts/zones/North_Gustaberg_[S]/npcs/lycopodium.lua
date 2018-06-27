-----------------------------------
-- Area: North Gustaberg [S] Ramp
--  NPC: Lycopodium)
--  @pos -272 12.5 260
-- Notes: Use enable cliff warping
-- JonO659
-----------------------------------
package.loaded["scripts/zones/North_Gustaberg_[S]/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/zones/North_Gustaberg_[S]/TextIDs");
require("scripts/globals/quests");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local lywarp = player:getVar("lywarpgus");
    if lywarp == 1 then
    player:messageSpecial(NOTHING_HAPPENS);
    else
    player:startEvent(113);
    end
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
    if (csid == 113) then
        player:setVar("lywarpgus",1);
    end

    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;