-----------------------------------
-- Area: Port Jeuno
--  NPC: Naurmaire
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Port_Jeuno/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Port_Jeuno/TextIDs");
-----------------------------------



function onTrigger(player,npc)

	GetNPCByID(17784898):setPos(42.711,0,-5.889,160);
	GetNPCByID(17784898):setStatus(STATUS_NORMAL);

	if (player:hasItem(4181) == false) then
		player:PrintToPlayer("Bro, you forgot your Warp scroll, don't worry, I gotchu :D");
		player:addItem(4181,1);
		player:messageSpecial(ITEM_OBTAINED,4181);
	else
		local BeetleCampPJ = player:getVar("BeetleCampPJ")
		if (BeetleCampPJ == 0) then
			player:setVar("PJNation",0);
			
 			player:PrintToPlayer("Warning! The next time you click this NPC, you will be transported.");
			player:PrintToPlayer("Destination: Western Altepa Desert - Beetle Camp");
			player:setVar("BeetleCampPJ",1);
		else
			player:setVar("BeetleCampPJ",0);
			player:setPos(-141,-14,19,255,125);
		end
	end
	
end;