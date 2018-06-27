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
	mob:addMod(MOD_MEVA, 200);
	mob:addMod(MOD_MDEF, 200);
    mob:addMod(MOD_PIERCERES,200);
	mob:setMod(MOD_REGEN, 10);
end;

function onMobFight(mob, target)
mob:setMod(MOD_PIERCERES,600);
mob:setMod(MOD_IMPACTRES,600);
mob:setMod(MOD_SLASHRES,800);
mob:setMod(MOD_HTHRES,700);



local getspeed = mob:getMod(MOD_MOVE);
local ouch = mob:getHPP();
local speedboost = 140 - ouch;

if speedboost < getspeed then
-- do nothing
else 
mob:setMod(MOD_MOVE, 140);
end


-- If a player ran 17 range it filled the queue with cannonballs, and it just stood still not moving and spamming all 30 cannonballs and auto canceling em cause they were out of range.
-- A.K.A a ranger could go to 20.1 and ranged attack it, be in the range of the wivre but out of range of cannonball and they could auto attack without taking dmg.
--[[ 
if (mob:checkDistance(target) > 17) then
mob:useMobAbility(1818);
mob:resetEnmity(target);
end
]]




if (mob:checkDistance(target) < 13) then

if (not mob:hasStatusEffect(dsp.effects.POISON)) then
		mob:addStatusEffect(dsp.effects.POISON, 4, 3, 900);
	end
    mob:addHP(25);
	if math.random(1,9) == 3 then
	mob:setTP(0);
	end
	--target:PrintToPlayer(string.format("%d", mob:getTP()));
	
	local dyno = math.random(1,1115);
	mob:setMod(MOD_TRIPLE_ATTACK, 65);

	local seed = math.random(1,200);

		if (mob:getBattleTime() ~= 0 and mob:getBattleTime() % 16 == 1) then
			
			if mob:getTP() < 200 then
				local skillroll = math.random(1,8);
				local epicroll = math.random(1,60);
				local dyno = math.random(300,2106); -- old was 2106
				
				if skillroll == 6 then
				--printf("was 6");
					if epicroll > 25 then
						mob:useMobAbility(2106) -- bloodrake   | undead/vampire
					else
						mob:addMod(MOD_MDEF,2);
						mob:useMobAbility(485) -- blood saber
					end
				mob:addMod(MOD_MEVA,3);
				elseif skillroll == 1 then
				--printf("was 1");
					if epicroll > 25 then
						mob:useMobAbility(393) -- sonic boom   | something with alternative damage - spikes/reflect/heavy DoT/rage timer
					else
					mob:addMod(MOD_MDEF,2);
						mob:useMobAbility(807) --  harden shell
					end
				mob:addMod(MOD_MEVA,3);
				elseif skillroll == 2 then
				--printf("was 2");
					if epicroll > 25 then
						mob:useMobAbility(281) -- stomping  | something huge maybe ram or dahlmel or something similar
					else
					mob:addMod(MOD_MDEF,2);
						mob:useMobAbility(1542) -- trample
					end
				mob:addTP(66);
				mob:addMod(MOD_MEVA,3);
				elseif skillroll == 3 then
				--printf("was3");
				if epicroll > 25 then
				mob:useMobAbility(2099) -- batterhorn  | something with a horn and heavy basic attacks, nin tank wil get fucked by paralysis
				else
				mob:addMod(MOD_MDEF,2);
				mob:useMobAbility(748) -- paralysis shower
				end
				mob:addTP(66);
				mob:addMod(MOD_MEVA,3);
				elseif skillroll == 4 then
				--printf("was4");
				if epicroll > 25 then
				mob:useMobAbility(319) -- bad breath | chimera probably
				else
				mob:addMod(MOD_MDEF,2);
				mob:useMobAbility(2025) --  dreadstorm
				end
				--mob:addMod(MOD_MEVA,10);
                
				elseif skillroll == 5 then
				--printf("was5");
				if epicroll > 25 then
				mob:useMobAbility(519) -- cyclotail   |  something with a tail and heavy damage but low(er) HP, likely with rdm/brd/cor/etc needed
				if (target:isBehind(mob, 48) == true) then
				mob:useMobAbility(952) -- Spikeflail	
				
				end
				else
				mob:useMobAbility(485) -- blood saber
				end
				mob:addTP(66);
				elseif skillroll >= 7 then
				--printf("was7");
					if mob:hasStatusEffect(dsp.effects.REGEN) == false then
					mob:useMobAbility(418);  -- something with high hp and spirits within or other HP based moves
					mob:addStatusEffect(dsp.effects.REGEN);
					else
					mob:useMobAbility(519) -- cyclotail 
					end
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

        
--if Wivreward(killer) == true then 
--killer:PrintToPlayer("Bonus Drop");
--local wivrebonus = GetServerVariable("wivrebonus");
--if (wivrebonus == nil)then 
--wivrebonus = 0;
--end
--SetServerVariable("wivrebonus", wivrebonus+1);
--killer:setVar("wivrebonus", wivrebonus);
--end
        
        SetServerVariable("wivrekills", GetServerVariable("wivrekills")+1);


end;