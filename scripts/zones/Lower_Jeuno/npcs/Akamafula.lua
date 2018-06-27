-----------------------------------
-- Area: Lower Jeuno
--  NPC: Akamafula
-- Type: Tenshodo Merchant
-- !pos 28.465 2.899 -46.699 245
-----------------------------------
package.loaded["scripts/zones/Lower_Jeuno/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/keyitems");
require("scripts/zones/Lower_Jeuno/TextIDs");
-----------------------------------
-- onTrigger Action
-----------------------------------
function onTrigger(player,npc)
	if (player:hasKeyItem(TENSHODO_MEMBERS_CARD)) then 
	player:showText(npc,AKAMAFULA_SHOP_DIALOG);
		stock = {17296,5, -- pebble
		17307,6, --Dart
		17298,60, --Tathlum
		17343,10, --Bronze Bullet
		17340,15, -- Bullet
		17341,80, -- Silver Bullet
		17342,100, -- Cannon Shell 
		17319,4, --Bone Arrow
		17320,8, --Iron Arrow
		17321,18, -- Silver Arrow
		17322,30, -- Fire Arrow
		17323,30, --Ice Arrow
		17324,30, -- Lightning Arrow
		17301,12, -- Shuriken Lvl 18
		17302,90, --Juji Shuriken 28
		17303,300, -- Manji Shuriken 48
		17304,600,} -- Fuma Shuriken 60
		
		showShop(player, STATIC, stock);
	else
	player:PrintToPlayer("Sorry you do not have a Tenshodo Members Card");
	end
end; 

function onTrade(player,npc,trade)
end;


function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

