-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: Amajal
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Aht_Urhgan_Whitegate/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Aht_Urhgan_Whitegate/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
--ERA Custom
	GetNPCByID(16982147):setPos(115.9,-0.31,22.5,57);
	GetNPCByID(16982147):setStatus(STATUS_NORMAL);

	if (player:hasItem(4181) == false) then
		player:PrintToPlayer("Bro, you forgot your Warp scroll, don't worry, I gotchu :D");
		player:addItem(4181,1);
		player:messageSpecial(ITEM_OBTAINED,4181);
	else
		local undead = player:getVar("undeadCamp")
		if (undead == 0) then
			player:setVar("RuLudeNation",0);
			player:setVar("GigasCamp",0);
			player:setVar("TigerCamp",0);
			player:setVar("MandyCamp",0);
			player:setVar("BeetleCamp",0);
			
 			player:PrintToPlayer("Warning! The next time you click this NPC, you will be transported.");
			player:PrintToPlayer("Destination: Caedarva Mire - Undead ZNM Camp");
			player:setVar("undeadCamp",1);
		else
			player:setVar("undeadCamp",0);
			player:setPos(-691,-24,357,132,79);
		end
	end
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

