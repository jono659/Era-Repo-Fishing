-----------------------------------
-- Area: Al'Taieu
-- NPC:  Jailer of Love
-- 
-- Patch Guide
--
-- Add the below to the bottom of mob_spell_lists.sql, make sure to update 316 to be 1 higher than the spell list above it, increase by 1 for each element.
-- Making it too high errors out, I tried that. Maybe you can raise the cap somewhere.
--
-- -- Jailer of Love
-- INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 316, 147, 1, 255); -- Fire IV
-- INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 316, 176, 1, 255); -- Firaga III
-- INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 317, 162, 1, 255); -- Stone IV
-- INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 317, 191, 1, 255); -- Stonega III
-- INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 318, 172, 1, 255); -- Water IV
-- INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 318, 201, 1, 255); -- Waterga III
-- INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 319, 157, 1, 255); -- Aero IV
-- INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 319, 186, 1, 255); -- Aeroga III
-- INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 320, 152, 1, 255); -- Blizzard IV
-- INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 320, 181, 1, 255); -- Blizzaga III
-- INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 321, 167, 1, 255); -- Thunder IV
-- INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 321, 196, 1, 255); -- Thundaga III
--
-- Update mob_pools.sql to the below. Note the 316, change that to whatever you changed it to above for the Fire Element.
--
-- INSERT INTO `mob_pools` VALUES (2134,'Jailer_of_Love','Jailer_of_Love',271,0x00007C0400000000000000000000000000000000,4,4,7,220,125,0,1,1,0,2,0,0,0,0,1,0,316,1,0,271);
--
-- Update mob_spawn_points.sql to make the mobname (2nd variable) start with JoL_ (example: JoL_Qn_xzomit) for the following range of IDs: 16912858 -> 16912875
--
-- Update JoL_Qn_hpemde.lua and JoL_Qn_xzomit.lua to replace the existing onMobDeath function with the following:
--
-- function onMobDeath(mob, player, isKiller)
--      local JoL = GetMobByID(16912848);
--      JoL:setLocalVar("hpemdesKilled", JoL:getLocalVar("hpemdesKilled") + 1);
--  end;
--
-- function onMobDeath(mob, player, isKiller)
--      local JoL = GetMobByID(16912848);
--      JoL:setLocalVar("xzomitsKilled", JoL:getLocalVar("xzomitsKilled") + 1);
--  end;
-----------------------------------

require("scripts/globals/missions");
require("scripts/globals/magic");
require("scripts/globals/status");

-----------------------------------

local JoL = 16912848;
local phaseTime = 150;
local phase2Time = math.random(120,180);
local initialRegen = 750;
local finalRegen = 100;
local spellListIndex = 315;

-----------------------------------
-- Array Initialization
-----------------------------------

local xzomit = {};
xzomit[0] = {16912858, 16912859, 16912860};
xzomit[1] = {16912861, 16912862, 16912863}; 
xzomit[2] = {16912864, 16912865, 16912866};

local hpemde = {};
hpemde[0] = {16912867, 16912868, 16912869};
hpemde[1] = {16912870, 16912871, 16912872};
hpemde[2] = {16912873, 16912874, 16912875};

local phuabo = {};
phuabo[0] = {16912849, 16912850, 16912851};
phuabo[1] = {16912852, 16912853, 16912854};
phuabo[2] = {16912855, 16912856, 16912857};

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)

end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)

    mob:setLocalVar("despawnTime", os.time(t) + 7200);
    mob:hideName(false);
    mob:untargetable(false);
    mob:setMobMod(MOBMOD_HP_STANDBACK,-1); -- This fixes the issue with its casting, stole it from Eald'narche's script, did a 2min test, it worked. - Loco
    mob:AnimationSub(6);
    mob:addMod(MOD_UDMGMAGIC, -64);
    mob:addMod(MOD_REGEN, initialRegen);
	mob:addMod(MOD_SILENCERES, 70);
	mob:addMod(MOD_BINDRES, 200);
	mob:addMod(MOD_SLEEPRES, 200);
    mob:addMod(MOD_GRAVITYRES, 200);
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob, killer)
    
    mob:hideName(false);
    mob:untargetable(false);
    mob:AnimationSub(6);
    mob:setLocalVar("changeTime", 0);
    mob:setLocalVar("phase", 0);
    mob:setLocalVar("resistantElem", 0); 
    mob:setLocalVar("xzomitsKilled", 0);
    mob:setLocalVar("hpemdesKilled", 0);
    SetServerVariable("xzomitsKilled", 0);
    SetServerVariable("hpemdesKilled", 0);
    mob:setLocalVar("elementTime", 0);
