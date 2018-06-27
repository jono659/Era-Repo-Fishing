-----------------------------------	
-- Area: Mount Zhayolm
-- NPC:  Moogle	
-----------------------------------	
	
require("/scripts/globals/settings");
require("/scripts/globals/mentor");

-----------------------------------	
-- onTrigger Action	
-----------------------------------	
	
function onTrigger(player, npc)

	GetNPCByID(17027528):setPos(189,-28,109,125);
	GetNPCByID(17027528):setStatus(STATUS_NORMAL);
	
	clickMoogle(player, npc); 
end;

