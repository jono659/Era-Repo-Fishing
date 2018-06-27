-----------------------------------
-- Area: Ru'Lude Gardens
-- NPC:  Kayle
-----------------------------------
package.loaded["scripts/zones/RuLude_Gardens/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/RuLude_Gardens/TextIDs");



function onTrigger(player,npc)

	GetNPCByID(17772578):setPos(-57,6,4,91);
	GetNPCByID(17772578):setStatus(STATUS_NORMAL);

	if (player:hasItem(4181) == false) then
		player:PrintToPlayer("Bro, you forgot your Warp scroll, don't worry, I gotchu :D");
		player:addItem(4181,1);
		player:messageSpecial(ITEM_OBTAINED,4181);
	else
		local TigerCamp = player:getVar("TigerCamp")
		if (TigerCamp == 0) then
			player:setVar("RuLudeNation",0);
			player:setVar("GigasCamp",0);
			player:setVar("MandyCamp",0);
			player:setVar("BeetleCamp",0);
			player:setVar("CrabCamp",0);
			
 			player:PrintToPlayer("Warning! The next time you click this NPC, you will be transported.");
			player:PrintToPlayer("Destination: Kuftal Tunnel - Tiger Camp");
			player:setVar("TigerCamp",1);
		else
			player:setVar("TigerCamp",0);
			player:setPos(148,19,-112,147,174);
		end
	end

end;