end;

function onMobFight(mob, target)
    -- Only 9 Qn'xzomit and 9 Qn'hpemde can be summoned. Ru'phuabo (Sharks) are unlimited.
    -- After 9 Qn'xzomit and 9 Qn'hpemde have been summoned, reduce Regen to finalRegen.
    -- 
    -- We keep track of them by the pets updating a local var in their onMobDeath
	
	-- mob:addMP(mob:getMaxMP()); -- Temp fix for MP issue

    local changeTime = mob:getLocalVar("changeTime");
    if mob:getBattleTime() > changeTime then -- Change places! er... phases
        
        local phase = mob:getLocalVar("phase");
        local phaseMod = phase % 3;
        local phaseDiv = math.floor(phase / 3);
        local pet = nil;
        
        for i = 1, 3 do
            if phase < 9 then
                if      (phaseMod == 0) then SpawnMob(xzomit[phaseDiv][i]):updateEnmity(target);
                elseif  (phaseMod == 1) then SpawnMob(hpemde[phaseDiv][i]):updateEnmity(target);
                elseif  (phaseMod == 2) then SpawnMob(phuabo[phaseDiv][i]):updateEnmity(target);
                end;
            else
                SpawnMob(phuabo[phaseMod][i]):updateEnmity(target);
            end;
        end;
        
        if phase > 8 and mob:getLocalVar("xzomitsKilled") == 9 and mob:getLocalVar("hpemdesKilled") == 9 then
            mob:setMod(MOD_REGEN, finalRegen);
        end;
        
        mob:setLocalVar("changeTime", changeTime + phaseTime);
        mob:setLocalVar("phase", phase + 1);
        handleResistantElement(mob);
    end;
     
    if os.time(t) > mob:getLocalVar("despawnTime") then
        DespawnMob(JoL);
        for i = 0, 2 do
            for j = 1, 3 do
                DespawnMob(xzomit[i][j]);
                DespawnMob(hpemde[i][j]);
                DespawnMob(phuabo[i][j]);
            end;
        end;
    end;
	
end;

-----------------------------------
-- handleResistantElement
-----------------------------------

function handleResistantElement(mob)
    local elementTime = mob:getLocalVar("elementTime");
    if mob:getBattleTime() > elementTime then 
        local mods = {MOD_FIRE_ABSORB, MOD_EARTH_ABSORB, MOD_WATER_ABSORB, MOD_WIND_ABSORB, MOD_ICE_ABSORB, MOD_LTNG_ABSORB};
        local currElem = mob:getLocalVar("resistantElem");
        local newElem = math.random(1, 6);
        if currElem > 0 then mob:delMod(mods[currElem], 100) end;
            mob:addMod(mods[newElem], 100);
            mob:setSpellList(spellListIndex + newElem);
            mob:setLocalVar("resistantElem", newElem);
	        mob:addMP(mob:getMaxMP());
	        mob:setLocalVar("elementTime", elementTime + phase2Time);
	    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, killer)

    SetServerVariable("avDespawnTime", mob:getLocalVar("despawnTime"));
    SetServerVariable("xzomitsKilled", mob:getLocalVar("xzomitsKilled"));
    SetServerVariable("hpemdesKilled", mob:getLocalVar("hpemdesKilled"));
    player:addCurrency("cruor", math.random(500,700));
    for i = 0, 2 do
        for j = 1, 3 do
            DespawnMob(xzomit[i][j]);
            DespawnMob(hpemde[i][j]);
            DespawnMob(phuabo[i][j]);
        end
    end
    
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
  
     SpawnMob(16912876); -- Absolute Virtue

end;