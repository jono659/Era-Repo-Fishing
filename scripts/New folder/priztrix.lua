-----------------------------------
-- Area: Upper Jeuno
-- NPC: Monberaux
-- Starts and Finishes Quest: The Lost Cardian (finish), The kind cardian (start)
-- Involved in Quests: Save the Clock Tower
-- @pos -43 0 -1 244
-----------------------------------
package.loaded["scripts/zones/Upper_Jeuno/TextIDs"] = nil;
package.loaded["scripts/globals/settings"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/titles");
require("scripts/globals/keyitems");
require("scripts/globals/shop");
require("scripts/globals/missions");
require("scripts/globals/quests");
require("scripts/zones/Upper_Jeuno/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	if(player:getVar("FailBadge") == 2) then
		if(trade:getGil() < 10000) then
			player:PrintToPlayer("You have to give me more than that! Information doesn't come cheap.")
		elseif(trade:getGil() > 9999) then
			player:PrintToPlayer("This will do. There's a crystal inside that coffer.")
			player:PrintToPlayer("Take it to a man in Ru'lude Gardens known as 'Achieve Master'. He'll know what to do with it.")
			player:setVar("FailBadge",3);
			player:tradeComplete();
		end
	end
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
local failbadge = player:getVar("FailBadge");
	if(failbadge == 0) then
		player:PrintToPlayer("You want a Fail Badge? Why would anyone want that?");
		player:setVar("FailBadge",1);
	elseif(failbadge == 1) then
		player:PrintToPlayer("I'll tell you how to get one, but first you have to pay me.");
		player:setVar("FailBadge",2);
	elseif(failbadge == 2) then
		player:PrintToPlayer("Still need that gil..");
	elseif(failbadge == 3) then
		player:PrintToPlayer("I unlocked the coffer for you.");
	elseif(failbadge == 4) then
		player:PrintToPlayer("Take the faded crystal to the Achieve Master in Ru'lude Gardens.");
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