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

function onTrigger(player)
	local targ = player:getTarget();
   local eva = targ:getACC();
  
        player:PrintToPlayer(string.format("your evasion is %s",eva));
    
end;