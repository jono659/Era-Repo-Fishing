-----------------------------------
-- Area: Wajaom Woodlands
-- Mob:  Gotoh Zha the Redolent
-- !spawnmob 16986430
-- !pos -337.000 -31.000 676.000 51
-----------------------------------

function onMobSpawn(mob)
	mob:setLocalVar("benedictionTrigger", math.random(30,50));
	mob:setLocalVar("manafontTrigger", math.random(80,95));
	mob:addMod(MOD_FASTCAST,150);
end;

function onCriticalHit(mob)   
    if (math.random(100) < 20 and mob:AnimationSub() == 0 and mob:getHPP() <= 50) then  -- 20% change to break that pole on crit   
        mob:AnimationSub(1);
    end
end;

function onMobFight(mob, target)

	local HPP = mob:getHPP();
	local whmTrigger = mob:getLocalVar("benedictionTrigger");
	local blmTrigger = mob:getLocalVar("manafontTrigger");
	
	if mob:AnimationSub() == 1 then
		mob:setSpellList(1);
		mob:addMod(MOD_MDEF,1);
		else
		mob:setSpellList(2);
	end
	
	if (mob:getLocalVar("manafont") == 0 and mob:AnimationSub() == 0) then
        if (mob:getHPP() <= blmTrigger) then
            mob:useMobAbility(1011); -- Manafont
            mob:setLocalVar("manafont", 1);
		end
	elseif (mob:getLocalVar("benediction") == 0 and mob:AnimationSub() == 1) then
        if (mob:getHPP() <= whmTrigger) then
            mob:useMobAbility(1486); -- Benediction
            mob:setLocalVar("benediction", 1);
		end
	end
end;

function onMobDeath(mob, player, isKiller)
	player:addCurrency("cruor", math.random(500,600));
end;

function onMobDespawn(mob)
end;