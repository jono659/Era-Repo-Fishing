-----------------------------------
-- Area: Ru'Lude Gardens
-- NPC:  World Shifter
-----------------------------------
package.loaded["scripts/zones/RuLude_Gardens/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/RuLude_Gardens/TextIDs");
require("/scripts/globals/settings");	

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

	GetNPCByID(17772696):setPos(-70.802,5.589,-7.947,253);
	GetNPCByID(17772696):setStatus(STATUS_NORMAL); 
	GetNPCByID(17772696):setAnimation(1);

    if (player:getVar("MentorFlag") == 1) then
		if (player:hasItem(4181) == false) then
			player:PrintToPlayer("Bro, you forgot your Warp scroll, don't worry, I gotchu :D");
			player:addItem(4181, 1);
			player:messageSpecial(ITEM_OBTAINED,4181);
		else
			local RuLudeNation = player:getVar("RuLudeNation")
			if (RuLudeNation == 0) then
				player:setVar("GigasCamp",0);
				player:setVar("TigerCamp",0);
				player:setVar("MandyCamp",0);
				player:setVar("BeetleCamp",0);
				player:setVar("CrabCamp",0);
				
				player:PrintToPlayer("Warning! The next time you click this NPC, you will be transported.");
				player:PrintToPlayer("Destination: Home Nation");
				player:setVar("RuLudeNation",1);
			else
				player:setVar("RuLudeNation",0);
				toHomeNation(player);
			end
		end	
    else
        if (player:hasItem(4181) == false) then
			player:PrintToPlayer("Bro, you forgot your Warp scroll, don't worry, I gotchu :D");
			player:addItem(4181,1);
			player:messageSpecial(ITEM_OBTAINED,4181);
		else
			local RuLudeNation = player:getVar("RuLudeNation")
			if (RuLudeNation == 0) then
				player:setVar("GigasCamp",0);
				player:setVar("TigerCamp",0);
				player:setVar("MandyCamp",0);
				player:setVar("BeetleCamp",0);
				player:setVar("CrabCamp",0);
			
				player:PrintToPlayer("Warning! The next time you click this NPC, you will be transported.");
				player:PrintToPlayer("Destination: Home Nation");
				player:setVar("RuLudeNation",1);
			else
				player:addStatusEffect(dsp.effects.RERAISE,1,0,7200);
				player:addStatusEffect(dsp.effects.DEDICATION,100,0,43200,0,80000); -- XP Weekend
				-- player:addStatusEffect(dsp.effects.DEDICATION,34,0,43200,0,30000); -- Original
				
				player:setVar("RuLudeNation",0);
				toHomeNation(player);
			end
		end
    end    
end;