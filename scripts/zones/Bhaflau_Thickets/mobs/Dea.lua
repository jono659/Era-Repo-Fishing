-----------------------------------
-- Area: Bhaflau Thickets
--  MOB: Dea
-----------------------------------

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
end;

-----------------------------------
-- onMagicHit
-----------------------------------

function onMagicHit(caster, target, spell)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
	player:addCurrency("cruor", math.random(400,600));
end;