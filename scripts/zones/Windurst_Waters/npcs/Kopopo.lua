-----------------------------------
-- Area: Windurst Waters
--  NPC: Kopopo
-- Guild Merchant NPC: Cooking Guild
-- !pos -103.935 -2.875 74.304 238
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

stock = {620,309, -- Tarutaru Rice
	     4435,1500, -- Cockatrice Meat
         5568,450, -- Apkallu Egg
         4392,100, -- Saru orange
       
         5680,2000, -- Agaricus
         5661,750, -- walnuts
         4449,3000, -- Reishi mushroom
         4362,400, -- lizard egg
   

      
         
         619,50, -- popo
		 618,3000,
        } -- doesnt work

 
showShop(player, STATIC, stock);
end; 
  


function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;
