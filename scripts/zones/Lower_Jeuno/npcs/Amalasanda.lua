-----------------------------------
-- Area: Lower Jeuno
--  NPC: Amalasanda
-- Type: Tenshodo Merchant
-- !pos 28.149 2.899 -44.780 245
-----------------------------------
package.loaded["scripts/zones/Lower_Jeuno/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/keyitems");
require("scripts/zones/Lower_Jeuno/TextIDs");
-----------------------------------
-- onTrigger Action
-----------------------------------
function onTrigger(player,npc)
	if (player:hasKeyItem(TENSHODO_MEMBERS_CARD)) then 
	player:showText(npc,AMALASANDA_SHOP_DIALOG);
		stock = {704,36, -- Bamboo Stick
		1134,30, -- Bast Parchment
		626,52, -- Black Pepper
		2702,408, -- Buckwheat Flour
		1555,317, -- Coriander
		1475,244, -- Curry Powder
		1590,700, -- Holy Basil
		5164,310, -- Ground Wasabi
		1415,4085, -- Urushi
		1554,140, -- Turmeric
		915,600, -- Toad Oil
		657,8000, -- Tama-Hagane
		1471,190, -- Sticky Rice
		5237,88, -- Shirataki
		1652,492, -- Rice Vinegar
		617,300, -- Ginger
		623,300, -- Bay Leaves
		1240,2000, -- Koma
		1188,40, -- Sairui-Ran
		1182,40, -- Jusatsu
		1185,40, -- Kaginawa
		1191,40, --Kodoku
		1194,40, -- Shinobi-Tabi
		4958,10000, -- Dokumori: Ichi
		4952,10000, -- Hojo:Ichi
		4955,10000, -- Kurayami: Ichi
		4956,10000,} -- Kurayami: Ni
		showShop(player, STATIC, stock);
	else
	player:PrintToPlayer("Sorry you do not have a Tenshodo Members Card");
	end
end; 

function onTrade(player,npc,trade)
end;


function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

