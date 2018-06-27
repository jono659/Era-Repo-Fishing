-----------------------------------
-- Area: Windurst Woods
--  NPC: Kuzah Hpirohpon
-- Guild Merchant NPC: Clothcrafting Guild
-- !pos -80.068 -3.25 -127.686 241
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

stock = { 1295,1500, -- twincoon
         1769,400, -- galateia
         835,1000, -- flax flower
         1294,1500, -- arachne thread
         12739,5000, -- black mitts
         12865,5000, -- black slacks
	     12609,5000, -- black tunic
         13322,15000, -- drone earring
         12993,5000, -- black sandals
         821,2000, -- rainbow thread
         819,300, -- linen thread
         839,400, -- silk thread
         822,500, -- silver thread
         820,900, -- wool thread
         823,1400, -- gold thread
         817,50, -- grass thread
         693,50000, -- doesnt work
         695,50000, -- doesnt work
         696,50000, -- doesnt work
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
	     0x3839,50000, -- doesnt work
	     13113,15000} 

 
showShop(player, STATIC, stock);
end; 



function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

