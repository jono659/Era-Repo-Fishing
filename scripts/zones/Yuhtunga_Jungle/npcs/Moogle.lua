-----------------------------------	
-- Area: Yuhtunga Jungle	
-- NPC:  Moogle	
-----------------------------------	
	
require("/scripts/globals/settings");
require("/scripts/globals/fieldsofvalor");
require("/scripts/globals/mentor");

-----------------------------------	
-- onTrigger Action	
-----------------------------------	

function onTrigger(player,npc)

    GetNPCByID(17281616):setPos(-226,0,495,179);
	GetNPCByID(17281616):setStatus(STATUS_NORMAL);
	
	GetNPCByID(17281617):setPos(-242.2,0,-398,187);
	GetNPCByID(17281617):setStatus(STATUS_NORMAL);

	local Moogle1 = (npc:getID() == 17281616);
	local Moogle2 = (npc:getID() == 17281617);

	if (Moogle1 and player:getVar("MentorFlag") == 1) then
		player:PrintToPlayer("Mentor Status Confirmed: Opening Shop...");
		stock = 
				{
					17330, 1,		-- Stone Arrow
				} 
		showShop(player, STATIC, stock);
	else
		player:PrintToPlayer("Status Confirmed. Opening field manual.");	
		startFov(FOV_EVENT_YUHTUNGA,player);
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
    updateFov(player,csid,menuchoice,124,125,126,127,128);
end;    
    
-----------------------------------    
-- onEventFinish Action    
-----------------------------------    
    
function onEventFinish(player,csid,option)    
    finishFov(player,csid,option,124,125,126,127,128,FOV_MSG_YUHTUNGA);
end;