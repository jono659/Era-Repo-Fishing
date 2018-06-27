-----------------------------------
-- Area: Dragons Aery
--  HNM: Fafnir
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/zones/Dragons_Aery/MobIDs");
-----------------------------------

function onMobSpawn(mob)
    if (LandKingSystem_NQ > 0 or LandKingSystem_HQ > 0) then
        GetNPCByID(17408033):setStatus(STATUS_DISAPPEAR);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addTitle(FAFNIR_SLAYER);
    player:addCurrency("cruor", math.random(100,150));
end;

function onMobDespawn(mob)
    local Force_pop = GetServerVariable("Popped_Nidhogg");
	local wait = ((math.random(0,5) * 1800) + 75600 + math.random(0,29));

    if (Force_pop == 1) then
		GetNPCByID(17408033):updateNPCHideTime(FORCE_SPAWN_QM_RESET_TIME);
		SetServerVariable("Popped_Nidhogg", 0);
	else
        UpdateNMSpawnPoint(KING_BEHEMOTH);
		UpdateNMSpawnPoint(BEHEMOTH);
		SetServerVariable("[TOD]Fafnir", os.time());
		SetServerVariable("[POP]Fafnir", os.time() + wait);
        GetNPCByID(17408033):updateNPCHideTime(FORCE_SPAWN_QM_RESET_TIME);
    end
end;
