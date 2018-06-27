-----------------------------------
-- Area: Aydeewa Subterrane
--  ZNM: Pandemonium_Warden
-----------------------------------
require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/monstertpmoves");
--require("scripts/mixins/abyssea_nm");
--require("scripts/zones/Aydeewa_Subterrane/MobIDs");
local SHANTOTTO = 17907781
-- Pet Arrays, we'll alternate between phases
local petIDs = {};
petIDs[0] = {SHANTOTTO +2, SHANTOTTO +3};
petIDs[1] = {SHANTOTTO +4, SHANTOTTO +5};

-- Phase Arrays     4ArmSam,  Shant, Vampir,  Shant, Gargoy,  Shant,  Piete,  Shant,    Bot,  Shant, Mantis,  Shant,  BirdAn,  Shant, Promotia,  Shant
--                   Demon     Hume  Undead  Mithra  Tauras   Elvan     Eft   Galka    frog Cloaked   Hippo   dancer  wolf     skele             Book
--                        2       3       4      5        6       7       8       9      10      11      12      13       14      15        16      17
local mobHP =       {100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000,  100000, 100000,   100000, 100000};
local mobModelID =  {  2065,   3110,   2189,   3110,   2225,   3110,   2947,   3110,   2393,   3110,   2066,   3110,    2067,   3110,     2329,   3110};
local petModelID =  {  2217,   3113,   1363,   3115,   1360,   3114,   1350,   3117,   2240,   1004,   1365,   2178,    2035,   2100,     1106,   2228};
local skillID =     {     0,   1200,      0,   1200,    118,   1200,    192,   1200,      0,   1200,      0,   1200,       0,   1200,      134,   1200};
local petskillID =  {   169,    354,    768,    355,    240,    352,     98,    353,    196,    227,    140,    151,     132,    227,      255,      0};
local spellListID = {     0,    400,      0,    400,      0,    400,      0,    400,      0,    400,      0,    400,       0,    400,      127,    402};

-- Relic WS
local red_weakness = {137, 105, 216, 10, 185, 121, 43, 89, 26, 200, 73, 170, 57, 153}
-- Magic of the Day
local yellow_weakness = {
    --fire
    [0] = { 146, 147, 176, 204, 591, 321, 455 },
    --earth
    [1] = { 161, 162, 191, 210, 555, 330, 458 },
    --water
    [2] = { 171, 172, 201, 515, 336, 454 },
    --wind
    [3] = { 156, 157, 186, 208, 534, 327, 457 },
    --ice
    [4] = { 151, 152, 181, 206, 531, 324, 456 },
    --ltng
    [5] = { 166, 167, 196, 212, 644, 333, 459 },
    --light
    [6] = { 29, 30, 38, 39, 21, 112, 565, 461 },
    --dark
    [7] = { 247, 245, 231, 260, 557, 348, 460 }
}
-- Mythic WS
local blue_weakness = {11, 45, 138, 44, 122, 46, 187, 90, 218, 106, 27, 28, 171, 74, 29, 188, 12, 154, 217, 186}


function onMobSpawn(mob)
    mob:setMobMod(MOBMOD_HP_STANDBACK,-1);
    mob:setLocalVar("abyssea_magic_weak", getNewYellowWeakness(mob))
    mob:setLocalVar("abyssea_ele_ws_weak", getNewRedWeakness(mob))
    mob:setLocalVar("abyssea_phys_ws_weak", getNewBlueWeakness(mob))
    printf("Magic %i", mob:getLocalVar("abyssea_magic_weak"));
    printf("WS Ele %i", mob:getLocalVar("abyssea_ele_ws_weak"));
    printf("WS Phy %i", mob:getLocalVar("abyssea_phys_ws_weak"));
    mob:setMod(MOD_DEF, 450);
    mob:setMod(MOD_MEVA, 380);
    mob:setMod(MOD_MDEF, 50);
    mob:setMod(MOD_MATT, 150);
    mob:setMod(MOD_ATT, 350);
    mob:setMobMod(MOBMOD_MAGIC_COOL, 40);
    -- Make sure model is reset back to start
    mob:setModelId(3110);
--    mob:setSpellList(1200);
   -- Prevent death and hide HP until final phase
    mob:setUnkillable(true);
    mob:hideHP(true);
--    mob:hideName(true);

    -- Two hours to forced depop
    mob:setLocalVar("PWDespawnTime", os.time() + 7200);
    mob:setLocalVar("phase", 1);
    mob:setLocalVar("astralFlow", 1);
end;

function onMobDisengage(mob)
    -- Make sure model is reset back to start
    mob:setModelId(3110);
    mob:setMobMod(MOBMOD_SKILL_LIST, 316);
  
    -- Prevent death and hide HP until final phase
    mob:setUnkillable(true);
    mob:hideHP(true);

    -- Reset phases (but not despawn timer)
    mob:setLocalVar("phase", 1);
    mob:setLocalVar("astralFlow", 1);

    -- Despawn pets
    for i = 0, 1 do
        for j = 1, 2 do
            if GetMobByID(petIDs[i][j]):isSpawned() then
                DespawnMob(petIDs[i][j]);
            end
        end
    end
end;

function onMobEngaged(mob,target)
    --[[ pop pets
    for i = 1, 2 do
        local pet = GetMobByID(petIDs[1][i]);
        pet:setModelId(3116);
        pet:setMobMod(MOBMOD_SKILL_LIST, 356);
        pet:spawn();
		pet:updateEnmity(target);
    end]]
end;

