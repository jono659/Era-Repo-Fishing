-----------------------------------
-- Area: Lower Jeuno
-- NPC:  Runga-Kopunga
-- @zone 245
-- Mishima's Script that never ends.
-----------------------------------
package.loaded["scripts/zones/Lower_Jeuno/TextIDs"] = nil;
package.loaded["scripts/globals/keyitems"] = nil;
package.loaded["scripts/globals/settings"] = nil;
package.loaded["scripts/globals/quests"] = nil;
package.loaded["scripts/globals/missions"] = nil;
package.loaded["scripts/globals/common"] = nil;
-----------------------------------
require("scripts/zones/Lower_Jeuno/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/settings");
require("scripts/globals/quests");
require("scripts/globals/missions");
require("scripts/globals/common");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	local randskill1 = math.random(288,299);
	local randskill2 = math.random(288,299);
	local randv1 = math.random(1,5);
	local randv2 = math.random(1,5);
    local randaug = math.random(1,5);
    local randval = math.random(1,10);
    local randgroup = math.random(1,100);
	local itemID = trade:getItemId();
		
		
    -- [[ Trade Suppanomimi ]]--
    if ((trade:getItemCount() == 1) and trade:hasItemQty(14739,1))then
	    if(player:getFreeSlotsCount() > 0 and player:hasKeyItem(FAIL_BADGE)) then
            player:addItem(14743, 1); 
            player:messageSpecial(ITEM_OBTAINED,14743); -- Obtained	 Bushinomimi
            player:tradeComplete();
        else
            player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14743);
        end
    
    -- [[ Trade Bushinomimi ]]--
    elseif ((trade:getItemCount() == 1) and trade:hasItemQty(14743,1))then
        if(player:getFreeSlotsCount() > 0 and player:hasKeyItem(FAIL_BADGE))then
            player:addItem(14742, 1); 
            player:messageSpecial(ITEM_OBTAINED,14742); -- Obtained Beastly Earring
            player:tradeComplete();		
        else
            player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14742);
        end
    
    -- [[ Trade Beastly Earring ]]--
    elseif ((trade:getItemCount() == 1) and trade:hasItemQty(14742,1))then
        if(player:getFreeSlotsCount() > 0 and player:hasKeyItem(FAIL_BADGE))then
            player:addItem(14740, 1); 
            player:messageSpecial(ITEM_OBTAINED,14740); -- Obtained Knight's Earring
            player:tradeComplete();
            else
            player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14740);
        end
    
    -- [[ Trade Knight's Earring ]]--
	elseif ((trade:getItemCount() == 1) and trade:hasItemQty(14740,1))then
	    if(player:getFreeSlotsCount() > 0 and player:hasKeyItem(FAIL_BADGE))then
            player:addItem(14741, 1); 
            player:messageSpecial(ITEM_OBTAINED,14741); -- Obtained Abyssal Earring
            player:tradeComplete();
            else
            player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14741);
        end
    
    -- [[ Trade Abyssal Earring ]]--
    elseif ((trade:getItemCount() == 1) and trade:hasItemQty(14741,1))then
        if(player:getFreeSlotsCount() > 0 and player:hasKeyItem(FAIL_BADGE))then   
            player:addItem(14739, 1); 
            player:messageSpecial(ITEM_OBTAINED,14739); -- Obtained Suppanomimi
            player:tradeComplete();
            else
            player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14739);
        end
    
    -- [[ Trade Rajas Ring ]]--
    elseif ((trade:getItemCount() == 1) and trade:hasItemQty(15543,1))then
        if(player:getFreeSlotsCount() > 0 and player:hasKeyItem(FAIL_BADGE))then   
            player:addItem(15545, 1); 
            player:messageSpecial(ITEM_OBTAINED,15545); -- Obtained Tamas Ring
            player:tradeComplete();
            else
            player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15545);
        end
    
    -- [[ Trade Tamas Ring ]]--
    elseif ((trade:getItemCount() == 1) and trade:hasItemQty(15545,1))then
        if(player:getFreeSlotsCount() > 0 and player:hasKeyItem(FAIL_BADGE))then   
            player:addItem(15544, 1); 
            player:messageSpecial(ITEM_OBTAINED,15544); -- Obtained Sattva Ring
            player:tradeComplete();
            else
            player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15544);
        end
    
    -- [[ Trade Sattva Ring ]]--
    elseif ((trade:getItemCount() == 1) and trade:hasItemQty(15544,1)) then
        if(player:getFreeSlotsCount() > 0 and player:hasKeyItem(FAIL_BADGE))then   
            player:addItem(15543, 1); 
            player:messageSpecial(ITEM_OBTAINED,15543); -- Obtained Rajas Ring
            player:tradeComplete();
            else
            player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15543); 
        end
		
    -- [[ Trade Static Earring ]]--
    elseif ((trade:getItemCount() == 1) and trade:hasItemQty(15962,1))then
        if(player:getFreeSlotsCount() > 0 and player:hasKeyItem(FAIL_BADGE))then   
            player:addItem(15963, 1); 
            player:messageSpecial(ITEM_OBTAINED,15963); -- Obtained Magnetic Earring
            player:tradeComplete();
            else
            player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15963);
        end
    
    -- [[ Trade Magnetic Earring ]]--
    elseif ((trade:getItemCount() == 1) and trade:hasItemQty(15963,1))then
        if(player:getFreeSlotsCount() > 0 and player:hasKeyItem(FAIL_BADGE))then   
            player:addItem(15964, 1); 
            player:messageSpecial(ITEM_OBTAINED,15964); -- Obtained Hollow Earring
            player:tradeComplete();
            else
            player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15964);
        end
		
    -- [[ Trade Hollow Earring ]]--
    elseif ((trade:getItemCount() == 1) and trade:hasItemQty(15964,1))then
        if(player:getFreeSlotsCount() > 0 and player:hasKeyItem(FAIL_BADGE))then   
            player:addItem(15965, 1); 
            player:messageSpecial(ITEM_OBTAINED,15965); -- Obtained Ethereal Earring
            player:tradeComplete();
            else
            player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15965);
        end
    
    -- [[ Trade Ethereal Earring ]]--
    elseif ((trade:getItemCount() == 1) and trade:hasItemQty(15965,1))then
        if(player:getFreeSlotsCount() > 0 and player:hasKeyItem(FAIL_BADGE))then   
            player:addItem(15962, 1); 
            player:messageSpecial(ITEM_OBTAINED,15962); -- Obtained Static Earring
            player:tradeComplete();
            else
            player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15962);
        end
		
    elseif((trade:getItemCount() == 2) and trade:hasItemQty(16555,1) and trade:hasItemQty(1506,1))then --Ridill S aug
        player:tradeComplete(); 
        player:addItem(16555,1,25,randval);
        player:PrintToPlayer("You have successfully augmented your Ridill");
        player:PrintToPlayer("To examine the augment, highlight item and press minus key on numpad");
    
    elseif((trade:getItemCount() == 2) and trade:hasItemQty(17440,1) and trade:hasItemQty(1506,1))then --Kraken Club S aug
        player:tradeComplete(); 
        player:addItem(17440,1,25,randval);
        player:PrintToPlayer("You have successfully augmented your Ridill");
        player:PrintToPlayer("To examine the augment, highlight item and press minus key on numpad");
	
    elseif(trade:hasItemQty(18633,1) and trade:hasItemQty(1500,1))then -- Chatoyant aug
		if(randaug >= 1) then
			player:tradeComplete();
			player:addItem(18633,1,randskill1,randv1,randskill2,randv2);
			player:PrintToPlayer("You have successfully augmented your Chatoyant Staff");
			player:PrintToPlayer("To examine the augment, highlight item and press minus key on numpad");
		end
		
	elseif(trade:hasItemQty(13734,1) and trade:hasItemQty(1495,1))then -- SH +1 aug
        if(randaug == 1)then
        player:tradeComplete();
        player:addItem(13734,1,2,randval);
        player:PrintToPlayer("You have successfully augmented your Scorpion Harness with HP");
        player:PrintToPlayer("To examine the augment, highlight item and press minus key on numpad");
        elseif(randaug == 2)then
        player:tradeComplete();
        player:addItem(13734,1,25,randval);
        player:PrintToPlayer("You have successfully augmented your Scorpion Harness with Attack");
        player:PrintToPlayer("To examine the augment, highlight item and press minus key on numpad");
        elseif(randaug == 3)then
        player:tradeComplete();
        player:addItem(13734,1,139,randval);
        player:PrintToPlayer("You have successfully augmented your Scorpion Harness with Rapid shot");
        player:PrintToPlayer("To examine the augment, highlight item and press minus key on numpad");
        elseif(randaug == 4)then
        player:tradeComplete();
        player:addItem(13734,1,49,randval);
        player:PrintToPlayer("You have successfully augmented your Scorpion Harness with Haste");
        player:PrintToPlayer("To examine the augment, highlight item and press minus key on numpad"); 
        elseif(randaug == 5)then
        player:tradeComplete();
        player:addItem(13734,1,23,randval);
        player:PrintToPlayer("You have successfully augmented your Scorpion Harness with Accuracy");
        player:PrintToPlayer("To examine the augment, highlight item and press minus key on numpad");   
		end
		
	elseif ((trade:getItemCount() == 2) and trade:hasItemQty(16555,1) and trade:hasItemQty(1491,1)) then -- Ridill - 'D' Egg Augment
    
		if(randgroup == 100) then
			player:tradeComplete();
			player:addItem(16555,1,45,19);
			player:PrintToPlayer("You have successfully augmented your Item to the max");
			player:PrintToPlayer("To examine the augment, highlight item and press minus key on numpad");
        
		elseif(randgroup >= 90 and randgroup <= 99) then
			local randdmg = math.random(15,18);
			player:tradeComplete();
			player:addItem(16555,1,45,randdmg);
			player:PrintToPlayer("You have successfully augmented your Item to near max");
			player:PrintToPlayer("To examine the augment, highlight item and press minus key on numpad");  
        
		elseif(randgroup <= 89) then
			local randdmg = math.random(4,14);
			player:tradeComplete();
			player:addItem(16555,1,45,randdmg);
			player:PrintToPlayer("You have successfully augmented your Item");
			player:PrintToPlayer("To examine the augment, highlight item and press minus key on numpad"); 
        end        
		
	elseif(trade:getItemCount() == 2 and trade:hasItemQty(1491,1) and trade:hasItemQty(17652,1))then -- Joyeuse - 'D' Egg Augment
		
        if(randgroup == 100)then
			player:tradeComplete();
			player:addItem(17652,1,45,19);
			player:PrintToPlayer("You have successfully augmented your Item to the max");
			player:PrintToPlayer("To examine the augment, highlight item and press minus key on numpad");
        
		elseif(randgroup >= 90 and randgroup <= 99)then
			local randdmg = math.random(15,18);
			player:tradeComplete();
			player:addItem(17652,1,45,randdmg);
			player:PrintToPlayer("You have successfully augmented your Item to near max");
			player:PrintToPlayer("To examine the augment, highlight item and press minus key on numpad");  
        
		elseif(randgroup <= 89)then
			local randdmg = math.random(4,14);
			player:tradeComplete();
			player:addItem(17652,1,45,randdmg);
			player:PrintToPlayer("You have successfully augmented your Item");
			player:PrintToPlayer("To examine the augment, highlight item and press minus key on numpad"); 
        end    
		
	elseif(trade:getItemCount() == 2 and trade:hasItemQty(1491,1) and trade:hasItemQty(17440,1))then -- Kraken Club - 'D' Egg Augment
		
        if(randgroup == 100)then
			player:tradeComplete();
			player:addItem(17440,1,45,19);
			player:PrintToPlayer("You have successfully augmented your Item to the max");
			player:PrintToPlayer("To examine the augment, highlight item and press minus key on numpad");
        
		elseif(randgroup >= 90 and randgroup <= 99)then
			local randdmg = math.random(15,18);
			player:tradeComplete();
			player:addItem(17440,1,45,randdmg);
			player:PrintToPlayer("You have successfully augmented your Item to near max");
			player:PrintToPlayer("To examine the augment, highlight item and press minus key on numpad");  
        
		elseif(randgroup <= 89)then
			local randdmg = math.random(4,14);
			player:tradeComplete();
			player:addItem(17440,1,45,randdmg);
			player:PrintToPlayer("You have successfully augmented your Item");
			player:PrintToPlayer("To examine the augment, highlight item and press minus key on numpad");	
		end
		
    elseif(trade:getItemCount() == 2 and trade:hasItemQty(1491,1) and trade:hasItemQty(18020,1))then -- Merc Kris - 'D' Egg Augment
		
        if(randgroup == 100)then
			player:tradeComplete();
			player:addItem(18020,1,45,19);
			player:PrintToPlayer("You have successfully augmented your Item to the max");
			player:PrintToPlayer("To examine the augment, highlight item and press minus key on numpad");
        
		elseif(randgroup >= 90 and randgroup <= 99)then
			local randdmg = math.random(15,18);
			player:tradeComplete();
			player:addItem(18020,1,45,randdmg);
			player:PrintToPlayer("You have successfully augmented your Item to near max");
			player:PrintToPlayer("To examine the augment, highlight item and press minus key on numpad");  
        
		elseif(randgroup <= 89)then
			local randdmg = math.random(4,14);
			player:tradeComplete();
			player:addItem(18020,1,45,randdmg);
			player:PrintToPlayer("You have successfully augmented your Item");
			player:PrintToPlayer("To examine the augment, highlight item and press minus key on numpad");	
		
        end
        

	
    
	end  
end;  


		


-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

local qdude = GetNPCByID(17780783);
player:PrintToPlayer("Trade Ridill & S egg for an augmented attack+ Ridill (Random chance for value)");
player:PrintToPlayer("Trade Scorpion Harness +1 & H egg for an augmented Scorpion Harness+1 (Random chance for augtype & value)");
player:PrintToPlayer("Trade Select Weapons & D egg for an augmented DMG (Random chance for value)");
player:PrintToPlayer("Trade Chatoyant Staff & M egg for augmented Magic Skills (Random chance for value)");

stock = {
			1495,250000, -- H egg
			1500,350000, -- M Egg
			1506,1000000, -- S egg
			1491,10000000, -- D egg
			844,2000, -- Phoenix Feather
			821,1300, -- Rainbow Thread
			1416,1400, -- Kari. Arrowhd.
			4445,120, -- Yagudo Cherry
			693,50000, -- Walnut Log 
			695,50000, -- Willow Log
			696,50000, -- Yew Log
		}

 
showShop(player, STATIC, stock);
--player:addItem(18318,1,1063,5,55,5,528,5);
--qdude:setPos(10,0,6,75);
--npc:setPos(-23,0,2,12);
--player:setFlag(0x00010000); 
	
 
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
end;