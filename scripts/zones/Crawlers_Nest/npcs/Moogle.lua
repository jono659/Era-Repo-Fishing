-----------------------------------	
-- Area: Crawler's Nest	
-- NPC:  Moogle	
-----------------------------------	
	
require("/scripts/globals/settings");
require("/scripts/globals/mentor");

-----------------------------------	
-- onTrigger Action	
-----------------------------------	

function onTrigger(player, npc)

	GetNPCByID(17584467):setPos(101,-33,-85,5);
	GetNPCByID(17584467):setStatus(STATUS_NORMAL);

	local Moogle = (npc:getID() == 17584467);

	if (Moogle and (player:getVar("MentorFlag") == 1) and (player:getMainLvl() >= 28)) then
		player:PrintToPlayer("Mentor Status Confirmed: Opening Shop...");
		stock = 
				{
					17760, 30000, 	-- Buccaneer's Scimitar
					12374, 30000, 	-- Tortoise Shield
					16936, 30000, 	-- Demonic Sword
					18451, 30000, 	-- Mokusa
					11492, 30000, 	-- Risky Patch
					14884, 30000, 	-- Mycophile Cuffs
					11401, 30000, 	-- Rambler's Gaiters
					15543, 2000000,	-- Rajas Ring
					15545, 2000000, -- Tamas Ring
					15544, 2000000, -- Sattva Ring
				}
		showShop(player, STATIC, stock);
	end	
	clickMoogle(player, npc); 
end;