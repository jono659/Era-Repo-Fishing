-----------------------------------
-- Area: Al'Taieu
--  MOB: Qn'xzomit
-- Jailor of Justice Pet version
-----------------------------------

require("scripts/globals/status");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
   -- mob:setMobMod(MOBMOD_MAIN_2HOUR, 1); -- Doesn't Work currently....
end;

function onMobFight(mob,target)

	local MOB = mob:getID();
	
	local changeTime = mob:getLocalVar("changeTime")
	if MOB == 16912840 or MOB == 16912841 or MOB == 16912842 or MOB == 16912843 or MOB == 16912844 or MOB == 16912845 then
		if (mob:getLocalVar("Mijin_Gakure") == 0 and mob:getBattleTime()- changeTime > 15) then
			mob:setLocalVar("Mijin_Gakure",1);
			mob:useMobAbility(731); -- Mijin_Gakure 
			mob:setLocalVar("changeTime", mob:getBattleTime());
		elseif (mob:getLocalVar("Mijin_Gakure") == 1 and mob:getBattleTime()- changeTime > 15) then
			mob:setLocalVar("Mijin_Gakure",0);
			mob:setLocalVar("changeTime", mob:getBattleTime());
			mob:useMobAbility(731); -- Mijin_Gakure 
		end
	end
end

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob, target)
    
end;


-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
end;
