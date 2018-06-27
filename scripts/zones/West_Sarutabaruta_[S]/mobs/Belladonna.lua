-----------------------------------
-- Area: West Sarutabaruta S
--  MOB: Belladonna
-- !spawnmob 17166441
-- !pos -104 -22 175
-----------------------------------

require("scripts/globals/titles");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
	mob:addMod(MOD_DOUBLE_ATTACK, 25);
	mob:addMod(MOD_STORETP, 10);
    mob:addMod(MOD_REGAIN, 100);
    mob:addStatusEffect(EFFECT_BLOOD_WEAPON);
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob, target)
end;

function onMobFight(mob,target)

   if (not mob:hasStatusEffect(EFFECT_BLOOD_WEAPON)) then 
	mob:addStatusEffect(EFFECT_BLOOD_WEAPON);
    end
    
end;
-----------------------------------
-- onMobDisengage
-----------------------------------

function onMobDisengage(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
	mob:setRespawnTime(math.random(5400,6000));
end;
