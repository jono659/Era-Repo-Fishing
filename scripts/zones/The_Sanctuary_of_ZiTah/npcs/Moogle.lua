-----------------------------------	
-- Area: The Sanctuary of Zi'Tah
-- NPC:  Moogle	
-----------------------------------	
	
require("/scripts/globals/settings");
require("/scripts/globals/mentor");

-----------------------------------	
-- onTrigger Action	
-----------------------------------	

function onTrigger(player, npc)

	GetNPCByID(17273381):setPos(-52,1,-142.7,164);
	GetNPCByID(17273381):setStatus(STATUS_NORMAL);
	
	clickMoogle(player, npc); 
end;