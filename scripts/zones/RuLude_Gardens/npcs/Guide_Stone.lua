-----------------------------------
-- 	Guide Stone
-- 	Normal Text
-----------------------------------
require("scripts/globals/shop");
package.loaded["scripts/zones/Lower_Jeuno/TextIDs"] = nil;
require("scripts/zones/Lower_Jeuno/TextIDs");
-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)



stock = {
             4413,4000, -- Apple Pie
			 4381,4000, -- Meat Mithkabob
             4456,4000, -- Boiled Crab
		     4165,3000, -- Silent Oil
		     4164,3050, -- Prism Powder
			 --15761,5500, -- Chariot Band
			 17343,5, -- Bronze Bullet
		     --17340,25, -- Bullet
             --17341,100, -- Silver Bullet
			 --5342,10000, -- Cor. Bullet Pouch
			 --5416,25000, -- Steel Bullet Pouch
		     5314,20000, -- ToolBag: Shihei
		     --4116,800, -- Hi-Potion
			 --4155,5500, -- Remedy
			 --919,1600, -- Boyahda Moss
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