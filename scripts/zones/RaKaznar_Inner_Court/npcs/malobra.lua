-----------------------------------
-- Area: Ra'Kaznar Inner Court
-- NPC: Malobra
-- Standard Info NPC
-----------------------------------

package.loaded["scripts/zones/RaKaznar_Inner_Court/TextIDs"] = nil;
require("scripts/zones/RaKaznar_Inner_Court/TextIDs");
require("scripts/globals/keyitems");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	if player:hasKeyItem(1918) == false then
		player:addKeyItem(1918);
		player:messageSpecial(KEYITEM_OBTAINED,1918);
	else
		player:PrintToPlayer("Warning! Construction zone ahead!");
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



