-----------------------------------
-- Area: Port Jeuno
--  NPC: Karl
-- Starts and Finishes Quest: Child's Play
-- !pos -60 0.1 -8 246
-----------------------------------
package.loaded["scripts/zones/Port_Jeuno/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/titles");
require("scripts/globals/keyitems");
require("scripts/globals/shop");
require("scripts/globals/quests");
require("scripts/zones/Port_Jeuno/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
    if (player:getQuestStatus(JEUNO,CHILD_S_PLAY) == QUEST_ACCEPTED and trade:hasItemQty(776,1) == true and trade:getItemCount() == 1) then
        player:startEvent(1); -- Finish quest
    end

----------------------------------------
-- Start Shemo - Beastmen Seals operation
----------------------------------------
	local bsealz = trade:getItemQty(1126)

	local kindredseals = trade:getItemQty(1127)
	local kindredcrests = trade:getItemQty(2955)
	
	local beastmenseals = math.fmod((kindredseals * 3), 99)
	local crestbseals = math.fmod((kindredcrests * 9), 99)
	
	kstacks = kindredseals / 33
	cstacks = kindredcrests / 11


        if (trade:hasItemQty(1126,20) and trade:getGil() == 1) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(14666, 1); 
  player:messageSpecial(ITEM_OBTAINED,14666);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14666);
    end;
       
    end;


        if (trade:hasItemQty(1126,20) and trade:getGil() == 2) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(14665, 1); 
  player:messageSpecial(ITEM_OBTAINED,14665);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14665);
    end;
       
    end;
	
	
         if (trade:hasItemQty(1126,20) and trade:getGil() == 3) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(14664, 1); 
  player:messageSpecial(ITEM_OBTAINED,14664);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14664);
    end;
       
    end;   
       
	
         if (trade:hasItemQty(1126,20) and trade:getGil() == 4) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(14663, 1); 
  player:messageSpecial(ITEM_OBTAINED,14663);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14663);
    end;
       
    end;


         if (trade:hasItemQty(1126,20) and trade:getGil() == 5) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(14661, 1); 
  player:messageSpecial(ITEM_OBTAINED,14661);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14661);
    end;
       
    end;

        
         if (trade:hasItemQty(1126,20) and trade:getGil() == 6) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(14662, 1); 
  player:messageSpecial(ITEM_OBTAINED,14662);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14662);
    end;
       
    end;

	
         if (trade:hasItemQty(1126,90) and trade:getGil() == 7) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(4717, 1); 
  player:messageSpecial(ITEM_OBTAINED,4717);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,4717);
    end;
       
    end;

        
        if (trade:hasItemQty(1126,90) and trade:getGil() == 8) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(4751, 1); 
  player:messageSpecial(ITEM_OBTAINED,4751);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,4751);
    end;
       
    end;


        if (trade:hasItemQty(1126,90) and trade:getGil() == 9) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(4714, 1); 
  player:messageSpecial(ITEM_OBTAINED,4714);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,4714);
    end;
       
    end;
       

        if (trade:hasItemQty(1126,40) and trade:getGil() == 10) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(4858, 1); 
  player:messageSpecial(ITEM_OBTAINED,4858);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,4858);
    end;
       
    end;



        if (trade:hasItemQty(1126,90) and trade:getGil() == 11) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(4729, 1); 
  player:messageSpecial(ITEM_OBTAINED,4729);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,4729);
    end;
       
    end;

       
       if (trade:hasItemQty(1126,90) and trade:getGil() == 12) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(4747, 1); 
  player:messageSpecial(ITEM_OBTAINED,4747);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,4747);
    end;
       
    end;
       

       if (trade:hasItemQty(1126,99) and trade:getGil() == 13) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(13514, 1); 
  player:messageSpecial(ITEM_OBTAINED,13514);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,13514);
    end;
       
    end;


	if(player:getFreeSlotsCount() >  cstacks+kstacks+2) then	
	
	if
	(
	(kindredseals > 0 and (trade:hasItemQty(1127,kindredseals)))
	or 
	(kindredcrests > 0 and (trade:hasItemQty(2955,kindredcrests)))
	) 
	then
	
	for i=1,cstacks do player:addItem(1126,99) end
	for i=1,kstacks do player:addItem(1126,99) end
	player:addItem(1126,beastmenseals);
	player:addItem(1126,crestbseals);
	player:messageSpecial(ITEM_OBTAINED,1126);
	player:tradeComplete();
	
	end

	else
	player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,1126);
	
	end
---------
--Finish	
---------
	

	


end; 



function onTrigger(player,npc)
	local ChildsPlay = player:getQuestStatus(JEUNO,CHILD_S_PLAY);
	local WildcatJeuno = player:getVar("WildcatJeuno");

	if (player:getQuestStatus(JEUNO,LURE_OF_THE_WILDCAT_JEUNO) == QUEST_ACCEPTED and player:getMaskBit(WildcatJeuno,16) == false) then
		player:startEvent(316);
	elseif(player:getQuestStatus(JEUNO,THE_WONDER_MAGIC_SET) == QUEST_ACCEPTED and ChildsPlay == QUEST_AVAILABLE) then 
		player:startEvent(0x0000); -- Start quest 
	elseif(ChildsPlay == QUEST_ACCEPTED) then
		player:startEvent(0x003d); -- mid quest CS
	else
		player:startEvent(0x003a); -- Standard dialog
	end

end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
    if (csid == 0) then
        player:addQuest(JEUNO,CHILD_S_PLAY);
    elseif (csid == 1) then
        player:addTitle(TRADER_OF_MYSTERIES);
        player:addKeyItem(WONDER_MAGIC_SET);
        player:messageSpecial(KEYITEM_OBTAINED,WONDER_MAGIC_SET);
        player:addFame(JEUNO, 30);
        player:tradeComplete(trade);
        player:completeQuest(JEUNO,CHILD_S_PLAY);
    elseif (csid == 316) then
        player:setMaskBit(player:getVar("WildcatJeuno"),"WildcatJeuno",16,true);
    end
end;