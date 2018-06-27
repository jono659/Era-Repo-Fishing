-----------------------------------
--	Area: Ru'Lude Gardens
--	NPC:  Achieve Master
--	Custom Fail Badge quest
-----------------------------------
package.loaded["scripts/zones/RuLude_Gardens/TextIDs"] = nil;
-------------------------------------
--require("scripts/globals/settings");
require("scripts/zones/RuLude_Gardens/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------



-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	if(player:getVar("FailBadge") == 0) then
		player:PrintToPlayer("A new challenger arises!");
		player:PrintToPlayer("There are several magical chests hidden across Vana'diel.");
		player:PrintToPlayer("The first chest is somewhere in Western Altepa Desert."); 
		player:PrintToPlayer("Take the 'Faded Crystal' to the chest there to reveal the next step.");
		player:PrintToPlayer("At the end of your journey you will face a tremendous challenge.");
		player:PrintToPlayer("If you succeed, you will win 1 billion gil!");
		player:setVar("FailBadge",5);
		player:addItem(613);
		player:messageSpecial(ITEM_OBTAINED,613);
	elseif(player:getVar("FailBadge") == 5) then
		player:PrintToPlayer("The next chest is in Western Altepa Desert.",17);
		player:PrintToPlayer("Place the 'Faded Crystal' inside of it.",17);
	elseif(player:getVar("FailBadge") == 7) then
		player:PrintToPlayer("The next chest is in Uleguerand Range.",17);
		player:PrintToPlayer("Place the 'Terra Crystal' inside of it.",17);
	elseif(player:getVar("FailBadge") == 9) then
		player:PrintToPlayer("The next chest is in The Sanctuary of Zi'tah.",17);
		player:PrintToPlayer("Place the 'Glacier Crystal' inside of it.",17);
	elseif(player:getVar("FailBadge") == 11) then
		player:PrintToPlayer("The next chest is in Ifrit's Cauldron.",17);
		player:PrintToPlayer("Place the 'Plasma Crystal' inside of it.",17);
	elseif(player:getVar("FailBadge") == 13) then
		player:PrintToPlayer("The next chest is in Castle Zvahl Keep.",17);
		player:PrintToPlayer("Place the 'Inferno Crystal' inside of it.",17);
	elseif(player:getVar("FailBadge") == 15) then
		player:PrintToPlayer("You've done it! The challenge isn't over yet though.",17);
		player:PrintToPlayer("Take the Twlight Crystal to a final chest in Provenance to see the true challenge.",17);
		player:PrintToPlayer("Return to me once you have faced your final trial, win or lose.",17);
		player:setVar("FailBadge",16);
	elseif(player:getVar("FailBadge") == 16) then
		player:PrintToPlayer("Take the Twilight Crystal to the chest in Provenance.",17);
		player:PrintToPlayer("There you will find your final challenge.",17);
	elseif(player:getVar("FailBadge") == 17) then
		player:PrintToPlayer("So you have faced the final challenge?",17);
		player:PrintToPlayer("Place this crystal in the chest in Provenance for your reward.",17);
		player:PrintToPlayer("If you were successful, 1,000,000,000 gil will appear in the chest!",17);
		player:setVar("FailBadge",18);
		player:addItem(4244);
		player:messageSpecial(ITEM_OBTAINED,4244);
	elseif(player:getVar("FailBadge") == 18) then
		player:PrintToPlayer("Take the Aurora Crystal to the chest in Provenance to receive your reward.",17);
	elseif(player:getVar("FailBadge") == 19) then
		player:PrintToPlayer("You failed! No second chances!",17);
	end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;



