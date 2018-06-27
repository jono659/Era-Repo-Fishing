-----------------------------------	
-- Area: Middle Delkfutt's Tower
-- NPC:  Moogle	
-----------------------------------	
	
require("/scripts/globals/settings");
require("/scripts/globals/mentor");

-----------------------------------	
-- onTrigger Action	
-----------------------------------	

function onTrigger(player, npc)

	GetNPCByID(17420667):setPos(23,-80,73,125);
	GetNPCByID(17420667):setStatus(STATUS_NORMAL);
	
	local Moogle = npc:getID() == 17420667;

	if ((Moogle) and (player:getVar("MentorFlag") == 1) and (player:getMainLvl() >= 23)) then
		player:PrintToPlayer("Mentor Status Confirmed: Opening Shop...");
		stock = 
				{
					17650, 20000, 	-- Nadrs
					17775, 20000, 	-- Fukuro
					18762, 20000, 	-- Custodes
					18090, 20000, 	-- Military Spear
					17419, 20000, 	-- Artemis' Wand
					
					16086, 20000, 	-- Phobos's Mask
					14548, 20000, 	-- Phobos's Cuirass
					14963, 20000, 	-- Phobos's Gauntlets
					15627, 20000, 	-- Phobos's Cuisses
					15713, 20000, 	-- Phobos's Sabatons
					
					16098, 20000, 	-- Ea's Tiara
					14560, 20000, 	-- Ea's Doublet
					14975, 20000, 	-- Ea's Dastanas
					15639, 20000, 	-- Ea's Brais
					15725, 20000, 	-- Ea's Crackows
					
					16102, 20000, 	-- Bodb's Crown
					14564, 20000, 	-- Bodb's Robe
					14979, 20000, 	-- Bodb's Cuffs
					15643, 20000, 	-- Bodb's Slops
					15729, 20000, 	-- Bodb's Pigaches
				} 
		showShop(player, STATIC, stock);
	end	
	clickMoogle(player, npc); 
end;