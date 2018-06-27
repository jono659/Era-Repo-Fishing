-----------------------------------
-- Area: Lower Jeuno
--  NPC: Adelflete
-- Standard Merchant NPC
-----------------------------------
package.loaded["scripts/zones/Lower_Jeuno/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Lower_Jeuno/TextIDs");
require("scripts/globals/shop");
-----------------------------------

function onTrade(player,npc,trade)

	for a = 4238, 4245, 1 do
		if (trade:hasItemQty(a,12)) and (trade:getItemCount() == 12) and (player:getFreeSlotsCount() > 0) then -- convert to "A" Egg.
			player:addItem(1488,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,1488);
		end    
	end


	-- Convert back to crystals

		if (trade:hasItemQty(1488,1)) and (trade:getGil() == 1) and (player:getFreeSlotsCount() > 0) then
			player:addItem(4238,12);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,4238);
		end    
		
		if (trade:hasItemQty(17188,1)) then
			player:addItem(1113,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,1113);
		end  
		if (trade:hasItemQty(1488,1)) and (trade:getGil() == 2) and (player:getFreeSlotsCount() > 0)  then
			player:addItem(4239,12);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,4239);
		end  

		if (trade:hasItemQty(1488,1)) and (trade:getGil() == 3) and (player:getFreeSlotsCount() > 0)  then
			player:addItem(4240,12);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,4240);
		end
		
		if (trade:hasItemQty(1488,1)) and (trade:getGil() == 4) and (player:getFreeSlotsCount() > 0) then
			player:addItem(4241,12);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,4241);
		end  		

		if (trade:hasItemQty(1488,1)) and (trade:getGil() == 5) and (player:getFreeSlotsCount() > 0) then
			player:addItem(4242,12);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,4242);
		end  
		
		if (trade:hasItemQty(1488,1)) and (trade:getGil() == 6) and (player:getFreeSlotsCount() > 0) then
			player:addItem(4243,12);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,4243);
		end  

		if (trade:hasItemQty(1488,1)) and (trade:getGil() == 7) and (player:getFreeSlotsCount() > 0) then
			player:addItem(4244,12);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,4244);
		end  
		
		if (trade:hasItemQty(1488,1)) and (trade:getGil() == 8) and (player:getFreeSlotsCount() > 0) then
			player:addItem(4245,12);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,4245);
		end  


		-- Convert Eggs
		if (trade:hasItemQty(1488,12)) and (trade:getItemCount() == 12) and (player:getFreeSlotsCount() > 0) then -- convert "A" Egg to "B"
			player:addItem(1489,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,1489);
		end     

		if (trade:hasItemQty(1489,6)) and (trade:getItemCount() == 6) and (player:getFreeSlotsCount() > 0) then -- convert "B" Egg to "C"
			player:addItem(1490,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,1490);
		end    

		if (trade:hasItemQty(1490,1)) and (trade:getItemCount() == 1) and (player:getFreeSlotsCount() > 0) then -- convert "C" Egg to "B"
			player:addItem(1489,6);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,1489);
		end     

		if (trade:hasItemQty(1489,1)) and (trade:getItemCount() == 1) and (player:getFreeSlotsCount() > 0) then -- convert "B" Egg to "A"
			player:addItem(1488,12);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,1488);
		end    
		if (trade:hasItemQty(1126,12)) and (trade:getItemCount() == 12) and (player:getFreeSlotsCount() > 0) then -- beasty seal 12 to 6
			player:addItem(1488,6);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,1488);
		end   
		if (trade:hasItemQty(1126,24)) and (trade:getItemCount() == 24) and (player:getFreeSlotsCount() > 0) then -- 24 seals to B
			player:addItem(1489,1);
			player:tradeComplete(trade);
			player:messageSpecial(ITEM_OBTAINED,1489);
		end  
		
end; 



function onTrigger(player,npc)
    
player:showText(npc,ADELFLETE_SHOP_DIALOG);

stock = {0x0326,1863, -- Tourmaline
         0x0327,1863, -- Sardonyx
         0x0320,1863, -- Amethyst
         0x032E,1863, -- Amber
         0x031B,1863, -- Lapis Lazuli
         0x0329,1863, -- Clear Topaz
         0x031F,1863, -- Onyx
         0x031C,1863, -- Light Opal
         0x340F,1250, -- Silver Earring
         0x3490,1250} -- Silver Ring
 
showShop(player, STATIC, stock);
end; 


function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;
