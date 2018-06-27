-----------------------------------
-- Area: Arrapago Reef
--  NPC: Merrow Shadowdancer
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
local hour = mob:getLocalVar("chainspell");
local trigger = math.random(50,60);

    if (HPP < trigger and hour == 0) then
		mob:setLocalVar("chainspell",1);
		mob:useMobAbility(1012);
		printf("chainspell");
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