-----------------------------------
-- Area: Meriphataud Mountains (119)
--  NM:  Lord Asag
-----------------------------------
require("scripts/globals/status");

function onMobSpawn(mob)
	mob:addMod(MOD_MEVA, 135);
	mob:addMod(MOD_MDEF, 155);
    mob:addMod(MOD_PIERCERES,200);
	mob:addMod(MOD_TRIPPLE_ATTACK,20);
	--mob:setMod(MOD_REGEN, 10);
end;

function onMobFight(mob, target)
mob:setMod(MOD_PIERCERES,650);
mob:setMod(MOD_IMPACTRES,550);
mob:setMod(MOD_SLASHRES,1100);
mob:setMod(MOD_HTHRES,250);
mob:setMod(MOD_MEVA, 190);

	--if (mob:getTP() > 900 and mob:getTP() < 1000) then
		--if math.random(1,9) == 9 then
		--mob:useMobAbility(485);
	--	mob:setTP(0);
	--	end
	

	 if (not mob:hasStatusEffect(dsp.effects.BLOOD_WEAPON))then
		mob:addStatusEffect(dsp.effects.BLOOD_WEAPON);
	end

	if (not mob:hasStatusEffect(dsp.effects.HUNDRED_FISTS) and (math.random(1,500) == 20))then
		mob:addStatusEffect(dsp.effects.HUNDRED_FISTS);
	elseif (not mob:hasStatusEffect(desp.effects.CHAINSPELL) and (math.random(1,1000) == 20))then
		mob:addStatusEffect(dsp.effects.CHAINSPELL);
	end
	
	local changeTime = mob:getLocalVar("changeTime");
	local shield = math.random(1,3);
	

	if (mob:getBattleTime()- changeTime > 30) and (mob:getLocalVar(shield)) then
		--mob:resetEnmity(target);
		mob:setLocalVar("changeTime", mob:getBattleTime());
		if (shield == 1) then
			mob:delStatusEffect(EFFECT_ARROW_SHIELD);
			mob:delStatusEffect(EFFECT_MAGIC_SHIELD);
			mob:addStatusEffect(EFFECT_PHYSICAL_SHIELD,1,0,duration);
		elseif (shield == 2) then
			mob:delStatusEffect(EFFECT_PHYSICAL_SHIELD);
			mob:delStatusEffect(EFFECT_MAGIC_SHIELD);
			mob:addStatusEffect(EFFECT_ARROW_SHIELD,1,0,duration);
		elseif (shield == 3) then
			mob:delStatusEffect(EFFECT_PHYSICAL_SHIELD);
			mob:delStatusEffect(EFFECT_ARROW_SHIELD);
			mob:addStatusEffect(EFFECT_MAGIC_SHIELD,1,0,duration);
		end
	end

end;


-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
	player:PrintToPlayer("You smear some of his blood all over yourself as proof of your victory.");
	player:setVar("asagKiller", 1);
end;

-----------------------------------
-- onMobDespawn
-----------------------------------


function onMobDespawn(mob)
	local wait = (math.random(259200,432000)); -- 3 to 5 days
    SetServerVariable("[POP]Lord_Asag", os.time() + wait);
end;