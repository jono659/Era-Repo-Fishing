-----------------------------------
-- Area: Riverne - Site B01
--  MOB: Vrtra (Bahamut pet)
-- Part of The Wyrmking Descends
-----------------------------------

local offsets = {7, 9, 11, 8, 10, 12};

function onMobSpawn(mob)
end;

function onMobFight(mob, target)
    
    local spawnTime = mob:getLocalVar("spawnTime");
    
    if (spawnTime == 0) then
        spawnTime = math.random(3, 5);
        mob:setLocalVar("spawnTime", spawnTime);
    end
    
    if (mob:getBattleTime()/15 > spawnTime) then
        for i, offset in ipairs(offsets) do
            if (GetMobAction(mob:getID()+offset) == ACTION_SPAWN or GetMobAction(mob:getID()+offset) == ACTION_NONE) then
                local pet = SpawnMob(mob:getID()+offset, 60);
                pet:updateEnmity(target)
                break;
            end
        end
        mob:setLocalVar("spawnTime", (mob:getBattleTime()/15)+4);
    end 
end;

function onMobDeath(mob, player, isKiller)
end;

function onMobDespawn(mob)
end;
