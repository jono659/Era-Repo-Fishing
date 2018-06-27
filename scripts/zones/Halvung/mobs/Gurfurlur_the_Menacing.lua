-----------------------------------
-- Area: Halvung
--  MOB: Gurfurlur the Menacing
-- Custom.. Lau
-----------------------------------

require("scripts/globals/titles");
require("scripts/zones/Halvung/TextIDs");
require("scripts/globals/status");

-----------------------------------
-- Init variables
-----------------------------------
local mobID = 17031592

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    mob:setLocalVar("hundredhpp", math.random(40,60)); -- Uses Hundredfists randomly during the fight
    mob:setMod(MOD_DEF, 400);
    mob:setMod(MOD_MEVA, 300);
    mob:setMod(MOD_MDEF, 50);
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob,target)
	for i = 17031593, 17031596, 1 do
        SpawnMob(i):updateEnmity(target);
	end
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob,target)
   -- Summons a guard every 15 seconds.
   -- TODO: Summon animations
    local petIDs = {17031593,17031594,17031595,17031596};
    local petStatus = {GetMobAction(petIDs[1]),GetMobAction(petIDs[2]),GetMobAction(petIDs[3]),GetMobAction(petIDs[4])};
    local HPP = mob:getHPP();
    if (mob:getLocalVar("usedhundred") == 0) then
        if (HPP <= mob:getLocalVar("hundredhpp")) then
            mob:useMobAbility(690); -- Hundredfists
            mob:setLocalVar("usedhundred", 1);
        end
    end
    local gurfurlur = mob:getID()
    if (mob:getBattleTime() % 15 < 2 and mob:getBattleTime() > 2) then
        if (GetMobAction(gurfurlur+1) == 0) then
            GetMobByID(gurfurlur+1):setSpawn(mob:getXPos()+math.random(1,5), mob:getYPos(), mob:getZPos()+math.random(1,5));
            SpawnMob(gurfurlur+1, 300):updateEnmity(target);
        elseif (GetMobAction(gurfurlur+2) == 0) then
            GetMobByID(gurfurlur+2):setSpawn(mob:getXPos()+math.random(1,5), mob:getYPos(), mob:getZPos()+math.random(1,5));
            SpawnMob(gurfurlur+2, 300):updateEnmity(target);
        elseif (GetMobAction(gurfurlur+3) == 0) then
            GetMobByID(gurfurlur+3):setSpawn(mob:getXPos()+math.random(1,5), mob:getYPos(), mob:getZPos()+math.random(1,5));
            SpawnMob(gurfurlur+3, 300):updateEnmity(target);
        elseif (GetMobAction(gurfurlur+4) == 0) then
            GetMobByID(gurfurlur+4):setSpawn(mob:getXPos()+math.random(1,5), mob:getYPos(), mob:getZPos()+math.random(1,5));
            SpawnMob(gurfurlur+4, 300):updateEnmity(target);
        end;
    end;
	for i = 1, 4 do
	    if petStatus[i] == 16 then
	        GetMobByID(petIDs[i]):updateEnmity(target);
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
    player:addTitle(TROLL_SUBJUGATOR);
	for i = 1,4 do DespawnMob(mobID + i) end
	player:addCurrency("cruor", math.random(500,600));
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    for i = 1,4 do DespawnMob(mobID + i) end
end;