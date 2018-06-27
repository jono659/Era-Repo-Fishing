---------------------------------------------------------------------------------------------------
-- func: cp
-- desc: Adds the given amount cp to the player.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "i"
};

function onTrigger(player, cp)
    local state = player:getVar("bjmode");
	if state == 1 then 
		player:setVar("bjmode", 2);
	player:PrintToPlayer("blackjack mode is now: STAY. use @bj to toggle");
	elseif state == 2 then
		player:setVar("bjmode", 1);
	player:PrintToPlayer("blackjack mode is now: HIT. use @bj to toggle");
	else
		player:setVar("bjmode", 1);
		player:PrintToPlayer("blackjack mode is now: HIT. use @bj to toggle");
	end
end