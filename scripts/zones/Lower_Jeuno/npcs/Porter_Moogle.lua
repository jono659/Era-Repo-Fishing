-----------------------------------
-- Area: Lower Jeuno
-- NPC:  Porter Moogle
-----------------------------------
package.loaded["scripts/zones/Lower_Jeuno/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/Lower_Jeuno/TextIDs");
require("/scripts/globals/settings");



function onTrigger(player,npc)

	GetNPCByID(17780978):setPos(-19.1,0,-1.2,22);
	GetNPCByID(17780978):setStatus(STATUS_NORMAL); 
	GetNPCByID(17780978):setAnimation(1);

    if (player:getVar("MentorFlag") == 1) then
		if (player:hasItem(4181) == false) then
			player:PrintToPlayer("Bro, you forgot your Warp scroll, don't worry, I gotchu :D");
			player:addItem(4181, 1);
			player:messageSpecial(ITEM_OBTAINED,4181);
		else
			local LJNation = player:getVar("LJNation")
			if (LJNation == 0) then
				player:setVar("LJGate",0);
				player:setVar("CNestCamp",0);
				player:setVar("RocCamp",0);
				
				player:PrintToPlayer("Warning! The next time you click this NPC, you will be transported.");
				player:PrintToPlayer("Destination: Home Nation");
				player:setVar("LJNation",1);
			else
				player:setVar("LJNation",0);
				toHomeNation(player);
			end
		end	
    else
        if (player:hasItem(4181) == false) then
			player:PrintToPlayer("Bro, you forgot your Warp scroll, don't worry, I gotchu :D");
			player:addItem(4181,1);
			player:messageSpecial(ITEM_OBTAINED,4181);
		else
			local LJNation = player:getVar("LJNation")
			if (LJNation == 0) then
				player:setVar("LJGate",0);
				player:setVar("CNestCamp",0);
				player:setVar("RocCamp",0);
				
				player:PrintToPlayer("Warning! The next time you click this NPC, you will be transported.");
				player:PrintToPlayer("Destination: Home Nation");
				player:setVar("LJNation",1);
			else
				player:addStatusEffect(dsp.effects.RERAISE,1,0,7200);
				player:addStatusEffect(dsp.effects.DEDICATION,100,0,43200,0,80000); -- XP Weekend
				-- player:addStatusEffect(dsp.effects.DEDICATION,34,0,43200,0,30000); -- Original

				player:setVar("LJNation",0);
				toHomeNation(player);
			end
		end
    end    
end;