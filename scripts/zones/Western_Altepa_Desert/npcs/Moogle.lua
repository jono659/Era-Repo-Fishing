-----------------------------------	
-- Area: Western Altepa Desert
-- NPC:  Moogle	
-----------------------------------	
	
require("/scripts/globals/settings");
require("/scripts/globals/fieldsofvalor");
require("/scripts/globals/mentor");

-----------------------------------	
-- onTrigger Action	
-----------------------------------	

function onTrigger(player, npc)

	GetNPCByID(17289758):setPos(-152,-16,20,4);
	GetNPCByID(17289758):setStatus(STATUS_NORMAL);

	local Moogle = (npc:getID() == 17289758);	

	if (Moogle and (player:getVar("MentorFlag") == 1) and (player:getMainLvl() >= 38)) then
		player:PrintToPlayer("Mentor Status Confirmed: Opening Shop...");
		stock = 
				{
					17510, 40000, 	-- Vampiric Claws
					15184, 40000, 	-- Voyager Sallet
					15220, 40000, 	-- Rain Hat
					15468, 40000, 	-- Resentment Cape
					15547, 40000, 	-- Vilma's Ring
					15810, 40000, 	-- Luzaf's Ring
					14806, 40000, 	-- Intruder Earring
					16251, 40000, 	-- Casaba Melon Tank
				} 
		showShop(player, STATIC, stock);
	else
		player:PrintToPlayer("Status Confirmed. Opening field manual.");	
		startFov(FOV_EVENT_WEST_ALTEPA,player);
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
	updateFov(player,csid,menuchoice,134,135,136,137,138);
end;	
	
-----------------------------------	
-- onEventFinish Action	
-----------------------------------	
	
function onEventFinish(player,csid,option)
	finishFov(player,csid,option,134,135,136,137,138,FOV_MSG_WEST_ALTEPA);
end;