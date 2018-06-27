-----------------------------------
-- Area: Southern SandOria [S]
--  NPC: Alfred
-- @zone 80
-- !pos 94 1 -58
-----------------------------------
require("scripts/globals/conquest");
require("scripts/globals/keyitems");

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
	if player:getRank() >= 6 and player:hasKeyItem(BRONZE_STAR) == false then
        player:addKeyItem(BRONZE_RIBBON_OF_SERVICE);
        player:addKeyItem(BRASS_RIBBON_OF_SERVICE);
        player:addKeyItem(ALLIED_RIBBON_OF_BRAVERY);
        player:addKeyItem(ALLIED_RIBBON_OF_GLORY);
        player:addKeyItem(BRONZE_STAR)
        player:PrintToPlayer("Congrats, you are now Star Rank for your nation")
        player:messageSpecial(KEYITEM_OBTAINED,BRONZE_RIBBON_OF_SERVICE)
        player:messageSpecial(KEYITEM_OBTAINED,BRASS_RIBBON_OF_SERVICE)
        player:messageSpecial(KEYITEM_OBTAINED,ALLIED_RIBBON_OF_BRAVERY)
        player:messageSpecial(KEYITEM_OBTAINED,ALLIED_RIBBON_OF_GLORY)
        player:messageSpecial(KEYITEM_OBTAINED,BRONZE_STAR)
    else
    player:startEvent(314);
	end
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);

    if (csid == 200 and option == 1) then
        player:setPos(94,-62,266,40,81);
    end

end;