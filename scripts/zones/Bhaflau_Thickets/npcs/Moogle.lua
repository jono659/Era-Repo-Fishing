-----------------------------------	
-- Area: Bhaflau Thickets
-- NPC:  Moogle	
-----------------------------------	
	
require("/scripts/globals/settings");	
require("/scripts/globals/mentor");	

-----------------------------------	
-- onTrigger Action	
-----------------------------------	

function onTrigger(player,npc)
if player:getMainJob() ~= JOBS.BLU then
player:delStatusEffect(dsp.effects.WEAKNESS);
end
	GetNPCByID(16990576):setPos(-12,-26,139,2);
	GetNPCByID(16990577):setStatus(STATUS_NORMAL);

	GetNPCByID(16990577):setPos(-567,-11,-40,8);
	GetNPCByID(16990577):setStatus(STATUS_NORMAL);

	local TowerMoogle = npc:getID() == 16990576;
	local WivreMoogle = npc:getID() == 16990577;
			
	if (TowerMoogle and (player:getVar("MentorFlag") == 1) and (player:getMainLvl() >= 58)) then
	player:PrintToPlayer("Mentor Status Confirmed: Opening Shop...");
		stock = 
				{
					13301, 60000, 	-- Vivian Ring					
					16980, 60000, 	-- Sukesada
					11533, 60000, 	-- Lyricist's Gonnelle
					17563, 60000, 	-- Power Staff
					16945, 60000, 	-- Arondight
					19121, 60000, 	-- Sleight Kukri
					17454, 60000, 	-- Asklepios
					16271, 60000, 	-- Lieutenant's Gorget
					17437, 60000, 	-- Curse Wand
					17665, 60000, 	-- Ifrit's Blade
					17627, 60000, 	-- Garuda's Dagger
					17492, 60000, 	-- Shiva's Claws
					13870, 60000, 	-- Opo-Opo Crown
				}
		showShop(player, STATIC, stock);
    end	
	clickMoogle(player, npc); 
end;