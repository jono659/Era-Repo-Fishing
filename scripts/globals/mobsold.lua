-----------------------------------
-- Global version of onMobDeath
-----------------------------------
package.loaded["scripts/globals/conquest"] = nil;
-----------------------------------
require("scripts/globals/conquest");
require("scripts/globals/missions");
require("scripts/globals/quests");
require("scripts/globals/status");

-----------------------------------
-- onMobDeathEx
-----------------------------------

function onMobDeathEx(mob, player, isKiller, isWeaponSkillKill)

    -- Things that happen only to the person who landed killing blow
    if (isKiller == true) then
        -- DRK quest - Blade Of Darkness
        local BladeofDarkness = player:getQuestStatus(BASTOK, BLADE_OF_DARKNESS);
        local BladeofDeath = player:getQuestStatus(BASTOK, BLADE_OF_DEATH);
        local ChaosbringerKills = player:getVar("ChaosbringerKills");
        if (BladeofDarkness == QUEST_ACCEPTED or BladeofDeath == QUEST_ACCEPTED) then
            if (player:getEquipID(SLOT_MAIN) == 16607 and isWeaponSkillKill == false) then
                if (ChaosbringerKills < 200) then
                    player:setVar("ChaosbringerKills", ChaosbringerKills + 1);
                end
            end
        end
    end

    -- Things that happen to any player in the party/alliance
    if (player:getCurrentMission(WINDURST) == A_TESTING_TIME) then
        if (player:hasCompletedMission(WINDURST,A_TESTING_TIME) and player:getZoneID() == 118) then
            player:setVar("testingTime_crea_count",player:getVar("testingTime_crea_count") + 1);
        elseif (player:hasCompletedMission(WINDURST,A_TESTING_TIME) == false and player:getZoneID() == 117) then
            player:setVar("testingTime_crea_count",player:getVar("testingTime_crea_count") + 1);
        end
    end
	
	-- HNM Timers		
			local BEHEMOTH = GetServerVariable("[POP]Behemoth");
			local KING_BEHEMOTH = GetServerVariable("[POP]King_Behemoth");
			local TIAMAT = GetServerVariable("[POP]TIAMAT");
			local JORMUNGAND = GetServerVariable("[POP]JORMUNGAND");
			local VRTRA = GetServerVariable("[POP]VRTRA");
			local LORD_ASAG = GetServerVariable("[POP]Lord_Asag");
	if (KING_BEHEMOTH <= os.time() and BEHEMOTH <= os.time() and GetMobAction(17297441) == 0 and GetMobAction(17297440) == 0) then
            SpawnMob(17297441);
	elseif (BEHEMOTH <= os.time() and GetMobAction(17297440) == 0 and GetMobAction(17297441) == 0) then
            SpawnMob(17297440);
	elseif (TIAMAT <= os.time() and GetMobAction(16806227) == 0) then
			SpawnMob(16806227);
	elseif (JORMUNGAND <= os.time() and GetMobAction(16797969) == 0) then
			SpawnMob(16797969);
	elseif (VRTRA <= os.time() and GetMobAction(17555890) == 0) then
			SpawnMob(17555890);
	elseif (LORD_ASAG <= os.time() and GetMobAction(17265130) == 0) then
			SpawnMob(17265130);
	end
end;