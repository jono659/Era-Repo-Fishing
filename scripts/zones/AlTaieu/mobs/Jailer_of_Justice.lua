-----------------------------------
-- Area: Al'Taieu
--  NM:  Jailer of Justice
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");
-----------------------------------
-- onMobInitialize
-----------------------------------
local mobID = 16912839

function onMobInitialize(mob)
end;

function onMobSpawn(mob)
end;

function onMobFight(mob, target)
    local popTime = mob:getLocalVar("lastPetPop");
    -- ffxiclopedia says 30 sec, bgwiki says 1-2 min..
    -- Going with 60 seconds until I see proof of retails timing.
    if (os.time() - popTime > 30) then
        local alreadyPopped = false;
        for Xzomit = mob:getID()+1, mob:getID()+6 do
            if (alreadyPopped == true) then
                break;
            else
                if (not GetMobByID(Xzomit):isSpawned()) then
                    SpawnMob(Xzomit, 300):updateEnmity(target);
                    mob:setLocalVar("lastPetPop", os.time());
                    alreadyPopped = true;
                end
            end
        end
    end
end;

function onMobDespawn(mob)
   for i = 1,6 do DespawnMob(mobID + i) end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
	for i = 1,6 do DespawnMob(mobID + i) end
	player:addCurrency("cruor", math.random(300,600));
end;