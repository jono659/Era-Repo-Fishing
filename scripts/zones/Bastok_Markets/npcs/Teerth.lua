-----------------------------------
-- Area: Bastok Markets
--  NPC: Teerth
--  Guild Merchant NPC: Goldsmithing Guild
-- !zone
-- !pos -205.190 -7.814 -56.507 235
-----------------------------------
package.loaded["scripts/zones/Bastok_Markets/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Bastok_Markets/TextIDs");
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

