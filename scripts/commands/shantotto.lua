---------------------------------------------------------------------------------------------------
-- func: Shantotto v2
-- auth: Loco
-- desc: Sets the players current costume to Shantotto v2.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "s"
};

function onTrigger(player, onoff)

    if (onoff == nil) then
        player:PrintToPlayer("The correct syntax is @shantotto on / @shantotto off");
        return;
    end
    
    if (onoff ~= nil) then
        -- player:PrintToPlayer("onoff: " .. onoff);
        if (onoff == "on") then
            player:costume(3110);
        elseif (onoff == "off") then
            player:costume(0);
        else
            player:PrintToPlayer("You don' goofed.");
        end
    end
 
end