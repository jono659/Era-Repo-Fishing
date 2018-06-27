-----------------------------------
-- Area: Bastok Markets (S)
--   NPC: Annabelle
-- Type: Campaign Evaluator

--
-- Auto-Script: Requires Verification (Verified by Brawndo)
-----------------------------------
package.loaded["scripts/zones/Windurst_Waters_[S]/TextIDs"] = nil;
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
--    player:startEvent(10);
	end
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

