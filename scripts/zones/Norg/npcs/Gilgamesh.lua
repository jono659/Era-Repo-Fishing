-----------------------------------
-- Area: Norg
--  NPC: Gilgamesh
-- !pos 122.452 -9.009 -12.052 252
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/missions");
require("scripts/zones/Norg/TextIDs");

local StaticEarring = 15962;
local MagneticEarring = 15963;
local HollowEarring = 15964;
local EtherealEarring = 15965;

-----------------------------------

function onTrade(player,npc,trade)

    if (player:getCurrentMission(BASTOK) == THE_PIRATE_S_COVE and player:getVar("MissionStatus") == 2) then
        if (trade:hasItemQty(1160,1) and trade:getItemCount() == 1) then -- Frag Rock
            player:startEvent(99); -- Bastok Mission 6-2
        end
    end

end;

function onTrigger(player,npc)

    local ZilartMission = player:getCurrentMission(ZILART);
	local playerhaveCOPearring=false;
    local earringtakeNbr=player:getVar("COP-earringTakeNbr");
    local currentday = tonumber(os.date("%j")); 
    local lastearringday =player:getVar("COP-lastearringday");

	if (player:hasItem(StaticEarring) or player:hasItem(MagneticEarring) or player:hasItem(HollowEarring) or player:hasItem(EtherealEarring)) then
       playerhaveCOPearring=true;
	end
    
    if (ZilartMission == KAZAMS_CHIEFTAINESS) then
        player:startEvent(7);
    elseif (ZilartMission == THE_TEMPLE_OF_UGGALEPIH) then
        player:startEvent(8);
    elseif (ZilartMission == HEADSTONE_PILGRIMAGE) then
        player:startEvent(9);
    elseif (ZilartMission == RETURN_TO_DELKFUTTS_TOWER) then
        player:startEvent(13);
    elseif (ZilartMission == ROMAEVE) then
        player:startEvent(11);
    elseif (ZilartMission == THE_MITHRA_AND_THE_CRYSTAL) then
        player:startEvent(170);
    elseif (ZilartMission == ARK_ANGELS) then
        player:startEvent(171);
    elseif (ZilartMission == THE_CELESTIAL_NEXUS) then
        player:startEvent(173);
		
	elseif ((player:getQuestStatus(JEUNO,APOCALYPSE_NIGH) == QUEST_ACCEPTED) or (player:getQuestStatus(JEUNO,APOCALYPSE_NIGH) == QUEST_COMPLETED)) and (player:getVar("ApocalypseNigh")> 5) then     
        if (playerhaveCOPearring == false) then 
			if (earringtakeNbr == 0) then
				player:startEvent(0x00E8,0,StaticEarring,MagneticEarring,HollowEarring,EtherealEarring);
			elseif (earringtakeNbr == 1) then -- First time you throw away
				player:startEvent(0x00EA,0,StaticEarring,MagneticEarring,HollowEarring,EtherealEarring);
			elseif (earringtakeNbr > 1 and (currentday - lastearringday) > 26) then -- earring was thrown away more than once
				player:startEvent(0x00EA,0,StaticEarring,MagneticEarring,HollowEarring,EtherealEarring);
			end
		end
		
    elseif (ZilartMission == AWAKENING) then
        player:startEvent(177);
    end

end;

--0x00af  0x0000  0x0002  0x0003  0x0004  7  8  9  0x000a  0x0062  99  0x001d  0x000c
--13  0x0092  0x009e  0x00a4  0x00a9  170  171  0x00ac  173  0x00b0  177  0x00e8  0x00e9
--0x00ea
-- 0x0062  99 mission bastok
-- 0x000c parle de kuzotz ? parle de bijoux aussi
-- 0x000a parle de zitah

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
	local currentday = tonumber(os.date("%j"));
	local earringtakeNbr=player:getVar("COP-earringTakeNbr");
	    
    if (csid == 0x0063) then
        player:tradeComplete();
        player:setVar("MissionStatus",3);
		
	elseif ((csid == 0x00E8 or csid == 0x00EA) and option > 0 and player:getFreeSlotsCount() == 0) then
	    player:messageSpecial(6403,StaticEarring + (option - 1));
		
	elseif ((csid == 0x00E8 or csid == 0x00EA) and (option > 0)) then
		player:addItem(StaticEarring + (option - 1));
		player:messageSpecial(6406,(StaticEarring + (option - 1)));				
		player:setVar("COP-earringTakeNbr",earringtakeNbr+1);
		player:setVar("COP-lastearringday",currentday);
		player:addTitle(BREAKER_OF_THE_CHAINS);
		player:completeQuest(JEUNO,APOCALYPSE_NIGH);
        player:completeMission(COP,DAWN);
		player:completeMission(ZM,AWAKENING); 
		player:addMission(6,94); --THE_LAST_VERSE putting in name causes mission to update incorrectly
		player:addMission(3,31); --THE_LAST_VERSE putting in name causes mission to update incorrectly
    end

end;