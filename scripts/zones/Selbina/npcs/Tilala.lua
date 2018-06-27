-----------------------------------
-- Area: Selbina
--  NPC: Tilala
-- Guild Merchant NPC: Clothcrafting Guild
-- !pos 14.344 -7.912 10.276 248
-----------------------------------
package.loaded["scripts/zones/Selbina/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Selbina/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end; 



function onTrigger(player,npc)
	
player:showText(npc,FISHING_SHOP_DIALOG);
local shopvar = player:getVar("shopvar");

    if(shopvar == 0)then
        player:setVar("shopvar",1);
    end
    if(shopvar == 1)then
        player:PrintToPlayer("Showing Page 1 of 2. Click again to get to page 2.")
        player:setVar("shopvar",2);
stock = {18763,100000, -- Trainee Scissors
         1279,100000, -- Taffeta Cloth  
         2843,10000, -- Lineadach
         844,1500, -- Phoenix Feather
         1295,1200, --Twincoon
         1769,16000, -- galateia
         1294,1500, -- arachne thread
         818,723, -- cotton thread
         816,3865, -- silk thread
	     2128,80, -- spindle
         2295,800, -- mohba grass
         821,2300, -- rainbow thread
         819,4600, -- linen thread
         839,500, -- crawler cocoon
         822,3000,} -- silver thread
showShop(player, STATIC, stock);
    
    elseif(shopvar >= 2)then
        player:PrintToPlayer("Showing Page 2 of 2. Click again to get to page 1.")
        player:setVar("shopvar",1);		 
stock = {820,3312, -- wool thread
         823,14500, -- gold thread
         817,150, -- grass thread
		 834,200,-- Saruta Cotton
		 1845,500,--Red Moko Grass
		 1294,1500, -- Archane Thread
         2145,75, -- Zephyr Thread
         832,900, -- wool cloth
         833,50, -- Moko Grass
         824,588, -- Grass Cloth
         838,1000, -- Spider Web
         841,100, -- Yagudo Feather
	    835,500,} -- Flax Flower
showShop(player, STATIC, stock);
	end;
end; 	    
 



function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;



function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;


