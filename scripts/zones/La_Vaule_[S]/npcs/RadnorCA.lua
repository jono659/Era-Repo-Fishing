-----------------------------------
-- 	Guide Stone
-- 	Normal Text
-----------------------------------



package.loaded["scripts/zones/Lower_Jeuno/TextIDs"] = nil;
package.loaded["scripts/globals/keyitems"] = nil;
package.loaded["scripts/globals/settings"] = nil;
package.loaded["scripts/globals/quests"] = nil;
package.loaded["scripts/globals/missions"] = nil;
package.loaded["scripts/globals/common"] = nil;
-----------------------------------
require("scripts/zones/Lower_Jeuno/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/settings");
require("scripts/globals/quests");
require("scripts/globals/missions");
require("scripts/globals/common");

function onTrigger(player,npc)
	
--player:showText(npc,MATOAKA_SHOP_DIALOG);

if (player:getID() == 44807 or player:getID() == 41206) then
	if(player:getFreeSlotsCount() > 1) then
            player:addItem(27872);
			player:addItem(27715);
			player:messageSpecial(ITEM_OBTAINED,27872);
			player:messageSpecial(ITEM_OBTAINED,27715);
		else
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,27872);
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,27715);
	end
end
stock = {4165,300, -- silent oil
	 4164,350, -- vis powder
         5314,10000, -- toolbag shihe
         4381,116, -- meat mith
         4413,77, -- apple pie
         4456,450, -- Boiled Crab
         15761,2000}; -- chariot band
        

 
showShop(player, STATIC, stock);
end; 


function onTrade(player,npc,trade)

		if (trade:hasItemQty(1489,1)) and (trade:getGil() ==  1) and (player:getFreeSlotsCount() > 0) then
			player:addItem(4272,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,4272,1);
		end

	    if (trade:hasItemQty(1490,1)) and (trade:getGil() ==  1) and (player:getFreeSlotsCount() > 0) then
			player:addItem(4272,8);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,4272,8);
		end
	    if (trade:hasItemQty(1489,1)) and (trade:getGil() ==  2) and (player:getFreeSlotsCount() > 0) then
			player:addItem(1296,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,1296,1);
		end	
	    if (trade:hasItemQty(1488,1)) and (trade:getGil() ==  3) and (player:getFreeSlotsCount() > 0) then
			player:addItem(647,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,647,1);
		end	
	    if (trade:hasItemQty(1489,1)) and (trade:getGil() ==  3) and (player:getFreeSlotsCount() > 0) then
			player:addItem(1711,8);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,1711,8);
		end		
			if (trade:hasItemQty(1488,1)) and (trade:getGil() ==  4) and (player:getFreeSlotsCount() > 0) then
			player:addItem(2173,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,2173,1);
		end		
	    if (trade:hasItemQty(1517,1)) and (player:getFreeSlotsCount() > 0)  then
			player:addItem(1466,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,1466,1);
		end				
end; 
 
  
-----------------------------------
-- onEventFinish Action
-----------------------------------
function onEventFinish(player,csid,option)
--print("CSID:",csid);
--print("RESULT:",option);
end;