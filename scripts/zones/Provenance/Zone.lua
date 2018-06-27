-----------------------------------
--
-- Zone: Provenance (222)
--
-----------------------------------
package.loaded["scripts/zones/Provenance/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Provenance/TextIDs");
-----------------------------------

function onInitialize(zone)
local grumblix = GetNPCByID(17686619);
        grumblix:setStatus(STATUS_NORMAL);

grumblix:setPos(-647,-19,-488);

end;

function onZoneIn( player, prevZone)

local grumblix = GetNPCByID(17686619);
        grumblix:setStatus(STATUS_NORMAL);

grumblix:setPos(-647,-19,-488);
cs = -1;
if ( player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0) then
player:setPos(-640,-20,-519.999,192);
GetNPCByID(17686619):setPos(-647,-19,-488);
end


player:PrintToPlayer('You can use Goblin Footprints to go to Home Nation and Planar Rift for Homepoint');

return cs;        
end;    
-----------------------------------        
-- onRegionEnter        
-----------------------------------        

function onRegionEnter(player,region)    
end;    


function onGameDay()
GetNPCByID(17686619):setPos(-647,-19,-488);
	local roll1 = math.random (1,4);
	local roll2 = math.random (5,7);
	local price2 = math.random (15400,27200);
	local price1 = math.random (30000,90000);
	local amount1 = math.random (8,12);
	local amount2 = math.random (6,8);
	local extra1 = math.random (1000,2000);
	--local roll3 = math.random (7,12);
	-- Moongates
	SetServerVariable("Sale1",roll1);
	SetServerVariable("Sale2",roll2);
	--SetServerVariable("Sale3",roll3);
	SetServerVariable("Price1",price1);
	SetServerVariable("Price2",price2);
	SetServerVariable("Amount1",amount1);
	SetServerVariable("Amount2",amount2);
	SetServerVariable("Extra1",extra1);
	
end;

-----------------------------------    
-- onEventUpdate    
-----------------------------------    

function onEventUpdate(player,csid,option)    
    --printf("CSID: %u",csid);
    --printf("RESULT: %u",option);
end;    

-----------------------------------    
-- onEventFinish    
-----------------------------------    

function onEventFinish(player,csid,option)    
    --printf("CSID: %u",csid);
    --printf("RESULT: %u",option);
end;    
