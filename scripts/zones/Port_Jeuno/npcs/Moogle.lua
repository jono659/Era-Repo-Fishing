-----------------------------------
-- Area: Port Jeuno
--  NPC: Moogle
--
-----------------------------------
package.loaded["scripts/zones/Port_Jeuno/TextIDs"] = nil
-----------------------------------
require("scripts/zones/Port_Jeuno/TextIDs")
require("scripts/globals/moghouse")

function onTrade(player,npc,trade)
    moogleTrade(player,npc,trade);
end; 

function onTrigger(player,npc)

    if (npc:getID() == 17784946) then
        moogleTrigger(player,npc);
    end

    if (npc:getID() == 17784938) then   
	
		GetNPCByID(17784938):setPos(28,0,-9,197);
		GetNPCByID(17784938):setStatus(STATUS_NORMAL); 
		GetNPCByID(17784938):setAnimation(1);
		
		if (player:getVar("MentorFlag") == 1) then
			if (player:hasItem(4181) == false) then
				player:PrintToPlayer("Bro, you forgot your Warp scroll, don't worry, I gotchu :D");
				player:addItem(4181, 1);
				player:messageSpecial(ITEM_OBTAINED,4181);
			else
				local PJNation = player:getVar("PJNation")
				if (PJNation == 0) then
					player:setVar("BeetleCampPJ",0);
					
					player:PrintToPlayer("Warning! The next time you click this NPC, you will be transported.");
					player:PrintToPlayer("Destination: Home Nation");
					player:setVar("PJNation",1);
				else
					player:setVar("PJNation",0);
					toHomeNation(player);
				end
			end
		else
			if (player:hasItem(4181) == false) then
				player:PrintToPlayer("Bro, you forgot your Warp scroll, don't worry, I gotchu :D");
				player:addItem(4181,1);
				player:messageSpecial(ITEM_OBTAINED,4181);
			else
				local PJNation = player:getVar("PJNation")
				if (PJNation == 0) then
					player:setVar("BeetleCampPJ",0);
					
					player:PrintToPlayer("Warning! The next time you click this NPC, you will be transported.");
					player:PrintToPlayer("Destination: Home Nation");
					player:setVar("PJNation",1);
				else
					player:addStatusEffect(dsp.effects.RERAISE,1,0,7200);
					player:addStatusEffect(dsp.effects.DEDICATION,100,0,43200,0,80000); -- XP Weekend
					-- player:addStatusEffect(dsp.effects.DEDICATION,34,0,43200,0,30000); -- Original
				
					player:setVar("PJNation",0);
					toHomeNation(player);
				end
			end
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
    if (csid == 0x7530) then
        player:setVar("MoghouseExplication",0);
    end
end;