-----------------------------------	
-- Area: Valkurm Dunes	
-- NPC:  Moogle
-----------------------------------	
	
require("/scripts/globals/settings");
require("/scripts/globals/fieldsofvalor");
require("/scripts/globals/mentor");
	
-----------------------------------	
-- onTrigger Action	
-----------------------------------	

function onTrigger(player,npc)

	GetNPCByID(17199701):setPos(266,-10,58,0);
	GetNPCByID(17199701):setStatus(STATUS_NORMAL);
	
	GetNPCByID(17199702):setPos(-183,-3,-23,103);
	GetNPCByID(17199702):setStatus(STATUS_NORMAL);
	
	GetNPCByID(17199703):setPos(865,-5,-297,195);
	GetNPCByID(17199703):setStatus(STATUS_NORMAL);

	local OasisMoogle = npc:getID() == 17199701;
	local LizMoogle = npc:getID() == 17199702;
	local KonschMoogle = npc:getID() == 17199703;

	if ((OasisMoogle or LizMoogle or KonschMoogle) and (player:getVar("MentorFlag") == 1) and (player:getMainLvl() >= 8)) then
		player:PrintToPlayer("Mentor Status Confirmed: Opening Shop...");
		stock = 
				{
					15218, 10000, 	-- Entrancing Ribbon
					17594, 10000, 	-- Gelong Staff
					17811, 10000, 	-- Katayama Ichimonji
					19305, 10000, 	-- Pike
					18394, 10000, 	-- Pilgrim's Wand
					16544, 10000, 	-- Royal Archer's Sword
					18366, 10000, 	-- Gust Claymore
					16780, 10000, 	-- Legionnaire's Scythe
					12371, 10000, 	-- Clipeus
					17512, 10000, 	-- Hydro Baghnakhs
					
					18412, 10000, 	-- Gassan
					17967, 10000, 	-- Felling Axe
					18200, 10000, 	-- Hydro Axe
					16466, 10000, 	-- Knife
				} 
		showShop(player, STATIC, stock);
	else
		player:PrintToPlayer("Status Confirmed. Opening field manual.");	
		startFov(FOV_EVENT_VALKURM, player);
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
