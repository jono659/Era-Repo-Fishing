-----------------------------------
-- Area: Northern San d'Oria
--  NPC: Doggomehr
--  Guild Merchant NPC: Blacksmithing Guild
-- !pos -193.920 3.999 162.027 231
-----------------------------------
package.loaded["scripts/zones/Northern_San_dOria/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Northern_San_dOria/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

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



function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

