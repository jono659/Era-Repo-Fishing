-----------------------------------
--  Area: Provenance
--  NPC:  Achieve Master
--  Fail Badge quest (chest)
-----------------------------------
package.loaded["scripts/zones/Provenance/TextIDs"] = nil;
-------------------------------------

require("scripts/zones/Provenance/TextIDs");

-----------------------------------
-- onTrade
-----------------------------------

function onTrade(player,npc,trade)
	if(player:getVar("FailBadge") == 16) then
		if(trade:hasItemQty(4245,1)) then
			player:setVar("FailBadge",17);
			player:setPos(-582,-228,507,194);
			player:PrintToPlayer("Defeat the Provenance Watcher to obtain what you seek.",17);
			player:tradeComplete();
		end
	elseif(player:getVar("FailBadge") == 18) then
		if(trade:hasItemQty(4244,1)) then
			player:addKeyItem(2273);
			player:messageSpecial(KEYITEM_OBTAINED,2273);
			player:PrintToPlayer("You have failed...",17);
			player:tradeComplete();
			player:setVar("FailBadge",19);
		end
	end
end;

-----------------------------------
-- onTrigger
-----------------------------------

function onTrigger(player,npc)
local grumblix = GetNPCByID(17686619);
        grumblix:setStatus(STATUS_NORMAL);
		
		SetServerVariable("RareValue", math.random(300000,800000));

grumblix:setPos(-647,-19,-488);
local failbadge = player:getVar("FailBadge");
	if(failbadge == 17) then
		player:PrintToPlayer("Return to the Achieve Master in Ru'lude.",17)
	elseif(failbadge == 19) then
		player:PrintToPlayer("You're a failure!",17);
	else
		player:PrintToPlayer("A mysterious chest. It's empty.",17);
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