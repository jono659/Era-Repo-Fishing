-----------------------------------
-- Area: Windurst Woods
--  NPC: Retto-Marutto
-- Guild Merchant NPC: Bonecrafting Guild
-- !pos -6.142 -6.55 -132.639 241
-----------------------------------
package.loaded["scripts/zones/Windurst_Woods/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Windurst_Woods/TextIDs");



function onTrade(player,npc,trade)
end;



function onTrigger(player,npc)
	
player:showText(npc,MATOAKA_SHOP_DIALOG);

stock = {15008,100000, --Trainee Gloves
893,250, --Giant Femur
		 888,30, --Seashell
		 864,25, --Fish Scales
		 2234,250, --Wailing Shell
		 4484,300, --Shall Shell
		 894,1000, --Beetle Jaw
		 895,1000, --Ram Horn
		 881,1000, --Crab Shell
		 896,600, --Scorpion Shell
		 1841,25000, --Unicorn Horn
		 2130,100, --Shagreen File
		 880,100, --Bone Chip
		 1719,100000,
		 } -- doesnt work

 
showShop(player, STATIC, stock);
end; 
  


function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;
