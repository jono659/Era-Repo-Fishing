-----------------------------------
-- Area: Port Jeuno
--  NPC: Jaha Amariyo
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Port_Jeuno/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Port_Jeuno/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)

----------------------------------------
-- Start Shemo - Kindred Seals operation
----------------------------------------
	local count = trade:getItemCount();
	local beastmenseals = trade:getItemQty(1126)
	local kindredcrests = trade:getItemQty(2955)
	local hkindredcrests = trade:getItemQty(2956)
	local extraseals = math.fmod(beastmenseals, 3)
	local kindredseals = math.fmod(((beastmenseals - extraseals) / 3), 99)
	local crestkindredseals = math.fmod((kindredcrests * 3), 99)
	local hcrestkindredseals = math.fmod((hkindredcrests * 3), 99)
	bstacks = beastmenseals / 297
	kstacks = kindredcrests / 33
	hkstacks = hkindredcrests / 33

	
------------------------------------
-- Convert Beastmen Seals to Kindreds
------------------------------------

        if (trade:hasItemQty(1127,8) and trade:getGil() == 1) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(18712, 99); 
  player:messageSpecial(ITEM_OBTAINED,18712);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18712);
    end;
       
    end;



	if (trade:hasItemQty(1127,200) and trade:getGil() == 3) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(16302, 1); 
  player:messageSpecial(ITEM_OBTAINED,16302);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,16302);
    end;
       
    end;
	
 
     if (trade:hasItemQty(1127,500) and trade:getGil() == 7) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(18491, 1); 
  player:messageSpecial(ITEM_OBTAINED,18491);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18491);
    end;
       
    end;



     if (trade:hasItemQty(1127,400) and trade:getGil() == 8) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(17741, 1); 
  player:messageSpecial(ITEM_OBTAINED,17741);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,17741);
    end;
       
    end;


      if (trade:hasItemQty(1127,500) and trade:getGil() == 9) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(18943, 1); 
  player:messageSpecial(ITEM_OBTAINED,18943);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18493);
    end;
       
    end;
   
     


      if (trade:hasItemQty(1127,300) and trade:getGil() == 10) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(18425, 1); 
  player:messageSpecial(ITEM_OBTAINED,18425);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18425);
    end;
       
    end;


   


     if (trade:hasItemQty(1127,200) and trade:getGil() == 11) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(17829, 1); 
  player:messageSpecial(ITEM_OBTAINED,17829);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,17829);
    end;
       
    end;


        if (trade:hasItemQty(1127,125) and trade:getGil() == 12) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(16271, 1); 
  player:messageSpecial(ITEM_OBTAINED,16271);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,16271);
    end;
       
    end;


        if (trade:hasItemQty(1127,150) and trade:getGil() == 13) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(15912, 1); 
  player:messageSpecial(ITEM_OBTAINED,15912);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15912);
    end;
       
    end;


       if (trade:hasItemQty(1127,200) and trade:getGil() == 14) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(16230, 1); 
  player:messageSpecial(ITEM_OBTAINED,16230);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,16230);
    end;
       
    end;

        if (trade:hasItemQty(1127,200) and trade:getGil() == 15) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(16168, 1); 
  player:messageSpecial(ITEM_OBTAINED,16168);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,16168);
    end;
       
    end;


        if (trade:hasItemQty(1127,275) and trade:getGil() == 16) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(17759, 1); 
  player:messageSpecial(ITEM_OBTAINED,17759);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,17759);
    end;
       
    end;


      if (trade:hasItemQty(1127,300) and trade:getGil() == 17) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(15350, 1); 
  player:messageSpecial(ITEM_OBTAINED,15350);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15350);
    end;
       
    end;





     if (trade:hasItemQty(1127,150) and trade:getGil() == 19) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(18395, 1); 
  player:messageSpecial(ITEM_OBTAINED,18395);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18395);
    end;
       
    end;  
	

      if (trade:hasItemQty(1127,150) and trade:getGil() == 20) then
    
    if (player:getFreeSlotsCount() > 0) then
    
  player:addItem(18396, 1); 
  player:messageSpecial(ITEM_OBTAINED,18396);
  player:tradeComplete();
 
    else
    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18396);
    end;
       
    end;
 


 
	if(player:getFreeSlotsCount() >  bstacks+kstacks+hkstacks+2) then	
	
	if
	(
	(beastmenseals > 2 and (trade:hasItemQty(1126,beastmenseals)))
	or 
	(kindredcrests > 0 and (trade:hasItemQty(2955,kindredcrests)))
	or 
	(hkindredcrests > 0 and (trade:hasItemQty(2956,hkindredcrests)))
	) 
	then
	
	for i=1,bstacks do player:addItem(1127,99) end
	for i=1,kstacks do player:addItem(1127,99) end
	for i=1,hkstacks do player:addItem(1127,99) end
	player:addItem(1127,kindredseals);
	player:addItem(1127,crestkindredseals);
	player:addItem(1127,hcrestkindredseals);
	player:messageSpecial(ITEM_OBTAINED,1127);
	player:addItem(1126,extraseals)
	player:tradeComplete();
	
	end

	else
	player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,1127);
	
	end

------------------------------------
-- Convert Kindred Crests to Kindreds
------------------------------------

---------
--Finish	
---------
	

	

end; 



function onTrigger(player,npc)
player:startEvent(0x39);
end; 



function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;



function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

