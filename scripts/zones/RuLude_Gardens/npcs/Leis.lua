-----------------------------------
-- Area: Ru'Lud Gardens
--  NPC: Leis
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/RuLude_Gardens/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/RuLude_Gardens/TextIDs");



function onTrigger(player,npc)

	GetNPCByID(17772574):setPos(-66,6,8,65);
	GetNPCByID(17772574):setStatus(STATUS_NORMAL);

	if (player:hasItem(4181) == false) then
		player:PrintToPlayer("Bro, you forgot your Warp scroll, don't worry, I gotchu :D");
		player:addItem(4181,1);
		player:messageSpecial(ITEM_OBTAINED,4181);
	else
		local GigasCamp = player:getVar("GigasCamp")
		if (GigasCamp == 0) then
			player:setVar("RuLudeNation",0);
			player:setVar("TigerCamp",0);
			player:setVar("MandyCamp",0);
			player:setVar("BeetleCamp",0);
			player:setVar("CrabCamp",0);
			
 			player:PrintToPlayer("Warning! The next time you click this NPC, you will be transported.");
			player:PrintToPlayer("Destination: Middle Delkfutt's Tower - Gigas Camp");
			player:setVar("GigasCamp",1);
		else
			player:setVar("GigasCamp",0);
			player:setPos(20,-80,73,65,157);
		end
	end 

end;