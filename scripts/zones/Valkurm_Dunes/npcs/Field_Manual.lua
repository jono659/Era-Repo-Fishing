-----------------------------------    
-- Area: Valkurm Dunes    
-- NPC:  Field Manual    
-----------------------------------    
    
require("/scripts/globals/settings");    
require("/scripts/globals/fieldsofvalor");
require("/scripts/globals/mentor");    
    

    
function onTrigger(player,npc)

	GetNPCByID(17199763):setPos(132,-7,96,148); -- Place Valk Empress book at it's location.

	if (player:getVar("MentorFlag") == 1) then
		clickMoogle(player, npc);
		return;
	else
		player:PrintToPlayer("Status Confirmed. Opening field manual.");
		startFov(FOV_EVENT_VALKURM,player);
	end	
	clickMoogle(player, npc);
end;    
    
-----------------------------------    
-- onTrade Action    
-----------------------------------    
    
function onTrade(player,npc,trade)    
end;    
    
-----------------------------------    
-- onEventSelection    
-----------------------------------    
    
function onEventUpdate(player,csid,menuchoice)    
    updateFov(player,csid,menuchoice,7,8,9,10,57);
end;    
    
-----------------------------------    
-- onEventFinish Action    
-----------------------------------    
    
function onEventFinish(player,csid,option)    
    finishFov(player,csid,option,7,8,9,10,57,FOV_MSG_VALKURM);
end;    
