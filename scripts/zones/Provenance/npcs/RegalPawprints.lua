-----------------------------------
--  Area: Provenance
--  NPC:  Achieve Master
--  Fail Badge quest (chest)
-----------------------------------
package.loaded["scripts/zones/Provenance/TextIDs"] = nil;
-------------------------------------

require("scripts/zones/Provenance/TextIDs");

-----------------------------------
-- onTrade
-----------------------------------

function onTrade(player,npc,trade)
	
end;

-----------------------------------
-- onTrigger
-----------------------------------

function onTrigger(player,npc)
if player:getVar("MentorFlag") == 1 and player:getMainLvl() == 75 then

--player:PrintToPlayer("buggsss");
local mints =  player:getVar("mentormerits");
local merits = player:getMeritCount();
local rank = player:getRank();
if ((mints > 0) == false) then
--player:PrintToPlayer("buggt");
	player:setVar("mentormerits", 0);
	if player:getRank() > 1 then
	--player:PrintToPlayer("buggtx");
	player:setVar("mentormerits", 1);
	
	if player:getMeritCount() < 30 then
	--player:PrintToPlayer("buggsssxt");
		end
		-- rank 1 reward
		return;
		end
	
else
--player:PrintToPlayer("suggt");
	if (rank - 1) > mints then
	--player:PrintToPlayer("sugft");
		if merits <= (30 - ((rank - 1) - mints)) then
		--player:PrintToPlayer("sugxt");
		player:setVar("mentormerits", (rank - 1));
		player:setMerits(merits + ((rank - 1) - mints));
		player:PrintToPlayer("You have recieved an extra merit for every rank above 1.  Return for more after ranking up, max of 9.", 17);
		-- rank reward
		return;
		else
		player:PrintToPlayer("You do not have enough free merit slots.", 17);
		end
	else
	player:PrintToPlayer("You have reached the maximum amount of free mentor merits.", 17);
	end

end
local grumblix = GetNPCByID(17686619);
        grumblix:setStatus(STATUS_NORMAL);


grumblix:setPos(-647,-19,-488, 0);
local failbadge = player:getVar("FailBadge");
	--if(failbadge == 17) then
	
	--	player:PrintToPlayer("A mysterious chest. It's empty.",17);
	--end
else
player:PrintToPlayer("this feature is for level 75 mentors only.", 17);
end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;