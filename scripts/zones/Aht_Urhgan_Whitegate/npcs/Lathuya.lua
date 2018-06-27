-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: Lathuya
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Aht_Urhgan_Whitegate/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/quests");
require("scripts/globals/keyitems");
require("scripts/globals/titles");
require("scripts/zones/Aht_Urhgan_Whitegate/TextIDs");
require("scripts/globals/armor_upgrade");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	if (player:getVar("Bazubands") == 1) and trade:hasItemQty(754,1) and trade:hasItemQty(828,1) and trade:hasItemQty(879,1) and trade:getItemCount() == 4 and trade:hasItemQty(4158,1) then
		if player:getVar("bluafcraft") == 2 then
			player:setVar("Bazubands",2);
			player:setVar("bluafcraft",3);
			player:startEvent(733);
			player:tradeComplete();
		elseif player:getVar("bluafcraft") == 6 then
			player:setVar("Bazubands",2);
			player:setVar("bluafcraft",7);
			player:startEvent(741);
			player:tradeComplete();
		elseif player:getVar("bluafcraft") == 10 then
			player:setVar("Bazubands",2);
			player:setVar("bluafcraft",11);
			player:startEvent(749);
			player:tradeComplete();
		end
	elseif (player:getVar("Shalwar") == 1) and trade:hasItemQty(761,1) and trade:hasItemQty(828,1) and trade:hasItemQty(2175,1) and trade:getItemCount() == 4 and trade:hasItemQty(2340,1) then
		if player:getVar("bluafcraft") == 2 then
			player:setVar("Shalwar",2);
			player:setVar("bluafcraft",3);
			player:startEvent(733);
			player:tradeComplete();
		elseif player:getVar("bluafcraft") == 6 then
			player:setVar("Shalwar",2);
			player:setVar("bluafcraft",7);
			player:startEvent(741);
			player:tradeComplete();
		elseif player:getVar("bluafcraft") == 10 then
			player:setVar("Shalwar",2);
			player:setVar("bluafcraft",11);
			player:startEvent(749);
			player:tradeComplete();
		end
	elseif (player:getVar("Jubbah") == 1) and trade:hasItemQty(2229,1) and trade:hasItemQty(828,1) and trade:hasItemQty(2340,1) and trade:getItemCount() == 4 and trade:hasItemQty(2288,1) then
		if player:getVar("bluafcraft") == 2 then
			player:setVar("Jubbah",2);
			player:setVar("bluafcraft",3);
			player:startEvent(733);
			player:tradeComplete();
		elseif player:getVar("bluafcraft") == 6 then
			player:setVar("Jubbah",2);
			player:setVar("bluafcraft",7);
			player:startEvent(741);
			player:tradeComplete();
		elseif player:getVar("bluafcraft") == 10 then
			player:setVar("Jubbah",2);
			player:setVar("bluafcraft",11);
			player:startEvent(749);
			player:tradeComplete();
		end
	elseif player:getVar("Bazubands") == 2 and trade:hasItemQty(2186, 2) and trade:getItemCount() == 2 then
		if player:getVar("bluafcraft") == 3 then
			player:tradeComplete();
			player:startEvent(734);
		elseif player:getVar("bluafcraft") == 7 then
			player:tradeComplete();
			player:startEvent(742);
		elseif player:getVar("bluafcraft") == 11 then
			player:tradeComplete();
			player:startEvent(750);
		end
	elseif player:getVar("Shalwar") == 2 and trade:hasItemQty(2186, 2) and trade:getItemCount() == 2 then
		if player:getVar("bluafcraft") == 3 then
			player:tradeComplete();
			player:startEvent(734);
		elseif player:getVar("bluafcraft") == 7 then
			player:tradeComplete();
			player:startEvent(742);
		elseif player:getVar("bluafcraft") == 11 then
			player:tradeComplete();
			player:startEvent(750);
		end
	elseif player:getVar("Jubbah") == 2 and trade:hasItemQty(2186, 4) and trade:getItemCount() == 4 then
		if player:getVar("bluafcraft") == 3 then
			player:tradeComplete();
			player:startEvent(734);
		elseif player:getVar("bluafcraft") == 7 then
			player:tradeComplete();
			player:startEvent(742);
		elseif player:getVar("bluafcraft") == 11 then
			player:tradeComplete();
			player:startEvent(750);
		end
	end
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

	if player:hasKeyItem(835) and (player:getVar("Omensprogress") == 3) then
		player:startEvent(714);
	elseif player:getVar("Omensprogress") == 3 then
		player:startEvent(715);
	elseif player:getVar("Omensprogress") == 5 then
		player:startEvent(716);
	elseif (player:hasItem(14928) == true) and (player:hasItem(15600) == true) and (player:hasItem(14521) == true) and (player:hasItem(15265) == false) then
		player:startEvent(746);
	elseif player:getVar("bluafcraft") == 1 then
		player:startEvent(730);
	elseif player:getVar("Shalwar") == 1 then
		player:startEvent(739);	
	elseif player:getVar("Shalwar") == 2 then
		player:startEvent(740);
	elseif player:getVar("Jubbah") == 1 then
		player:startEvent(747);
	elseif player:getVar("Jubbah") == 2 then
		player:startEvent(748);
	elseif player:getVar("Bazubands") == 1 then
		player:startEvent(731);		
	elseif player:getVar("Bazubands") == 2 then
		player:startEvent(732);
	elseif player:getVar("bluaftime") == VanadielDayOfTheYear() and player:getVar("bluaftime") ~= 0 and player:getVar("bluafcraft") == 4 then	
		player:startEvent(735);
	elseif player:getVar("bluaftime") ~= VanadielDayOfTheYear() and player:getVar("bluaftime") ~= 0 and player:getVar("bluafcraft") == 4 and player:getFreeSlotsCount() >= 1 then
		player:startEvent(736);	
	elseif player:getVar("bluaftime") == VanadielDayOfTheYear() and player:getVar("bluaftime") ~= 0 and player:getVar("bluafcraft") == 8 then	
		player:startEvent(743);
	elseif player:getVar("bluaftime") ~= VanadielDayOfTheYear() and player:getVar("bluaftime") ~= 0 and player:getVar("bluafcraft") == 8 and player:getFreeSlotsCount() >= 1 then
		player:startEvent(744);
	elseif player:getVar("bluaftime") == VanadielDayOfTheYear() and player:getVar("bluaftime") ~= 0 and player:getVar("bluafcraft") == 12 then
		player:startEvent(751);
	elseif player:getVar("bluaftime") ~= VanadielDayOfTheYear() and player:getVar("bluaftime") ~= 0 and player:getVar("bluafcraft") == 12 and player:getFreeSlotsCount() >= 1 then
		player:startEvent(752);
	elseif player:getVar("bluafday") > os.time() and (player:getVar("bluafcraft") == 5 or player:getVar("bluafcraft") == 9) then
		player:startEvent(737);
	elseif player:getVar("bluafday") < os.time() and (player:getVar("bluafcraft") == 5 or player:getVar("bluafcraft") == 9) then
		player:startEvent(738);
	elseif player:getVar("bluafcraft") == 13 then
		player:startEvent(753);
	else
		player:startEvent(0x0302);
	end
