-----------------------------------
-- Area: Lower Jeuno
--  NPC: Jazmin
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Lower_Jeuno/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Lower_Jeuno/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)

		if (trade:hasItemQty(1039,1)) then
			player:addItem(65535,10000);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,65535,10000);
		end
		if (trade:hasItemQty(1490,1)) and (trade:getGil() == 1) then
			player:addItem(11862,1);
			player:addItem(11861,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,11862);
			player:messageSpecial(ITEM_OBTAINED,11861);
		end    

		if (trade:hasItemQty(1490,1)) and (trade:getGil() ==  2)then
			player:addItem(18845,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,18845);
		end    

		if (trade:hasItemQty(1490,1)) and (trade:getGil() ==  3) then
			player:addItem(15179,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,15179);
		end    

		if (trade:hasItemQty(1490,1)) and (trade:getGil() == 4) then
			player:addItem(10383,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,10383);
		end    

		if (trade:hasItemQty(1490,1)) and (trade:getGil() == 5) then
			player:addItem(11968,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,11968);
		end    

		if (trade:hasItemQty(1490,1)) and (trade:getGil() == 6) then
			player:addItem(11301,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,11301);
		end    
  
		if (trade:hasItemQty(1490,1)) and (trade:getGil() == 7) then
			player:addItem(15176,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,15176);
		end    

		if (trade:hasItemQty(1490,1)) and (trade:getGil() == 8) then
			player:addItem(17587,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,17587);
		end    

		if (trade:hasItemQty(1490,1)) and (trade:getGil() == 9) then
			player:addItem(13821,1);
			player:addItem(13822,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,13822);
			player:messageSpecial(ITEM_OBTAINED,13821);
		end    

		if (trade:hasItemQty(1490,1)) and (trade:getGil() == 10)then
			player:addItem(15919,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,15919);
		end
    
		if (trade:hasItemQty(1490,1)) and (trade:getGil() == 11)then
			player:addItem(14520,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,14520);
		end    

		if (trade:hasItemQty(1490,1)) and (trade:getGil() == 12)then
			player:addItem(15753,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,15753);
		end 
   
		if (trade:hasItemQty(1490,1)) and (trade:getGil() == 13)then
			player:addItem(15860,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,15860);
		end 

		if (trade:hasItemQty(1490,1)) and (trade:getGil() == 14)then
			player:addItem(10875,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,10875);
		end    

		if (trade:hasItemQty(1490,1)) and (trade:getGil() == 15)then
			player:addItem(16109,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,16109);
		end    
   
		if (trade:hasItemQty(1490,1)) and (trade:getGil() == 16)then
			player:addItem(18256,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,18256);
		end    
   
		if (trade:hasItemQty(1490,1)) and (trade:getGil() == 17)then
			player:addItem(18864,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,18864);
		end    
   
		if (trade:hasItemQty(1490,1)) and (trade:getGil() == 18)then
			player:addItem(17831,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,17831);
		end    
   
		if (trade:hasItemQty(1490,1)) and (trade:getGil() == 19)then
			player:addItem(13216,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,13216);
		end    
   
		if (trade:hasItemQty(1490,1)) and (trade:getGil() == 20)then
			player:addItem(17074,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,17074);
		end    

		if (trade:hasItemQty(1490,1)) and (trade:getGil() == 21)then
			player:addItem(5441,99);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,5441);
		end 
   
		if (trade:hasItemQty(1490,1)) and (trade:getGil() == 22)then
			player:addItem(4251,50);
			player:addItem(4252,50);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,4251);
			player:messageSpecial(ITEM_OBTAINED,4252);
		end

		if (trade:hasItemQty(1490,1)) and (trade:getGil() == 23)then
			player:addItem(18103,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,18103);
		end 
    
		if (trade:hasItemQty(1490,1)) and (trade:getGil() == 24)then
			player:addItem(5733,12);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,5733);
		end 
		if (trade:hasItemQty(1490,1)) and (trade:getGil() == 25) then
			player:addItem(11482,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,11482);
		end  
		if (trade:hasItemQty(1490,1)) and (trade:getGil() == 26) then
			player:addItem(11322,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,11322);
		end  
		if (trade:hasItemQty(1438,1)) then
			player:addItem(1210,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,1210);
		end  		
		
end; 



function onTrigger(player,npc)
player:startEvent(0x00E2);
end; 



function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;



function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;



