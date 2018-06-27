-----------------------------------
-- Area: Windurst Waters (S)
--   NPC: Yasmina
-- Type: Chocobo Renter
-- @zone 94
-- !pos -34.972 -5.815 221.845
--
-- Auto-Script: Requires Verification (Verified by Brawndo)
-----------------------------------
package.loaded["scripts/zones/Windurst_Waters_[S]/TextIDs"] = nil;
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
price = 100;
gil = player:getGil();
hasLicense = player:hasKeyItem(CHOCOBO_LICENSE);
ChocobosWounds = player:getQuestStatus(JEUNO,CHOCOBO_S_WOUNDS);
level = player:getMainLvl();

    if ((hasLicense and level >= 15) or (level >=15 and ChocobosWounds == QUEST_COMPLETED)) then
        player:startEvent(6, price, gil);
    else
        player:startEvent(7, price, gil); 
    end
end;

  
-----------------------------------
-- onEventFinish Action
-----------------------------------
function onEventFinish(player,csid,option)
    if (csid == 6 and option == 0) then
        player:setPos(320,-3,-46,192,95);
        player:addStatusEffectEx(dsp.effects.MOUNTED,dsp.effects.MOUNTED,0,0,900,true);
            
    end
end;