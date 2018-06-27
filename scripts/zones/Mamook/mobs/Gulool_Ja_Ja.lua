-----------------------------------
-- Area: Mamook
--  MOB: Gulool Ja Ja
-- Custom.. Lau
-----------------------------------

require("scripts/globals/titles");
require("scripts/zones/Mamook/TextIDs");
require("scripts/globals/status");

-----------------------------------
-- Init variables
-----------------------------------
local mobID = 17043875

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    mob:setLocalVar("gakurehpp", math.random(5,10)); -- Uses Mijin Gakure in the last 10%
    mob:setMod(MOD_DEF, 400);
    mob:setMod(MOD_MEVA, 300);
    mob:setMod(MOD_MDEF, 50);
    mob:setMod(MOD_DOUBLE_ATTACK, 20);
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob,target)
    for i = 17043876, 17043879, 1 do
        SpawnMob(i):updateEnmity(target);
	end
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
	local petIDs = {17043876,17043877,17043878,17043879};
    local petStatus = {GetMobAction(petIDs[1]),GetMobAction(petIDs[2]),GetMobAction(petIDs[3]),GetMobAction(petIDs[4])};
   
    local HPP = mob:getHPP();
	local gulool = mob:getID()
	
    if (mob:getLocalVar("usedgakure") == 0) then
        if (HPP <= mob:getLocalVar("gakurehpp")) then
            mob:useMobAbility(731); -- Mijin Gakure
            mob:setLocalVar("usedgakure", 1);
        end
    end
 
    if (mob:getBattleTime() % 15 < 2 and mob:getBattleTime() > 2) then
        if (GetMobAction(gulool+1) == 0) then
            GetMobByID(gulool+1):setSpawn(mob:getXPos()+math.random(1,5), mob:getYPos(), mob:getZPos()+math.random(1,5));
            SpawnMob(gulool+1):updateEnmity(target);
        elseif (GetMobAction(gulool+2) == 0) then
            GetMobByID(gulool+2):setSpawn(mob:getXPos()+math.random(1,5), mob:getYPos(), mob:getZPos()+math.random(1,5));
            SpawnMob(gulool+2):updateEnmity(target);
        elseif (GetMobAction(gulool+3) == 0) then
            GetMobByID(gulool+3):setSpawn(mob:getXPos()+math.random(1,5), mob:getYPos(), mob:getZPos()+math.random(1,5));
            SpawnMob(gulool+3):updateEnmity(target);
        elseif (GetMobAction(gulool+4) == 0) then
            GetMobByID(gulool+4):setSpawn(mob:getXPos()+math.random(1,5), mob:getYPos(), mob:getZPos()+math.random(1,5));
            SpawnMob(gulool+4):updateEnmity(target);
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
-- reswawns adds if dead
-----------------------------------

function onMobWeaponSkill(target, mob, skill)
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
    player:addTitle(SHINING_SCALE_RIFLER);
    for i = 1,4 do DespawnMob(mobID + i) end
	player:addCurrency("cruor", math.random(500,600));
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    for i = 1,4 do DespawnMob(mobID + i) end
end;