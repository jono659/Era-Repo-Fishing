-----------------------------------
-- Area: Meriphataud_Mountains_S
-- MOB:  Sandworm
-- Note: Title Given if Sandworm does not Doomvoid
-----------------------------------

require("scripts/globals/titles");

-----------------------------------
-- onMobInitialize
-----------------------------------
  
-----------------------------------
-- onMobSpawn Action
-----------------------------------
  
function onMobSpawn(mob,player)
    mob:setMod(MOD_DEF, 400);
    mob:setMod(MOD_MEVA, 300);
    mob:setMod(MOD_MDEF, 50);
	mob:setMod(MOD_DOUBLE_ATTACK, 20);
 		
 	local random = 0;
 	random = math.random(10);
 		
 	if (random <=7) then
    mob:setLocalVar("SerketFight",1);
 	end
 	if (random >=8) then
 	mob:setLocalVar("LambtonWormFight",2);
 	end
end;
 
-----------------------------------
-- onMobWeaponSkill
-----------------------------------

function onMobWeaponSkill(target,mob,skill)
end
  
-----------------------------------
-- onMobDeath
-----------------------------------
  
function onMobDeath(mob, player, isKiller)

end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
local mobids = {
		17109357,
		17138041,
		17166720,
		17178901,
		17121693,
		17150317}
		
local wait = math.random(72000,90000);
local AREA = mobids[math.random(1,#mobids)];

SetServerVariable("[POP]SANDWORM_ZONE", AREA);
SetServerVariable("[POP]SANDWORM", os.time() + wait);
end;