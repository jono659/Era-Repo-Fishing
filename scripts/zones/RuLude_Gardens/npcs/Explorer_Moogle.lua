-----------------------------------
-- Area: Ru'Lude Gardens
--   NPC: Explorer Moogle
--
--	 ID: 17772772
--   @pos -61 6 -6 243
-----------------------------------
package.loaded["scripts/zones/RuLude_Gardens/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/RuLude_Gardens/TextIDs");
require("scripts/globals/settings");

--[[	This week Swamfisk, 32 change time on PH also

	add to mob onmobdeath
	local nmweekNum = player:getVar("NMWEEK");
	local nmWeekKillCheck = player:getVar("NMWeekKill");
	
	local thisWeek = ?;
	if (nmWeekKillCheck ~= thisWeek) then
		player:PrintToPlayer(string.format("Congratulations, you completed the NM hunt, please return to the quest NPC for your reward."),0,"NM Hunt");
		player:setVar("NMWeekKill",thisWeek);
		player:setVar("NMWeek",nmweekNum+1);
	else
		player:PrintToPlayer(string.format("I'm sorry, You've already killed this NM this week."),0,"KnowOne");
	end]]

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

	local nmweekCheck = player:getVar("NMWEEK");
	local nmscoreCheck = player:getVar("NM_Score");
	local nmWeekKillCheck = player:getVar("NMWeekKill");

	local thisWeek = 32; -- Change this number each week
	if ((nmweekCheck == nmscoreCheck) and nmWeekKillCheck == thisWeek) then
		player:PrintToPlayer(string.format("Congratulations, You've successfully completed this task."),0,"NM Hunt");
		return;
	end

	player:PrintToPlayer(string.format("Welcome to Era's NM Hunt Event"),0,"NM Hunt");
	player:PrintToPlayer(string.format("You will have to be level 10 to participate this week."),0,"NM Hunt"); -- Change the level required each week
	player:PrintToPlayer(string.format("The hint for this NM is as follows: "),0,"NM Hunt");
	player:PrintToPlayer(string.format("When you want to go wading in the woods"),0,"NM Hunt"); -- Change the hint each week
	--player:PrintToPlayer(string.format("When it is freed, it foretells war or woe."),0,"NM Hunt"); -- Change the hint each week
  

	if ((nmweekCheck == 1) and (nmscoreCheck == 0) and (player:getMainLvl() >= 10)) then
        player:PrintToPlayer(string.format("You have successfully tamed 1 NM of the Week."),0,"NM Hunt");
		player:addGil(60000);
		player:messageSpecial(GIL_OBTAINED,60000);
        player:setVar("NM_Score",1);

	elseif ((nmweekCheck == 2) and (nmscoreCheck == 1) and (player:getMainLvl() >= 10)) then
		if (player:hasItem(15793)) then
			player:PrintToPlayer(string.format("Please drop your current Anniversary Ring to complete this quest."),0,"NM Hunt");
		else
			player:PrintToPlayer(string.format("You have successfully tamed 2 NM's of the Week."),0,"NM Hunt");
			player:addItem(15793); -- Anniversary Ring
			player:messageSpecial(ITEM_OBTAINED,15793);
			player:addGil(80000);
			player:messageSpecial(GIL_OBTAINED,80000);
			player:setVar("NM_Score",2);
		end

	elseif ((nmweekCheck == 3) and (nmscoreCheck == 2) and (player:getMainLvl() >= 10)) then
		if (player:hasItem(18436)) then
			player:PrintToPlayer(string.format("Please drop your current Lotus Katana to complete this quest."),0,"NM Hunt");
		else
			player:PrintToPlayer(string.format("You have successfully tamed 3 NM's of the Week."),0,"NM Hunt");
			player:addItem(18436); -- Lotus Katana
			player:messageSpecial(ITEM_OBTAINED,18436);
			player:addGil(100000);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",3);
		end
	
	elseif ((nmweekCheck == 4) and (nmscoreCheck == 3) and (player:getMainLvl() >= 10)) then
			player:PrintToPlayer(string.format("You have successfully tamed 4 NM's of the Week."),0,"NM Hunt");
			player:addGil(100000);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",4);
	
	elseif ((nmweekCheck == 5) and (nmscoreCheck == 4) and (player:getMainLvl() >= 10)) then
			player:PrintToPlayer(string.format("You have successfully tamed 5 NM's of the Week."),0,"NM Hunt");
			player:addItem(4511); -- Ambrosia
			player:messageSpecial(ITEM_OBTAINED,4511);
			player:addGil(100000);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",5);
            
    elseif ((nmweekCheck == 6) and (nmscoreCheck == 5) and (player:getMainLvl() >= 10)) then
			player:PrintToPlayer(string.format("You have successfully tamed 6 NM's of the Week."),0,"NM Hunt");
			player:addGil(100000);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",6);
			
	elseif ((nmweekCheck == 7) and (nmscoreCheck == 6) and (player:getMainLvl() >= 10)) then
			player:PrintToPlayer(string.format("You have successfully tamed 7 NM's of the Week."),0,"NM Hunt");
			player:addGil(100000);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",7);
            
    elseif ((nmweekCheck == 8) and (nmscoreCheck == 7) and (player:getMainLvl() >= 10)) then
		if (player:hasItem(18842)) then
			player:PrintToPlayer(string.format("Please drop your current Nomad Moogle Rod to complete this quest."),0,"NM Hunt");
		else
			player:PrintToPlayer(string.format("You have successfully tamed 8 NM's of the Week."),0,"NM Hunt");
			player:addItem(18842); -- Nomad Moogle Rod
			player:messageSpecial(ITEM_OBTAINED,18842);
			player:addGil(100000);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",8);
		end
        
    elseif ((nmweekCheck == 9) and (nmscoreCheck == 8) and (player:getMainLvl() >= 10)) then
			player:PrintToPlayer(string.format("You have successfully tamed 9 NM's of the Week."),0,"NM Hunt");
			player:addGil(100000);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",9);
            
    elseif ((nmweekCheck == 10) and (nmscoreCheck == 9) and (player:getMainLvl() >= 10)) then
			player:PrintToPlayer(string.format("You have successfully tamed 10 NM's of the Week."),0,"NM Hunt");
			player:addItem(4513); -- Amrita
			player:messageSpecial(ITEM_OBTAINED,4513);
			player:addGil(100000);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",10);
            
    elseif ((nmweekCheck == 11) and (nmscoreCheck == 10) and (player:getMainLvl() >= 10)) then
			player:PrintToPlayer(string.format("You have successfully tamed 11 NM's of the Week."),0,"NM Hunt");
			player:addGil(100000);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",11);
            
    elseif ((nmweekCheck == 12) and (nmscoreCheck == 11) and (player:getMainLvl() >= 10)) then
		if (player:hasItem(11290)) then
			player:PrintToPlayer(string.format("Please drop your current Tidal Talisman to complete this quest."),0,"NM Hunt");
		else
			player:PrintToPlayer(string.format("You have successfully tamed 12 NM's of the Week."),0,"NM Hunt");
			player:addItem(11290); -- Tidal Talisman
			player:messageSpecial(ITEM_OBTAINED,11290);
			player:addGil(100000);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",12);
        end
        
    elseif ((nmweekCheck == 13) and (nmscoreCheck == 12) and (player:getMainLvl() >= 10)) then
			player:PrintToPlayer(string.format("You have successfully tamed 13 NM's of the Week."),0,"NM Hunt");
			player:addGil(100000);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",13);
			
	elseif ((nmweekCheck == 14) and (nmscoreCheck == 13) and (player:getMainLvl() >= 10)) then
			player:PrintToPlayer(string.format("You have successfully tamed 14 NM's of the Week."),0,"NM Hunt");
			player:addGil(100000);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",14);
    
    elseif ((nmweekCheck == 15) and (nmscoreCheck == 14) and (player:getMainLvl() >= 10)) then
			player:PrintToPlayer(string.format("You have successfully tamed 15 NM's of the Week."),0,"NM Hunt");
			player:addItem(4511); -- Ambrosia
			player:messageSpecial(ITEM_OBTAINED,4511);
			player:addGil(100000);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",15);
            
    elseif ((nmweekCheck == 16) and (nmscoreCheck == 15) and (player:getMainLvl() >= 10)) then
			player:PrintToPlayer(string.format("You have successfully tamed 16 NM's of the Week."),0,"NM Hunt");
			player:addGil(100000);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",16);

	elseif ((nmweekCheck == 17) and (nmscoreCheck == 16) and (player:getMainLvl() >= 10)) then
			player:PrintToPlayer(string.format("You have successfully tamed 17 NM's of the Week."),0,"NM Hunt");
			player:PrintToPlayer(string.format("Enjoy 400k in addition to the 100k for the weekly challenge."),0,"NM Hunt");
			player:addGil(500000);
			player:messageSpecial(GIL_OBTAINED,500000);
			player:setVar("NM_Score",17);
	
	elseif ((nmweekCheck == 18) and (nmscoreCheck == 17) and (player:getMainLvl() >= 10)) then
			player:PrintToPlayer(string.format("You have successfully tamed 18 NM's of the Week."),0,"NM Hunt");
			player:addGil(100000);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",18);
			
	elseif ((nmweekCheck == 19) and (nmscoreCheck == 18) and (player:getMainLvl() >= 10)) then
			player:PrintToPlayer(string.format("You have successfully tamed 19 NM's of the Week."),0,"NM Hunt");
			player:addGil(100000);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",19);
			
	elseif ((nmweekCheck == 20) and (nmscoreCheck == 19) and (player:getMainLvl() >= 10)) then
			player:PrintToPlayer(string.format("You have successfully tamed 20 NM's of the Week."),0,"NM Hunt");
			player:addItem(13734); -- Scorpion Harness +1
			player:messageSpecial(ITEM_OBTAINED,13734);
			player:addGil(100000);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",20);
			
	elseif ((nmweekCheck == 21) and (nmscoreCheck == 20) and (player:getMainLvl() >= 10)) then
			player:PrintToPlayer(string.format("You have successfully tamed 21 NM's of the Week."),0,"NM Hunt");
			player:addGil(100000);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",21);
			
	elseif ((nmweekCheck == 22) and (nmscoreCheck == 21) and (player:getMainLvl() >= 10)) then
			player:PrintToPlayer(string.format("You have successfully tamed 22 NM's of the Week."),0,"NM Hunt");
			player:addGil(100000);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",22);
    
	elseif ((nmweekCheck == 23) and (nmscoreCheck == 22) and (player:getMainLvl() >= 10)) then
			player:PrintToPlayer(string.format("You have successfully tamed 23 NM's of the Week."),0,"NM Hunt");
			player:addGil(100000);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",23);
			
	elseif ((nmweekCheck == 24) and (nmscoreCheck == 23) and (player:getMainLvl() >= 10)) then
			player:PrintToPlayer(string.format("You have successfully tamed 24 NM's of the Week."),0,"NM Hunt");
			player:addGil(100000);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",24);
	elseif ((nmweekCheck == 25) and (nmscoreCheck == 24) and (player:getMainLvl() >= 10)) then
			player:PrintToPlayer(string.format("You have successfully tamed 25 NM's of the Week."),0,"NM Hunt");
			player:PrintToPlayer(string.format("You deserve a bonus."),0,"NM Hunt");
			player:addGil(100000);
			player:addItem(1491,1);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",25);
	elseif ((nmweekCheck == 26) and (nmscoreCheck == 25) and (player:getMainLvl() >= 10)) then
			player:PrintToPlayer(string.format("You have successfully tamed 26 NM's of the Week."),0,"NM Hunt");
			player:addGil(100000);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",26);
	elseif ((nmweekCheck == 27) and (nmscoreCheck == 26) and (player:getMainLvl() >= 10)) then
			player:PrintToPlayer(string.format("You have successfully tamed 27 NM's of the Week."),0,"NM Hunt");
			player:addGil(100000);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",27);
	elseif ((nmweekCheck == 28) and (nmscoreCheck == 27) and (player:getMainLvl() >= 10)) then
			player:PrintToPlayer(string.format("You have successfully tamed 28 NM's of the Week."),0,"NM Hunt");
			player:addGil(100000);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",28);
	elseif ((nmweekCheck == 29) and (nmscoreCheck == 28) and (player:getMainLvl() >= 10)) then
			player:PrintToPlayer(string.format("You have successfully tamed 29 NM's of the Week."),0,"NM Hunt");
			player:addGil(100000);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",29);
	elseif ((nmweekCheck == 30) and (nmscoreCheck == 29) and (player:getMainLvl() >= 10)) then
			player:PrintToPlayer(string.format("You have successfully tamed 30 NM's of the Week."),0,"NM Hunt");
			player:addGil(100000);
			player:addItem(3223,12);
			player:messageSpecial(ITEM_OBTAINED,3223);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",30);
	elseif ((nmweekCheck == 31) and (nmscoreCheck == 30) and (player:getMainLvl() >= 10)) then
			player:PrintToPlayer(string.format("You have successfully tamed 31 NM's of the Week."),0,"NM Hunt");
			player:addGil(100000);
			player:messageSpecial(GIL_OBTAINED,100000);
			player:setVar("NM_Score",31);
	end	
end;