---------------------------------------------------------------------------------------------------
-- func: gotonpc <npcId>
-- desc: goto NPC in zone by ID
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "i"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!gotomob {npcID}");
end;

function onTrigger(player, npcId)
    local targ;
    if (npcId == nil) then
        targ = player:getCursorTarget();
        if (targ == nil or not targ:isNPC()) then
            error(player, "You must either provide an npcID or target a MOB.");
            return;
        end
    else
        targ = GetNPCByID(npcId);
        if (targ == nil) then
            error(player, "Invalid npcID.");
            return;
        end
    end

	if (player:getZoneID() == targ:getZoneID()) then
        player:setPos( targ:getXPos(), targ:getYPos(), targ:getZPos() );
	else
		player:setPos( targ:getXPos(), targ:getYPos(), targ:getZPos(), targ:getRotPos(), targ:getZoneID() );
	end
end;