-----------------------------------
-- Area: Lower Jeuno
--  NPC: Kuah Dakonsa
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Lower_Jeuno/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Lower_Jeuno/TextIDs");
-----------------------------------



function onTrigger(player,npc)

	GetNPCByID(17780790):setPos(-42.733,0,-65.881,220);
	GetNPCByID(17780790):setStatus(STATUS_NORMAL);

	if (player:hasItem(4181) == false) then
		player:PrintToPlayer("Bro, you forgot your Warp scroll, don't worry, I gotchu :D");
		player:addItem(4181,1);
		player:messageSpecial(ITEM_OBTAINED,4181);
	else
		local RocCamp = player:getVar("RocCamp")
		if (RocCamp == 0) then
			player:setVar("LJGate",0);
			player:setVar("CNestCamp",0);
			player:setVar("LJNation",0);
			
 			player:PrintToPlayer("Warning! The next time you click this NPC, you will be transported.");
			player:PrintToPlayer("Destination: Lufaise Meadows - Roc Camp");
			player:setVar("RocCamp",1);
		else
			if (player:hasCompletedMission(COP,THE_MOTHERCRYSTALS)) then
				player:setVar("RocCamp",0);
				player:setPos(347,-7,108,227,24);
			else
				player:PrintToPlayer("You have not completed the 3 Promyvion's.");
			end
		end
	end

end;