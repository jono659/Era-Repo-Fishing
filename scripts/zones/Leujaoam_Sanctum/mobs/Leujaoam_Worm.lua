-----------------------------------
-- Area: Leujaoam Sanctum (Leujaoam Cleansing)
--  MOB: Leujaoam Worm
-----------------------------------

function onMobSpawn(mob)
	mob:addMod(MOD_DMGPHYS, 50);
	mob:addMod(MOD_DMGMAGIC, 25);
	mob:addMod(MOD_DEF, 100);
	mob:addMod(MOD_MDEF, 15);
end;

function onMobEngaged(mob,target)

end;

function onMobDeath(mob, player, isKiller)
end;

function onMobDespawn(mob)
    local instance = mob:getInstance();
    local progress = (instance:getProgress() +1);
    instance:setProgress(instance:getProgress() + 1);
end;