-----------------------------------
-- Area: Port Jeuno
--  NPC: Guide Stone
-- !pos -149 -3 0 246
-----------------------------------
package.loaded["scripts/zones/Port_Jeuno/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Port_Jeuno/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

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


function onTrade(player,npc,trade)
	
end; 
 
  
-----------------------------------
-- onEventFinish Action
-----------------------------------
function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;