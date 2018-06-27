-----------------------------------
-- Area: Caedarva Mire
--  MOB: Mahjlaef the Paintorn
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/monstertpmoves");
require("scripts/globals/magic");
-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
   -- mob:AnimationSub(0);
end;

function onMobFight(mob)

    local randomTime = math.random(120,180);
    local changeTime = mob:getLocalVar("changeTime");
	local removeTime = mob:getLocalVar("removeTime");
	local HPP= ((mob:getHP()/mob:getMaxHP())*100); 
	
	if (os.time() - changeTime > (math.random(180,230)) and HPP < 85 and mob:AnimationSub() == 0) then
        mob:AnimationSub(2);
		mob:useMobAbility(1965);
        mob:setLocalVar("changeTime", os.time());
		mob:setLocalVar("removeTime", os.time());
    elseif (mob:AnimationSub() == 2 and os.time() - removeTime > 60) then
        mob:AnimationSub(0);
	end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
	player:addCurrency("cruor", math.random(400,600));
end;
