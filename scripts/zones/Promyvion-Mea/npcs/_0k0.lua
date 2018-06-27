-----------------------------------
--  Area: Promyvion Mea
--   NPC: Memory Flux
-- @zone: 20
--  @pos 259 0 179
-----------------------------------

--------------------------	---------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;



function onTrigger(player,npc)
     if (player:getQuestStatus(JEUNO,SHADOWS_OF_THE_DEPARTED) == QUEST_ACCEPTED and player:hasKeyItem(PROMYVION_MEA_SLIVER) == false)  then 
		player:addKeyItem(PROMYVION_MEA_SLIVER);
		player:messageSpecial(KEYITEM_OBTAINED,PROMYVION_MEA_SLIVER);
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