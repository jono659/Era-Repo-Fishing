-----------------------------------
-- Area: Ru'Lude Gardens
-- NPC:  Anoop
-----------------------------------
package.loaded["scripts/zones/RuLude_Gardens/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/RuLude_Gardens/TextIDs");



function onTrigger(player,npc)

	GetNPCByID(17772570):setPos(-71,6,8,24);
	GetNPCByID(17772570):setStatus(STATUS_NORMAL);

	if (player:hasItem(4181) == false) then
		player:PrintToPlayer("Bro, you forgot your Warp scroll, don't worry, I gotchu :D");
		player:addItem(4181,1);
		player:messageSpecial(ITEM_OBTAINED,4181);
	else
		local MandyCamp = player:getVar("MandyCamp")
		if (MandyCamp == 0) then
			player:setVar("RuLudeNation",0);
			player:setVar("GigasCamp",0);
			player:setVar("TigerCamp",0);
			player:setVar("BeetleCamp",0);
			player:setVar("CrabCamp",0);
		
 			player:PrintToPlayer("Warning! The next time you click this NPC, you will be transported.");
			player:PrintToPlayer("Destination: Yhoator Jungle - Mandragora Camp");
			player:setVar("MandyCamp",1);
		else
			player:setVar("MandyCamp",0);
			player:setPos(-285,8,140,253,124);
		end
	end
	
end;