---------------------------------------------------------------------------------------------------
-- func: moghouse
-- desc: Teleports a player to the moghouse.
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
	
	loc = player:getZoneID();
	
	if (loc == 48 or loc == 50 or loc == 80 or loc == 87 or loc == 94 or (loc >= 230 and loc <= 232) or (loc >= 234 and loc <= 236) or (loc >= 238 and loc <= 241) or (loc >= 243 and loc <= 246)) then
		player:setPos(0, 0, 0, 0, 0);
	else
		player:PrintToPlayer(string.format("You must be in a city to use this command."));
		return;
	end
end;
