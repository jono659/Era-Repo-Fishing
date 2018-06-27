-----------------------------------	
-- Area: Caedarva Mire
-- NPC:  Moogle	
-----------------------------------	
	
require("/scripts/globals/settings");
require("/scripts/globals/mentor");

-----------------------------------	
-- onTrigger Action	
-----------------------------------	

function onTrigger(player,npc)

	local Moogle = npc:getID() == 17101347;
			
	if (Moogle and player:getVar("MentorFlag") == 1) then
		player:PrintToPlayer("Mentor Status Confirmed: Opening Shop...");
		stock = 
				{
					17330, 1, 	-- Stone Arrow
--[[

]]
				}
		showShop(player, STATIC, stock);
    end	
	clickMoogle(player, npc); 
end;