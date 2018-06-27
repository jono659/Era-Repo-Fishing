-----------------------------------
-- Area: Lower Jeuno
--  NPC: Venika
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Lower_Jeuno/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Lower_Jeuno/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
if (trade:hasItemQty(540,1) and trade:hasItemQty(538,1))then
	 if (player:getFreeSlotsCount() > 1) then 
			player:tradeComplete(); -- Pole Grip
            player:addItem(17565);
           	player:messageSpecial(ITEM_OBTAINED, 17565);
			player:messageSpecial(ITEM_OBTAINED, 1505);
			player:addItem(1505);
			
		else
		player:PrintToPlayer("You must have at least 2 free slots to turn in this quest.");
		end
		
elseif(trade:hasItemQty(540,1)) then
		 if (player:getFreeSlotsCount() > 1) then 
			player:tradeComplete();
            player:addItem(13916);
           	player:messageSpecial(ITEM_OBTAINED, 13916);
			player:messageSpecial(ITEM_OBTAINED, 1505);
			player:addItem(1505);
		else
		player:PrintToPlayer("You must have at least 2 free slots to turn in this quest.");
		end
elseif(trade:hasItemQty(538,1))then
		if (player:getFreeSlotsCount() > 1) then 
			player:tradeComplete();
            player:addItem(15176);
           	player:messageSpecial(ITEM_OBTAINED, 15176);
			player:messageSpecial(ITEM_OBTAINED, 1505);
			player:addItem(1505);
		else
		player:PrintToPlayer("You must have at least 2 free slots to turn in this quest.");
		end
end
--540
--538
end; 

function onTrigger(player,npc)

-- Loco: dunno if you purposely used the wrong syntax but I fixed it. 
-- The NM you picked Lord Asag is level 94-95 and is a VNM so it doesn't spawn normally, so unless you are gonna edit its spawn conditions, gonna have top pick something else.
-- next time just let the npc still allow people to register the quest at least. also which syntax was wrong?
if player:getVar("asagKiller") ~= 1 then
 player:PrintToPlayer("Seems we have scared Lord Asag off for now...but I have a feeling he will show back up. Keep your eye out");
 end
 player:PrintToPlayer("I also need a magicked skull and bloody robes, not necessarily in that order.  Turn in seperately or together, I've got unique gifts for each way");

	if player:getVar("asagHatred") == 1 then

		if player:getVar("asagKiller") == 1 then
		 if (player:getFreeSlotsCount() > 2) then 
			local egg = math.random(1,5); 
			local eggs = {1494, 1495, 1497, 1505, 1509};
			local Degg = math.random(1,20);
			
			player:PrintToPlayer("*licks blood off of you*...What!? You killed him? Oh..mm delicious. oh god, yes..mm.. take my.. staff..and some eggs I guess...");
			player:PrintToPlayer("You feel cleaner and yet dirty at the same time.");
			player:messageSpecial(ITEM_OBTAINED, eggs[egg]);
			player:addItem(eggs[egg]);
			player:messageSpecial(ITEM_OBTAINED, 1509);
			player:addItem(1509);
			player:setVar("asagKiller", 0);
			player:setVar("asagKilled", 1);
			if Degg == 5 then
				player:addItem(1491);
				player:messageSpecial(ITEM_OBTAINED, 1491);
				player:PrintToPlayer("Bonus!");
			end
		 else
			player:PrintToPlayer("You must have at least 3 free slots to turn in this quest.");
		 return;
		end
	end
		
	else player:setVar("asagHatred", 1); 
	
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

