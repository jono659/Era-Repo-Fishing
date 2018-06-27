-----------------------------------
-- Area: Selbina
-- NPC:  Graegham
-- Guild Merchant NPC: Fishing Guild 
-- @zone 248
-----------------------------------

require("scripts/globals/shop");
package.loaded["scripts/zones/Selbina/TextIDs"] = nil;
require("scripts/zones/Selbina/TextIDs");



function onTrade(player,npc,trade)
end; 



function onTrigger(player,npc)

player:showText(npc,FISHING_SHOP_DIALOG);
local shopvar = player:getVar("shopvar");

    
    
    if(player:getVar("shopvar") ~= 1)then
        player:PrintToPlayer("Showing Page 1 of 2. Click again to get to page 2.")
        player:setVar("shopvar",1);
stock = {4354,309, -- Shining trout
	 4480,1500, -- Gugru Tuna
         4483,120, -- Tiger Cod
         631,200, -- Horo Flour
         4461,6000, -- Bastore Bream
         4514,120, -- Quus
         4485,2170, -- Noble Lady
         4399,2520, -- Bluetail
         4383,3500, -- Gold Lobster
         4360,153, -- bastore sardine
         5448,500, --Kalamar
         4443,750, -- Cobalt jellyfish
         4403,800, -- yellow globe
         5457,800, -- Dil
         4384,800, -- black sole
         4478,3000,
		 4528, 1000} -- 3 eyed fish
showShop(player, STATIC, stock);

    
    elseif(player:getVar("shopvar") == 1)then
        player:PrintToPlayer("Showing Page 2 of 2. Click again to get to page 1.")
        player:setVar("shopvar",0);
stock = {4479,1358, -- Bhefhel Marlin
         4481,320, -- Ogre Eel
         624,58, -- Pamtam Kelp
         4385,261, -- Zafnlug Bass
         4402,3456, -- Red Terrapin
         4426,195, -- Tricolored Carp
         4428,136, -- Dark Bass
         4451,8400, -- Silver Shark
         4470,1790, -- Icefish
         4472,79, -- Crayfish
         4484,1350, -- Shall Shell
         4500,24, -- Greedie
         5818,1000, -- Aurora Bass
	 4515,132} -- Copper Frog
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


