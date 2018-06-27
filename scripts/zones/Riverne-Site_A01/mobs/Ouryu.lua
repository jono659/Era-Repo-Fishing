-----------------------------------
-- Area: Riverne-Site_A01
--  MOB: Ouryu
-----------------------------------
require("scripts/globals/titles");
require("scripts/globals/status");
-----------------------------------

function onMobSpawn(mob)
    mob:SetMobSkillAttack(0); -- resetting so it doesn't respawn in flight mode.
    mob:AnimationSub(0); -- subanim 0 is only used when it spawns until first flight.
	mob:addMod(MOD_EARTHRES, 100);
    mob:addMod(MOD_SLOWRES, 100);
	mob:addMod(MOD_DEF, 200);
	mob:addMod(MOD_MDEF, 220);
	mob:addMod(MOD_MEVA, 70);
	mob:addMod(MOD_RDEF, 200);
end;

function onMobEngaged(mob,target)
	local elements = 16900312;
    for elements = elements, elements+1 do
        SpawnMob(elements):updateEnmity(target);
    end;
end;

function onMobFight(mob,target)
    local Wormy = 16900315;
    for Wormy = Wormy, Wormy+3 do
        GetMobByID(Wormy):updateEnmity(target);
    end;
    
    if (mob:hasStatusEffect(dsp.effects.INVINCIBLE) == false and mob:actionQueueEmpty() == true) then

        local changeTime = mob:getLocalVar("changeTime");

        local twohourTime = mob:getLocalVar("twohourTime");

        if (twohourTime == 0) then

            twohourTime = math.random(8, 14);

            mob:setLocalVar("twohourTime", twohourTime);

        end

        if (mob:AnimationSub() == 2 and mob:getBattleTime()/15 > twohourTime) then

            mob:useMobAbility(694);

            mob:setLocalVar("twohourTime", math.random((mob:getBattleTime()/15)+12, (mob:getBattleTime()/15)+16));

        elseif (mob:AnimationSub() == 0 and mob:getBattleTime() - changeTime > 60) then
            
            mob:AnimationSub(1);
            mob:addStatusEffectEx(dsp.effects.ALL_MISS, 0, 1, 0, 0);

            mob:SetMobSkillAttack(731);

            --and record the time this phase was started

            mob:setLocalVar("changeTime", mob:getBattleTime());

        -- subanimation 1 is flight, so check if he should land

        elseif (mob:AnimationSub() == 1 and

                mob:getBattleTime() - changeTime > 120) then

            mob:useMobAbility(1302);

            mob:setLocalVar("changeTime", mob:getBattleTime());

        -- subanimation 2 is grounded mode, so check if he should take off

        elseif (mob:AnimationSub() == 2 and

                mob:getBattleTime() - changeTime > 120) then

            mob:AnimationSub(1);
            mob:addStatusEffectEx(dsp.effects.ALL_MISS, 0, 1, 0, 0);

            mob:SetMobSkillAttack(731);

            mob:setLocalVar("changeTime", mob:getBattleTime());

        end
    end
end;

function onMobDeath(mob, player, isKiller)
	DespawnMob(16900312);
	DespawnMob(16900313);
	DespawnMob(16900315);
	DespawnMob(16900316);
	DespawnMob(16900317);
	DespawnMob(16900318);
end;