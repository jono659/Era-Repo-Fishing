-----------------------------------
-- Area: Lower Jeuno
--  NPC: Liki Steligho
-- Standard Info NPC
-----------------------------------

require("scripts/globals/keyitems");
require("scripts/zones/Lower_Jeuno/TextIDs");
-----------------------------------
-- onTrigger Action
-----------------------------------
function onTrigger(player,npc)
	if (player:hasKeyItem(TENSHODO_MEMBERS_CARD)) then 
	player:PrintToPlayer("Welcome Tenshodo Member");
		stock = {16966,500, --Tachi
	16960,900, --Uchigatana
	16982,2200, --Nodachi
	16987,5000, --Okanehira
	16975,5000, --Kanesada
	16988,5000, --Kotetsu
	16973,4000, --Homura
	16836,4000, --Halberd
	16991,6000, --Odenta
	16967,5000, --Mikazuki
	17802,6000, --Kiku-Ichimonji
	16871,6000, --Kamayari
	16974,8000, --Dotanuki
	16964,7000,} --Zanbato
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

