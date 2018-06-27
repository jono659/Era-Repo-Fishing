-----------------------------------
-- Area: East Ronfaure
--  NM:  Swamfisk
-----------------------------------

function onMobDeath(mob, player, isKiller)
	local nmweekNum = player:getVar("NMWEEK");
	local nmWeekKillCheck = player:getVar("NMWeekKill");
	local thisWeek = 32;
	if (nmWeekKillCheck ~= thisWeek) then
		player:PrintToPlayer(string.format("Congratulations, you completed the NM hunt, please return to the quest NPC for your reward."),0,"NM Hunt");
		player:setVar("NMWeekKill",thisWeek);
		player:setVar("NMWeek",nmweekNum+1);
	else
		player:PrintToPlayer(string.format("I'm sorry, You've already killed this NM this week."),0,"NM Hunt");
	end
end;

function onMobDespawn(mob)
end;
