-- MOB: Custom Knowone
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/settings"); 
require("scripts/globals/monstertpmoves");

function onMobInitialize(mob)
end;

function onMobSpawn(mob)
    mob:setMobMod(MOBMOD_MAGIC_COOL, 40);
    mob:hideHP(true);
    mob:hideName(true);
    mob:updateEnmity(target);
end;

function onMobWeaponSkill(target, mob, skill)
 -- so mob can warp around hitting whoever hits the mob last
	mob:resetEnmity(target);
 -- Eald's (Apoc Nigh) warp ability without the animation(animation doesn't allow other mob skills)
	local battletarget = mob:getTarget();
	local t = battletarget:getPos();
	t.rot = battletarget:getRotPos();
	local angle = math.random() * math.pi
	local pos = NearLocation(t, 1.5, angle);
	mob:teleport(pos, battletarget);
	skill:setMsg(0);
end;

function onMobEngaged(mob,target)
	mob:addMod(MOBMOD_NO_STANDBACK, -1); 
	mob:addMod(MOD_AQUAVEIL_COUNT,20);
	mob:addMod(MOD_REFRESH,300);
	mob:addMod(MOD_MOD_FASTCAST,50);
end;

function onSpellCast(caster,target,spell)
end;

function onMobDisengage(mob)
end;

function onMobDeath(mob, player, isKiller)
end;

function onMobDespawn(mob)
end;
