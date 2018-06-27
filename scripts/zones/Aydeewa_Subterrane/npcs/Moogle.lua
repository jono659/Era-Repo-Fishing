-----------------------------------
-- Area: Aydeewa Subterrane
-- NPC:  Moogle
-----------------------------------

require("/scripts/globals/settings");
require("/scripts/globals/mentor");

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

	GetNPCByID(17056225):setPos(218,36,90,250);
	GetNPCByID(17056225):setStatus(STATUS_NORMAL);

	local Moogle = npc:getID() == 17056225;
			
	if (Moogle and (player:getVar("MentorFlag") == 1) and (player:getMainLvl() >= 58)) then
	player:PrintToPlayer("Mentor Status Confirmed: Opening Shop...");
		stock = 
				{
					17924, 60000, 	-- Tungi
					16882, 60000, 	-- Calamar
					16788, 100000, 	-- Vassago's Scythe
					17199, 60000, 	-- Loxley Bow
					18703, 60000, 	-- Shark Gun
					15884, 200000, 	-- Potent Belt
					16292, 60000, 	-- Bull Necklace
					16293, 60000, 	-- Cougar Pendant
					16294, 60000, 	-- Crocodile Collar
					16291, 60000,	-- Shield Collar
					11343, 60000, 	-- Thrk. Breastplate
				}
		showShop(player, STATIC, stock);
    end	
	clickMoogle(player, npc); 
end;