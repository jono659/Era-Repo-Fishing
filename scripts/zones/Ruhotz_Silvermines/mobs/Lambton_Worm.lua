-----------------------------------
-- Area: Ruhotz Silvermines
-- MOB:  Lambton Worm
-----------------------------------

require("scripts/globals/titles");

local Lambton = 17158203;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
	mob:setMobMod(MOBMOD_DRAW_IN, 1);
	mob:setMod(MOD_DEF, 400);
    mob:setMod(MOD_MEVA, 300);
    mob:setMod(MOD_MDEF, 50);
    mob:setMod(MOD_DOUBLE_ATTACK, 20);
	-- One hour til forced depop
    mob:setLocalVar("LambtonDespawnTime", os.time(t) + 3600);
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob,killer)
	local changeTime = mob:getLocalVar("changeTime")
	local depopTime = mob:getLocalVar("LambtonDespawnTime");
	-- Draw-In type change every 2 minutes.
	if (mob:getBattleTime()- changeTime > 120) then
		mob:setMobMod(MOBMOD_DRAW_IN, 2);
		mob:setLocalVar("changeTime", mob:getBattleTime());
	elseif (mob:getBattleTime()- changeTime > 120) then
		mob:setMobMod(MOBMOD_DRAW_IN, 1);
		mob:setLocalVar("changeTime", mob:getBattleTime());
	end
	if (os.time(t) > depopTime) then
	DespawnMob(Lambton); 
	end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addTitle(LAMBTON_WORM_DESEGMENTER);
	player:addCurrency("cruor", math.random(300,600));
end;