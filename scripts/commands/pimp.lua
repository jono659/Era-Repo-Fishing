---------------------------------------------------------------------------------------------------
-- func: Pimp Costume
-- auth: Loco
-- desc: Sets the players current costume to the purple RDM.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "s"
};

function onTrigger(player, onoff)

    if (onoff == nil) then
        player:PrintToPlayer("The correct syntax is @pimp on / @pimp off");
        return;
    end
    
    if (onoff ~= nil) then
        -- player:PrintToPlayer("onoff: " .. onoff);
        if (onoff == "on") then
            player:costume(2277);
        elseif (onoff == "off") then
            player:costume(0);
        else
            player:PrintToPlayer("You don' goofed.");
        end
    end
 
end