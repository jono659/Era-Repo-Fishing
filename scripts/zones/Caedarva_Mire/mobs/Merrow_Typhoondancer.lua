-----------------------------------
-- Area: Arrapago Reef
--  NPC: Merrow Typhoondancer
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
    
-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob, target)
local HPP = ((mob:getHP()/mob:getMaxHP())*100);
local hour = mob:getLocalVar("sam");
local trigger = math.random(50,60);

    if (HPP < trigger and hour == 0) then
		mob:setLocalVar("sam",1);
		mob:useMobAbility(1020);
		printf("sam");
	end
end;

-----------------------------------
-- onCriticalHit
-----------------------------------

function onCriticalHit(mob)   

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
end;