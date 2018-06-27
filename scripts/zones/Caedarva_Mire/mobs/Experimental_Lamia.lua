-----------------------------------
-- Area: Caedarva Mire
--  MOB: Experimental Lamia
-- 	!pos -773.369 -11.824 322.298 79
-- 	!spawnmob 17101205
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/monstertpmoves");
-----------------------------------

function onMobSpawn(mob)
end;

function onMobFight(mob,target)
local HPP = ((mob:getHP()/mob:getMaxHP())*100);
local summon = mob:getLocalVar("summon");
local POP = math.random(70,83);

	if HPP < POP and summon == 0 then
		SpawnMob(17101207):updateEnmity(target);
	    SpawnMob(17101208):updateEnmity(target);
		SpawnMob(17101206):updateEnmity(target);
		mob:setLocalVar("summon",1);
		printf("summoned");
	end
end;

function onMobDeath(mob, player, isKiller)
	player:addCurrency("cruor", math.random(400,600));
end;
