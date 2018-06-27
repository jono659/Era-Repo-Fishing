-----------------------------------
-- Area: Ru'Lude Gardens
-- NPC:  Akta
-----------------------------------
package.loaded["scripts/zones/RuLude_Gardens/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/RuLude_Gardens/TextIDs");



function onTrigger(player,npc)

	GetNPCByID(17772589):setPos(-62,6,8,55);
	GetNPCByID(17772589):setStatus(STATUS_NORMAL);

	if (player:hasItem(4181) == false) then
		player:PrintToPlayer("Bro, you forgot your Warp scroll, don't worry, I gotchu :D");
		player:addItem(4181,1);
		player:messageSpecial(ITEM_OBTAINED,4181);
	else
		local BeetleCamp = player:getVar("BeetleCamp")
		if (BeetleCamp == 0) then
			player:setVar("RuLudeNation",0);
			player:setVar("GigasCamp",0);
			player:setVar("TigerCamp",0);
			player:setVar("MandyCamp",0);
			player:setVar("CrabCamp",0);
		
 			player:PrintToPlayer("Warning! The next time you click this NPC, you will be transported.");
			player:PrintToPlayer("Destination: Garlaige Citadel - Beetle Camp");
			player:setVar("BeetleCamp",1);
		else
			player:setVar("BeetleCamp",0);
			player:setPos(-343,-3,339,0,200);
		end
	end

end;