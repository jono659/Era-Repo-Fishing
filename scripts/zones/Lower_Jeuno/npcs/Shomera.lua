-----------------------------------
-- Area: Lower Jeuno
--  NPC: Shomera
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Lower_Jeuno/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Lower_Jeuno/TextIDs");
-----------------------------------

function onTrigger(player,npc)

	GetNPCByID(17780777):setPos(-20,0,-6,243);
	GetNPCByID(17780777):setStatus(STATUS_NORMAL);
	
	if (player:hasItem(4181) == false) then
		player:PrintToPlayer("Bro, you forgot your Warp scroll, don't worry, I gotchu :D");
		player:addItem(4181,1);
		player:messageSpecial(ITEM_OBTAINED,4181);
	else
		local LJGate = player:getVar("LJGate")
		if (LJGate == 0) then
			player:setVar("RocCamp",0);
			player:setVar("CNestCamp",0);
			player:setVar("LJNation",0);
			
 			player:PrintToPlayer("Warning! The next time you click this NPC, you will be transported.");
			player:PrintToPlayer("Destination: Aht Urgan Whitegate");
			player:setVar("LJGate",1);
		else
			if (player:hasKeyItem(781)) then
				player:setVar("LJGate",0);
				player:setPos(111,0,21,190,50);
			else
				player:PrintToPlayer("You do not own the 'Boarding Permit' Key Item.");
			end
		end
	end

end;