-----------------------------------
-- Area: Bibiki Bay
--  NPC: Fheli Lapatzuo
-- Type: Manaclipper
-- !pos 488.793 -4.003 709.473 4
-----------------------------------
package.loaded["scripts/zones/Bibiki_Bay/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Bibiki_Bay/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
local Boatcheck = player:getVar("Boatcheck")
	if (Boatcheck == 0) then
 			player:PrintToPlayer("Warning! Next select will transport you to Poronogo Isle");
			player:setVar("Boatcheck",1);
	else
	 	player:PrintToPlayer("Portal Closing ~ Warping to Poronogo Isles now . . .");
		player:setVar("Boatcheck",0);	
		player:setPos(-393,-3,-389,60,4);

	end
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;
