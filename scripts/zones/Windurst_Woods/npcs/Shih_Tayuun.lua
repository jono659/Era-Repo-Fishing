-----------------------------------
-- Area: Windurst Woods
--  NPC: Shih Tayuun
-- Guild Merchant NPC: Bonecrafting Guild
-- !pos -3.064 -6.25 -131.374 241
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

stock = {893,250, --Giant Femur
		 888,30, --Seashell
		 864,25, --Fish Scales
		 2234,250, --Wailing Shell
		 4484,300, --Shall Shell
		 894,1000, --Beetle Jaw
		 895,1000, --Ram Horn
		 881,1000, --Crab Shell
		 896,600, --Scorpion Shell
		 889,1000, --Beetle Shell
		 2130,100, --Shagreen File
		 880,100, --Bone Chip
		 885,1500, --Boneworker's Belt
		 13947,50000, -- Protective Spectacles
         15824,50000, -- Bonecrafter's Ring
         14397,50000, -- Boneworker's Apron		 
		 0x3c56,50000, -- doesnt work
         0x3dcd,50000, -- doesnt work
         0x383a,50000, -- doesnt work
         0x3679,50000, -- doesnt work
         0x3c58,50000, -- doesnt work
         0x390f,50000, -- doesnt work
         0x3dcf,50000, -- doesnt work
         0x383c,50000, -- doesnt work
         0x3c55,50000, -- doesnt work
         0x39ef,50000, -- doesnt work
         0x3dcc,50000, -- doesnt work
	 0x3839,50000} -- doesnt work

 
showShop(player, STATIC, stock);
end; 
  


function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;
