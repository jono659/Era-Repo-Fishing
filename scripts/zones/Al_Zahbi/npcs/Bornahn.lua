-----------------------------------
-- Area: Al Zahbi
--  NPC: Bornahn
--  Guild Merchant NPC: Goldsmithing Guild
-- !pos 46.011 0.000 -42.713 48
-----------------------------------
package.loaded["scripts/zones/Al_Zahbi/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Al_Zahbi/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
player:showText(npc,MATOAKA_SHOP_DIALOG);
-- ERA Custom
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

