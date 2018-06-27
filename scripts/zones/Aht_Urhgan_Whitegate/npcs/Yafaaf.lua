-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: Yafaaf
-- Type: Standard Merchant
-- !pos 76.889 -7 -140.379 50
-----------------------------------
package.loaded["scripts/zones/Aht_Urhgan_Whitegate/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/shop");
require("scripts/zones/Aht_Urhgan_Whitegate/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    player:showText(npc, YAFAAF_SHOP_DIALOG);
-- ERA Custom
    stock = 
    {
        5577,1500,      -- Sutlac
        5592,450,     -- Imperial Coffee
    };

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

