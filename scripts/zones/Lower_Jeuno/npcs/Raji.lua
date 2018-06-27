-----------------------------------
-- Area: Lower Jeuno
--  NPC: Raji
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Lower_Jeuno/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Lower_Jeuno/TextIDs");
-----------------------------------

function onTrigger(player,npc)

	GetNPCByID(17780776):setPos(-26,0,-16.5,20);
	GetNPCByID(17780776):setStatus(STATUS_NORMAL);

	if (player:hasItem(4181) == false) then
		player:PrintToPlayer("Bro, you forgot your Warp scroll, don't worry, I gotchu :D");
		player:addItem(4181,1);
		player:messageSpecial(ITEM_OBTAINED,4181);
	else
		local CNestCamp = player:getVar("CNestCamp")
		if (CNestCamp == 0) then
			player:setVar("LJGate",0);
			player:setVar("RocCamp",0);
			player:setVar("LJNation",0);
			
 			player:PrintToPlayer("Warning! The next time you click this NPC, you will be transported.");
			player:PrintToPlayer("Destination: Crawler's Nest - Lizard Camp");
			player:setVar("CNestCamp",1);
		else
			player:setVar("CNestCamp",0);
			player:setPos(132,-40,-70,90,197);
		end
	end

end;