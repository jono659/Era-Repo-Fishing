-----------------------------------
-- Nosferatu Bats 
-----------------------------------
require("scripts/zones/Aydeewa_Subterrane/MobIDs");

function onMobSpawn(mob)
	mob:setLocalVar("PetPop", os.time());
end

function onMobFight(mob,target)
local mobTP = mob:getTP();
local depopTime = mob:getLocalVar("PetPop");

	if (os.time() - depopTime > (math.random(4,5))) then
	if mobTP < 2000 then
		DespawnMob(17056158);
		DespawnMob(17056159);
		DespawnMob(17056160);
	end
	end
end
