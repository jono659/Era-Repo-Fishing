---------------------------------------------------------------------------------------------------
-- func: @getid
-- auth: TeoTwawki
-- desc: Prints the ID of the currently selected target under the cursor
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player, target)
   
    local targ = player:getTarget();
	local fam = targ:getFamily();
        player:PrintToPlayer(string.format("target's family ID is %s",fam));
    
end;