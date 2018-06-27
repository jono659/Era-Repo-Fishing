-----------------------------------
-- Area: Ru'Lude Gardens
-- NPC:  Home Point #5
-----------------------------------
package.loaded["scripts/zones/RuLude_Gardens/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/RuLude_Gardens/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)

	if trade:hasItemQty(2427,1) then
		if (player:hasKeyItem(781)) then
			player:setPos(-459,-19,-20, 79, 52);
			player:tradeComplete();
			player:PrintToPlayer("Transporting to the GC/Wivre Camp!");
		else 
			player:PrintToPlayer("You do not own the 'Boarding Permit' Key Item.");
		end
	end
	
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

	GetNPCByID(17772801):setPos(-58,12,-27,0);
	GetNPCByID(17772801):setStatus(STATUS_NORMAL);
	
	if (player:hasItem(4181) == false) then
		player:PrintToPlayer("Bro, you forgot your Warp scroll, don't worry, I gotchu :D");
		player:addItem(4181,1);
		player:messageSpecial(ITEM_OBTAINED,4181);
	else
		local RuLudeGate = player:getVar("RuLudeGate")
		if (RuLudeGate == 0) then
			player:PrintToPlayer("Trade me a Wivre Maul to travel to the G.Colibri/Wivre Camp!");
 			player:PrintToPlayer("Warning! The next time you click this NPC, you will be transported.");
			player:PrintToPlayer("Destination: Aht Urgan Whitegate");
			player:setVar("RuLudeGate",1);
		else
			if (player:hasKeyItem(781)) then
				player:setVar("RuLudeGate",0);
				player:setPos(111,0,21,190,50);
			else
				player:PrintToPlayer("You do not own the 'Boarding Permit' Key Item.");
			end
		end
	end

end;