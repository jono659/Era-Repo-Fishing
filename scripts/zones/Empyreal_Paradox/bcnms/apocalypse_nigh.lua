-----------------------------------
-- Area: Empyreal_Paradox
-- Name: Apocalypse Nigh
--instance 1
--16924679', 'Kam_lanaut', '-518' '-120' '524'
--16924680', 'Eald_narche', '-529' '-120' '516'
--instance 2
--16924681', 'Kam_lanaut', '936', '521', '-0.500', '517
--16924682', 'Eald_narche', '511' '0' '528'
--instance 3
--16924683,'Kam_lanaut', '-518' '120' '-524'
--16924684,'Eald_narche', '-529' '120' '-516'

-----------------------------------
package.loaded["scripts/zones/Empyreal_Paradox/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/globals/missions");
require("scripts/zones/Empyreal_Paradox/TextIDs");

-----------------------------------
-- EXAMPLE SCRIPT
-- 
-- What should go here:
-- giving key items, playing ENDING cutscenes
--
-- What should NOT go here:
-- Handling of "battlefield" status, spawning of monsters,
-- putting loot into treasure pool, 
-- enforcing ANY rules (SJ/number of people/etc), moving
-- chars around, playing entrance CSes (entrance CSes go in bcnm.lua)

-- After registering the BCNM via bcnmRegister(bcnmid)
function onBcnmRegister(player,instance)
end;

-- Physically entering the BCNM via bcnmEnter(bcnmid)
function onBcnmEnter(player,instance)
end;

function onBcnmDestroy(instance)
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
        player:startEvent(0x0007); 
    elseif (leavecode == 4) then
        player:startEvent(0x7d02);
    end
    --printf("leavecode: %u",leavecode);
    
end;

function onEventUpdate(player,csid,option)
-- print("bc update csid "..csid.." and option "..option);
end;
    
function onEventFinish(player,csid,option)
  if (csid== 0x0007) then
		player:setPos(539,0,-593,192);		
		player:startEvent(0x7d02);
	elseif (player:getQuestStatus(JEUNO,APOCALYPSE_NIGH) == QUEST_ACCEPTED) and (player:getVar("ApocalypseNigh")==4) then 
		player:setVar("ApocalypseNigh",5);
    end
end;
