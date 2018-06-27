-----------------------------------	
-- Area: Quicksand Caves
-- NPC:  Moogle	
-----------------------------------	
	
require("/scripts/globals/settings");
require("/scripts/globals/mentor");

-----------------------------------	
-- onTrigger Action	
-----------------------------------	

function onTrigger(player, npc)

	GetNPCByID(17629730):setPos(867,-8,-347,156); -- Eastern Altepa Desert Entrance #1 - J-4
	GetNPCByID(17629730):setStatus(STATUS_NORMAL);
	
	GetNPCByID(17629731):setPos(158,-8,-183,194); -- Western Altepa Desert Entrance #2 - I-10
	GetNPCByID(17629731):setStatus(STATUS_NORMAL);

	local Moogle1 = (npc:getID() == 17629730);
	local Moogle2 = (npc:getID() == 17629731);

	if ((Moogle1 or Moogle2) and (player:getVar("MentorFlag") == 1) and (player:getMainLvl() >= 46)) then
		player:PrintToPlayer("Mentor Status Confirmed: Opening Shop...");
		stock = 
				{
					17980, 40000	-- Hornetneedle
				}
		showShop(player, STATIC, stock);
	end	
	clickMoogle(player, npc); 
end;