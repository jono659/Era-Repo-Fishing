-----------------------------------
-- Area: Ru'Lud Gardens
--  NPC: Tsugumi
-- Standard Info NPC
-----------------------------------

require("scripts/globals/shop");
require("scripts/globals/settings");



function onTrade(player,npc,trade)

		if (trade:hasItemQty(1857,1) and trade:getItemCount() == 1 and player:hasItem(4247) == false) then
			player:tradeComplete();
			player:addItem(4247); -- EXP Page
			player:messageSpecial(ITEM_OBTAINED, 4247);
			end
		if (trade:hasItemQty(2306,1) and trade:getItemCount() == 1 and player:hasItem(15840) == false) then
			player:tradeComplete();
			player:addItem(15840); -- Kupofried ring
			player:messageSpecial(ITEM_OBTAINED, 15840);
			end	
			
end; 




function onTrigger(player,npc)
stock = {
			27756,500000, -- Slime Cap
			28655,125000, -- Slime Shield
			27727,500000, -- Metal Slime Hat
			28651,125000, -- Metal Slime Shield
			27726,500000, -- She-Slime Cap
			28650,125000, -- She-Slime Shield
			26965,250000, -- Ta Moko
			27291,250000, -- Swimming Togs
			26967,250000, -- Cossie Top
			27293,250000, -- Cossie Bottom
			25606,100000, -- Agent Hood
			26974,100000, -- Agent Coat
			27111,100000, -- Agent Cuffs
			27296,100000, -- Agent Pants
			27467,100000, -- Agent Boots
			--25607,100000, -- Starlet Flower
			--26975,100000, -- Starlet Jabot
			--27112,100000, -- Starlet Gloves
			--27297,100000, -- Starlet Skirt
			--27468,100000, -- Starlet Boots
			27715,1000000, -- Goblin Masque
			27866,1000000, -- Goblin Suit
			27765,1000000, -- Chocobo Masque
			27911,1000000, -- Chocobo Suit
			10429,1000000, -- Moogle Masque
			10250,1000000, -- Moogle Suit
			26705,1000000, -- Mandra. Masque
			27854,1000000, -- Mandra. Suit 
			26798,1000000, -- Behemoth Masque
			26954,1000000, -- Behemoth Suit
			26956,1000000, -- Poroggo Coat
			27872,2000000, -- P. Spriggan Coat
		 }
		
 
showShop(player, STATIC, stock);
end




function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;



function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;



