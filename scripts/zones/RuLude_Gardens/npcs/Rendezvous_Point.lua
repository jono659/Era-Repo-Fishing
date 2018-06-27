-----------------------------------
--	Area: Ru'Lud Gardens
--	NPC:  Memory Eater
--	Custom trade for Summer Sky Event
-----------------------------------
package.loaded["scripts/zones/RuLude_Gardens/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/RuLude_Gardens/TextIDs");
require("scripts/globals/settings");



function onTrade(player,npc,trade)

if (trade:hasItemQty(18600,1) == true and trade:getItemCount() == 1) then
        local rand = math.random(1,8);
        local pop = 0;

        if(rand == 1) then
            pop = 1419; -- Springstone
        elseif(rand == 2) then
            pop = 1421; -- Summerstone
        elseif(rand == 3) then
            pop = 1423; -- Auturmstone
		elseif(rand == 4) then
            pop = 1425; -- Winterstone
		elseif(rand == 5) then
            pop = 1422; -- Gem of the West
		elseif(rand == 6) then
            pop = 1418; -- Gem of the East
		elseif(rand == 7) then
            pop = 1424; -- Gem of the North
        else
            pop = 1420; -- Gem of the South
        end
		
		
		if(player:getFreeSlotsCount() > 0 and player:hasItem(pop) == false) then
		
        player:tradeComplete();
        player:addItem(pop);
        player:messageSpecial(ITEM_OBTAINED,pop);
			
		else
			
        player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,pop);
		
        end
	
	
	--[[elseif (trade:hasItemQty(3083,1) and trade:hasItemQty(1404,1) and trade:getItemCount() == 2 and player:hasItem(11288) == false) then
			player:tradeComplete();
			player:addItem(11288); -- Zahaks Mail
			player:messageSpecial(ITEM_OBTAINED, 11288);
	elseif (trade:hasItemQty(3083,1) and trade:hasItemQty(1407,1) and trade:getItemCount() == 2 and player:hasItem(11289) == false) then
			player:tradeComplete();
			player:addItem(11289); -- Ixion Cloak
			player:messageSpecial(ITEM_OBTAINED, 11289); ]]-- Proper Content is now implemented Lau~ Maybe Update this with something new soon!
	elseif (trade:hasItemQty(3083,1) and trade:hasItemQty(1405,1) and trade:getItemCount() == 2 and player:hasItem(11543) == false) then
			player:tradeComplete();
			player:addItem(11543); -- Hecate's cape
			player:messageSpecial(ITEM_OBTAINED, 11543);
	elseif (trade:hasItemQty(3083,1) and trade:hasItemQty(1406,1) and trade:getItemCount() == 2 and player:hasItem(16241) == false) then
			player:tradeComplete();
			player:addItem(16241); -- Cuchulains Mantle
			player:messageSpecial(ITEM_OBTAINED, 16241);
	elseif (trade:hasItemQty(3083,1) and trade:hasItemQty(1404,1) and trade:hasItemQty(1405,1) and trade:hasItemQty(1406,1) and trade:hasItemQty(1407,1) and trade:getItemCount() == 5 and player:hasItem(16158) == false) then
			player:tradeComplete();
			player:addItem(16158); -- Gnadbhogs Helm
			player:messageSpecial(ITEM_OBTAINED, 16158);
	end
end;



function onTrigger(player,npc)
	player:PrintToPlayer("Trade me a Caver's Shovel and see what happens.");
end;
		


function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;



function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;