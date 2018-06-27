-----------------------------------
-- Area: Arrapago Reef
--  MOB: Medusa
-- !pos -458 -20 458
-- TODO: resists, attack/def boosts
-----------------------------------
package.loaded["scripts/zones/Arrapago_Reef/TextIDs"] = nil;
-----------------------------------
mixins = {require("scripts/mixins/job_special")};
require("scripts/zones/Arrapago_Reef/TextIDs");
require("scripts/globals/titles");
require("scripts/globals/status");
 
-----------------------------------
-- Init variables
-----------------------------------
local mobID = 16998862
 
-----------------------------------
-- onMobSpawn Action
-----------------------------------
 
function onMobSpawn(mob)
    mob:setLocalVar("ultHPP", math.random(40,60)); -- Uses 2hr randomly during the fight
    mob:setMod(MOD_DEF, 400);
    mob:setMod(MOD_MEVA, 300);
    mob:setMod(MOD_MDEF, 50);
end;

function onMobEngaged(mob, target)
    local mobID = mob:getID();
    target:showText(mob, MEDUSA_ENGAGE);
    SpawnMob(mobID+1, 180):updateEnmity(target);
    SpawnMob(mobID+2, 180):updateEnmity(target);
    SpawnMob(mobID+3, 180):updateEnmity(target);
    SpawnMob(mobID+4, 180):updateEnmity(target);
end;
 
-----------------------------------
-- onMobFight Action
-----------------------------------
 
function onMobFight(mob, target)
    local petIDs = {16998863,16998864,16998865,16998866};
    local petStatus = {GetMobAction(petIDs[1]),GetMobAction(petIDs[2]),GetMobAction(petIDs[3]),GetMobAction(petIDs[4])};
    
    local HPP = mob:getHPP();
    local ultHPP = mob:getLocalVar("ultHPP");
    local phaseHPP = mob:getLocalVar("phaseHPP");
	local medusa = mob:getID()
   
    -- Check for 2hr
    if HPP <= ultHPP then
        mob:useMobAbility(1931); -- Eagle Eye Shot
        mob:setLocalVar("ultHPP", 0);
    end
	
	if (mob:getBattleTime() % 15 < 2 and mob:getBattleTime() > 2) then
        if (GetMobAction(medusa+1) == 0) then
            GetMobByID(medusa+1):setSpawn(mob:getXPos()+math.random(1,5), mob:getYPos(), mob:getZPos()+math.random(1,5));
            SpawnMob(medusa+1):updateEnmity(target);
        elseif (GetMobAction(medusa+2) == 0) then
            GetMobByID(medusa+2):setSpawn(mob:getXPos()+math.random(1,5), mob:getYPos(), mob:getZPos()+math.random(1,5));
            SpawnMob(medusa+2):updateEnmity(target);
        elseif (GetMobAction(medusa+3) == 0) then
            GetMobByID(medusa+3):setSpawn(mob:getXPos()+math.random(1,5), mob:getYPos(), mob:getZPos()+math.random(1,5));
            SpawnMob(medusa+3):updateEnmity(target);
        elseif (GetMobAction(medusa+4) == 0) then
            GetMobByID(medusa+4):setSpawn(mob:getXPos()+math.random(1,5), mob:getYPos(), mob:getZPos()+math.random(1,5));
            SpawnMob(medusa+4):updateEnmity(target);
        end
    end
	for i = 1, 4 do
	    if petStatus[i] == 16 then
	        GetMobByID(petIDs[i]):updateEnmity(target);
	    end
	end
end;


-----------------------------------
-- onMobWeaponSkill function 
-- respawns adds if dead
-----------------------------------

function onMobWeaponSkill(target, mob, skill)
    for i = 1,4 do
        local mob = GetMobByID(mobID + i);
        if not mob:isSpawned() then
                mob:spawn();
                mob:updateEnmity(target);
        end
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
	player:addCurrency("cruor", math.random(500,600));
end;
 
-----------------------------------
-- onMobDespawn
-----------------------------------
 
function onMobDespawn(mob)
    for i = 1,4 do DespawnMob(mobID + i) end
end;