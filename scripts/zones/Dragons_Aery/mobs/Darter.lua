-----------------------------------
-- Area: Dragons_Aery
--  MOB: Darter
-----------------------------------
require("scripts/globals/status");
require("scripts/zones/Dragons_Aery/MobIDs");
-----------------------------------

function onMobDeath(mob, player, isKiller)
end;

function onMobRoam(mob)
-- ERA Custom timer
    local NQPOP = GetServerVariable("[POP]Fafnir");
	local HQPOP = GetServerVariable("[POP]Nidhogg");

    if (NQPOP <= os.time() and GetMobAction(NIDHOGG) == 0 and GetMobAction(FAFNIR) == 0) then
        if HQPOP <= os.time() then
			SpawnMob(NIDHOGG);
		else 
            SpawnMob(FAFNIR);
		end
	end
end;
