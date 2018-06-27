-----------------------------------
-- Area: Lower Jeuno
--  NPC: Creepstix
-- Standard Merchant NPC
-----------------------------------
require("scripts/globals/shop");
package.loaded["scripts/zones/Lower_Jeuno/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Lower_Jeuno/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    
player:showText(npc,CREEPSTIX_SHOP_DIALOG);

stock = {0x139f,8160,    -- Scroll of Goblin Gavotte 
     0x127e,7074,    -- Scroll of Protectra II
     0x1282,1700,    -- Scroll of Shellra
	 0x0126D,100000,    -- Scroll of Refresh
	 0x0128F,100000,    -- Scroll of Erase
	 0x012FA,50000,     -- Scroll of Ice Spikes
	 0x01279,100000,    -- Scroll of Teleport: Altep
	 0x0128B,100000,    -- Scroll of Teleport: Vazhl
	 0x0130A,50000,     -- Scroll of Absorb-STR
	 0x01320,50000,     -- Scroll of Fire Spirit Pact
	 0x017A5,50000,     -- Sandstorm schema
	 0x01383,50000,     -- Mage's Ballad II
	 4714,100000}       -- Scroll of Phalanx
	 

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

