-----------------------------------
-- Area: Behemoths Dominion
--  MOB: Lesser Gaylas
-----------------------------------
require("scripts/globals/fieldsofvalor");
require("scripts/globals/status");
require("scripts/zones/Behemoths_Dominion/MobIDs");
-----------------------------------

function onMobDeath(mob, player, isKiller)
    checkRegime(player,mob,101,1);
    checkRegime(player,mob,102,1);
end;

function onMobRoam(mob)
-- ERA Custom timer
    local NQPOP = GetServerVariable("[POP]Behemoth");
	local HQPOP = GetServerVariable("[POP]King_Behemoth");

    if (NQPOP <= os.time() and GetMobAction(KING_BEHEMOTH) == 0 and GetMobAction(BEHEMOTH) == 0) then
        if HQPOP <= os.time() then
			SpawnMob(KING_BEHEMOTH);
		else 
            SpawnMob(BEHEMOTH);
		end
	end
end;
