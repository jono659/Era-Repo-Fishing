-----------------------------------
-- Area: Al'Taieu
--  MOB: Qn'xzomit
-- Jailor of Justice Pet version
-----------------------------------
require("scripts/globals/status");
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
end;

function onMobFight(mob, target)
    local changeTime = mob:getLocalVar("changeTime")
    local usemijingagure = false;
    if (mob:getLocalVar("Mijin_Gakure") == 0 and mob:getBattleTime() - changeTime > 10) then
	    mob:setLocalVar("Mijin_Gakure",1);
		mob:useMobAbility(731); -- Mijin_Gakure 
    end;
end;

function onMobEngaged(mob, target)
    
end;

function onMobDeath(mob, player, isKiller)
end;
