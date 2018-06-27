-----------------------------------
-- Area: Southern San d'Oria
-- NPC: Kueh Igunahmori
-- Guild Merchant NPC: Leathercrafting Guild 
-- @pos -194.791 -8.800 13.130 230
-----------------------------------
package.loaded["scripts/zones/Southern_San_dOria/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/conquest");
require("scripts/zones/Southern_San_dOria/TextIDs");



function onTrade(player,npc,trade)
end;



function onTrigger(player,npc)
	
player:showText(npc,KUEH_IGUNAHMORI_DIALOG);

stock = {19110,100000, -- Trainee Needle
635,25, -- windurstian tea leaves
	   505,100, -- Sheep skin
         850,125, -- sheep leather
         852,125, -- lizard skin
         878,200, -- karakul skin
         879,400, -- Karakul Leather
         857,600, -- Dhalmel Hide
         848,1200, -- Dhalmel Leather
         853,3500, -- Raptor Skin
         861,2000, -- Tiger Hide
         855,5000, -- Tiger Leather
         2156,100, -- imp. tea leaves
         2129,31, -- tanning vat
         869,10000, -- Molt
		 1765,2000, -- Habu Skin
         } 

 
showShop(player, STATIC, stock);
end; 
 


function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;


