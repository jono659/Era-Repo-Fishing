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

 

local items = {
1, {1236, "Cactus Stems", GetServerVariable("amount1"), GetServerVariable("price1")},
2, {1237, "Tree Cuttings", GetServerVariable("amount1"), GetServerVariable("price1")},
3, {2365, "Demon Blood", GetServerVariable("amount1"), GetServerVariable("price1")*3},
4, {927, "Coeurl Whisker", GetServerVariable("amount1"), (GetServerVariable("price1"))},
5, {2014, "Bird Blood", GetServerVariable("amount2"), GetServerVariable("price2")},
6, {656, "Beastcoin", GetServerVariable("amount2"), (GetServerVariable("price2")*.66)},
7, {575, "Grain Seeds", GetServerVariable("amount2"), GetServerVariable("price2")*.5},
8, {4358, "Hare Meat", 1,12, GetServerVariable("price2")},
9, {2463, "Colorful Hair", 1, math.random(60000,120000)},
10, {2356, "Gurfurlur's Helmet", 1, math.random(3000000,9000000)},
11, {2729, "Hydrangea", 1, math.random(90000,320000)},
12, {15183, "Dobson Bandana", 1, math.random(300000,800000)},
13, {909, "Guivre's Skull", 1, math.random(380000, 680000)},
14, {2355, "Ja Ja's Chestplate", 1, math.random(3000000,9000000)},
15, {2357, "Medusa's Armlet", 1, math.random(3000000,9000000)},
16, {4508, "Royal Jelly", 1, math.random(600000,900000)},
17, {498, "Yagudo Necklace", GetServerVariable("amount2"), GetServerVariable("price2")}

--[[
13, {907, "Cold Bone", 1, math.random(40000,200000)},
14, {907, "Cold Bone", 1, math.random(40000,200000)},
15, {907, "Cold Bone", 1, math.random(40000,200000)},
16, {907, "Cold Bone", 1, math.random(40000,200000)},
17, {907, "Cold Bone", 1, math.random(40000,200000)},]]
--3, {575, "Grain Seeds", GetServerVariable("amount2"), GetServerVariable("price2")},
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
		player:setVar("Grumblix_Score", player:getVar("Grumblix_Score")+1)
		player:addGil(itemOne[4]);
		player:messageSpecial(GIL_OBTAINED,itemOne[4]);
		SetServerVariable("Price1", lower1 ); -- * .97
		SetServerVariable("Price2", raise2 ); -- * 1.03
        
        player:PrintToPlayer("Trade Accepted. This quest reward is repeatable until the end of the current game day.");
       
        
    elseif (trade:hasItemQty(itemTwo[1],amount2) ) then
        player:tradeComplete();
		player:setVar("Grumblix_Score", player:getVar("Grumblix_Score")+1)
		player:addGil(itemTwo[4]);
		player:messageSpecial(GIL_OBTAINED,itemTwo[4]);
		SetServerVariable("Price2", lower2 ); -- * 0.94
		SetServerVariable("Price1", raise1 ); -- * 1.06
        
        player:PrintToPlayer("Trade Accepted. This quest reward is repeatable until the end of the current game day.");
		
	elseif (trade:hasItemQty(itemThree[1],1)) then
			RareValue = GetServerVariable("RareValue");
			local reward = RareValue;
		
	
        player:tradeComplete();
		player:setVar("Grumblix_Score", player:getVar("Grumblix_Score")+100);
		player:addGil(reward);
		player:messageSpecial(GIL_OBTAINED,reward);
		
		
		
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
			if (player:getFreeSlotsCount() > 0) and (augitem ~= nil) then
				player:tradeComplete();
				player:addItem(augitem);
				player:PrintToPlayer("Augment Removed");
				player:messageSpecial(ITEM_OBTAINED,augitem);
				
				
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
local itemTwo = getItemParams(sale2);
if player:getVar("Grumblix_Score") == nil then
player:setVar("Grumblix_Score", 1);
end
local itemOption = GetServerVariable("Sale1");
local eventParams = {};
--player:PrintToPlayer("THIS NPC STILL UNDER DEVELOPMENT");
local roll1 = GetServerVariable("Sale1");
local roll2 = GetServerVariable("Sale2");
eventParams = getItemParams(itemOption);
--SetServerVariable("Sale1", eventParams[1] );
local itemid = GetServerVariable("Sale1");
local itemid = GetServerVariable("Sale1");





local itemid = GetServerVariable("Sale1");
local sale1 = GetServerVariable("Sale1");
local sale2 = GetServerVariable("Sale2");
local sale3 = GetServerVariable("Sale3");
local amount1 = GetServerVariable("amount1");
local amount2 = GetServerVariable("amount2");
local price1 = GetServerVariable("price1");
local price2 = GetServerVariable("price2");
 itemOne = getItemParams(sale1);
 itemTwo = getItemParams(sale2);
 itemThree = getItemParams(sale3);
 
 
		if RareValue ~= GetServerVariable("RareValue") then
			RareValue = GetServerVariable("RareValue");
			SetServerVariable("RareValue", RareValue);
		end
		
local RareValue = GetServerVariable("RareValue");
local gscore = player:getVar("Grumblix_Score");
	player:PrintToPlayer("Bring me one of the following item amounts by the end of the current gameday.  Every new gameday will have randomized items, amounts and prices.");
	player:PrintToPlayer(string.format("item: %s (%d)  Reward: %d gil", itemOne[2], itemOne[3], itemOne[4] ));
	
	player:PrintToPlayer(string.format("item: %s (%d)  Reward: %d gil", itemTwo[2], itemTwo[3], itemTwo[4] ));
	
	player:PrintToPlayer(string.format("item: %s (%d)  Reward: %d gil (RACE! First completion will reroll this item slot)", itemThree[2], itemThree[3], RareValue ));
	player:PrintToPlayer("to remove an augment, trade me the item and 50,000 gil will be deducted");
	player:PrintToPlayer(string.format("Your current Grumblix balance: %d points.", gscore ));
	
	--player:PrintToPlayer(string.format("item: %s (%d)  Reward: %d gil", itemTwo[2], itemTwo[3], itemTwo[4] ));
	
	
	--[[GetNPCByID(17686619):setPos(-647,-19,-488);
	local roll1 = math.random (1,3);
	local roll2 = math.random (4,6);
	local price2 = math.random (5400,17200);
	local price1 = math.random (30000,50000);
	local amount1 = math.random (8,12);
	local amount2 = math.random (3,8);
	local extra1 = math.random (1000,2000);
	-- Moongates
	SetServerVariable("Sale1",roll1);
	SetServerVariable("Sale2",roll2);
	SetServerVariable("Price1",price1);
	SetServerVariable("Price2",price2);
	SetServerVariable("Amount1",amount1);
	SetServerVariable("Amount2",amount2);
	SetServerVariable("Extra1",extra1);]]
	
	
	

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
