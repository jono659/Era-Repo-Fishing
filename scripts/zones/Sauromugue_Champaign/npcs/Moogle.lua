-----------------------------------	
-- Area: Sauromugue Champaign
-- NPC:  Moogle	
-----------------------------------	
	
require("/scripts/globals/settings");
require("scripts/globals/fieldsofvalor");
require("/scripts/globals/mentor");

-----------------------------------	
-- onTrigger Action	
-----------------------------------	

function onTrigger(player,npc)

	GetNPCByID(17269211):setPos(-225,6,146,57);
	GetNPCByID(17269211):setStatus(STATUS_NORMAL);

	local Moogle = npc:getID() == 17269211;
			
	if (Moogle and (player:getVar("MentorFlag") == 1) and (player:getMainLvl() >= 28)) then
		player:PrintToPlayer("Mentor Status Confirmed: Opening Shop...");
		stock = 
				{
					18251, 20000, 	-- Sweet Sachet
					18249, 20000, 	-- Olibanum Sachet
					18253, 20000, 	-- Musk Sachet
					18248, 20000, 	-- Millefleurs Sachet
					18252, 20000, 	-- Civet Sachet
					18247, 20000, 	-- Balm Sachet
					18250, 20000, 	-- Attar Satchet
					19105, 20000, 	-- Thug's Jambiya
					18605, 20000, 	-- Melampus Staff
					17208, 20000, 	-- Hamayumi
					18604, 20000, 	-- Astaroth Cane
				} 
		showShop(player, STATIC, stock);
	else
		player:PrintToPlayer("Status Confirmed. Opening field manual.");	
		startFov(FOV_EVENT_SAUROMAGUE,player);
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
    updateFov(player,csid,menuchoice,40,97,98,99,100);
end;    
    
-----------------------------------    
-- onEventFinish Action    
-----------------------------------    
    
function onEventFinish(player,csid,option)    
    finishFov(player,csid,option,40,97,98,99,100,FOV_MSG_SAUROMAGUE);
end;