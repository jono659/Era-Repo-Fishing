-----------------------------------
-- Area: Lower Jeuno
-- NPC: Odasel
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



function onTrade(player,npc,trade)

	if (trade:getItemCount() == 2 and (trade:hasItemQty(14739,1) or trade:hasItemQty(14740,1) or trade:hasItemQty(14741,1) or 
		trade:hasItemQty(14742,1) or trade:hasItemQty(14743,1))) then
			if (player:getFreeSlotsCount() > 0 and player:hasKeyItem(FAIL_BADGE) and trade:getGil() == 1) then
                player:tradeComplete();
				player:addItem(14739, 1); 
				player:messageSpecial(ITEM_OBTAINED,14739);	
			elseif (player:getFreeSlotsCount() > 0 and player:hasKeyItem(FAIL_BADGE) and trade:getGil() == 2) then
                player:tradeComplete();
				player:addItem(14743, 1); 
				player:messageSpecial(ITEM_OBTAINED,14743);
			elseif (player:getFreeSlotsCount() > 0 and player:hasKeyItem(FAIL_BADGE) and trade:getGil() == 3) then
                player:tradeComplete();
				player:addItem(14741, 1); 
				player:messageSpecial(ITEM_OBTAINED,14741);
			elseif (player:getFreeSlotsCount() > 0 and player:hasKeyItem(FAIL_BADGE) and trade:getGil() == 4) then
                player:tradeComplete();
				player:addItem(14740, 1); 
				player:messageSpecial(ITEM_OBTAINED,14740);
			elseif (player:getFreeSlotsCount() > 0 and player:hasKeyItem(FAIL_BADGE) and trade:getGil() == 5) then
                player:tradeComplete();
				player:addItem(14742, 1); 
				player:messageSpecial(ITEM_OBTAINED,14742);
			else
				player:PrintToPlayer(string.format("You done goofed."));
			end
    end
    
    if (trade:getItemCount() == 2 and (trade:hasItemQty(15543,1) or trade:hasItemQty(15544,1) or trade:hasItemQty(15545,1))) then
			if (player:getFreeSlotsCount() > 0 and player:hasKeyItem(FAIL_BADGE) and trade:getGil() == 1) then
                player:tradeComplete();
				player:addItem(15543, 1); 
				player:messageSpecial(ITEM_OBTAINED,15543);
			elseif (player:getFreeSlotsCount() > 0 and player:hasKeyItem(FAIL_BADGE) and trade:getGil() == 2) then
                player:tradeComplete();
				player:addItem(15545, 1); 
				player:messageSpecial(ITEM_OBTAINED,15545);
			elseif (player:getFreeSlotsCount() > 0 and player:hasKeyItem(FAIL_BADGE) and trade:getGil() == 3) then
                player:tradeComplete();
				player:addItem(15544, 1); 
				player:messageSpecial(ITEM_OBTAINED,15544);
			else
				player:PrintToPlayer(string.format("You done goofed."));
			end
    end
    
    if (trade:getItemCount() == 2 and (trade:hasItemQty(15962,1) or trade:hasItemQty(15963,1) or trade:hasItemQty(15964,1) or 
		trade:hasItemQty(15965,1))) then
			if (player:getFreeSlotsCount() > 0 and player:hasKeyItem(FAIL_BADGE) and trade:getGil() == 1) then
                player:tradeComplete();
				player:addItem(15965, 1); 
				player:messageSpecial(ITEM_OBTAINED,15965);
			elseif (player:getFreeSlotsCount() > 0 and player:hasKeyItem(FAIL_BADGE) and trade:getGil() == 2) then
                player:tradeComplete();
				player:addItem(15964, 1); 
				player:messageSpecial(ITEM_OBTAINED,15964);
			elseif (player:getFreeSlotsCount() > 0 and player:hasKeyItem(FAIL_BADGE) and trade:getGil() == 3) then
                player:tradeComplete();
				player:addItem(15962, 1); 
				player:messageSpecial(ITEM_OBTAINED,15962);
			elseif (player:getFreeSlotsCount() > 0 and player:hasKeyItem(FAIL_BADGE) and trade:getGil() == 4) then
                player:tradeComplete();
				player:addItem(15963, 1); 
				player:messageSpecial(ITEM_OBTAINED,15963);
			else
				player:PrintToPlayer(string.format("You done goofed."));
			end
    end
	
end;



function onTrigger(player,npc)
end;