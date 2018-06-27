-----------------------------------	
-- Area: Korroloka Tunnel
-- NPC:  Moogle	
-----------------------------------	
	
require("/scripts/globals/settings");
require("/scripts/globals/mentor");

-----------------------------------	
-- onTrigger Action	
-----------------------------------	

function onTrigger(player, npc)

	GetNPCByID(17486245):setPos(304,-10,81,135);
	GetNPCByID(17486245):setStatus(STATUS_NORMAL);
	
	local Moogle = npc:getID() == 17486245;

	if ((Moogle) and (player:getVar("MentorFlag") == 1) and (player:getMainLvl() >= 13)) then
		player:PrintToPlayer("Mentor Status Confirmed: Opening Shop...");
		stock = 
				{
					16089, 10000, 	-- Njord's Mask
					14551, 10000, 	-- Njord's Jerkin
					14966, 10000, 	-- Njord's Gloves
					15630, 10000, 	-- Njord's Trousers
					15716, 10000, 	-- Njord's Ledelsens
					
					16101, 10000, 	-- Nemain's Crown
					14563, 10000, 	-- Nemain's Robe
					14978, 10000, 	-- Nemain's Cuffs
					15642, 10000, 	-- Nemain's Slops
					15728, 10000, 	-- Nemain's Sabots
					
					16093, 10000, 	-- Hoshikazu Hachimaki
					14555, 10000, 	-- Hoshikazu Gi
					14970, 10000, 	-- Hoshikazu Tekko
					15634, 10000, 	-- Hoshikazu Hakama
					15720, 10000, 	-- Hoshikazu Kyahan
					
					16085, 10000, 	-- Enyo's Mask
					14547, 10000, 	-- Enyo's Breastplate
					14962, 10000, 	-- Enyo's Gauntlets
					15626, 10000, 	-- Enyo's Cuisses
					15712, 10000, 	-- Enyo's Leggings
					
					16097, 10000, 	-- Anu's Tiara
					14559, 10000, 	-- Anu's Doublet
					14974, 10000, 	-- Anu's Gages
					15638, 10000, 	-- Anu's Brais
					15724, 10000, 	-- Anu's Gaiters
				} 
		showShop(player, STATIC, stock);
	end	
	clickMoogle(player, npc); 
end;