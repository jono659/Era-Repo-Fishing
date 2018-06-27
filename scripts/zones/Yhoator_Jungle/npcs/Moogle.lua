-----------------------------------	
-- Area: Yhoator Jungle	
-- NPC:  Moogle	
-----------------------------------	
	
require("/scripts/globals/settings");
require("/scripts/globals/fieldsofvalor");
require("/scripts/globals/mentor");

-----------------------------------	
-- onTrigger Action	
-----------------------------------	

function onTrigger(player,npc)

	local Moogle = npc:getID() == 17285666;

	if (Moogle and player:getVar("MentorFlag") == 1) then
		player:PrintToPlayer("Mentor Status Confirmed: Opening Shop...");
		stock = 
				{
					17330, 1,		-- Stone Arrow
				--[[
					17134,15000, -- Dolphin Staff 
					14667, 191, -- Carect Ring  
					17947, 2754, -- Garde Pick 
					18762, 100, -- Custodes  
					16738, 15000, -- Mythril Dagger +1 
					4157, 200 -- Poison Potion
				]]
				} 
		showShop(player, STATIC, stock);
	else
		player:PrintToPlayer("Status Confirmed. Opening field manual.");	
		startFov(FOV_EVENT_YHOATOR,player);
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
    updateFov(player,csid,menuchoice,129,130,131,132,133);
end;    
    
-----------------------------------    
-- onEventFinish Action    
-----------------------------------    
    
function onEventFinish(player,csid,option)    
    finishFov(player,csid,option,129,130,131,132,133,FOV_MSG_YHOATOR);
end;    