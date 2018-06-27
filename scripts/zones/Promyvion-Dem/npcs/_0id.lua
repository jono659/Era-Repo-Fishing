-----------------------------------
--  Area: Promyvion Dem
--   NPC: Memory Flux
-- @zone: 18
--  @pos 220 0 340
-----------------------------------

--------------------------	---------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;



function onTrigger(player,npc)
     if (player:getQuestStatus(JEUNO,SHADOWS_OF_THE_DEPARTED) == QUEST_ACCEPTED and player:hasKeyItem(PROMYVION_DEM_SLIVER) == false)  then 
		player:addKeyItem(PROMYVION_DEM_SLIVER);
		player:messageSpecial(KEYITEM_OBTAINED,PROMYVION_DEM_SLIVER);
end;



function onEventUpdate(player,csid,option)
-- printf("CSID: %u",csid);
-- printf("RESULT: %u",option);
end;



function onEventFinish(player,csid,option)
-- printf("CSID: %u",csid);
-- printf("RESULT: %u",option);
    end
end;