end; 

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
printf("CSID: %u",csid);
printf("RESULT: %u",option);

	if (csid == 730 or csid == 738 or csid == 7) then
		if (option == 2) then
			player:updateEvent(14928, 754, 828, 879, 4158);
		elseif (option == 5) then
			player:updateEvent(15600, 761, 828, 2175, 2340);
		elseif (option == 8) then
			player:updateEvent(14521, 828, 2229, 2288, 2340);
		elseif (option == 3 or option == 6) then
			player:updateEvent(1, 2186, 2);
		elseif option == 9 then
			player:updateEvent(1, 2186, 4);
		end
	elseif (csid == 731 or csid == 732 or csid == 733 or csid == 734 or csid == 739 or csid == 740 or csid == 741 or csid == 742 or csid == 744 or csid == 747 or csid == 748 or csid == 749 or csid == 750) then
		if player:getVar("Bazubands") == 1 or player:getVar("Bazubands") == 2 or player:getVar("Bazubands") == 3 then
			player:updateEvent(14928, 2186, 2);
		elseif player:getVar("Shalwar") == 1 or player:getVar("Shalwar") == 2 or player:getVar("Shalwar") == 3 then
			player:updateEvent(15600, 2186, 2);
		elseif player:getVar("Jubbah") == 1 or player:getVar("Jubbah") == 2 or player:getVar("Jubbah") == 3 then
			player:updateEvent(14521, 2186, 4);
		end
	elseif csid == 736 or csid == 752 then
		if player:getVar("Bazubands") == 2 or player:getVar("Bazubands") == 3 then
			player:updateEvent(14928);
		elseif player:getVar("Shalwar") == 2 or player:getVar("Shalwar") == 3 then
			player:updateEvent(15600);
		elseif player:getVar("Jubbah") == 2 or player:getVar("Jubbah") == 3 then
			player:updateEvent(14521);
		end
	end		

