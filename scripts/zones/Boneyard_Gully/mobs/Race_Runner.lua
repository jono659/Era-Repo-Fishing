-----------------------------------
-- Area: Boneyard_Gully
-- Name: Race Runner
-----------------------------------
require("scripts/globals/pathfind");
require("scripts/globals/titles");
require("scripts/globals/status");
-----------------------------------

local path =
{
    -539, 0, -481,
    -556, 0, -478,
    -581, 0, -475,
    -579, -3, -460,
    -572, 2, -433,
    -545, 1, -440,
    -532, 0, -466
};

function onMobInitialize(mob)
mob:setMod(MOD_UFASTCAST, 80);
mob:setMod(MOD_MOVE, 45)
end;

function onMobSpawn(mob)
    onMobRoam(mob);
end;

function onPath(mob)

	pathfind.patrol(mob, path, PATHFLAG_RUN);
	mob:setMod(MOD_MOVE, 45)
end;



function onMobRoam(mob)

	-- move to start position if not moving
	if(mob:isFollowingPath() == false) then
		mob:pathThrough(pathfind.first(path), PATHFLAG_RUN);
		mob:setMod(MOD_MOVE, 45)
	end
end;

-----------------------------------
-- onMobRoamAction Action
-----------------------------------

function onMobRoamAction(mob)

    pathfind.patrol(mob, path, PATHFLAG_REVERSE);

end;

function onMobRoam(mob)
    -- move to start position if not moving
    if (mob:isFollowingPath() == false) then
        mob:pathThrough(pathfind.first(path));
    end
end;

function onMobEngaged(mob,target)
if (mob:getBattleTime() ~= 0 and mob:getBattleTime() % 5) then
	mob:pathThrough(pathfind.first(path), PATHFLAG_RUN);
end
end;

function onMobFight(mob,target)
mob:setMod(MOD_DMG, 45);

mob:setMod(MOD_UFASTCAST, 50);
mob:addMP(100);

local debuff = math.random(1,10);

local runaway = math.random(1,20);

if (mob:getBattleTime() ~= 0 and mob:getBattleTime() % 90 == 0) then
	if runaway > 10 then
		mob:resetEnmity(target);
		mob:resetEnmity(target);
		mob:resetEnmity(target);
		mob:setLocalVar("running",1);
	end
end
		




	local flee = math.random(1,111);
	
		if mob:getHPP() <= 75 then
		if mob:getHPP() >= 41 then
		local rand = 1;
		mob:setLocalVar("swap",rand);	
		local metronome = math.random(1453,1455);
		local chance = math.random(1,300);
			if (mob:getBattleTime() ~= 0 and mob:getBattleTime() % 90 == 0) then
				
				--printf("whysomuch");
				
					mob:useMobAbility(metronome);
					
					
			
					
			end
			mob:setMod(MOD_UFASTCAST, 55);
		
		
			mob:addHP(50);
		
		else
		
		mob:setMod(MOD_UFASTCAST, 6);
		if (mob:getBattleTime() ~= 0 and mob:getBattleTime() % 50 == 0) then
			if flee >= 55 and flee <= 68 then
			
				if target:hasStatusEffect(EFFECT_BARAERO) or target:hasStatusEffect(dsp.effects.SHELL) or target:hasStatusEffect(dsp.effects.STONESKIN) then
					mob:useMobAbility(260);
				
				mob:castSpell(186);
				end
				end
			end
			
			
			
		end
	
	
end
end;

function onMobDeath(mob, player, isKiller)
end;
