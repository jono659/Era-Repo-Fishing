-----------------------------------
-- Area: Northern San d'Oria
--  NPC: Emeige A.M.A.N.
-- Type: Mentor Recruiter
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
 -- player:setMentor(2);
   
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
    if (csid == 739 and option == 0) then
        player:setMentor(1);
    end
end;
