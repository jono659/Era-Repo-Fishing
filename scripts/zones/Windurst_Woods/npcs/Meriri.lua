-----------------------------------
-- Area: Windurst Woods
--  NPC: Meriri
-- Guild Merchant NPC: Clothcrafting Guild
-- !pos -76.471 -3.55 -128.341 241
-----------------------------------
package.loaded["scripts/zones/Windurst_Woods/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Windurst_Woods/TextIDs");



function onTrade(player,npc,trade)
end;



function onTrigger(player,npc)
	
player:showText(npc,MERIRI_DIALOG);

stock = {816,1500, -- Silk Thread
		 817,200, -- Grass Thread
         818,500, -- Cotton Thread 
         819,350, -- Linen Thread
         820,1200, -- Wool Thread
         821,2300, -- Rainbow Thread		 
         822,1100, -- Silver Thread
         823,1300, -- Gold Thread
         832,700, -- Sheep Wool
         833,20, -- Moko Grass
         834,150, -- Saruta Cotton
         835,500, --  Flax Flower
         838,1200, -- Spider Web
         839,653, -- Crawler Cocoon
         841,100, -- Yagudo Feather
		 2128,75, -- spindle
		 } 

 
showShop(player, STATIC, stock);
end; 



function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

