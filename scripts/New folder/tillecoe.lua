-----------------------------------
--  Area: Ru'Lude Gardens
--   NPC: Tillecoe
--  Type: Standard NPC
-- @zone 243
-- @pos 38.528 -0.997 -6.363
--
-- Auto-Script: Requires Verification (Verfied by Brawndo)
-----------------------------------
package.loaded["scripts/zones/RuLude_Gardens/TextIDs"] = nil;
-----------------------------------

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    
    
   
    if (player:getVar("pvpactive") == 1) then
    if trade:getGil() ==  2 then
    
        -- check for allegiance
                    player:setVar("PVPteam", 1);
                   
                    player:setFlag(0x1000000);
                   player:setPos(8, 0, -16, 156, 43);
                   
    elseif trade:getGil() == 3 then
                player:setVar("PVPteam", 2);
                
                player:setFlag(0x0010000); 
                   player:setPos(-129, -10, 39, 203, 43); -- blue team
                
            end
    else
        player:PrintToPlayer("you do not have an active pvp flag, please speak to the npc before trading");
    end
    
    end;
-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

    --player:startEvent(0x0046);
    if player:getVar("pvpactive") ~= 1 then
        player:PrintToPlayer("You are now flagged to enter the pvp zone.  trade 2 gil for team A, 3 gil for team B or speak again to unflag.");
        player:setVar("pvpactive", 1);
    else
    if (player:checkNameFlags(0x1000000)) then
    player:setFlag(0x1000000);
    end
    
    if (player:checkNameFlags(0x0010000)) then
    player:setFlag(0x0010000);
    end
        player:PrintToPlayer("Your pvp flag is now disabled.  Speak again to enable your pvp flag");
        player:setVar("pvpactive", 0);
    end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

