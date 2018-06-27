-----------------------------------
-- Area: AlTaieu
--  MOB: Aern's Wynav
-----------------------------------
package.loaded["scripts/zones/AlTaieu/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/magic");
-----------------------------------

function onMobSpawn(mob)
    mob:addMod(MOD_MOVE, 20);
	mob:setMod(MOD_MATT, 40);
	mob:setMod(MOD_INT, 80);
	mob:addMod(MOD_DEF, 200);
	mob:addMod(MOD_ATT, 250);
	mob:addMod(MOD_REFRESH, 50);
end;

function onMobEngaged(mob,target)
    local DayofWeek = VanadielDayElement();
	
    mob:setSpellList(416 + DayofWeek);
    mob:setLocalVar("Element", DayofWeek+1);
	mob:setMobMod(MOBMOD_HP_STANDBACK, -1);
end;

function onMobFight(mob,target)

    local DayofWeek = VanadielDayElement();
    local Element = mob:getLocalVar("Element");

    if (DayofWeek + 1 ~= Element) then
        mob:setSpellList(416 + DayofWeek);
        mob:setLocalVar("Element", DayofWeek+1);
    end
end;

function onMobDeath(mob, player, isKiller)
end;