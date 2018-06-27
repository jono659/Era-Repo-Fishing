---------------------------------------------------------------------------------------------------
-- func: checkvar <varType> <varName>
-- desc: checks player or server variable and returns result value.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)

	if (player:getAnimation() == 44) then
		player:PrintToPlayer(string.format("You cannot do that while crafting. Cheater."));
		return;
	end

    if ((player:getVar("pvpactive")) or (player:getAllegiance() ~= 1)) then 
    player:setAllegiance(1);
    player:setVar("pvpactive", 0);
    if (player:checkNameFlags(0x1000000)) then
    player:setFlag(0x1000000);
    end
    
    if (player:checkNameFlags(0x0010000)) then
    player:setFlag(0x0010000);
    end
    local pZone = player:getZone():getID();
    if pZone == 43 then
    player:warp();
    end

end
       end;