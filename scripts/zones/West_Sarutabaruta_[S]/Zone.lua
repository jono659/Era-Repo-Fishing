-----------------------------------
--
-- Zone: West_Sarutabaruta_[S] (95)
--
-----------------------------------
package.loaded["scripts/zones/West_Sarutabaruta_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/zones/West_Sarutabaruta_[S]/TextIDs");
-----------------------------------

function onInitialize(zone)
    SpawnMob(Belladonna);
end;

function onGameHour(zone)
-- ERA Custom timer
    local VanadielHour = VanadielHour();
	local DI = GetServerVariable("[POP]DARK_IXION");
	local AREA = GetServerVariable("[POP]DARK_IXION_ZONE");

    if (VanadielHour % 1 == 0) then
		if (DI <= os.time() and GetMobAction(AREA) == 0 ) then
            SpawnMob(AREA);
		end
    end
end;

function onZoneIn(player,prevZone)
    local cs = -1;
    if (player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0) then
        player:setPos(320.018,-6.684,-45.166,189);
    end
    return cs;
end;

function onRegionEnter(player,region)
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;