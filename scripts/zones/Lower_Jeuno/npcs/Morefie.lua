-----------------------------------
-- Area: Lower Jeuno
--  NPC: Morefie
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
	
player:showText(npc,MATOAKA_SHOP_DIALOG);
local shopvar = player:getVar("shopvar");

    if(shopvar == 0)then
        player:setVar("shopvar",1);
    end
    if(shopvar == 1)then
        player:setVar("shopvar",2);
stock = {15449,50000, -- Boneworker's Belt
	 15824,50000, -- Bonecrafters ring
         13947,50000, -- Protective Spectacles
         14397,50000, -- Boneworker's Apron
         15447,50000, -- Weaver's Belt
         13946,50000, -- Magnifying Spectacles
         15822,50000, -- Tailors Ring
         14395,50000, -- Weavers Apron
         15444,50000, -- Carpenter's Belt 
         14830,50000, -- Carpenter's Gloves
         15819,50000, -- Carpenter's Ring
         14392,50000, -- Carpenter's Apron
         15451,50000, -- Culinarian's Belt
         13948,50000, -- Chef's Hat
         15826,50000, -- Chef's Ring
         14399,50000} -- Culinarians Apron
showShop(player, STATIC, stock);
    end;
    if(shopvar == 2)then
        player:setVar("shopvar",1);
stock = {15450,50000, -- Alchemists Belt
         15825,50000, -- Alchemists Ring
         14398,50000, -- Alchemists Apron
         17058,50000, -- Caduceus
         15446,50000, -- Goldsmiths Belt
         15821,50000, -- Goldsmiths Ring
         14394,50000, -- Goldsmiths Apron
         13945,50000, -- Shaded Spectacles
         15448,50000, -- Tanners Belt
         14832,50000, -- Tanners Gloves
         15823,50000, -- Tanners Ring 
         14396,50000, -- Tanners Apron
         15445,50000, -- Blacksmiths Belt
         14831,50000, -- Smithys Mitts 
         15820,50000, -- Smiths Ring
        14393,50000} -- Blacksmiths Apron 
    showShop(player, STATIC, stock);
    end;
end; 

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

