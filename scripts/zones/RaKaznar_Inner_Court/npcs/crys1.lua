-----------------------------------
-- Area: Ra'Kaznar Inner Court
-- NPC: ???
-- Standard Info NPC
-----------------------------------

package.loaded["scripts/zones/RaKaznar_Inner_Court/TextIDs"] = nil;
require("scripts/zones/RaKaznar_Inner_Court/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	local npc = GetNPCByID(17908256); -- ???
    if (trade:hasItemQty(18296,1) and trade:hasItemQty(65535,1)) then
		SpawnMob(17907715); -- spawn Pox Hound(drg)
		player:tradeComplete(trade);		
    end;	
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
player:PrintToPlayer("What do you want? This doesn't work yet!")
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



