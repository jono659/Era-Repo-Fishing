require("scripts/globals/gobhook");




function onTrade(player,npc,trade)
end; 



function onTrigger(player,npc)


if player:getVar("Rquest") == 1 then
    
    rlixHook(player, npc);
    
end
    
    
end; 



function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;



function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;