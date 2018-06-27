-----------------------------------
-- Area: Pashhow Marshlands
--  MOB: Marsh Funguar
-----------------------------------

require("scripts/globals/fieldsofvalor");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobFight(mob, target)
    if mob:hasStatusEffect(dsp.effects.REGEN) == false then
					mob:addStatusEffect(dsp.effects.REGEN);
					end
					
					printf("test");
end;
