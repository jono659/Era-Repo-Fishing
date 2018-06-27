-----------------------------------
-- Area: Southern San d'Oria
-- NPC: Capucine
-- Standard Merchant NPC
-----------------------------------
package.loaded["scripts/zones/Southern_San_dOria/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/Southern_San_dOria/TextIDs");
require("scripts/globals/shop");



function onTrade(player,npc,trade)
end; 



function onTrigger(player,npc)
	
player:showText(npc,KUEH_IGUNAHMORI_DIALOG);

stock = {12473,2000, -- peots circle
12608,1300, -- tunic
	   12601,2900, -- linen robe
         12736,650, -- mitts
         12729,1605, -- linens cuff
         12864,860, -- slacks
         12857,2400, -- linen slops
         12992,600, -- solea
         12985,1500, -- holly clogs
         --853,3500, -- Raptor Skin
        -- 861,2000, -- Tiger Hide
         --855,5000, -- Tiger Leather
         --2156,100, -- imp. tea leaves
         --2129,31, -- tanning vat
         --869,10000, -- Molt
		 --1765,2000, -- Habu Skin
         } 

 
showShop(player, STATIC, stock);
end; 
  


function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;
