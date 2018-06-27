-----------------------------------	
-- Area: Bibiki Bay
-- NPC:  Moogle	
-----------------------------------	
	
require("/scripts/globals/settings");
require("/scripts/globals/mentor");

-----------------------------------	
-- onTrigger Action	
-----------------------------------	

function onTrigger(player, npc)

	GetNPCByID(16793948):setPos(257,-21,310,170);
	GetNPCByID(16793948):setStatus(STATUS_NORMAL);
	

	local Moogle1 = (npc:getID() == 16793948);

	if ((Moogle1) and (player:getVar("MentorFlag") == 1) and (player:getMainLvl() >= 65)) then
		player:PrintToPlayer("Mentor Status Confirmed: Opening Shop...");
		stock = 
				{
					19122, 70000,	-- Courser's Pugio
					17651, 70000,	-- Dainslaif
					18018, 70000,	-- Sirocco Kukri
					16943, 70000,	-- Ascalon
					18487, 70000,	-- Erik's Axe
					16884, 70000,	-- Narval
					16980, 70000,	-- Sukesada
					17799, 70000,	-- Imanotsurugi
					17244, 70000,	-- Othinus' Bow
					19239, 70000,	-- Astrolabe
					
					16146, 70000,	-- Iron Ram Sallet
					14588, 70000,	-- Iron Ram Hauberk
					15009, 70000,	-- Iron Ram Dastanas
					16315, 70000,	-- Iron Ram Hose
					15755, 70000,	-- Iron Ram Greaves
				
					16147, 70000,	-- Fourth Haube
					14589, 70000,	-- Fourth Brunne
					15010, 70000,	-- Fourth Hentzes
					16316, 70000,	-- Fourth Schoss
					15756, 70000,	-- Fourth Schuhs
					
					16148, 70000,	-- Cobra Cap
					14590, 70000,	-- Cobra Harness
					15011, 70000,	-- Cobra Mittens
					16317, 70000,	-- Cobra Subligar
					15757, 70000,	-- Cobra Leggings
					
					16149, 70000,	-- Cobra Cloche
					14591, 70000,	-- Cobra Robe
					15012, 70000,	-- Cobra Gloves
					16318, 70000,	-- Cobra Trews
					15758, 70000,	-- Cobra Crackows				
				}
		showShop(player, STATIC, stock);
	end	
	clickMoogle(player, npc); 
end;