---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
-- func: gotomob <mobId>
-- desc: goto mob in zone by ID
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 4,
    parameters = "i"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!gotomob {mobID}");
end;

function onTrigger(player, mobId)
    local targ;
    if (mobId == nil) then
        targ = player:getCursorTarget();
        if (targ == nil or not targ:isMob()) then
            error(player, "You must either provide an mobID or target a MOB.");
            return;
        end
    else
        targ = GetMobByID(mobId);
        if (targ == nil) then
            error(player, "Invalid mobID.");
            return;
        end
    end
	if ((targ):isSpawned()) then
		if (player:getZoneID() == targ:getZoneID()) then
			player:setPos( targ:getXPos(), targ:getYPos(), targ:getZPos() );
		else
			player:setPos( targ:getXPos(), targ:getYPos(), targ:getZPos(), targ:getRotPos(), targ:getZoneID() );
		end
	else
		error(player, "Mob is not spawned.");
	end
end;