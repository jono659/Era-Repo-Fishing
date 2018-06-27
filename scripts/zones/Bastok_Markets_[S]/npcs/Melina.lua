-----------------------------------
-- Area: Bastok Markets [S]
-- NPC: Melina 
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
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
        player:startEvent(0x06, price, gil);
    else
        player:startEvent(0x07, price, gil);
    end
end;

  
-----------------------------------
-- onEventFinish Action
-----------------------------------
function onEventFinish(player,csid,option)
    if (csid == 0x06 and option == 0) then
       player:setPos(380,0,147,192,88);
       player:addStatusEffectEx(dsp.effects.MOUNTED,dsp.effects.MOUNTED,0,0,900,true);
    end
end;