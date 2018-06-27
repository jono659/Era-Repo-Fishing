-----------------------------------	
-- Area: Garlaige Citadel	
-- NPC:  Moogle	
-----------------------------------	
	
require("/scripts/globals/settings");
require("/scripts/globals/mentor");

-----------------------------------	
-- onTrigger Action	
-----------------------------------	
	
function onTrigger(player, npc)

	GetNPCByID(17596809):setPos(-325,16,300,44);
	GetNPCByID(17596809):setStatus(STATUS_NORMAL);
	GetNPCByID(17596810):setPos(-337,-3,343,91);
	GetNPCByID(17596810):setStatus(STATUS_NORMAL);
	
	clickMoogle(player, npc); 
end;

