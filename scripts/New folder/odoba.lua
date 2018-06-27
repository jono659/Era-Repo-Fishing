-----------------------------------
-- Area: Bastok Mines
-- NPC: Odoba
-- Guild Merchant NPC: Alchemy Guild 
-- @pos 108.473 5.017 1.089 234
-----------------------------------
package.loaded["scripts/zones/Bastok_Mines/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Bastok_Mines/TextIDs");

-----------------------------------
-- onTrigger Action
-----------------------------------
function onTrigger(player,npc)
	


stock = {17764,100000, --Trainee Sword
         1109,750, -- Artificial Lense
		 1772,12000, -- Super Cermet added for PUP ~Lau
         929,750, -- Black Ink
         928,200, -- Bomb Ashe
         932,600, -- Carbon Fiber
         636,50, -- Chamomile
         622,300, -- Dried Majoram
         947,750, -- Firesand
         5466,1200, -- trumpet shell
         920,750, -- Malboro Vine
         914,800, -- Vial of Mercury
         2131,300, -- Triturator
         2563,3500, -- Karugo Clay
         } 

 
showShop(player, STATIC, stock);
end; 

-----------------------------------
-- onTrade Action
-----------------------------------
function onTrade(player,npc,trade)
end; 
 
  
-----------------------------------
-- onEventFinish Action
-----------------------------------
function onEventFinish(player,csid,option)
--print("CSID:",csid);
--print("RESULT:",option);
end;