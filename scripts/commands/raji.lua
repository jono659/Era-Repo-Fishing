---------------------------------------------------------------------------------------------------
-- func: Raji Costume
-- auth: Loco
-- desc: Sets the players current costume to Raji.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "s"
};

function onTrigger(player, onoff)

    if (onoff == nil) then
        player:PrintToPlayer("The correct syntax is @raji on / @raji off");
        return;
    end
    
    if (onoff ~= nil) then
        -- player:PrintToPlayer("onoff: " .. onoff);
        if (onoff == "on") then
            player:costume(397);
        elseif (onoff == "off") then
            player:costume(0);
        else
            player:PrintToPlayer("You don' goofed.");
        end
    end
 
end