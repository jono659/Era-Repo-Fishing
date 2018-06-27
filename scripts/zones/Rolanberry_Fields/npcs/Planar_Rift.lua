-----------------------------------	
-- Area: Rolanberry Fields	
-- NPC:  Planar Rift
-----------------------------------	
	
require("/scripts/globals/settings");
require("/scripts/globals/fieldsofvalor");
require("/scripts/globals/mentor");
	
-----------------------------------	
-- onTrigger Action	
-----------------------------------	
	
function onTrigger(player,npc)	

if (player:getVar("MentorFlag") == 1) then
		clickMoogle(player, npc);
		return;
	else
		player:PrintToPlayer("Status Confirmed. Opening field manual.");
		startFov(FOV_EVENT_ROLANBERRY,player);
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
	updateFov(player,csid,menuchoice,25,85,86,87,88);
end;	
	
-----------------------------------	
-- onEventFinish Action	
-----------------------------------	
	
function onEventFinish(player,csid,option)	
	finishFov(player,csid,option,25,85,86,87,88,FOV_MSG_ROLANBERRY);
end;