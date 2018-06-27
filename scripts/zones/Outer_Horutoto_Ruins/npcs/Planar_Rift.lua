-----------------------------------
-- Area: Outer Horutoto Ruins
-- NPC:  Planar Rift
-----------------------------------

require("/scripts/globals/settings");
require("/scripts/globals/mentor");



function onTrigger(player,npc)
	
	local Moogle = npc:getID() == 17572303;
			
	if (Moogle and (player:getVar("MentorFlag") == 1) and (player:getMainLvl() >= 75)) then
		player:PrintToPlayer("Mentor Status Confirmed: Opening Shop...");
		stock = 
				{
					16088, 1000000, -- Skadi's Visor
					16092, 1000000, -- Usukane Somen
					16084, 1000000, -- Ares' Mask
					16096, 1000000, -- Marduk's Tiara
					16100, 1000000, -- Morrigan's Coron.
				}
		showShop(player, STATIC, stock);
    end	
	clickMoogle(player, npc);
end;