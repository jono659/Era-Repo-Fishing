-----------------------------------	
-- Area: Kuftal Tunnel
-- NPC:  Moogle	
-----------------------------------	
	
require("/scripts/globals/settings");
require("/scripts/globals/mentor");

-----------------------------------	
-- onTrigger Action	
-----------------------------------	

function onTrigger(player,npc)

	local Moogle = npc:getID() == 17490281;
			
	if (Moogle and (player:getVar("MentorFlag") == 1) and (player:getMainLvl() >= 48)) then
		player:PrintToPlayer("Mentor Status Confirmed: Opening Shop...");
		stock = 
				{
					17330, 1,		-- Stone Arrow
--[[

]]
				}
		showShop(player, STATIC, stock);
    end	
	clickMoogle(player, npc);
end;