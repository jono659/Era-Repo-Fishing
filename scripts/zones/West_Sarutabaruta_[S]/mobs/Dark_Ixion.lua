-----------------------------------
-- Area: West Sarutabaruta [S]
--  MOB: Dark Ixion
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
end;


-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());
	mob:setMobMod(MOBMOD_RAGE, 5400); -- 90 minute rage timer.
	mob:hideHP(true);
end;

-----------------------------------
-- onCriticalHit
-----------------------------------

-- Still trying to figure out animationsubs that won't conflict with my "Trample" Placebo.

-----------------------------------
-- onAdditionalEffect
-----------------------------------

function onAdditionalEffect(mob, player)
    local chance = 25;
    local resist = applyResistanceAddEffect(mob,player,ELE_THUNDER,dsp.effects.BIND);
    if (math.random(0,99) >= chance or resist <= 0.5) then
        return 0,0,0;
    else
        local duration = 30;
        if (mob:getMainLvl() > player:getMainLvl()) then
            duration = duration + (mob:getMainLvl() - player:getMainLvl())
        end
        duration = utils.clamp(duration,1,45);
        duration = duration * resist;
        if (not player:hasStatusEffect(dsp.effects.BIND)) then
            player:addStatusEffect(dsp.effects.BIND, 1, 0, duration);
        end
        return SUBdsp.effects.BIND, MSGBASIC_ADD_EFFECT_STATUS, dsp.effects.BIND;
    end
end;

-----------------------------------
-- onMobFight 
-----------------------------------

function onMobFight(mob,target)
	
	local changeTime = mob:getLocalVar("changeTime")
	-- Makes him run Rampant, Similar to his "Trample".
	if (mob:AnimationSub() == 0 and mob:getBattleTime()- changeTime > 300) then
		mob:AnimationSub(1);
		mob:setTP(0);
		mob:resetEnmity(target);
		mob:setLocalVar("changeTime", mob:getBattleTime());
	elseif (mob:AnimationSub() == 1 and mob:getBattleTime()- changeTime > 6) then
		mob:AnimationSub(0);
		mob:resetEnmity(target);
	end
end

-----------------------------------
-- onMobWeaponSkill
-----------------------------------

function onMobWeaponSkill(target,mob,skill)
end



function onMobDeath(mob, player, isKiller)
    player:addTitle(IXION_HORNBREAKER);
	player:addCurrency("cruor", math.random(300,400));
end;



function onMobDespawn(mob)

local mobids = {
		17150321,
		17109367,
		17170649,
		17142112,
		17121697, 
		17113468}
		
local wait = math.random(72000,86400);
local AREA = mobids[math.random(1,#mobids)];

SetServerVariable("[POP]DARK_IXION_ZONE", AREA);
SetServerVariable("[POP]DARK_IXION", os.time() + wait);

end;