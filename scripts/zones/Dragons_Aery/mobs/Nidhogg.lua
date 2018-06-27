-----------------------------------
-- Area: Dragons Aery
--  HNM: Nidhogg
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/zones/Dragons_Aery/MobIDs");
-----------------------------------

function onMobInitialize(mob)
end;

function onMobSpawn(mob)
    if (LandKingSystem_NQ > 0 or LandKingSystem_HQ > 0) then
        GetNPCByID(17408033):setStatus(STATUS_DISAPPEAR);
    end
end;

function onMobFight(mob, target)
    local battletime = mob:getBattleTime();
    local twohourTime = mob:getLocalVar("twohourTime");

    if (twohourTime == 0) then
        mob:setLocalVar("twohourTime",math.random(30,90));
    end

    if (battletime >= twohourTime) then
        mob:useMobAbility(956);
        -- technically aerial hurricane wing, but I'm using 700 for his two hour
        --(since I have no inclination to spend millions on a PI to cap one name you never see)
        mob:setLocalVar("twohourTime",battletime + math.random(60,120));
    end
end;

function onMobDeath(mob, player, isKiller)
    player:addTitle(NIDHOGG_SLAYER);
    player:addCurrency("cruor", math.random(300,400));
end;

function onMobDespawn(mob)
    -- Set Nidhogg's Window Open Time
    local wait = ((math.random(0,5) * 1800) + 75600 + math.random(0,29));
    local wait2 = ((math.random(0,5) * 1800)+(72 * 3600) + math.random(0,29));
    local Force_pop = GetServerVariable("Popped_Nidhogg");
    
    if (Force_pop == 1) then
		GetNPCByID(17408033):updateNPCHideTime(FORCE_SPAWN_QM_RESET_TIME);
		SetServerVariable("Popped_Nidhogg", 0);
	else
        SetServerVariable("[POP]Nidhogg", os.time() + wait2); -- 3 days
		SetServerVariable("[POP]Fafnir", os.time() + wait);
		UpdateNMSpawnPoint(FAFNIR);
		SetServerVariable("[PH]Nidhogg", 0);
        GetNPCByID(17408033):updateNPCHideTime(FORCE_SPAWN_QM_RESET_TIME);
    end
end;
