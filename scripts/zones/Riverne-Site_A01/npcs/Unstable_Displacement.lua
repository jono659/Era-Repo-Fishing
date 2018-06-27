-----------------------------------
-- Area: Riverne Site #A01
--  NPC: Unstable Displacement
-----------------------------------
package.loaded["scripts/zones/Riverne-Site_A01/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Riverne-Site_A01/TextIDs");
require("scripts/zones/Riverne-Site_A01/MobIDs");
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/bcnm");
require("scripts/globals/titles");
require("scripts/globals/quests");
require("scripts/globals/missions");
-----------------------------------

function onTrade(player,npc,trade)
    local offset = npc:getID() - RIV_A_DISPLACEMENT_OFFSET;
    if (offset == 5 and (TradeBCNM(player,player:getZoneID(),trade,npc))) then
		player:delItem(1842,1);
        return 1; -- OURYU COMETH
    end
end;

function onTrigger(player,npc)
	local offset = npc:getID() - RIV_A_DISPLACEMENT_OFFSET;
	if (offset == 5 and EventTriggerBCNM(player,npc)) then
        return 1;
	end
		
end;

function onEventUpdate(player,csid,option)
     printf("onUpdate CSID: %u",csid);
     printf("onUpdate RESULT: %u",option);

    if (EventUpdateBCNM(player,csid,option)) then
        return;
    end

end;

-----------------------------------
-- onEventFinish Action
-----------------------------------

function onEventFinish(player,csid,option)
     printf("onFinish CSID: %u",csid);
     printf("onFinish RESULT: %u",option);

    if (EventFinishBCNM(player,csid,option)) then
        return;
    end

end;