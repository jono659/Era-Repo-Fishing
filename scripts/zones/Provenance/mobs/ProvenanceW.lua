-----------------------------------
-- Area: Al'Taieu
--  HNM: Absolute Virtue
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
	if(mob:getHP() < 75000) then
		if(mob:hasStatusEffect(dsp.effects.SILENCE)) then
			mob:delStatusEffect(dsp.effects.SILENCE);
			mob:useMobAbility(436);
			target:PrintToPlayer("Hahaha.. you think you can win?")
			mob:castSpell(367);
		end
	end
	if(mob:getHP() < 10000) then
		mob:setHP(100000);
		target:PrintToPlayer("You think you can defeat me!?")
	end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;