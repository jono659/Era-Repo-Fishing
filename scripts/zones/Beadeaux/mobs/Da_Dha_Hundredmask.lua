-----------------------------------
-- Area: Beadeaux (254)
--  NM: Da'Dha Hundredmask
-----------------------------------
mixins = {require("scripts/mixins/job_special")};
package.loaded["scripts/zones/Beadeaux/TextIDs"] = nil;
require("scripts/zones/Beadeaux/TextIDs");
require("scripts/globals/keyitems");

function onMobDeath(mob, player, isKiller)
end;

function onMobDeath(mob,player, isKiller)
  if((player:hasKeyItem(ELDER_ARMOR_CLAIM_SLIP) == false) and (player:getRace() == 8)) then
	player:addKeyItem(ELDER_ARMOR_CLAIM_SLIP);
	player:messageSpecial(KEYITEM_OBTAINED,ELDER_ARMOR_CLAIM_SLIP);
  end 
  if((player:hasKeyItem(CUSTOM_ARMOR_MALE_CLAIM_SLIP) == false) and (player:getRace() == 1)) then
	player:addKeyItem(CUSTOM_ARMOR_MALE_CLAIM_SLIP);
	player:messageSpecial(KEYITEM_OBTAINED,CUSTOM_ARMOR_MALE_CLAIM_SLIP);
  end 
  if((player:hasKeyItem(CUSTOM_ARMOR_FEMALE_CLAIM_SLIP) == false) and (player:getRace() == 2)) then
	player:addKeyItem(CUSTOM_ARMOR_FEMALE_CLAIM_SLIP);
	player:messageSpecial(KEYITEM_OBTAINED,CUSTOM_ARMOR_FEMALE_CLAIM_SLIP);
  end 
end;