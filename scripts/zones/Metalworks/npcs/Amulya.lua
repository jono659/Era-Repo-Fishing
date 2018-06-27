-----------------------------------
-- Area: Metalworks
--  NPC: Amulya
-- Type: Guild Merchant (Blacksmithing Guild)
-- !pos -106.093 0.999 -24.564 237
-----------------------------------
package.loaded["scripts/zones/Metalworks/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Metalworks/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;



--[[function onTrigger(player,npc)
    if (player:sendGuild(5332,8,23,2)) then
        player:showText(npc, AMULYA_SHOP_DIALOG);
    end
end;]]

function onTrigger(player,npc)
	
player:showText(npc,DOGGOMEHR_SHOP_DIALOG);

stock = {18855,100000, -- Trainee Hammer
649,100, -- bronze ingot
	 641,50, -- tin ore
         643,350, -- iron ore
		 646,2500, -- Adaman Ore
         651,1500, -- iron ingot
         652,4250, -- steel ingot
         654,8500, -- darksteel ingot
         2143,375, -- Mandrel
         2144,75, -- workshop anvil
         }

 
showShop(player, STATIC, stock);
end; 



function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