end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
printf("CSID: %u",csid);
printf("RESULT: %u",option);

	if (csid ==714) then
		player:setVar("Omensprogress",4);
		player:delKeyItem(835);
	elseif (csid ==716) then
		player:addItem(15684);
		player:messageSpecial(ITEM_OBTAINED,15684);
		player:setVar("Omensprogress",0);
		player:completeQuest(AHT_URHGAN,OMENS);
		player:addTitle(IMMORTAL_LION);
	elseif (csid ==730) then
		if option == 1 then
			player:setVar("bluafcraft",2);
			player:setVar("Bazubands",1);
		elseif option == 4 then
			player:setVar("bluafcraft",2);
			player:setVar("Shalwar",1);
		elseif option == 7 then
			player:setVar("bluafcraft",2);
			player:setVar("Jubbah",1);
		end
	elseif (csid == 738) then
		if player:getVar("bluafcraft") ==5 then
			if option == 1 then
				player:setVar("bluafcraft",6);
				player:setVar("Bazubands",1);
			elseif option == 4 then
				player:setVar("bluafcraft",6);
				player:setVar("Shalwar",1);
			elseif option == 7 then
				player:setVar("bluafcraft",6);
				player:setVar("Jubbah",1);
			end
		elseif player:getVar("bluafcraft") ==9 then
			if option == 1 then
				player:setVar("bluafcraft",10);
				player:setVar("Bazubands",1);
			elseif option == 4 then
				player:setVar("bluafcraft",10);
				player:setVar("Shalwar",1);
			elseif option == 7 then
				player:setVar("bluafcraft",10);
				player:setVar("Jubbah",1);
			end
		end
	elseif player:getVar("Bazubands") == 2 then
		if csid ==734 then
			player:setVar("Bazubands",3);
			player:setVar("bluaftime", VanadielDayOfTheYear());
			player:setVar("bluafcraft",4);
			player:addKeyItem(834);
			player:messageSpecial(KEYITEM_OBTAINED,834);
		elseif csid ==742 then
			player:setVar("Bazubands",3);
			player:setVar("bluaftime", VanadielDayOfTheYear());
			player:setVar("bluafcraft",8);
			player:addKeyItem(834);
			player:messageSpecial(KEYITEM_OBTAINED,834);
		elseif csid ==750 then
			player:setVar("Bazubands",3);
			player:setVar("bluaftime", VanadielDayOfTheYear());
			player:setVar("bluafcraft",12);
			player:addKeyItem(834);
			player:messageSpecial(KEYITEM_OBTAINED,834);
		end
	elseif player:getVar("Shalwar") == 2 then
		if csid ==734 then
			player:setVar("Shalwar",3);
			player:setVar("bluaftime", VanadielDayOfTheYear());
			player:setVar("bluafcraft",4);
			player:addKeyItem(834);
			player:messageSpecial(KEYITEM_OBTAINED,834);
		elseif csid ==742 then
			player:setVar("Shalwar",3);
			player:setVar("bluaftime", VanadielDayOfTheYear());
			player:setVar("bluafcraft",8);
			player:addKeyItem(834);
			player:messageSpecial(KEYITEM_OBTAINED,834);
		elseif csid ==750 then
			player:setVar("Shalwar",3);
			player:setVar("bluaftime", VanadielDayOfTheYear());
			player:setVar("bluafcraft",12);
			player:addKeyItem(834);
			player:messageSpecial(KEYITEM_OBTAINED,834);
		end
	elseif player:getVar("Jubbah") == 2 then
		if csid ==734 then
			player:setVar("Jubbah",3);
			player:setVar("bluaftime", VanadielDayOfTheYear());
			player:setVar("bluafcraft",4);
			player:addKeyItem(834);
			player:messageSpecial(KEYITEM_OBTAINED,834);
		elseif csid ==742 then
			player:setVar("Jubbah",3);
			player:setVar("bluaftime", VanadielDayOfTheYear());
			player:setVar("bluafcraft",8);
			player:addKeyItem(834);
			player:messageSpecial(KEYITEM_OBTAINED,834);
		elseif csid ==750 then
			player:setVar("Jubbah",3);
			player:setVar("bluaftime", VanadielDayOfTheYear());
			player:setVar("bluafcraft",12);
			player:addKeyItem(834);
			player:messageSpecial(KEYITEM_OBTAINED,834);
		end
	elseif player:getVar("Bazubands") == 3 then
		if csid ==736 then
			player:setVar("bluafcraft",5);
			player:setVar("Bazubands",0);
			player:setVar("bluafday", getMidnight());
			player:addItem(14928);
			player:messageSpecial(ITEM_OBTAINED,14928);
			player:delKeyItem(834);
		elseif csid ==744 then
			player:setVar("bluafcraft",9);
			player:setVar("Bazubands",0);
			player:setVar("bluafday", getMidnight());
			player:addItem(14928);
			player:messageSpecial(ITEM_OBTAINED,14928);
			player:delKeyItem(834);
		elseif csid ==752 then
			player:setVar("bluafcraft",13);
			player:setVar("Bazubands",0);
			player:setVar("bluafday", getMidnight());
			player:addItem(14928);
			player:messageSpecial(ITEM_OBTAINED,14928);
			player:delKeyItem(834);
		end
	elseif player:getVar("Shalwar") == 3 then
		if  csid ==736 then
			player:setVar("bluafcraft",5);
			player:setVar("Shalwar",0);
			player:setVar("bluafday", getMidnight());
			player:addItem(15600);
			player:messageSpecial(ITEM_OBTAINED,15600);
			player:delKeyItem(834);
		elseif  csid ==744 then
			player:setVar("bluafcraft",9);
			player:setVar("Shalwar",0);
			player:setVar("bluafday", getMidnight());
			player:addItem(15600);
			player:messageSpecial(ITEM_OBTAINED,15600);
			player:delKeyItem(834);
		elseif  csid ==752 then
			player:setVar("bluafcraft",13);
			player:setVar("Shalwar",0);
			player:setVar("bluafday", getMidnight());
			player:addItem(15600);
			player:messageSpecial(ITEM_OBTAINED,15600);
			player:delKeyItem(834);
		end
	elseif player:getVar("Jubbah") == 3 then
		if csid == 736 then
			player:setVar("bluafcraft",5);
			player:setVar("Jubbah",0);
			player:setVar("bluafday", getMidnight());
			player:addItem(14521);
			player:messageSpecial(ITEM_OBTAINED,14521);
			player:delKeyItem(834);
		elseif csid ==744 then
			player:setVar("bluafcraft",9);
			player:setVar("Jubbah",0);
			player:setVar("bluafday", getMidnight());
			player:addItem(14521);
			player:messageSpecial(ITEM_OBTAINED,14521);
			player:delKeyItem(834);
		elseif csid ==752 then
			player:setVar("bluafcraft",13);
			player:setVar("Jubbah",0);
			player:setVar("bluafday", getMidnight());
			player:addItem(14521);
			player:messageSpecial(ITEM_OBTAINED,14521);
			player:delKeyItem(834);
		end
	end
end;