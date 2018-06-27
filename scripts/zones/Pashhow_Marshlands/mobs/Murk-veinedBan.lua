-----------------------------------
-- Area: Pashhow Marshlands
--  MOB: Marsh Funguar
-----------------------------------

require("scripts/globals/fieldsofvalor");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobFight(mob, target)
local ouch = mob:getHPP();

    if mob:hasStatusEffect(dsp.effects.REGEN) == false then
					mob:addStatusEffect(dsp.effects.REGEN);
					end
					mob:addHP(20);
					mob:addTP(6);
					local chance = math.random(1,1000);
					if (chance > 990) then
					
						if (math.random(1,3) > 2) then
							mob:useMobAbility(921);
							else
							mob:useMobAbility(920);
						end
					
					end
					
					--printf("test");
end;


function onMobDeath(mob, player, isKiller)
local kills = player:getVar("EVERYONES_GRUDGE_KILLS");
	if (kills < 480) then
		player:setVar("EVERYONES_GRUDGE_KILLS",kills + 1);
	end
end;