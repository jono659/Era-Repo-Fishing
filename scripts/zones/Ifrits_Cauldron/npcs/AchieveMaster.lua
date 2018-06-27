-----------------------------------
--	Area: Ifrits Cauldren
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
	if(player:getVar("FailBadge") == 11) then
		if(trade:hasItemQty(4242,1)) then
		player:tradeComplete();
		player:PrintToPlayer("The next chest is in Castle Zvahl Keep.",17);
		player:PrintToPlayer("Place the 'Inferno Crystal' inside of it.",17);
		player:setVar("FailBadge",13);
		player:addItem(4238);
		player:messageSpecial(ITEM_OBTAINED,4238);
		end
	end
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	if(player:getVar("FailBadge") == 13) then
		player:PrintToPlayer("The next chest is in Castle Zvahl Keep.",17);
		player:PrintToPlayer("Place the 'Inferno Crystal' inside of it.",17);
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