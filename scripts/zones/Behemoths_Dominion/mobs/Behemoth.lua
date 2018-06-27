-----------------------------------
-- Area: Behemoth's Dominion
--  HNM: Behemoth
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/zones/Behemoths_Dominion/MobIDs");

-----------------------------------

function onMobInitialize(mob)
end;

function onMobFight(mob, target)
mob:setMod(MOD_MOVE, 40);
end
-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    if (LandKingSystem_NQ > 0 or LandKingSystem_HQ > 0) then
        GetNPCByID(17297459):setStatus(STATUS_DISAPPEAR);
    end
end;

function onMobDeath(mob, player, isKiller)
    player:addTitle(BEHEMOTHS_BANE);
	player:addCurrency("cruor", math.random(100,150));
end;

function onMobDespawn(mob)
	local Force_pop = GetServerVariable("Popped_Behemoth");
	local wait = ((math.random(0,5) * 1800) + 75600 + math.random(0,29));

	if (Force_pop == 1) then
		GetNPCByID(17297459):updateNPCHideTime(FORCE_SPAWN_QM_RESET_TIME);
		SetServerVariable("Popped_Behemoth", 0);
	else
        UpdateNMSpawnPoint(KING_BEHEMOTH);
		UpdateNMSpawnPoint(BEHEMOTH);
		SetServerVariable("[TOD]Behemoth", os.time());
		SetServerVariable("[POP]Behemoth", os.time() + wait);
        GetNPCByID(17297459):updateNPCHideTime(FORCE_SPAWN_QM_RESET_TIME);
    end
end;
