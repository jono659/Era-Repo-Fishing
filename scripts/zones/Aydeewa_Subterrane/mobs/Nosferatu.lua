-----------------------------------
-- Area: Aydeewa Subterrane
-- NPC:  Nosferatu
-- !spawnmob 17056157
-- !pos -198.600 8.387 -60.832 68

-----------------------------------
package.loaded["scripts/zones/Aydeewa_Subterrane/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/ability" );
require("scripts/globals/monstertpmoves");

--[[ todo:
	attacks additional effect drain
	high evasion
	high magic evasion
	resist gravity, dispel
	1 time astral flow 3,6 mobs 1 ability
--]]
local mobID = 17056157
local Bats = {17056158, 17056159, 17056160};
local Wolf = {17056161, 17056162, 17056163};
local Murks = {17056164, 17056165, 17056166};

function onMobEngaged(mob,target)
	mob:setMod(MOD_MEVA,20);
	mob:setMod(MOD_EVA,20);
	mob:setMobMod(MOBMOD_ADD_EFFECT,1); -- can't do add effects without this
end;

function onMobSpawn(mob)

end;

function onMobFight(mob,target)
local HPP= ((mob:getHP()/mob:getMaxHP())*100); 
local popTime = mob:getLocalVar("lastPetPop");
local petgroup = math.random(1,3)

	if (os.time() - popTime > (math.random(120,180)) and HPP < 99) then	--(120,180)
		if petgroup == 1 then
			for i = 1, 3 do
				local pet1 = GetMobByID(Bats[i]);
				--local pet1 = (NOSFERATU_BATS);
				pet1:spawn();
				pet1:setTP(3000);
				pet1:updateEnmity(target);
				pet1:setPos(mob:getXPos() + math.random(-2, 2), mob:getYPos(), mob:getZPos() + math.random(-2, 2));
				mob:setLocalVar("lastPetPop", os.time());
			end
		elseif petgroup == 2 then
			for i = 1, 3 do
				local pet1 = GetMobByID(Wolf[i]);
				pet1:spawn();
				pet1:setTP(3000);
				pet1:updateEnmity(target);
				pet1:setPos(mob:getXPos() + math.random(-2, 2), mob:getYPos(), mob:getZPos() + math.random(-2, 2));
				mob:setLocalVar("lastPetPop", os.time());
			end
		elseif petgroup == 3 then
			for i = 1, 3 do
				local pet1 = GetMobByID(Murks[i]);
				pet1:spawn();
				pet1:setTP(3000);
				pet1:updateEnmity(target);
				pet1:setPos(mob:getXPos() + math.random(-2, 2), mob:getYPos(), mob:getZPos() + math.random(-2, 2));
				mob:setLocalVar("lastPetPop", os.time());
			end
		end
	end
	--[[if(HPP < 50 and mob:getLocalVar("2hour") == 0) then
		for i = 1, 3 do
				local pet2 = GetMobByID(Bats[i]);
				local pet3 = GetMobByID(Murks[i]);
				pet2:spawn();
				pet3:spawn();
				pet2:setTP(3000);
				pet3:setTP(3000);
				pet2:updateEnmity(target);
				pet3:updateEnmity(target);
				mob:setLocalVar("2hour",1);
			end
		end]]
end;

function onAdditionalEffect(mob,player)
    --[[local chance = 99;

    if (math.random(0,99) >= chance) then
        return 0,0,0;
    else
        local power = 10;
        local params = {};
        params.bonusmab = 0;
        params.includemab = false;
        power = addBonusesAbility(mob, ELE_DARK, target, power, params);
        power = power * applyResistanceAddEffect(mob,target,ELE_DARK,0);
        power = adjustForTarget(target,power,ELE_DARK);
        power = finalMagicNonSpellAdjustments(mob,target,ELE_DARK,power);
        if (power < 0) then
            power = 0
        end
        return SUBEFFECT_HP_DRAIN, msgBasic.ADD_EFFECT_HP_DRAIN, mob:addHP(power);
    end]]
end

function onMobDespawn(mob)
   for i = 1,9 do DespawnMob(mobID + i) end
end;

function onMobDeath(mob, player, isKiller)
	player:addCurrency("cruor", math.random(400,600));
	for i = 1,9 do DespawnMob(mobID + i) end
end;