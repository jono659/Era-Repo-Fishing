-----------------------------------
-- Area: Riverne Site #A01
-- Name: Ouryu Cometh
-- BCNM: 928
-----------------------------------
package.loaded["scripts/zones/Riverne-Site_A01/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/missions");
require("scripts/globals/keyitems");
require("scripts/zones/Riverne-Site_A01/TextIDs");

-----------------------------------
 
-- After registering the BCNM via bcnmRegister(bcnmid)
function onBcnmRegister(player,instance)
end;

-- Physically entering the BCNM via bcnmEnter(bcnmid)
function onBcnmEnter(player,instance)
    player:delStatusEffect(dsp.effects.LEVEL_RESTRICTION);
end;

-- Leaving the BCNM by every mean possible, given by the LeaveCode
-- 1=Select Exit on circle
-- 2=Winning the BC
-- 3=Disconnected or warped out
-- 4=Losing the BC
-- via bcnmLeave(1) or bcnmLeave(2). LeaveCodes 3 and 4 are called
-- from the core when a player disconnects or the time limit is up, etc

function onBcnmLeave(player,instance,leavecode)

    if (leavecode == 2) then -- play end CS. Need time and battle id for record keeping + storage
        player:startEvent(32001,1,1,1,instance:getTimeInside(),1,0,0);    
    elseif (leavecode == 4) then
        player:startEvent(32002);
    end
end;

function onBcnmDestroy(player,instance)
end;


function onEventUpdate(player,csid,option)
-- print("bc update csid "..csid.." and option "..option);
end;
    
function onEventFinish(player,csid,option)
-- print("bc finish csid "..csid.." and option "..option);    
    
    if (csid == 32001) then
        player:addExp(500);
    end
    
    if (ENABLE_COP_ZONE_CAP == 1) then -- restore level cap on exit if the setting is enabled
        player:addStatusEffect(dsp.effects.LEVEL_RESTRICTION, 40, 0, 0);
    end;
end;