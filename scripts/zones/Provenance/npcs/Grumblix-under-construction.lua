-----------------------------------
-- Area: Bazaar zone
-- NPC:  Pil
-- @zone 222
-----------------------------------
-----------------------------------

package.loaded["scripts/zones/Provenance/TextIDs"] = nil;
require("scripts/zones/Provenance/TextIDs");
require("scripts/globals/settings");
require("scripts/globals/keyitems");

local amount1 = GetServerVariable("amount1");
local amount2 = GetServerVariable("amount2");
local price1 = GetServerVariable("price1");
local price2 = GetServerVariable("price2");
local sale1 = GetServerVariable("Sale1");
local sale2 = GetServerVariable("Sale2");
local sale3 = GetServerVariable("Sale3");
local clockprice = math.random(20000,90000);
local tooLate = GetServerVariable("lastItem");
local minprice1 = 30000;
local maxprice1 = 90000;
local minprice2 = 5500;
local maxprice2 = 27000;
local lower1=math.max(price1*0.97,minprice1);
local lower2=math.max(price2*0.94,minprice2);
local raise1=math.min(price1*1.06,maxprice1);
local raise2=math.min(price2*1.03,maxprice2);

local shop = {

1, {4202, "Daedalus Wing", 500}, -- tp for user
2, {5834, "Lucid Wing", 700}, -- tp for party
3, {10807, "Mandraguard", 100}, -- mandragora shield
4, {16144, "Sol Cap", 300}, -- regen effect lvl 1
5, {20953, "Escritorio", 800}, -- dispenses cone calamary
6, {21280, "Decazoom MK-XI", 300}, -- ranged slot, enchantment: invisible
7, {17419, "Artemis' Wand", 200}, -- moon phase effect on damage
8, {17421, "Moonwatch Wand", 200}, -- moon phase effect on damage
9, {15326, "Gargoyle Boots", 400}, -- wyvern stoneskin enchantment
10, {14684, "Kshama Ring No.3", 200}, -- crappy lvl 49 ring
11, {14682, "Kshama Ring No.2", 200}, -- crappy lvl 49 ring
12, {17466, "Dia Wand", 200}, -- increases cure/dia potency, lvl 40
13, {14683, "Kshama Ring No.4", 200}, -- crappy lvl 49 ring
14, {14685, "Kshama Ring No.5", 200}, -- crappy lvl 49 ring
15, {14675, "Woodsman Ring", 200}, -- crappy level 40ish ring
16, {18019, "X's Knife", 2000}, -- increases crit damage for thf!
17, {18057, "Y's Scythe", 800}, -- hp - 5%, accuracy +5 for drk, 70ish
18, {18101, "Z's Trident", 800},  -- str + 12 when party members have x and y
19, {15894, "Bitter Corset", 1200}, -- magic atk +2, multiple neg stats
20, {11811, "Destrier's Beret", 400}, -- insane early level cap
21, {17997, "Argent Dagger", 400} -- elem mag skill +3, eva -1
22, {4511, "Ambrosia", 750}
};

 

local items = {
1, {1236, "Cactus Stems", GetServerVariable("amount1"), GetServerVariable("price1")*.05},
2, {1237, "Tree Cuttings", GetServerVariable("amount1"), GetServerVariable("price1")*.05},
3, {2365, "Demon Blood", GetServerVariable("amount1"), GetServerVariable("price1")*.15},
4, {927, "Coeurl Whisker", GetServerVariable("amount1"), (GetServerVariable("price1")*.05)},
5, {2014, "Bird Blood", GetServerVariable("amount2"), GetServerVariable("price2")*.05},
6, {656, "Beastcoin", GetServerVariable("amount2"), (GetServerVariable("price2")*.05)},
7, {575, "Grain Seeds", GetServerVariable("amount2"), GetServerVariable("price2")*.05},
8, {4358, "Silver Beastcoin", 12, 100},
9, {749, "Mythril Beastcoin", 12, 160},
10, {2356, "Smilodon Hide", 12, math.random(14,20)},
11, {751, "Platinum Beastcoin", 1, math.random(9,32)},
12, {15183, "Dobson Bandana", 1, math.random(30,40)},
13, {909, "Guivre's Skull", 1, math.random(38, 68)},
14, {2355, "Ovinnik Hide", 12, math.random(16,29)},
15, {2357, "Medusa's Armlet", 1, math.random(300,900)},
16, {4508, "Royal Jelly", 1, math.random(60,90)},
17, {498, "Yagudo Necklace", GetServerVariable("amount2"), GetServerVariable("price2")},
18, {2356, "Gurfurlur's Helmet", 1,math.random(300,900)},
19, {2355, "Ja Ja's Chestplate", 1, math.random(300,900)},
20, {2463, "Colorful Hair", 1, math.random(6,12)}
		};
		
		
function Reroll3(roll3)

	local roll3 = math.random(9,16);
	local salecheck = GetServerVariable("sale3");
	if roll3 == salecheck or roll3 == lastItem then
	--printf("REROLLINGAGAIN");
	--Reroll3(roll3);
	end
	--printf("REROLLING");
	return roll3;
end;
	

function getItemParams(itemOption)
   for i=1, table.getn(items), 2 do
      if (items[i] == itemOption) then -- If you've found the right itemid, 
         return items[i + 1]; -- return the array stored in the next slot
      end
   end
