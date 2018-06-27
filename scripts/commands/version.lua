---------------------------------------------------------------------------------------------------
-- func: version
-- desc: Sends the server version to the player
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    player:SendRevision();
end