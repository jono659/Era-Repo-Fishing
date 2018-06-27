---------------------------------------------------------------------------------------------------
-- func: checkvar <varType> <varName>
-- desc: checks player or server variable and returns result value.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "i"
};

function onTrigger(player, value)
local targ =  player:getCursorTarget();
   local eva = targ:getAllegiance();
    if targ == nil then
        targ = player;
    end
    
    


    if (value ~= nil) then
        if targ:getAllegiance() == value then
        player:PrintToPlayer(string.format("That player is already on that team"));
        else
        targ:setAllegiance(value);
        player:PrintToPlayer(string.format("target's allegiance set to %d", value));
        end
    else
        player:PrintToPlayer("error");
    end
    
end