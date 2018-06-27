-----------------------------------	
-- Area: East Ronfaure [S]
-- NPC:  Moogle
-----------------------------------	
	
require("/scripts/globals/settings");
require("/scripts/globals/mentor");

-----------------------------------	
-- onTrigger Action	
-----------------------------------	

function onTrigger(player,npc)

	GetNPCByID(17109813):setPos(503,-20,-212,223);
	GetNPCByID(17109813):setStatus(STATUS_NORMAL);

	local Moogle = (npc:getID() == 17109813);

	if (Moogle and (player:getVar("MentorFlag") == 1) and (player:getMainLvl() >= 33)) then
		player:PrintToPlayer("Mentor Status Confirmed: Opening Shop...");
		stock = 
				{
					16487, 30000,	-- Minstrel's Dagger
					
					16103, 30000, 	-- Macha's Crown
					14565, 30000, 	-- Macha's Coat
					14980, 30000, 	-- Macha's Cuffs
					15644, 30000, 	-- Macha's Slops
					15730, 30000, 	-- Macha's Pigaches
					
					16095, 30000, 	-- Hikazu Kabuto
					14557, 30000, 	-- Hikazu Hara-Ate
					14972, 30000, 	-- Hikazu Gote
					15636, 30000, 	-- Hikazu Hakama
					15722, 30000, 	-- Hikazu Sune-Ate
					
					16099, 30000, 	-- Enlil's Tiara
					14561, 30000, 	-- Enlil's Gambison
					14976, 30000, 	-- Enlil's Kolluks
					15640, 30000, 	-- Enlil's Brayettes
					15726, 30000, 	-- Enlil's Crackows
					
					16087, 30000, 	-- Deimos's Mask
					14549, 30000, 	-- Deimos's Cuirass
					14964, 30000, 	-- Deimos's Gauntlets
					15628, 30000, 	-- Deimos's Cuisses
					15714, 30000, 	-- Deimos's Leggings
				}
		showShop(player, STATIC, stock);
	end	
	clickMoogle(player, npc);
end;