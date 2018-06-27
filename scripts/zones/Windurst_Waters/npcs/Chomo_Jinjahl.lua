-----------------------------------
-- Area: Windurst Waters
--  NPC: Chomo Jinjahl
-- Guild Merchant NPC: Cooking Guild
-- !pos -105.094 -2.222 73.791 238
-----------------------------------
package.loaded["scripts/zones/Windurst_Waters/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Windurst_Waters/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
	
player:showText(npc,MATOAKA_SHOP_DIALOG);

stock = {

        19101,100000, -- Trainee Knife
	    4273,450, -- Kitron
        631,200, -- Horo Flour
        4505,100, -- Sunflower seeds
        4571,600, -- Beaugreens
        4570,120, -- Bird Egg
        4517,10000, -- Yellow Curry
        4378,150, -- Selbina Milk
        2270,100, -- Coffee Cherries
        4387,3000, -- Wild Onion
        4296,3000, -- Green Curry
        2112,200, -- Rice Vinegar
        614,300, -- Mhaura Garlic
        8800,5000, -- Azuki Bean
		4274,997, -- Persikos
        
        
        } 
         

 
showShop(player, STATIC, stock);
end; 
  


function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;
