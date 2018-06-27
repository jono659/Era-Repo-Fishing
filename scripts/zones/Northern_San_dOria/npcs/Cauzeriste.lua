-----------------------------------
-- Area: Northern San d'Oria
--  NPC: Cauzeriste
-- Guild Merchant NPC: Woodworking Guild
-- !pos -175.946 3.999 280.301 231
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
	stock = {1242,51, --blind blot head
	1243,125, --acid heads
	1244,160, --holy heads
	1245,150, --venom heads
	1246,140, --bloddy heads
	1247,120, --sleep heads
	1416,1500, --kabura heads
	1222,8, --yugudo fletchg.
	1417,550, --G.bird Fletch
	1221,500, --Chocobo Fletch
	1224,200, --insect fletchg
	1223,300, --bird fletchg
	1254,1300, --Blk. choc. fletchg
	845,500, -- blk. choc. fether
	2291,10, --puk fletchg
	2292,1700, --apkal fletchg
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


