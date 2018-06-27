-----------------------------------
--	Area: 
--	NPC:  Achieve Master
--	Custom Fail Badge quest
-- 16798101
-----------------------------------
package.loaded["scripts/zones/Western_Altepa_Desert/TextIDs"] = nil;
-------------------------------------
--require("scripts/globals/settings");
require("scripts/zones/Western_Altepa_Desert/TextIDs");
-- 95 541.376 -43.997 300.202 name 1 ent3 
-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	if(player:getVar("FailBadge") == 7) then
		if(trade:hasItemQty(4241,1)) then
		player:tradeComplete();
		player:PrintToPlayer("The next chest is in The Sanctuary of Zi'tah.",17);
		player:PrintToPlayer("Place the 'Glacier Crystal' inside of it.",17);
		player:setVar("FailBadge",9);
		player:addItem(4239);
		player:messageSpecial(ITEM_OBTAINED,4239);
		end
	end
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	if(player:getVar("FailBadge") == 9) then
		player:PrintToPlayer("The next chest is in The Sanctuary of Zi'tah.",17);
		player:PrintToPlayer("Place the 'Glacier Crystal' inside of it.",17);
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