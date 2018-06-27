---------------------------------------------------
-- Area: Inner Ra'kaznar Court
-- Mob: Whitenoise Bats
-- custom THF NM
-- Pos: !pos 811 90 68 276
-- groupid 5443, groupid, 14205, famid 394
-- MobID: !spawnmob 17907757
---------------------------------------------------

require("scripts/globals/settings"); 
require("scripts/globals/status"); -- needed so we can access effects and mods by name instead of number
require("scripts/globals/monstertpmoves");
require("scripts/globals/magic"); -- needed so we can access the resist function

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
    mob:setMobMod(MOBMOD_RAGE, 3600); -- 1 hour 3600
	mob:setMobMod(MOBMOD_ADD_EFFECT,1); -- can't do add effects without this
	mob:setMobMod(MOBMOD_HP_STANDBACK,-1); -- no standback
end

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    SetDropRate(7001,18976,50); --tfh
	SetDropRate(7001,18983,50); --nin
	SetDropRate(7001,18981,50); --rng
	SetDropRate(7001,18988,50); --pup
	SetDropRate(7001,18987,50); --cor
	SetDropRate(7001,18985,50); --smn
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob,target)
    local hpp = mob:getHPP();
	local shield = math.random(1,5)
    local battletarget = mob:getTarget();
	local t = battletarget:getPos();
	local angle = math.random() * math.pi
	local pos = NearLocation(t, 1.5, angle);
	t.rot = battletarget:getRotPos();
	
	if (hpp < 80 and mob:getLocalVar("Breath") == 0) then
       	mob:setLocalVar("Breath", 1);
		mob:resetEnmity(target);
		mob:teleport(pos, battletarget);
		mob:useMobAbility(349); -- Bad Breath
	elseif (hpp < 55 and mob:getLocalVar("Breath") == 1) then
       	mob:setLocalVar("Breath", 2);
		mob:resetEnmity(target);
		mob:teleport(pos, battletarget);
		mob:useMobAbility(800); -- heat breath
        mob:resetEnmity(target);
	elseif (hpp < 30 and mob:getLocalVar("Breath") == 2) then
       	mob:setLocalVar("Breath", 3);
		mob:resetEnmity(target);
		mob:teleport(pos, battletarget);
		mob:useMobAbility(557); -- Level 5 Petrify
        mob:resetEnmity(target);
	elseif (hpp < 10 and mob:getLocalVar("Breath") == 3) then
       	mob:setLocalVar("Breath", 4);
		mob:resetEnmity(target);
		mob:teleport(pos, battletarget);
		mob:useMobAbility(2028); -- Fulmination
        mob:resetEnmity(target);
	elseif (hpp == 100) then
	    mob:setLocalVar("Breath", 0);
	end

	local changeTime = mob:getLocalVar("changeTime")
	

	if (mob:getBattleTime()- changeTime > 30) and (mob:getLocalVar(shield)) then
		mob:setLocalVar("changeTime", mob:getBattleTime());
		    if (shield == 1) then
		mob:delStatusEffect(dsp.effects.ARROW_SHIELD);
		mob:delStatusEffect(dsp.effects.MAGIC_SHIELD);
        mob:addStatusEffect(dsp.effects.PHYSICAL_SHIELD,1,0,duration);
    elseif (shield == 2) then
		mob:delStatusEffect(dsp.effects.PHYSICAL_SHIELD);
		mob:delStatusEffect(dsp.effects.MAGIC_SHIELD);
        mob:addStatusEffect(dsp.effects.ARROW_SHIELD,1,0,duration);
    elseif (shield == 3) then
		mob:delStatusEffect(dsp.effects.PHYSICAL_SHIELD);
		mob:delStatusEffect(dsp.effects.ARROW_SHIELD);
        mob:addStatusEffect(dsp.effects.MAGIC_SHIELD,1,0,duration);
	elseif (shield == 4) then
		mob:delStatusEffect(dsp.effects.PHYSICAL_SHIELD);
        mob:addStatusEffect(dsp.effects.MAGIC_SHIELD,1,0,duration);
		mob:addStatusEffect(dsp.effects.ARROW_SHIELD,1,0,duration);
	elseif (shield == 5) then
		mob:delStatusEffect(dsp.effects.MAGIC_SHIELD);
        mob:addStatusEffect(dsp.effects.PHYSICAL_SHIELD,1,0,duration);
		mob:addStatusEffect(dsp.effects.ARROW_SHIELD,1,0,duration);
	end
	end
end;



----------------------------------------------
-- onMobWeaponSkill 
----------------------------------------------

function onMobWeaponSkill(target, mob, skill)

end;


-----------------------------------
-- onAdditionalEffect
-----------------------------------

function onAdditionalEffect(mob,player)
local chance = 10;
local resistSTUN = applyResistanceAddEffect(mob,player,ELE_LIGHTNING,dsp.effects.STUN);
local duration = 5 * resistSTUN;

	if (math.random(0,99) >= chance or resistSTUN <= 0.5) then
		return 0,0,0;
	end
	if (player:hasStatusEffect(dsp.effects.STUN) == false) then
		player:addStatusEffect(dsp.effects.STUN, 1, 0, duration);
	end
	return SUBdsp.effects.STUN, MSGBASIC_ADD_dsp.effects.STATUS, dsp.effects.STUN;
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
end;
