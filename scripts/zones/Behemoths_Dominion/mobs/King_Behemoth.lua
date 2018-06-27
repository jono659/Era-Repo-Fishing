-----------------------------------
-- Area: Behemoth's Dominion
--  HNM: King Behemoth
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/zones/Behemoths_Dominion/MobIDs");

-----------------------------------

function onMobSpawn(mob)
    -- Todo: move this to SQL after drop slots are a thing
    if (math.random(1,100) <= 10) then -- Hardcoded "this or this item" drop rate until implemented.
        SetDropRate(1936,13566,1000); -- Defending Ring
        SetDropRate(1936,13415,0);
    else
        SetDropRate(1936,13566,0);
        SetDropRate(1936,13415,1000); -- Pixie Earring
    end

    if (LandKingSystem_NQ > 0 or LandKingSystem_HQ > 0) then
        GetNPCByID(17297459):setStatus(STATUS_DISAPPEAR);
    end
end;

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAGIC_COOL, 60);
end;

function onSpellPrecast(mob, spell)
    if (spell:getID() == 218) then
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(30);
        spell:setAnimation(280);
        spell:setMPCost(1);
    end
end;

function onMobDeath(mob, player, isKiller)
    player:addTitle(BEHEMOTH_DETHRONER);
	player:setVar("kbcount",player:getVar("kbcount")+1);
	player:addCurrency("cruor", math.random(300,400));
end;

function onMobDespawn(mob)
    -- Set King_Behemoth's Window Open Time

		local wait = ((math.random(0,5) * 1800) + 75600 + math.random(0,29));
		local wait2 = ((math.random(0,5) * 1800)+(72 * 3600) + math.random(0,29));
		local Force_pop = GetServerVariable("Popped_Behemoth");
		
	if (Force_pop == 1) then
		GetNPCByID(17297459):updateNPCHideTime(FORCE_SPAWN_QM_RESET_TIME);
		SetServerVariable("Popped_Behemoth", 0);
	else
        SetServerVariable("[POP]King_Behemoth", os.time() + wait2); -- 3 days
		SetServerVariable("[POP]Behemoth", os.time() + wait);
		UpdateNMSpawnPoint(BEHEMOTH);
		SetServerVariable("[PH]King_Behemoth", 0);
        GetNPCByID(17297459):updateNPCHideTime(FORCE_SPAWN_QM_RESET_TIME);
    end
end;
