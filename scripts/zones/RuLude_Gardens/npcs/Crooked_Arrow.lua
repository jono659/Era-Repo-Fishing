-----------------------------------
--	Area: Ru'Lud Gardens
--	NPC:  Crooked Arrow
--	Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/RuLude_Gardens/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/RuLude_Gardens/TextIDs");
require("scripts/globals/quests");



function onTrade(player,npc,trade)
end; 



function onTrigger(player,npc)
	local WildcatJeuno = player:getVar("WildcatJeuno");
	if (player:getQuestStatus(JEUNO,LURE_OF_THE_WILDCAT_JEUNO) == QUEST_ACCEPTED and player:getMaskBit(WildcatJeuno,1) == false) then
		player:startEvent(10090);
	else
stock = {1121,300, -- silent oil
	 1254,1300, -- vis powder
         917,300, -- toolbag shihe
         1657,50, -- meat mith
         4413,500, -- apple pie
         936,20, -- Boiled Crab
         1134,100, -- teak log
         929,400, -- walnut log
         2291,10, -- willow log
         932,450, -- yew log
         933,450, -- moss
         2184,200, -- imp brz peice
         1588,20400, -- blood heads
         819,300, -- aka egg
         4503,400, -- buub grape
         4721,5000,} --persik

 
showShop(player, STATIC, stock);
	end
end;



function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;



function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
	if (csid == 10090) then
		player:setMaskBit(player:getVar("WildcatJeuno"),"WildcatJeuno",1,true);
	end
end;
