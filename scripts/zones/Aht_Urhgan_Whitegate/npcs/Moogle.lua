-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: Moogle
-- 16982052	4194307
-----------------------------------
package.loaded["scripts/zones/Aht_Urhgan_Whitegate/TextIDs"] = nil
-----------------------------------
require("scripts/zones/Aht_Urhgan_Whitegate/TextIDs")
require("scripts/globals/moghouse")

function onTrigger(player,npc)


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

function onTrade(player,npc,trade)
		if (trade:hasItemQty(15533,1)) then
			player:tradeComplete();
			player:addItem(15533,1); -- Chocobo Whistle
			player:PrintToPlayer("Your Chocobo Whistle has been re-charged!");
		end
end