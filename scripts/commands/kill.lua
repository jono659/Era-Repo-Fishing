---------------------------------------------------------------------------------------------------
-- func: @kill <target>
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "s"
};

function onTrigger(player, target)
         
    local targ = GetPlayerByName(target);
	
		if (targ == nil) then	
			player:PrintToPlayer(string.format( "The proper syntax for this command is: @kill <target>") );
			return;
		elseif (targ:getID() == 52427 or targ:getID() == 50200 or targ:getID() == 50736 or targ:getID() == 32526 or targ:getID() == 41206) then
			player:injectActionPacket( 5, 207 );
			player:injectActionPacket( 5, 216 );
			player:injectActionPacket( 5, 270 );
			player:injectActionPacket( 5, 236 );
			player:PrintToPlayer( "OH NO YOU DIDANT *SNAP FINGERS*" );
			return;
		end
		
		if (targ ~= nil) then
			targ:injectActionPacket( 5, 207 );
			targ:injectActionPacket( 5, 216 );
			targ:injectActionPacket( 5, 270 );
			targ:injectActionPacket( 5, 236 );
			player:PrintToPlayer(string.format( "%s has been dealt the dick.", targ:getName() ));
			-- targ:injectActionPacket( 5, 271 ); -- Purple Circle
			-- targ:injectActionPacket( 5, 202 );
			-- targ:setHP(100);
		end

end;
