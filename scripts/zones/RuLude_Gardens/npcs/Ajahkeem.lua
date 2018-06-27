-----------------------------------
-- Area: Ru'Lude Gardens
-- NPC:  Ajahkeem
-----------------------------------
package.loaded["scripts/zones/RuLude_Gardens/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/RuLude_Gardens/TextIDs");



function onTrigger(player,npc)

	GetNPCByID(17772771):setPos(-58,6,6,92);
	GetNPCByID(17772771):setStatus(STATUS_NORMAL);

	if (player:hasItem(4181) == false) then
		player:PrintToPlayer("Bro, you forgot your Warp scroll, don't worry, I gotchu :D");
		player:addItem(4181,1);
		player:messageSpecial(ITEM_OBTAINED,4181);
	else
		local CrabCamp = player:getVar("CrabCamp")
		if (CrabCamp == 0) then
			player:setVar("RuLudeNation",0);
			player:setVar("GigasCamp",0);
			player:setVar("TigerCamp",0);
			player:setVar("MandyCamp",0);
			player:setVar("BeetleCamp",0);
			
 			player:PrintToPlayer("Warning! The next time you click this NPC, you will be transported.");
			player:PrintToPlayer("Destination: The Boyahda Tree - Crab Camp");
			player:setVar("CrabCamp",1);
		else
			player:setVar("CrabCamp",0);
			player:setPos(215,8,-38,77,153);
		end
	end

end;