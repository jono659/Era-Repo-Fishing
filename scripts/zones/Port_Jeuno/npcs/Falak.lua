-----------------------------------
-- Area: Port Jeuno
--  NPC: Falax
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Port_Jeuno/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Port_Jeuno/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)


----------------------------------------
-- Start Falak - Ancientbeastcoin Op
----------------------------------------
       local count = trade:getItemCount();
         

----------------------------------------
-- Trade Ancientbeastcoins
----------------------------------------


    if (trade:hasItemQty(1875,75) and trade:getGil() == 1) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(15477, 1); 
  player:messageSpecial(ITEM_OBTAINED,15477);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15477);
    end;
    
    end;

    
    if (trade:hasItemQty(1875,75) and trade:getGil() == 2) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(15488, 1); 
  player:messageSpecial(ITEM_OBTAINED,15488);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15488);
    end;
     
    end;


    if (trade:hasItemQty(1875,75) and trade:getGil() == 3) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(14813, 1); 
  player:messageSpecial(ITEM_OBTAINED,14813);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14813);
    end;
      
    end;


    if (trade:hasItemQty(1875,75) and trade:getGil() == 4) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(14812, 1); 
  player:messageSpecial(ITEM_OBTAINED,14812);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14812);
    end;

    end;


    if (trade:hasItemQty(1875,75) and trade:getGil() == 5) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(15961, 1); 
  player:messageSpecial(ITEM_OBTAINED,15961);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15961);
    end;

    end;


    if (trade:hasItemQty(1875,75) and trade:getGil() == 6) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(14815, 1); 
  player:messageSpecial(ITEM_OBTAINED,14815);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14815);
    end;

    end;


    if (trade:hasItemQty(1875,75) and trade:getGil() == 7) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(15475, 1); 
  player:messageSpecial(ITEM_OBTAINED,15475);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15475);
    end;

    end;


    if (trade:hasItemQty(1875,150) and trade:getGil() == 8) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(15244, 1); 
  player:messageSpecial(ITEM_OBTAINED,15244);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15244);
    end;

    end;


    if (trade:hasItemQty(1875,75) and trade:getGil() == 9) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(15476, 1); 
  player:messageSpecial(ITEM_OBTAINED,15476);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15476);
    end;

    
    end;




---------
--Finish	
---------



end;

function onTrigger(player,npc)
    player:startEvent(28);
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

