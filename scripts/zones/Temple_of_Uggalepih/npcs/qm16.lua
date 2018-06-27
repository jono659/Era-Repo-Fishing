-----------------------------------
-- ??? 
-- Area: Temple of Uggalepih
-- @pos -239 -2 -19
-----------------------------------
package.loaded["scripts/zones/RoMaeve/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/RoMaeve/TextIDs");
require("scripts/globals/missions");
require("scripts/globals/keyitems");



function onTrigger(player,npc)
	if(player:getCurrentMission(WINDURST) == MOON_READING and player:getVar("WINDURST92") == 1 and player:hasKeyItem(ANCIENT_VERSE_OF_UGGALEPIH) == false) then
		player:startEvent(0x0044);
	end
end;

-----------------------------------	
-- onEventUpdate	
-----------------------------------	

function onEventUpdate(player,csid,option)	
	--printf("CSID: %u",csid);
	--printf("RESULT: %u",option);
end;	

-----------------------------------	
-- onEventFinish	
-----------------------------------	

function onEventFinish(player,csid,option)	
	--printf("CSID: %u",csid);
	--printf("RESULT: %u",option);
	if (csid == 0x0044) then
		player:addKeyItem(ANCIENT_VERSE_OF_UGGALEPIH);
		player:messageSpecial(KEYITEM_OBTAINED,ANCIENT_VERSE_OF_UGGALEPIH);
	end
end;	