function onMobFight(mob,target)

    -- Init Vars
    local mobHPP = mob:getHPP();
    local depopTime = mob:getLocalVar("PWDespawnTime");
    local phase = mob:getLocalVar("phase");
    local astral = mob:getLocalVar("astralFlow");
    local pets = {};
    for i = 0, 1 do
        pets[i] = {};
        for j = 1, 2 do
            pets[i][j] = GetMobByID(petIDs[i][j]);
        end
    end
  
    -- Check for phase change
    if (phase < 18 and mob:getLocalVar("Trigger") >= 2) then
        if (phase == 17) then -- Prepare for death
            mob:hideHP(false);
            mob:setUnkillable(false);
        end
       
        -- Change phase
        mob:setTP(0);
        mob:setModelId(mobModelID[phase]);
        mob:setHP(mobHP[phase]);
        mob:setMobMod(MOBMOD_SKILL_LIST,skillID[phase]);
        mob:setSpellList(spellListID[phase]);
        mob:setLocalVar("abyssea_magic_weak", getNewYellowWeakness(mob))
        mob:setLocalVar("abyssea_ele_ws_weak", getNewRedWeakness(mob))
        mob:setLocalVar("abyssea_phys_ws_weak", getNewBlueWeakness(mob))
        mob:setLocalVar("red_trigger", 0);
        mob:setLocalVar("yellow_trigger", 0);
        mob:setLocalVar("blue_trigger", 0);
        mob:setLocalVar("white_trigger", 0);
        mob:setLocalVar("Trigger", 0);
        mob:setLocalVar("crit", 0);
        printf("Magic %i", mob:getLocalVar("abyssea_magic_weak"));
        printf("WS Ele %i", mob:getLocalVar("abyssea_ele_ws_weak"));
        printf("WS Phy %i", mob:getLocalVar("abyssea_phys_ws_weak"));

        -- Handle pets
--[[        for i = 1, 2 do
            local oldPet = pets[phase % 2][i];
            local newPet = pets[(phase - 1) % 2][i];
            newPet:updateEnmity(target);
            newPet:setMobMod(MOBMOD_MAGIC_DELAY,4);
            newPet:setMobMod(MOBMOD_SKILL_LIST,petskillID[phase]);
            handlePet(mob, newPet, oldPet, target, petModelID[phase]);
        end]]
       
        -- Increment phase
        mob:setLocalVar("phase", phase + 1);
    end
end

function onMobDeath(mob, player, isKiller)
    -- Despawn pets
    for i = 0, 1 do
        for j = 1, 4 do
            if GetMobByID(petIDs[i][j]):isSpawned() then
                DespawnMob(petIDs[i][j]);
            end
        end
    end
end;

function onMobDespawn(mob)
    -- Despawn pets
    for i = 0, 1 do
        for j = 1, 2 do
            if GetMobByID(petIDs[i][j]):isSpawned() then
                DespawnMob(petIDs[i][j]);
            end
        end
    end
end;

function handlePet(mob, newPet, oldPet, target, modelId)

    if oldPet:isSpawned() then
        DespawnMob(oldPet:getID());
    end
    newPet:setModelId(modelId);
    newPet:spawn();
    newPet:setPos(mob:getXPos() + math.random(-2, 2), mob:getYPos(), mob:getZPos() + math.random(-2, 2));
    newPet:updateEnmity(target); 
end;
function onMagicHit(caster, mob, spell)
    local Triggers = mob:getLocalVar("Trigger");

    if spell:getID() == mob:getLocalVar("abyssea_magic_weak") then
        if mob:getLocalVar("yellow_trigger") == 0 then
            mob:weaknessTrigger(0);
            mob:addStatusEffect(dsp.effects.MUTE,0,0,30);
--            mob:setLocalVar("yellow_trigger", 1);
            mob:setLocalVar("Trigger", Triggers +1);
        end
    end
end;

function onWeaponskillHit(mob, player, wsid)
    local Triggers = mob:getLocalVar("Trigger");
    printf("WS #  %i", wsid);
        
    if wsid == mob:getLocalVar("abyssea_ele_ws_weak") then
        if mob:getLocalVar("red_trigger") == 0 then
            mob:weaknessTrigger(2);
            mob:addStatusEffect(dsp.effects.TERROR,0,0,30);
            mob:setLocalVar("red_trigger", 1);
            mob:setLocalVar("Trigger", Triggers +1);
        end
    end
    
    if wsid == mob:getLocalVar("abyssea_phys_ws_weak") then
        if mob:getLocalVar("blue_trigger") == 0 then
            mob:weaknessTrigger(1);
            mob:addStatusEffect(dsp.effects.TERROR,0,0,30);
            mob:setLocalVar("blue_trigger", 1);
            mob:setLocalVar("Trigger", Triggers +1);
        end
    end
end

function onCriticalHit(mob)
    local Triggers = mob:getLocalVar("Trigger");
    local critNum = mob:getLocalVar("crit");
    critNum = critNum + 1;
    mob:setLocalVar("crit", critNum);

    if critNum >= 50 and (mob:getLocalVar("white_trigger") == 0) then
        mob:weaknessTrigger(3);
        mob:addStatusEffect(dsp.effects.AMNESIA,0,0,30);
        mob:setLocalVar("white_trigger", 1);
        mob:setLocalVar("Trigger", Triggers +1);
    end
end;

function getNewYellowWeakness(mob)
    local day = VanadielDayElement()
    local weakness = math.random(day-1, day+1)
    if weakness < 0 then weakness = 7 elseif weakness > 7 then weakness = 0 end
    return yellow_weakness[weakness][math.random(#yellow_weakness[weakness])]
end

function getNewRedWeakness(mob)
    return red_weakness[math.random(#red_weakness)]
end

function getNewBlueWeakness(mob)
    return blue_weakness[math.random(#blue_weakness)]
end