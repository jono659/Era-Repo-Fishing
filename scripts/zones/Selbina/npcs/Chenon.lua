-----------------------------------
--  Area: Selbina
--  NPC:  Chenon
--  Type: Fish Ranking NPC
-- @pos -13.472 -8.287 9.497 248
-----------------------------------
package.loaded["scripts/zones/Selbina/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/Selbina/TextIDs");



function onTrade(player,npc,trade)
end;


function onTrigger(player,npc)
player:showText(npc,MATOAKA_SHOP_DIALOG);

stock = {4384,2000, -- Black Sole
4480,2000, -- Tuna
4477,1500, -- Gaivel fish
	 4476,2000, -- Titanictus
         4474,1020, -- Gigant Squid
         4482,1400, -- Nosteau Herring
         4304,7500, -- Grimmonite
         4361,1500, -- Nebimonite
         5135,8000, --Rhinochiemra
         5128,950, -- Cone Cal
         5473,200, -- bastore sweeper
         5448,500, --Kalamar
         4454,1500, -- Emp fish
         5457,800, -- Dil
         5475,2000, -- Gigant Octopus
		 5140,2000, -- Kalkanbaligi
		 4379,1500, -- Cheval Salmon
         4478,3000, -- Three eyed fish
		 4470,2000, -- Ice Fish
		 4291,2500} -- Sandfish
        

showShop(player, STATIC, stock);
end;



function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;



function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

