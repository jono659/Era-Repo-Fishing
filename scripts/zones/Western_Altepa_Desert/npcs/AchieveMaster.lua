-----------------------------------
--	Area: Western Altepa Desert
--	NPC:  Achieve Master
--	Custom Fail Badge quest
-----------------------------------
--package.loaded["scripts/zones/Western_Altepa_Desert/TextIDs"] = nil;
-------------------------------------
--require("scripts/globals/settings");
--require("scripts/zones/Western_Altepa_Desert/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	if(player:getVar("FailBadge") == 5) then
		if(trade:hasItemQty(613,1)) then
		player:tradeComplete();
		player:PrintToPlayer("The next chest is in Uleguerand Range.",17);
		player:PrintToPlayer("Place the 'Terra Crystal' inside of it.",17);
		player:setVar("FailBadge",7);
		player:addItem(4241);
		player:messageSpecial(ITEM_OBTAINED,4241);
		end
	end
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	if(player:getVar("FailBadge") == 7) then
		player:PrintToPlayer("The next chest is in Uleguerand Range.",17);
		player:PrintToPlayer("Place the 'Terra Crystal' inside of it.",17);
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