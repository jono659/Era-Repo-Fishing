-----------------------------------
-- Area: Balgas_Dais
-- Name: Treasure and Tribulations
-- BCNM50
-----------------------------------
require("scripts/zones/Balgas_Dais/MobIDs");

function onBcnmRegister(player,instance)
end;

function onBcnmEnter(player,instance)
    if instance:getBattlefieldNumber() == 1 then
        local Winning_Box = math.random(BOX_OFFSET, BOX_OFFSET + 2);
        SetServerVariable("Winning_Box1", Winning_Box);
        printf("chest id: %u", Winning_Box);
    elseif instance:getBattlefieldNumber() == 2 then
        local Winning_Box = math.random(BOX_OFFSET + 3, BOX_OFFSET + 5);
        SetServerVariable("Winning_Box2", Winning_Box);
        printf("chest id: %u", Winning_Box);
    elseif instance:getBattlefieldNumber() == 3 then
        local Winning_Box = math.random(BOX_OFFSET + 6, BOX_OFFSET + 8);
        SetServerVariable("Winning_Box3", Winning_Box);
        printf("chest id: %u", Winning_Box);
    end
end;

function onBcnmLeave(player,instance,leavecode)
    if (leavecode == 2) then -- play end CS. Need time and battle id for record keeping + storage
        player:startEvent(32001,1,1,1,instance:getTimeInside(),1,4,0);
    elseif (leavecode == 4) then
        player:startEvent(32002);
    end
end;

function onEventUpdate(player,csid,option)
end;
    
function onEventFinish(player,csid,option)
end;
