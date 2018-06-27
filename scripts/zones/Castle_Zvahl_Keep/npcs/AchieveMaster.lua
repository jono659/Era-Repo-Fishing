-----------------------------------
--	Area: Castle Zvahl Keep
--	NPC:  Achieve Master
--	Custom Fail Badge quest
-----------------------------------
package.loaded["scripts/zones/Western_Altepa_Desert/TextIDs"] = nil;
-------------------------------------
--require("scripts/globals/settings");
require("scripts/zones/Western_Altepa_Desert/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	if(player:getVar("FailBadge") == 13) then
		if(trade:hasItemQty(4238,1)) then
		player:tradeComplete();
		player:PrintToPlayer("Go Back to Achieve Master in Ru'Lude Gardens",17);
		player:setVar("FailBadge",15);
		player:addItem(4245);
		player:messageSpecial(ITEM_OBTAINED,4245);
		end
	end
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	if(player:getVar("FailBadge") == 15) then
		player:PrintToPlayer("Go Back to Achieve Master in Ru'Lude Gardens",17);
	end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;