-----------------------------------
-- Area: Bastok Mines
--  NPC: Maymunah
-- Guild Merchant NPC: Alchemy Guild
-- !pos 108.738 5.017 -3.129 234
-----------------------------------
package.loaded["scripts/zones/Bastok_Mines/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Bastok_Mines/TextIDs");
-----------------------------------
function onTrigger(player,npc)
	


stock = {937,750, -- Animal Glue
	 1108,500, -- Sulfur
         929,750, -- Black Ink
         928,200, -- Bomb Ashe
         932,600, -- Carbon Fiber
        933,450, -- Glass fiber
         947,750, -- Firesand
         1524,650, -- fresh mugwort
         920,750, -- Malboro Vine
         914,800, -- Mercury
		 637,2000, --slime oil
         2126,10000
         }
         

 
showShop(player, STATIC, stock);
end; 

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

