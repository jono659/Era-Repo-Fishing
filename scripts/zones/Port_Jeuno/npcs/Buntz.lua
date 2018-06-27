-----------------------------------
-- Area: Port Jeuno
--  NPC: Buntz
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Port_Jeuno/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Port_Jeuno/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)

----------------------------------------
-- Start Shemo - Kindred Crests operation
----------------------------------------

    local beastmenseals= trade:getItemQty(1126)
    local kindredseals = trade:getItemQty(1127)

    local bextraseals = math.fmod(beastmenseals, 9)
    local extraseals = math.fmod(kindredseals, 3)
    local kindredcrests = math.fmod(((kindredseals - extraseals) / 3), 99)
    local bkindredcrests = (beastmenseals - bextraseals) / 9

    kstacks = kindredseals / 297;
    
if (trade:hasItemQty(2955,150) and trade:getGil() == 1) then
    if (player:getFreeSlotsCount() > 0) then
        player:addItem(19021, 1); 
        player:messageSpecial(ITEM_OBTAINED,19021);
        player:tradeComplete();
    else
        player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,19021);
    end;
end

if (trade:hasItemQty(2955,150) and trade:getGil() == 2) then
    if (player:getFreeSlotsCount() > 0) then
        player:addItem(19022, 1); 
        player:messageSpecial(ITEM_OBTAINED,19022);
        player:tradeComplete();
    else
        player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,19022);
    end;
end

if (trade:hasItemQty(2955,150) and trade:getGil() == 3) then
    if (player:getFreeSlotsCount() > 0) then
        player:addItem(19023, 1); 
        player:messageSpecial(ITEM_OBTAINED,19023);
        player:tradeComplete();
    else
        player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,19023);
    end;
end

if (trade:hasItemQty(2955,150) and trade:getGil() == 4) then
    if (player:getFreeSlotsCount() > 0) then
        player:addItem(19029, 1); 
        player:messageSpecial(ITEM_OBTAINED,19029);
        player:tradeComplete();
    else
        player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,19029);
    end;
end

if (trade:hasItemQty(2955,150) and trade:getGil() == 5) then
    if (player:getFreeSlotsCount() > 0) then
        player:addItem(19030, 1); 
        player:messageSpecial(ITEM_OBTAINED,19030);
        player:tradeComplete();
    else
        player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,19030);
    end;
end

if (trade:hasItemQty(2955,150) and trade:getGil() == 6) then
    if (player:getFreeSlotsCount() > 0) then
        player:addItem(19039, 1); 
        player:messageSpecial(ITEM_OBTAINED,19039);
        player:tradeComplete();
    else
        player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,19039);
    end;
end

if (trade:hasItemQty(2955,150) and trade:getGil() == 7) then
    if (player:getFreeSlotsCount() > 0) then
        player:addItem(19040, 1); 
        player:messageSpecial(ITEM_OBTAINED,19040);
        player:tradeComplete();
    else
        player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,19040);
    end;
end

if (trade:hasItemQty(2955,150) and trade:getGil() == 8) then
    if (player:getFreeSlotsCount() > 0) then
        player:addItem(19048, 1); 
        player:messageSpecial(ITEM_OBTAINED,19048);
        player:tradeComplete();
    else
        player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,19048);
    end;
end

if (trade:hasItemQty(2955,150) and trade:getGil() == 9) then
    if (player:getFreeSlotsCount() > 0) then
        player:addItem(19049, 1); 
        player:messageSpecial(ITEM_OBTAINED,19049);
        player:tradeComplete();
    else
        player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,19049);
    end;
end;
                                    
if(player:getFreeSlotsCount() > kstacks+2) then	
    if((kindredseals > 2 and (trade:hasItemQty(1127,kindredseals))) or (beastmenseals > 8 and (trade:hasItemQty(1126,beastmenseals)))) then
        for i=1,kstacks do player:addItem(2955,99) end
            player:addItem(2955,kindredcrests);
            player:addItem(2955,bkindredcrests);
            player:messageSpecial(ITEM_OBTAINED,2955);
            player:addItem(1126,bextraseals);
            player:addItem(1127,extraseals);
            player:tradeComplete();
                    
        else
            player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,2955);
        end    
    else
        player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,2955);
    end
end;

function onTrigger(player,npc)
    player:startEvent(59);
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