end;
itemOne = getItemParams(sale1);
 itemTwo = getItemParams(sale2);
  itemThree = getItemParams(sale3);
  
 local RareValue = GetServerVariable("RareValue");
-----------------------------------
-- onTrade Action
-----------------------------------


function onTrade(player,npc,trade)
local amount1 = GetServerVariable("amount1");
local amount2 = GetServerVariable("amount2");
local price1 = GetServerVariable("price1");
local price2 = GetServerVariable("price2");
local sale1 = GetServerVariable("Sale1");
local sale2 = GetServerVariable("Sale2");
local sale3 = GetServerVariable("Sale3");
local randomz = GetServerVariable("Extra1");
local randomzPrice = math.random(10000,100000);
itemOne = getItemParams(sale1);
 itemTwo = getItemParams(sale2);
 lastItem = getItemParams(tooLate);
 itemThree = getItemParams(sale3);

 
if randomzPrice >= 99000 then



local randomzPrice = math.random(100000, 1000000);
 
end
--[[
local roll1 = GetServerVariable("Sale1");
local roll2 = GetServerVariable("Sale2");
if roll1 == 1 then
SetServerVariable("Sale1") = 1236;
elseif roll1 == 2 then
SetServerVariable("Sale1") = 575;
end

if roll2 == 3 then
SetServerVariable("Sale2") = 1237;
elseif roll2 == 4 then
SetServerVariable("Sale2") = 816;
end

local price1 = GetServerVariable("Price1");
local price2 = GetServerVariable("Price2");
]]--
if player:getVar("Grumblix_Score") == nil then
player:setVar("Grumblix_Score", 1);
end


	if (trade:hasItemQty(itemOne[1],amount1) ) then
        player:tradeComplete();
		--player:setVar("Grumblix_Score", player:getVar("Grumblix_Score")+1)
		player:addGil(itemOne[4]);
		player:setVar("Grumblix_Score", player:getVar("Grumblix_Score")+5)
		player:messageSpecial(GIL_OBTAINED,itemOne[4]);
		SetServerVariable("Price1", lower1 ); -- * .97
		SetServerVariable("Price2", raise2 ); -- * 1.03
        
        player:PrintToPlayer("Trade Accepted. This quest reward is repeatable until the end of the current game day.");
       
        
    elseif (trade:hasItemQty(itemTwo[1],amount2) ) then
        player:tradeComplete();
		player:setVar("Grumblix_Score", player:getVar("Grumblix_Score")+5)
		player:addGil(itemTwo[4]);
		player:messageSpecial(GIL_OBTAINED,itemTwo[4]);
		SetServerVariable("Price2", lower2 ); -- * 0.94
		SetServerVariable("Price1", raise1 ); -- * 1.06
        
        player:PrintToPlayer("Trade Accepted. This quest reward is repeatable until the end of the current game day.");
		
	elseif (trade:hasItemQty(itemThree[1],1)) then
			RareValue = GetServerVariable("RareValue");
			local reward = RareValue;
		
	
        player:tradeComplete();
		player:setVar("Grumblix_Score", player:getVar("Grumblix_Score")+reward);
		--player:addGil(reward);
		--player:messageSpecial(GIL_OBTAINED,reward);
        player:PrintToPlayer("Trade Accepted. Congratulations on winning the race! This quest will now randomize.");
		SetServerVariable("lastItem", sale3);
		Reroll3(sale3);
		SetServerVariable("Sale3",Reroll3(sale3));
		local sale3 = GetServerVariable("Sale3");
		 itemThree = getItemParams(sale3);
		SetServerVariable("RareValue", itemThree[4]);
		RareValue = GetServerVariable("RareValue");
	elseif (trade:hasItemQty(lastItem[1],1) ) then
		
		if player:getVar("tooLate")  == tooLate then
	player:PrintToPlayer("You already received your consolation prize you ignorant slut.");
		else
		local reward = 9000;
        player:tradeComplete();
		player:PrintToPlayer("Unfortunately you were not first; here is a consolation prize. Try again on the new item!");
		player:setVar("Grumblix_Score", player:getVar("Grumblix_Score")+1);
		player:addGil(reward);
		player:messageSpecial(GIL_OBTAINED,reward);
		player:setVar("tooLate", tooLate);
		end
		
		
        elseif ((trade:getItemCount() == 2) and (trade:getGil() >= 50000)) then
		 local augitem = trade:getItem(1);
			if (player:getFreeSlotsCount() > 0) and (augitem ~= nil)) then
				if (augitem:getAugment() ~= nil) then
					player:tradeComplete();
					player:addItem(augitem);
					player:PrintToPlayer("Augment Removed");
					player:messageSpecial(ITEM_OBTAINED,augitem);
				else
					player:PrintToPlayer("That item does not have an augment");
				end
				
		else
			player:PrintToPlayer("You must make more space, picklehead.");
		end
		
		else
	 player:PrintToPlayer("I don't want that. You must include 50,000 gil with an item to have an augment removed.")
       end
	   --elseif (trade:hasItemQty(randomz),1) then
	   --[[  player:tradeComplete();
		player:setVar("Grumblix_Score", player:getVar("Grumblix_Score")+100)
		player:addGil(randomzPrice);
		player:messageSpecial(GIL_OBTAINED,randomzPrice);
		
		]]
        --[[    
    else
	
	 player:PrintToPlayer("That item is not requested at this time.");
	

end
]]--
end; 



-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
player:PrintToPlayer("Grumblix is being revamped! Please check back later");
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

	
end;
