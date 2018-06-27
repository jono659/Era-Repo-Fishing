-----------------------------------
-- Area: Northern San d'Oria
--  NPC: Chaupire
-- Guild Merchant NPC: Woodworking Guild
-- !pos -174.476 3.999 281.854 231
-----------------------------------
package.loaded["scripts/zones/Northern_San_dOria/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/quests");
require("scripts/zones/Northern_San_dOria/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
	if (trade:hasItemQty(17373,1)) then -- maple harp +1
		player:addKeyItem(1986);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,1986); -- lumberjack

	elseif (trade:hasItemQty(17239,1)) then -- republic crossbow
		player:addKeyItem(1987);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,1987); -- boltmaker

	elseif (trade:hasItemQty(17141,1)) then -- solid wand
		player:addKeyItem(1985);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,1985); -- wood ens

	elseif (trade:hasItemQty(17142,1)) then -- oak cudgel +1
		player:addKeyItem(1984);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,1984); -- wood purifacation
	end
end;

function onTrigger(player,npc)
	player:PrintToPlayer("Test your skill and make me a Maple Harp +1 and I will reward you with Lumberjack Key Item");
	player:PrintToPlayer("Republic Crossbow = Boltmaker, Solid Wand = Wood Enscrollment, Oak Cudgel +1 = Wood Purification");
	stock = {688,15, --arrowwood log
	689,27, --luan loag
	690,2000, --elm log
	691,45, --maple log
	693,640, --walnut log
	694,2100, --chestnut log
	695,120, --willow log
	696,330, --yew log
	697,530, --holly log
	698,70, --ash log
	699,4500, --oak log
	700,9000, --mahogany log
	701,6600, --rosewood log
	702,9500, --ebony log
	704,108, --bamboo stick
	727,2000, --dogwood log
	1762,3000, --cassia lumber
	2532,4000, --teak log
	2534,10000, --jacara log
	1657,75, --bundling twine
	18502,100000, --trainee axe
	14392,50000, --carpenter apron
	14830,50000, --carpenter gloves
	15819,50000, --carpnter belt
	15444,50000,} --carpenter ring
	showShop(player, STATIC, stock);
end; 

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;


