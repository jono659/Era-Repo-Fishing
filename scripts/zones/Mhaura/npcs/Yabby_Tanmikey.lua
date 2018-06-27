-----------------------------------
-- Area: Mhaura
--  NPC: Yabby Tanmikey
--  Guild Merchant NPC: Goldsmithing Guild
-- !pos -36.459 -16.000 76.840 249
-----------------------------------
package.loaded["scripts/zones/Mhaura/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Mhaura/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
player:showText(npc,MATOAKA_SHOP_DIALOG);

stock = {640,225, --Copper Ore
		 736,375, --Silver Ore
		 644,500, --Mythril Ore
		 771,250, --Yellow Rock
		 774,250, --Purple Rock
		 770,250, --Blue Rock
		 772,250, --Green Rock
		 773,250, --Translucent rock
		 775,250, --Black Rock
		 776,250, --White Rock
		 769,250, -- Red Rock
		 4484,300, --Shall Shell		 
		 790,25000, -- Garnet
         } -- doesnt work

 
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
