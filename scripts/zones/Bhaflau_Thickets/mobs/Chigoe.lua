-----------------------------------
-- Area:
--  MOB: Chigoe
-----------------------------------

--require("scripts/globals/titles");
require("scripts/globals/status");
mixins = { require("scripts/mixins/families/chigoe") }
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_ADD_EFFECT,1);
end;

function onMobEngaged(mob, target)
end;

function onMobDisengage(mob)
end;

-----------------------------------
-- onCriticalHit
-----------------------------------

function onCriticalHit(mob)
	mob:setHP(0);
    mob:setMobMod(MOBMOD_EXP_BONUS, -100);
end;

-----------------------------------
-- onWeaponskillHit
-----------------------------------

function onWeaponskillHit(mob)
end;

-----------------------------------
-- onAdditionalEffect
-----------------------------------

function onAdditionalEffect(mob, player)
    local chance = 50;
    local resist = applyResistanceAddEffect(mob,player,ELE_FIRE,dsp.effects.DISEASE);
    if (math.random(0,99) >= chance or resist <= 0.5) then
        return 0,0,0;
    else
        local duration = 30;
        if (mob:getMainLvl() > player:getMainLvl()) then
            duration = duration + (mob:getMainLvl() - player:getMainLvl())
        end
        duration = utils.clamp(duration,1,45);
        duration = duration * resist;
        if (not player:hasStatusEffect(dsp.effects.DISEASE)) then
            player:addStatusEffect(dsp.effects.DISEASE, 1, 0, duration);
        end
        return SUBdsp.effects.DISEASE, MSGBASIC_ADD_EFFECT_STATUS, dsp.effects.DISEASE;
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
end;
