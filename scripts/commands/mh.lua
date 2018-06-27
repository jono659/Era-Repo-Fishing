---------------------------------------------------------------------------------------------------
-- func: moghouse
-- desc: gives player moghouse functions.
---------------------------------------------------------------------------------------------------

require("scripts/globals/settings");

cmdprops =
{
    permission = 0,
    parameters = "s"
};

function error(player, msg)
   
end;

function onTrigger(player,npc)
  
  
  if (player:getAnimation() == 44) then
		player:PrintToPlayer(string.format("You cannot do that while crafting. Cheater."));
		return;
	end
	
	local loc = player:getZoneID();
	if (loc == 245) then -- lower jueno
	    player:sendMenu(1);
	elseif (loc == 246) then -- port jueno
	   player:sendMenu(1);
	elseif (loc == 244) then -- upper jueno
	    player:sendMenu(1);
	elseif (loc == 243) then -- Rulude
	    player:sendMenu(1);
	elseif (loc == 48) then -- alza
	    player:sendMenu(1);
	elseif (loc == 50) then -- whitegate
	    player:sendMenu(1);
	else
	

		player:PrintToPlayer(string.format("You must be in a city to use this command."));
		return;
	end
end;