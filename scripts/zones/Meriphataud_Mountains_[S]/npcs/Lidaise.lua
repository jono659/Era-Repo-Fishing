-----------------------------------
--  Area: Meriphataud Mountains (S)
--   NPC: Yasmina
--  Type: Chocobo Renter
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
-----------------------------------

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
price = 100;
gil = player:getGil();
hasLicense = player:hasKeyItem(CHOCOBO_LICENSE);
ChocobosWounds = player:getQuestStatus(JEUNO,CHOCOBO_S_WOUNDS);
level = player:getMainLvl();

    if ((hasLicense and level >= 15) or (level >=15 and ChocobosWounds == QUEST_COMPLETED)) then
        player:startEvent(0x06A, price, gil);
    else
        player:startEvent(0x06B, price, gil); 
    end
end;

  
-----------------------------------
-- onEventFinish Action
-----------------------------------
function onEventFinish(player,csid,option)
	local duration = 1800 + (player:getMod(MOD_CHOCOBO_RIDING_TIME) * 60)
    if (csid == 0x06A and option == 0) then
       player:setPos(player:getXPos(), player:getYPos(), player:getZPos());
       player:addStatusEffectEx(dsp.effects.MOUNTED,dsp.effects.MOUNTED,0,0,duration,true);
            
    end
end;