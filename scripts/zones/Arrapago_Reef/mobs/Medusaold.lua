-----------------------------------
-- Area: Arrapago Reef
--  MOB: Medusa
-----------------------------------
 
require("scripts/globals/titles");
require("scripts/zones/Arrapago_Reef/TextIDs");
 
-----------------------------------
-- Init variables
-----------------------------------
local mobID = 16998862
local phaseChange = 1 -- Confirms pets have hate every 1% HP
 
-----------------------------------
-- onMobSpawn Action
-----------------------------------
 
function onMobSpawn(mob)
    mob:setLocalVar("phaseHPP", 100 - phaseChange); -- Set amount above
    mob:setLocalVar("ultHPP", math.random(40,60)); -- Uses 2hr randomly during the fight
    mob:setMod(MOD_DEF, 400);
    mob:setMod(MOD_MEVA, 300);
    mob:setMod(MOD_MDEF, 50);
end;
 
-----------------------------------
-- onMobEngaged Action
-----------------------------------
 
function onMobEngaged(mob, target)
	target:showText(mob, MEDUSA_ENGAGE); 
    for i = 1,4 do SpawnMob(mobID + i):updateEnmity(target) end
end;
 
-----------------------------------
-- onMobFight Action
-----------------------------------
 
function onMobFight(mob, target)
    local HPP = mob:getHPP()
    local ultHPP = mob:getLocalVar("ultHPP")
    local phaseHPP = mob:getLocalVar("phaseHPP")
   
    -- Check for 2hr
    if HPP <= ultHPP then
        mob:useMobAbility(1931) -- Eagle Eye Shot
        mob:setLocalVar("ultHPP", 0)
    end
   
    -- Handle mobs
    if HPP < phaseHPP then
        for i = 1,4 do
            local mob = GetMobByID(mobID + i)
            if not mob:isSpawned() then
                mob:spawn()
                mob:updateEnmity(target)
            elseif not mob:isEngaged() and not mob:isAsleep() and mob:getHP() > 0 then
                mob:updateEnmity(target)
            end
        end
       
        mob:setLocalVar("phaseHPP", phaseHPP - phaseChange);
    end
end;
 
-----------------------------------
-- onMobDisengage Action
-----------------------------------
 
function onMobDisengage(mob)
    for i = 1,4 do DespawnMob(mobID + i) end
end;
 
-----------------------------------
-- onMobDeath
-----------------------------------
 
function onMobDeath(mob, player, isKiller)
    player:addTitle(GORGONSTONE_SUNDERER)
    player:showText(mob, MEDUSA_DEATH);
    for i = 1,4 do DespawnMob(mobID + i) end
end;
 
-----------------------------------
-- onMobDespawn
-----------------------------------
 
function onMobDespawn(mob)
    for i = 1,4 do DespawnMob(mobID + i) end
end;