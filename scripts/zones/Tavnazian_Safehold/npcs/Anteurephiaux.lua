-----------------------------------
-- Area: Tavnazian Safehold
-- NPC: Anteurephiaux
-- Trade NPC for fotia-gorget and hachirin-no-obi
-----------------------------------

-----------------------------------
package.loaded["scripts/zones/Tavnazian_Safehold/TextIDs"] = nil;
require("scripts/zones/Tavnazian_Safehold/TextIDs");
-----------------------------------

obiItems = {15438,15439,15440,15437,15441,15442,15435,15436};
gorgetItems = {15495,15496,15497,15498,15499,15500,15501,15502};

MEGA_OBI    = 28419;
MEGA_GORGET = 27510; 

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	obiTrade = 0;
	gorgetTrade = 0; 
	freeSlots = player:getFreeSlotsCount();
	for i = 1, #obiItems, 1 do
		if trade:hasItemQty(obiItems[i],1) then
		    obiTrade = (obiTrade + 1)
		end
	end
	for n = 1, #gorgetItems, 1 do
		if trade:hasItemQty(gorgetItems[n],1) then
		    gorgetTrade = (gorgetTrade + 1)
		end
	end
	    if (obiTrade == 8 and player:hasItem(MEGA_OBI) == false) then
		
		    if (freeSlots > 0) then
		        player:addItem(MEGA_OBI);
		        player:tradeComplete();
		        player:messageSpecial(ITEM_OBTAINED, MEGA_OBI);
			else
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED, MEGA_OBI);
			end
	    elseif (gorgetTrade == 8 and player:hasItem(MEGA_GORGET) == false) then
		
	        if (freeSlots > 0) then
		        player:addItem(MEGA_GORGET);
		        player:tradeComplete();
		        player:messageSpecial(ITEM_OBTAINED, MEGA_GORGET);
			else
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED, MEGA_OBI);
			end
			
	    elseif (obiTrade < 8 and gorgetTrade < 8) then	
		    player:PrintToPlayer(string.format("%s, you did not trade the correct item.",player:getName()), 0xD);
		end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------
 
function onTrigger(player,npc)
        player:PrintToPlayer(string.format("Greetings %s! Trade me all 8 gorgets or obis to recieve the Fotia Gorget or the Hachirin-no-obi!",player:getName()), 0xD);		
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;
