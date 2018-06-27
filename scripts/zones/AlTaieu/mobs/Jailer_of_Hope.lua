-----------------------------------
-- Area: Al'Taieu
--  NM:  Jailer of Hope
-----------------------------------
require("scripts/globals/status");
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_ADD_EFFECT, 1);
end;

function onMobSpawn(mob)
    mob:setMobMod(MOBMOD_MAGIC_COOL, 20); -- This gives around 6 - 15 seconds between casts. Doesn't seem to work anywhere except in this function.
end;

function onMobFight(mob, target)
	if (mob:hasStatusEffect(dsp.effects.SHOCK_SPIKES)) then
		mob:SetMobAbilityEnabled(false);
	local Chainspell = math.random (1,40);
		if (Chainspell == 1) then
			mob:castSpell(196);
		elseif(Chainspell == 2) then
			mob:castSpell(213);
		elseif(Chainspell == 3) then
			mob:castSpell(196);
		elseif (Chainspell == 4 and mob:getHPP() >= 79) then
			mob:castSpell(213);
		elseif(Chainspell == 5 and mob:getHPP() >= 79) then
			mob:castSpell(196);
		end
	else
			mob:SetMobAbilityEnabled(true);
		return 0,0;
		end
	local mightystrikes = math.random (1,133);
	if (mightystrikes == 1) then 
			mob:useMobAbility(688);
	end
end;


function onAdditionalEffect(mob,target,damage)
    -- Guestimating 2 in 3 chance to stun on melee.
    if ((math.random(1,100) >= 66) or (target:hasStatusEffect(dsp.effects.STUN) == true)) then
        return 0,0,0;
    else
        local duration = math.random(4,8);
        target:addStatusEffect(dsp.effects.STUN,5,0,duration);
        return SUBEFFECT_STUN,0,dsp.effects.STUN;
    end
end;

-----------------------------------
-- onSpellPrecast
-----------------------------------

function onSpellPrecast(mob,spell)
	if (spell:getID() == 196 or spell:getID() == 213) then
        spell:setMPCost(1);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob)
	player:addCurrency("cruor", math.random(300,600));
end;