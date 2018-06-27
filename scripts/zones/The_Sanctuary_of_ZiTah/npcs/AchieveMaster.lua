-----------------------------------
--	Area: The Sanctuary of ZiTah
--	NPC:  Achieve Master
--	Custom Fail Badge quest
-- 17273355
-- pos 102 0 -405
-----------------------------------
package.loaded["scripts/zones/Western_Altepa_Desert/TextIDs"] = nil;
-------------------------------------
--require("scripts/globals/settings");
require("scripts/zones/Western_Altepa_Desert/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	if(player:getVar("FailBadge") == 9) then
		if(trade:hasItemQty(4239,1)) then
		player:tradeComplete();
		player:PrintToPlayer("The next chest is in Ifrit's Cauldron.",17);
		player:PrintToPlayer("Place the 'Plasma Crystal' inside of it.",17);
		player:setVar("FailBadge",11);
		player:addItem(4242);
		player:messageSpecial(ITEM_OBTAINED,4242);
		end
	end
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	if(player:getVar("FailBadge") == 11) then
		player:PrintToPlayer("The next chest is in Ifrit's Cauldron.",17);
		player:PrintToPlayer("Place the 'Plasma Crystal' inside of it.",17);
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