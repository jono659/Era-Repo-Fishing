-----------------------------------	
-- Area: The Boyahda Tree
-- NPC:  Moogle	
-----------------------------------	
	
require("/scripts/globals/settings");
require("/scripts/globals/mentor");

-----------------------------------	
-- onTrigger Action	
-----------------------------------	

function onTrigger(player,npc)

	GetNPCByID(17404386):setPos(-102,7,-84,125);
	GetNPCByID(17404386):setStatus(STATUS_NORMAL);
	
	GetNPCByID(17404387):setPos(212,5,-60,205);
	GetNPCByID(17404387):setStatus(STATUS_NORMAL);

	local Moogle1 = (npc:getID() == 17404386);
	local Moogle2 = (npc:getID() == 17404387);

	if ((Moogle1 or Moogle2) and (player:getVar("MentorFlag") == 1) and (player:getMainLvl() >= 48)) then
		player:PrintToPlayer("Mentor Status Confirmed: Opening Shop...");
		stock = 
				{
					16757, 50000,	-- Corsair's Knife
					16168, 50000,	-- Sentinel Shield
					15457, 50000,	-- Swift Belt
					15809, 50000,	-- Jalzahn's Ring
					
					16065, 50000,	-- Storm Zucchetto
					14936, 50000,	-- Storm Manopolas
					15691, 50000,	-- Storm Gambieras
					
					14412, 50000,	-- Parade Cuirass
					14403, 50000,	-- Rapparee Harness
					14409, 50000,	-- Gloom Breastplate
					14413, 50000,	-- Gaudy Harness
					14405, 50000,	-- Wyvern Mail
					14402, 50000,	-- Nokizaru Gi
					14406, 50000,	-- Shikaree Aketon
					14404, 50000,	-- Shinimusha Hara-Ate
					14408, 50000,	-- Glamor Jupon
					14411, 50000,	-- Aikido Gi
					14407, 50000,	-- Cerise Doublet
					14401, 50000,	-- Duende Cotehardie
					14410, 50000,	-- Nimbus Doublet
				}
		showShop(player, STATIC, stock);
	end	
	clickMoogle(player, npc); 
end;