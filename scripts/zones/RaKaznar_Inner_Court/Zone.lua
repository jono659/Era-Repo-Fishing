-----------------------------------
--
-- Zone: Ra’Kanzar Inner Court (276)
--
-----------------------------------
package.loaded["scripts/zones/RaKaznar_Inner_Court/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/missions");
require("scripts/globals/keyitems");
require("scripts/globals/status");
require("scripts/globals/settings");
require("scripts/zones/RaKaznar_Inner_Court/TextIDs");

-----------------------------------
--  onInitialize
-----------------------------------

function onInitialize(zone)
	zone:registerRegion(1,1059,8,260,0,0,0);       -- portal 1
	zone:registerRegion(2,-180,8,260,0,0,0);       -- portal 2
	zone:registerRegion(3,900,8,300,0,0,0);       -- portal 3
	zone:registerRegion(4,-339,8,300,0,0,0);       -- portal 4
	zone:registerRegion(5,339,8,300,0,0,0);       -- portal 5
	zone:registerRegion(6,-900,8,300,0,0,0);       -- portal 6
	zone:registerRegion(7,500,8,-260,0,0,0);       -- portal 7
	zone:registerRegion(8,-740,8,-260,0,0,0);       -- portal 8
	zone:registerRegion(9,1020,8,-260,0,0,0);       -- portal 9
	zone:registerRegion(10,-220,8,-260,0,0,0);       -- portal 10
	zone:registerRegion(11,940,8,-60,0,0,0);       -- portal 11
	zone:registerRegion(12,-300,8,-60,0,0,0);       -- portal 12
	zone:registerRegion(13,352,87,102,353,91,97);       -- door 1
	zone:registerRegion(14,-912,-428,102,-913,-432,96);       -- door 2
	zone:registerRegion(14,296,81,-125,303,77,-126);       -- door 3
	zone:registerRegion(15,-936,-458,-152,-943,-462,-153);       -- door 4
	zone:registerRegion(16,416,77,-245,423,81,-246);       -- door 5
	zone:registerRegion(17,-816,-448,-272,-822,-452,-273);       -- door 6
	zone:registerRegion(18,925,87,-142,926,91,-137);       -- door 7
	zone:registerRegion(19,-285,-438,-142,-286,-442,-136);       -- door 8
	
	SetServerVariable('server_rakaz_time', os.time());
	   
end;

-----------------------------------
-- onZoneIn
-----------------------------------

function onZoneIn(player,prevZone)
    local cs = -1;

    if ((player:getXPos() == 0) and (player:getYPos() == 0) and (player:getZPos() == 0)) then
        player:setPos(-476,-520.5,20,0);
    end

    return cs;
end;

-----------------------------------
-- onRegionEnter
-----------------------------------

function onRegionEnter(player,region)
	regionID =region:GetRegionID();
	printf("regionID: %u",regionID);
	
		switch (region:GetRegionID()): caseof
		 {
            [1] = function (x)				
				player:startEvent(11);			
				end,
			[2] = function (x)
				
                player:startEvent(10);
				 end,
			[3] = function (x)
				
                player:startEvent(13);
				 end,
			[4] = function (x)
				
                player:startEvent(12);
				 end,
			[5] = function (x)
				
                player:startEvent(15);
				 end,
			[6] = function (x)
				
                player:startEvent(14);
				 end,
			[7] = function (x)
				
                player:startEvent(17);
				 end,
			[8] = function (x)
				
                player:startEvent(16);
				 end,
			[9] = function (x)
				
                player:startEvent(19);
				 end,
			[10] = function (x)
				
                player:startEvent(18);
				 end,
			[11] = function (x)
				
                player:startEvent(21);
				 end,
			[12] = function (x)
				if 	(GetMobAction(17907733) == 0) and (GetMobAction(17907714) == 0) and (GetMobAction(17907715) == 0) and (GetMobAction(17907733) == 0) then 
                player:startEvent(20);
				end
				 end,
			[13] = function (x)
				
                player:startEvent(22);
				 end,
			[14] = function (x)
				
                player:startEvent(24);
				 end,
			[15] = function (x)
				
                player:startEvent(23);
				 end,
			[16] = function (x)
				
                player:startEvent(26);
				 end,
			[17] = function (x)
				
                player:startEvent(25);
				 end,
			[18] = function (x)
				
                player:startEvent(28);
				 end,
			[19] = function (x)
				
                player:startEvent(27);
				 end,
			}
end;



function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;



function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;