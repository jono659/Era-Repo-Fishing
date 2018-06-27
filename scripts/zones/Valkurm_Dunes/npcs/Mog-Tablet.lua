-----------------------------------	
-- Area: Valkurm Dunes	
-- NPC:  Mog Tablet
-----------------------------------	

require("/scripts/globals/settings");

-----------------------------------	
-- onTrigger Action	
-----------------------------------	
	
function onTrigger(player,npc)
	player:PrintToPlayer("Trade me a Damselfly to pop Valkurm Empress");
end;

	
-----------------------------------	
-- onTrade Action	
-----------------------------------	
	
function onTrade(player,npc,trade)

	if (trade:hasItemQty(537,1)) then
		GetMobByID(17199438):setSpawn(player:getXPos(),player:getYPos(),player:getZPos()); 
		SpawnMob(17199438):updateClaim(player);
		player:tradeComplete(trade);		
	end
	
end;	
