-----------------------------------
-- Area: Buburimu Peninsula (118)
--  MOB: Buburimboo
-----------------------------------
package.loaded["scripts/zones/Buburimu_Peninsula/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Buburimu_Peninsula/TextIDs");
require("scripts/globals/keyitems");

function onMobDeath(mob, player, isKiller)

if((player:hasKeyItem(WONDER_ARMOR_CLAIM_SLIP) == false) and (player:getRace() == 6)) then
		player:addKeyItem(WONDER_ARMOR_CLAIM_SLIP);
		player:messageSpecial(KEYITEM_OBTAINED,WONDER_ARMOR_CLAIM_SLIP);
	end 
	if((player:hasKeyItem(WONDER_ARMOR_CLAIM_SLIP) == false) and (player:getRace() == 5)) then
		player:addKeyItem(WONDER_ARMOR_CLAIM_SLIP);
		player:messageSpecial(KEYITEM_OBTAINED,WONDER_ARMOR_CLAIM_SLIP);
	end 
	if((player:hasKeyItem(SAVAGE_ARMOR_CLAIM_SLIP) == false) and (player:getRace() == 7)) then
		player:addKeyItem(SAVAGE_ARMOR_CLAIM_SLIP);
		player:messageSpecial(KEYITEM_OBTAINED,SAVAGE_ARMOR_CLAIM_SLIP);
	end 

end;

function onMobDespawn(mob)
end;
