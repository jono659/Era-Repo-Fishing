-----------------------------------
-- Area: Bhaflau Thickets
-- NPC:  Wivre
-- Author: Warp
-----------------------------------


require("scripts/globals/status");
require("scripts/globals/gobhook");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
	mob:addMod(MOD_MEVA, 205);
	mob:addMod(MOD_MDEF, 195);
    mob:addMod(MOD_PIERCERES,800);
	mob:setMod(MOD_REGEN, 10);
end;

function onMobFight(mob, target)

local getspeed = mob:getMod(MOD_MOVE);
local ouch = mob:getHPP();
local speedboost = 100 - ouch;

if speedboost < getspeed then
-- do nothing
else 
mob:setMod(MOD_MOVE, 100);
end


if (mob:checkDistance(target) > 17) then
mob:useMobAbility(1818);
mob:resetEnmity(target);
end


if (mob:checkDistance(target) < 13) then

if (not mob:hasStatusEffect(dsp.effects.POISON)) then
		mob:addStatusEffect(dsp.effects.POISON, 4, 3, 900);
	end
    mob:addHP(22);
	mob:setTP(0);
	local dyno = math.random(1,1115);
	mob:setMod(MOD_TRIPLE_ATTACK, 31);

	local seed = math.random(1,200);


		if (mob:getBattleTime() ~= 0 and mob:getBattleTime() % 20 == 0) then
		
			if mob:getTP() < 3000 then
				local skillroll = math.random(1,11);
				local epicroll = math.random(1,50);
				local dyno = math.random(300,2106); -- old was 2106
				
				if skillroll == 6 then
				--printf("was 6");
					if epicroll > 25 then
						mob:useMobAbility(2106) -- bloodrake
					else
						mob:addMod(MOD_MDEF,2);
						mob:useMobAbility(485) -- blood saber
					end
				mob:addMod(MOD_MEVA,3);
				elseif skillroll == 1 then
				--printf("was 1");
					if epicroll > 25 then
						mob:useMobAbility(807) -- harden shell
					else
					mob:addMod(MOD_MDEF,2);
						mob:useMobAbility(393) -- sonic boom
					end
				mob:addMod(MOD_MEVA,3);
				elseif skillroll == 2 then
				--printf("was 2");
					if epicroll > 25 then
						mob:useMobAbility(281) -- stomping
					else
					mob:addMod(MOD_MDEF,2);
						mob:useMobAbility(1542) -- trample
					end
				mob:setTP(66);
				mob:addMod(MOD_MEVA,3);
				elseif skillroll == 3 then
				--printf("was3");
				if epicroll > 25 then
				mob:useMobAbility(2099) -- batterhorn
				else
				mob:addMod(MOD_MDEF,2);
				mob:useMobAbility(748) -- paralysis shower
				end
				mob:setTP(66);
				mob:addMod(MOD_MEVA,3);
				elseif skillroll == 4 then
				--printf("was4");
				if epicroll > 25 then
				mob:useMobAbility(319) -- bad breath
				else
				mob:addMod(MOD_MDEF,2);
				mob:useMobAbility(2025) --  dreadstorm
				end
				--mob:addMod(MOD_MEVA,10);
                
				elseif skillroll == 5 then
				--printf("was5");
				if epicroll > 25 then
				mob:useMobAbility(519) -- cyclotail 
				else
				mob:addMod(MOD_MDEF,2);
				mob:addMod(MOD_MEVA,3);
				end
				mob:setTP(66);
				elseif skillroll >= 7 then
				--printf("was7");
				
				mob:useMobAbility(418);
				end
				
			end
		end
		
--printf("%d", mob:getMainLvl());
--printf("%d", mob:getZoneID());

end
end;
-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)

        
if Wivreward(killer) == true then 
killer:PrintToPlayer("Bonus Drop");
local wivrebonus = GetServerVariable("wivrebonus");
if (wivrebonus == nil)then 
wivrebonus = 0;
end
SetServerVariable("wivrebonus", wivrebonus+1);
killer:setVar("wivrebonus", wivrebonus);
end
        
        SetServerVariable("wivrekills", GetServerVariable("wivrekills")+1);


end;