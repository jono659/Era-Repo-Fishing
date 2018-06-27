-----------------------------------	
-- Area: Wajaom Woodlands
-- NPC:  Moogle	
-----------------------------------	
	
require("/scripts/globals/settings");	
require("/scripts/globals/mentor");	

-----------------------------------	
-- onTrigger Action	
-----------------------------------	

function onTrigger(player,npc)

	GetNPCByID(16986610):setPos(-215,-19,51,172);
	GetNPCByID(16986610):setStatus(STATUS_NORMAL);
			
	local Moogle = npc:getID() == 16986610;
			
	if (Moogle and (player:getVar("MentorFlag") == 1) and (player:getMainLvl() >= 48)) then
		player:PrintToPlayer("Mentor Status Confirmed: Opening Shop...");
		stock = 
				{
					17813, 50000,	-- Soboro Sukehiro
					16728, 50000,	-- Schwarz Axt
					17726, 50000,	-- Immortal's Shotel
					16899, 50000,	-- Hototogisu
					19114, 50000,	-- Galkan Dagger
					18767, 50000,	-- Birdbanes
				}
		showShop(player, STATIC, stock);
    end	
	clickMoogle(player, npc); 
end;