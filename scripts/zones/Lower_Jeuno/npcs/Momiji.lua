-----------------------------------
-- Area: Lower Jeuno
--  NPC: Momiji
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Lower_Jeuno/TextIDs"] = nil;
require("scripts/globals/keyitems");
require("scripts/zones/Lower_Jeuno/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
	if (trade:getGil() == 1337) then -- Loco's Secret Mushroom Teleport xD
	if (player:getAnimation() == 44) then
		player:PrintToPlayer('You cannot do that while crafting. Cheater.');
		return;
		end
		player:setPos(-16,-7,5,29);
		
	elseif (trade:hasItemQty(16738,1)) then
		player:addKeyItem(1995);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,1995); -- Sheetinge
	
	elseif (trade:hasItemQty(16914,1)) then -- Kunai +1
		player:addKeyItem(1994);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,1994); -- Chainwork

	elseif (trade:hasItemQty(17146,1)) then -- Rod +1
		player:addKeyItem(1993);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,1993); -- Metal Ensorcellment

	elseif (trade:hasItemQty(16748,1)) then -- Kukri +1
		player:addKeyItem(1992);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,1992); -- Metal Purifacation

	elseif (trade:hasItemQty(13528,1)) then -- Hope ring
		player:addKeyItem(1994);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,1994); -- chainwork

	elseif (trade:hasItemQty(13527,1)) then -- enerygy ring
		player:addKeyItem(1995);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,1995); -- sheeting
		
	elseif (trade:hasItemQty(13522,1)) then --  courage ring
		player:addKeyItem(2002);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,2002); -- clockwork
		
	elseif (trade:hasItemQty(13524,1)) then -- Balance ring
		player:addKeyItem(2001);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,2001); -- gold ensoclment
	elseif (trade:hasItemQty(13521,1)) then -- reflex ring
		player:addKeyItem(2000);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,2000); -- gold purifacation

	elseif (trade:hasItemQty(13609,1)) then -- wolf mantle +1
		player:addKeyItem(2018);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,2018); -- tanning

	elseif (trade:hasItemQty(13219,1)) then -- magic belt +1
		player:addKeyItem(2017);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,2017); -- leather ensocellment

	elseif (trade:hasItemQty(14174,1)) then -- rider's boots
		player:addKeyItem(2016);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,2016); -- leather purification
	
	elseif (trade:hasItemQty(13061,1)) then -- spike necklace
		player:addKeyItem(2026);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,2026); -- filing
	
	elseif (trade:hasItemQty(17033,1)) then -- bone cudgel +1
		player:addKeyItem(2025);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,2025); -- bone ens
	
	elseif (trade:hasItemQty(13828,1)) then --  horn hairpin +1
		player:addKeyItem(2024);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,2024); -- bone purifacation
		
	elseif (trade:hasItemQty(13601,1)) then -- cotton cape +1
		player:addKeyItem(2010);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,2010); -- spining
	
	elseif (trade:hasItemQty(12538,1)) then -- red cape +1
		player:addKeyItem(2011);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,2011); -- fletching

	elseif (trade:hasItemQty(15906,1)) then -- Mohbwa sash +1
		player:addKeyItem(2009);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,2009); -- cloth enso

	elseif (trade:hasItemQty(13190,1)) then --
		player:addKeyItem(2008);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,2008); -- cloth purifacation

	elseif (trade:hasItemQty(4336,1)) then -- sweet baked apple
		player:addKeyItem(2042);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,2042); -- patissier

	elseif (trade:hasItemQty(4341,1)) then -- sunset soup
		player:addKeyItem(2041);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,2041); -- noodle kneading

	elseif (trade:hasItemQty(4587,1)) then -- broiled trout
		player:addKeyItem(2040);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,2040); -- raw fish handling

	elseif (trade:hasItemQty(4333,1)) then -- witch soup
		player:addKeyItem(2043);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,2043); -- stewpot mastery

	elseif (trade:hasItemQty(17373,1)) then -- maple harp +1
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
	elseif (trade:hasItemQty(18732,1)) then -- automation oil +1
		player:addKeyItem(2037);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,2037); -- Iatrochemistry
	elseif (trade:hasItemQty(16741,1)) then -- poison dagger +1
		player:addKeyItem(2035);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,2035); -- Trituration
	elseif (trade:hasItemQty(16742,1)) then -- Posion Knife +1
		player:addKeyItem(2032);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,2032); -- Anima synth
	elseif (trade:hasItemQty(4113,1)) then -- potion +1
		player:addKeyItem(2036);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,2036); -- concoction
	elseif (trade:hasItemQty(16493,1)) then -- blind dagger +1
		player:addKeyItem(2034);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,2034); -- alchemic ens
	elseif (trade:hasItemQty(16692,1)) then -- Poison Baghnakhs +1
		player:addKeyItem(2033);
		player:tradeComplete(trade);
		player:messageSpecial(KEYITEM_OBTAINED,2033); -- alchemic purifacation
	end
end;
-----------------------------------
-- onTrigger Action
-----------------------------------
function onTrigger(player,npc)
player:PrintToPlayer("Your ERA Custom Crafter Key Item Dealer");
player:PrintToPlayer("Visit http://ffera.com for more details");
	stock = {1299,25000, -- Fire Bead
	1300,25000, -- Ice Bead
	1301,25000, -- Wind Bead
	1302,25000, -- Earth Bead
	1303,25000, -- Lightning Bead
	1304,25000, -- Water Bead
	1305,50000, -- Light Bead
	1306,50000, -- Dark Bead
	13688,50000, -- HI-potion Tank
	13689,50000}  -- Hi-Ether Tank
	showShop(player, STATIC, stock);
end; 

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

