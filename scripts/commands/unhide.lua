---------------------------------------------------------------------------------------------------
-- func: unhide
-- auth: Loco
-- desc: Takes @hide off a GM character.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "s"
};

function onTrigger(player, target)
    
    local targ = GetPlayerByName(target);
	
		if (targ == nil) then	
			player:PrintToPlayer(string.format("The proper syntax for this command is: @unhide name"));
			return;		
		elseif (targ:getID() == 52427) then
			player:injectActionPacket( 5, 207 );
			player:injectActionPacket( 5, 216 );
			player:injectActionPacket( 5, 270 );
			player:injectActionPacket( 5, 236 );
			player:PrintToPlayer( "OH NO YOU DIDANT *SNAP FINGERS*" );
			return;
		end
    
    -- Load needed text ids for players current zone..
    local TextIDs = "scripts/zones/" .. targ:getZoneName() .. "/TextIDs";
    package.loaded[TextIDs] = nil;
    require(TextIDs);
    
    if (targ:getVar("GMHidden") == 1) then   
        targ:setVar("GMHidden", 0);
        targ:setGMHidden(false);
        player:PrintToPlayer(string.format("[GM]%s is no longer hidden.", target));
    end
end;