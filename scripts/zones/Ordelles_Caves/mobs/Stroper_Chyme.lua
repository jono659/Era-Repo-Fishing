-----------------------------------
-- Area: Ordelles Caves
--   NM: Stroper Chyme
-----------------------------------
package.loaded["scripts/zones/Ordelles_Caves/TextIDs"] = nil;
require("scripts/zones/Ordelles_Caves/TextIDs");
require("scripts/globals/keyitems");


function onMobDeath(mob,player, ally)	
  if((player:hasKeyItem(MAGNA_ARMOR_FEMALE_CLAIM_SLIP) == false) and (player:getRace() == 4)) then
	player:addKeyItem(MAGNA_ARMOR_FEMALE_CLAIM_SLIP);
	player:messageSpecial(KEYITEM_OBTAINED,MAGNA_ARMOR_FEMALE_CLAIM_SLIP);
  end
  if((player:hasKeyItem(MAGNA_ARMOR_MALE_CLAIM_SLIP) == false) and (player:getRace() == 3)) then
	player:addKeyItem(MAGNA_ARMOR_MALE_CLAIM_SLIP);
	player:messageSpecial(KEYITEM_OBTAINED,MAGNA_ARMOR_MALE_CLAIM_SLIP);
  end  
end;