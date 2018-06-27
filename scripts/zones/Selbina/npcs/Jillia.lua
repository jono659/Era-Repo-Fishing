-----------------------------------
--	Area: Selbina
--	NPC: Jillia
--	@pos 
-----------------------------------

-----------------------------------
-- onTrade Action
-----------------------------------
--[[
local bluweap = player:getVar("BLU_WEAPON_IN_PROGRESS_WAIT");
local dncweap = player:getVar("DNC_WEAPON_IN_PROGRESS_WAIT");
if (trade:hasItemQty(18272,1) and trade:hasItemQty(1460,1) and trade:hasItemQty(931,1) and trade:hasItemQty(763,1) and trade:hasItemQty(1453,4) and trade:getItemCount() == 8) then
	player:tradeComplete();
	player:setVar("BLU_WEAPON_IN_PROGRESS_WAIT",(os.time() +86400))
	player:setVar("BLU_WEAPON_IN_PROGRESS", 1)
elseif (trade:hasItemQty(16535,1) and trade:hasItemQty(16537,1) and trade:hasItemQty(16542,1) and trade:hasItemQty(1456,14) and trade:getItemCount() == 17) then
    if(bluweap >= os.time())then
	player:tradeComplete();
	player:setVar("BLU_WEAPON_IN_PROGRESS_WAIT",(os.time() +604800))
	player:setVar("BLU_WEAPON_IN_PROGRESS", 2)
	end
elseif (trade:hasItemQty(1558,1) and trade:hasItemQty(1450,61) and trade:getItemCount() == 62) then
	if(bluweap >= os.time())then
	player:tradeComplete();
	player:setVar("BLU_WEAPON_IN_PROGRESS_WAIT",(os.time() +295200))
	player:setVar("BLU_WEAPON_IN_PROGRESS", 3)
	end
elseif (trade:hasItemQty(1573,1) and trade:hasItemQty(1454,1) and trade:hasItemQty(1589,1) and trade:getItemCount() == 3) then
	if(bluweap >= os.time())then
     if(player:hasItem(17743) == false and player:getFreeSlotsCount() >= 2) then
        player:tradeComplete();
		player:addItem(17743); -- BLU SWORD
		player:addItem(1453, 30)
		player:messageSpecial(ITEM_OBTAINED, 17743);
		player:PrintToPlayer("Heh look at that crap. Who wants that trash.");
		player:setVar("BLU_WEAPON_IN_PROGRESS_WAIT",0)
		player:setVar("BLU_WEAPON_IN_PROGRESS", 0)
		end
		end

elseif (trade:hasItemQty(18266,1) and trade:hasItemQty(4246,1) and trade:hasItemQty(747,1) and trade:hasItemQty(4166,1) and trade:hasItemQty(1456,4) and trade:getItemCount() == 8) then
	player:tradeComplete();
	player:setVar("DNC_WEAPON_IN_PROGRESS_WAIT",(os.time() +86400))
	player:setVar("DNC_WEAPON_IN_PROGRESS", 1)
elseif (trade:hasItemQty(16449,1) and trade:hasItemQty(16496,1) and trade:hasItemQty(16452,1) and trade:hasItemQty(1453,14) and trade:getItemCount() == 17) then
    if(dncweap >= os.time())then
	player:tradeComplete();
	player:setVar("DNC_WEAPON_IN_PROGRESS_WAIT",(os.time() +604800))
	player:setVar("DNC_WEAPON_IN_PROGRESS", 2)
	end
elseif (trade:hasItemQty(1557,1) and trade:hasItemQty(1450,61) and trade:getItemCount() == 62) then
	if(dncweap >= os.time())then
	player:tradeComplete();
	player:setVar("DNC_WEAPON_IN_PROGRESS_WAIT",(os.time() +295200))
	player:setVar("DNC_WEAPON_IN_PROGRESS", 3)
	end
elseif (trade:hasItemQty(1572,1) and trade:hasItemQty(1457,1) and trade:hasItemQty(1589,1) and trade:getItemCount() == 3) then
	if(dncweap >= os.time())then
     if(player:hasItem(19102) == false and player:getFreeSlotsCount() >= 2) then
        player:tradeComplete();
		player:addItem(19102); -- dagger
		player:addItem(1456, 30)
		player:messageSpecial(ITEM_OBTAINED, 19102);
		player:PrintToPlayer("Heh look at that crap. Who wants that trash.");
		player:setVar("DNC_WEAPON_IN_PROGRESS_WAIT",0)
		player:setVar("DNC_WEAPON_IN_PROGRESS", 0)
		end
		end
		
elseif (trade:hasItemQty(18332,1) and trade:hasItemQty(1468,1) and trade:hasItemQty(830,1) and trade:hasItemQty(654,1) and trade:hasItemQty(1456,5) and trade:getItemCount() == 9) then
	player:tradeComplete();
	player:setVar("COR_WEAPON_IN_PROGRESS_WAIT",(os.time() +86400))
	player:setVar("COR_WEAPON_IN_PROGRESS", 1)
elseif (trade:hasItemQty(17248,1) and trade:hasItemQty(17251,1) and trade:hasItemQty(17259,1) and trade:hasItemQty(1450,15) and trade:getItemCount() == 18) then
    if(corweap >= os.time())then
	player:tradeComplete();
	player:setVar("COR_WEAPON_IN_PROGRESS_WAIT",(os.time() +604800))
	player:setVar("COR_WEAPON_IN_PROGRESS", 2)
	end
elseif (trade:hasItemQty(1570,1) and trade:hasItemQty(1453,62) and trade:getItemCount() == 63) then
	if(corweap >= os.time())then
	player:tradeComplete();
	player:setVar("COR_WEAPON_IN_PROGRESS_WAIT",(os.time() +295200))
	player:setVar("COR_WEAPON_IN_PROGRESS", 3)
	end
elseif (trade:hasItemQty(1585,1) and trade:hasItemQty(1457,1) and trade:hasItemQty(1589,1) and trade:getItemCount() == 3) then
	if(corweap >= os.time())then
     if(player:hasItem(19394) == false and player:getFreeSlotsCount() >= 2) then
        player:tradeComplete();
		player:addItem(19394); -- cor
		player:addItem(1456, 30)
		player:messageSpecial(ITEM_OBTAINED, 19394);
		player:PrintToPlayer("Heh look at that crap. Who wants that trash.");
		player:setVar("COR_WEAPON_IN_PROGRESS_WAIT",0)
		player:setVar("COR_WEAPON_IN_PROGRESS", 0)
		end
		end
		
		elseif (trade:hasItemQty(18326,1) and trade:hasItemQty(1462,1) and trade:hasItemQty(1271,1) and trade:hasItemQty(1415,1) and trade:hasItemQty(1450,5) and trade:getItemCount() == 9) then
	player:tradeComplete();
	player:setVar("STF_WEAPON_IN_PROGRESS_WAIT",(os.time() +86400))
	player:setVar("STF_WEAPON_IN_PROGRESS", 1)
elseif (trade:hasItemQty(17088,1) and trade:hasItemQty(17090,1) and trade:hasItemQty(17092,1) and trade:hasItemQty(1456,16) and trade:getItemCount() == 19) then
    if(stfweap >= os.time())then
	player:tradeComplete();
	player:setVar("STF_WEAPON_IN_PROGRESS_WAIT",(os.time() +604800))
	player:setVar("STF_WEAPON_IN_PROGRESS", 2)
	end
elseif (trade:hasItemQty(1567,1) and trade:hasItemQty(1453,62) and trade:getItemCount() == 63) then
	if(stfweap >= os.time())then
	player:tradeComplete();
	player:setVar("STF_WEAPON_IN_PROGRESS_WAIT",(os.time() +295200))
	player:setVar("STF_WEAPON_IN_PROGRESS", 3)
	end
elseif (trade:hasItemQty(1557,1) and trade:hasItemQty(1451,1) and trade:hasItemQty(1589,1) and trade:getItemCount() == 3) then
	if(stfweap >= os.time())then
     if(player:hasItem(18592) == false and player:getFreeSlotsCount() >= 2) then
        player:tradeComplete();
		player:addItem(18592); -- sch
		player:addItem(1450, 30)
		player:messageSpecial(ITEM_OBTAINED, 18592);
		player:PrintToPlayer("Heh look at that crap. Who wants that trash.");
		player:setVar("STF_WEAPON_IN_PROGRESS_WAIT",0)
		player:setVar("STF_WEAPON_IN_PROGRESS", 0)
		end
		end

]]
function onTrade(player,npc,trade)

	
	local bluweap = player:getVar("BLU_WEAPON_IN_PROGRESS_WAIT");
local dncweap = player:getVar("DNC_WEAPON_IN_PROGRESS_WAIT");
local corweap = player:getVar("COR_WEAPON_IN_PROGRESS_WAIT");
local stfweap = player:getVar("STF_WEAPON_IN_PROGRESS_WAIT");
if (trade:hasItemQty(18272,1) and trade:hasItemQty(1460,1) and trade:hasItemQty(931,1) and trade:hasItemQty(763,1) and trade:hasItemQty(1453,4) and trade:getItemCount() == 8) then
	player:tradeComplete();
	player:PrintToPlayer("Trade Complete. Please wait 24 hours.");
	player:setVar("BLU_WEAPON_IN_PROGRESS_WAIT",(os.time() +86400))
	player:setVar("BLU_WEAPON_IN_PROGRESS", 1)
elseif (trade:hasItemQty(16535,1) and trade:hasItemQty(16537,1) and trade:hasItemQty(16542,1) and trade:hasItemQty(1456,14) and trade:getItemCount() == 17) then
    if(bluweap <= os.time())then
	player:tradeComplete();
	player:PrintToPlayer("Trade Complete. Please wait 7 Days");
	player:setVar("BLU_WEAPON_IN_PROGRESS_WAIT",(os.time() +604800))
	player:setVar("BLU_WEAPON_IN_PROGRESS", 2)
	end
elseif (trade:hasItemQty(1558,1) and trade:hasItemQty(1450,61) and trade:getItemCount() == 62) then
	if(bluweap <= os.time())then
	player:tradeComplete();
	player:PrintToPlayer("Trade Complete. Please wait 4 Days");
	player:setVar("BLU_WEAPON_IN_PROGRESS_WAIT",(os.time() +295200))
	player:setVar("BLU_WEAPON_IN_PROGRESS", 3)
	end
elseif (trade:hasItemQty(1573,1) and trade:hasItemQty(1454,1) and trade:hasItemQty(1589,1) and trade:getItemCount() == 3) then
	if(bluweap <= os.time())then
     if(player:hasItem(17743) == false and player:getFreeSlotsCount() >= 2) then
        player:tradeComplete();
		player:addItem(17743); -- BLU SWORD
		player:addItem(1453, 30)
		player:messageSpecial(ITEM_OBTAINED, 17743);
		player:PrintToPlayer("Heh look at that crap. Who wants that trash.");
		player:setVar("BLU_WEAPON_IN_PROGRESS_WAIT",0)
		player:setVar("BLU_WEAPON_IN_PROGRESS", 0)
		end
		end

elseif (trade:hasItemQty(18266,1) and trade:hasItemQty(4246,1) and trade:hasItemQty(747,1) and trade:hasItemQty(4166,1) and trade:hasItemQty(1456,4) and trade:getItemCount() == 8) then
	player:tradeComplete();
	player:PrintToPlayer("Trade Complete. Please wait 24 hours.");
	player:setVar("DNC_WEAPON_IN_PROGRESS_WAIT",(os.time() +86400))
	player:setVar("DNC_WEAPON_IN_PROGRESS", 1)
elseif (trade:hasItemQty(16449,1) and trade:hasItemQty(16496,1) and trade:hasItemQty(16452,1) and trade:hasItemQty(1453,14) and trade:getItemCount() == 17) then
    if(dncweap <= os.time())then
	player:tradeComplete();
	player:PrintToPlayer("Trade Complete. Please wait 7 Days");
	player:setVar("DNC_WEAPON_IN_PROGRESS_WAIT",(os.time() +604800))
	player:setVar("DNC_WEAPON_IN_PROGRESS", 2)
	end
elseif (trade:hasItemQty(1557,1) and trade:hasItemQty(1450,61) and trade:getItemCount() == 62) then
	if(dncweap <= os.time())then
	player:tradeComplete();
	player:PrintToPlayer("Trade Complete. Please wait 4 Days");
	player:setVar("DNC_WEAPON_IN_PROGRESS_WAIT",(os.time() +295200))
	player:setVar("DNC_WEAPON_IN_PROGRESS", 3)
	end
elseif (trade:hasItemQty(1572,1) and trade:hasItemQty(1457,1) and trade:hasItemQty(1589,1) and trade:getItemCount() == 3) then
	if(dncweap <= os.time())then
     if(player:hasItem(19102) == false and player:getFreeSlotsCount() >= 2) then
        player:tradeComplete();
		player:addItem(19102); -- dagger
		player:addItem(1456, 30)
		player:messageSpecial(ITEM_OBTAINED, 19102);
		player:PrintToPlayer("Heh look at that crap. Who wants that trash.");
		player:setVar("DNC_WEAPON_IN_PROGRESS_WAIT",0)
		player:setVar("DNC_WEAPON_IN_PROGRESS", 0)
		end
		end
		
elseif (trade:hasItemQty(18332,1) and trade:hasItemQty(1468,1) and trade:hasItemQty(830,1) and trade:hasItemQty(654,1) and trade:hasItemQty(1456,5) and trade:getItemCount() == 9) then
	player:tradeComplete();
	player:PrintToPlayer("Trade Complete. Please wait 24 hours.");
	player:setVar("COR_WEAPON_IN_PROGRESS_WAIT",(os.time() +86400))
	player:setVar("COR_WEAPON_IN_PROGRESS", 1)
elseif (trade:hasItemQty(17248,1) and trade:hasItemQty(17251,1) and trade:hasItemQty(17259,1) and trade:hasItemQty(1450,15) and trade:getItemCount() == 18) then
    if(corweap <= os.time())then
	player:tradeComplete();
	player:PrintToPlayer("Trade Complete. Please wait 7 Days");
	player:setVar("COR_WEAPON_IN_PROGRESS_WAIT",(os.time() +604800))
	player:setVar("COR_WEAPON_IN_PROGRESS", 2)
	end
elseif (trade:hasItemQty(1570,1) and trade:hasItemQty(1453,62) and trade:getItemCount() == 63) then
	if(corweap <= os.time())then
	player:tradeComplete();
	player:PrintToPlayer("Trade Complete. Please wait 4 Days");
	player:setVar("COR_WEAPON_IN_PROGRESS_WAIT",(os.time() +295200))
	player:setVar("COR_WEAPON_IN_PROGRESS", 3)
	end
elseif (trade:hasItemQty(1585,1) and trade:hasItemQty(1457,1) and trade:hasItemQty(1589,1) and trade:getItemCount() == 3) then
	if(corweap <= os.time())then
     if(player:hasItem(19394) == false and player:getFreeSlotsCount() >= 2) then
        player:tradeComplete();
		player:addItem(19394); -- cor
		player:addItem(1456, 30)
		player:messageSpecial(ITEM_OBTAINED, 19394);
		player:PrintToPlayer("Heh look at that crap. Who wants that trash.");
		player:setVar("COR_WEAPON_IN_PROGRESS_WAIT",0)
		player:setVar("COR_WEAPON_IN_PROGRESS", 0)
		end
		end
		
		elseif (trade:hasItemQty(18326,1) and trade:hasItemQty(1462,1) and trade:hasItemQty(1271,1) and trade:hasItemQty(1415,1) and trade:hasItemQty(1450,5) and trade:getItemCount() == 9) then
	player:tradeComplete();
	player:PrintToPlayer("Trade Complete. Please wait 24 hours.");
	player:setVar("STF_WEAPON_IN_PROGRESS_WAIT",(os.time() +86400))
	player:setVar("STF_WEAPON_IN_PROGRESS", 1)
elseif (trade:hasItemQty(17088,1) and trade:hasItemQty(17090,1) and trade:hasItemQty(17092,1) and trade:hasItemQty(1456,16) and trade:getItemCount() == 19) then
    if(stfweap <= os.time())then
	player:tradeComplete();
	player:PrintToPlayer("Trade Complete. Please wait 7 Days");
	player:setVar("STF_WEAPON_IN_PROGRESS_WAIT",(os.time() +604800))
	player:setVar("STF_WEAPON_IN_PROGRESS", 2)
	end
elseif (trade:hasItemQty(1567,1) and trade:hasItemQty(1453,62) and trade:getItemCount() == 63) then
	if(stfweap <= os.time())then
	player:tradeComplete();
	player:PrintToPlayer("Trade Complete. Please wait 4 Days");
	player:setVar("STF_WEAPON_IN_PROGRESS_WAIT",(os.time() +295200))
	player:setVar("STF_WEAPON_IN_PROGRESS", 3)
	end
elseif (trade:hasItemQty(1582,1) and trade:hasItemQty(1451,1) and trade:hasItemQty(1589,1) and trade:getItemCount() == 3) then
	if(stfweapstage == 3)then
     if(player:hasItem(18592) == false and player:getFreeSlotsCount() >= 2) then
        player:tradeComplete();
		player:addItem(18592); -- sch
		player:addItem(1450, 30)
		player:messageSpecial(ITEM_OBTAINED, 18592);
		player:PrintToPlayer("Heh look at that crap. Who wants that trash.");
		player:setVar("STF_WEAPON_IN_PROGRESS_WAIT",0)
		player:setVar("STF_WEAPON_IN_PROGRESS", 0)
		end
		end
	--[[if (trade:hasItemQty(18272,1) and trade:hasItemQty(1589,1) and trade:hasItemQty(1573,1) and trade:hasItemQty(1558,1) and trade:hasItemQty(1453,4) and trade:hasItemQty(1456,14) and trade:hasItemQty(1450,61) and trade:hasItemQty(1454,1) and trade:getItemCount() == 84 and player:hasItem(17743) == false) then
			player:tradeComplete();
			player:addItem(17743); -- BLU SWORD
			player:messageSpecial(ITEM_OBTAINED, 17743);
			player:PrintToPlayer("Heh look at that crap. Who wants that trash.");
	elseif (trade:hasItemQty(18332,1) and trade:hasItemQty(1589,1) and trade:hasItemQty(1570,1) and trade:hasItemQty(1585,1) and trade:hasItemQty(1456,5) and trade:hasItemQty(1450,15) and trade:hasItemQty(1453,62) and trade:hasItemQty(1457,1) and trade:getItemCount() == 87 and player:hasItem(19394) == false) then
			player:tradeComplete();
			player:addItem(19394); -- COR GUN
			player:messageSpecial(ITEM_OBTAINED, 19394);
			player:PrintToPlayer("Heh look at that crap. Who wants that trash.");
	elseif (trade:hasItemQty(18326,1) and trade:hasItemQty(1589,1) and trade:hasItemQty(1567,1) and trade:hasItemQty(1582,1) and trade:hasItemQty(1450,5) and trade:hasItemQty(1456,16) and trade:hasItemQty(1453,62) and trade:hasItemQty(1454,1) and trade:getItemCount() == 88 and player:hasItem(18592) == false) then
			player:tradeComplete();
			player:addItem(18592); -- SCH STAFF
			player:messageSpecial(ITEM_OBTAINED, 18592);
			player:PrintToPlayer("Heh look at that crap. Who wants that trash.");
	elseif (trade:hasItemQty(18266,1) and trade:hasItemQty(1589,1) and trade:hasItemQty(1557,1) and trade:hasItemQty(1572,1) and trade:hasItemQty(1456,4) and trade:hasItemQty(1453,14) and trade:hasItemQty(1450,61) and trade:hasItemQty(1457,1) and trade:getItemCount() == 84 and player:hasItem(19102) == false) then
			player:tradeComplete();
			player:addItem(19102); -- DNC DAGGER
			player:messageSpecial(ITEM_OBTAINED, 19102);
			player:PrintToPlayer("Heh look at that crap. Who wants that trash.");]]
	elseif (trade:hasItemQty(18276,1) and trade:getItemCount() == 1 and player:hasItem(17743) == false) then
			player:tradeComplete();
			player:addItem(17743); -- BLU SWORD
			player:messageSpecial(ITEM_OBTAINED, 17743);
			player:PrintToPlayer("Heh look at that crap. Who wants that trash.");
	elseif (trade:hasItemQty(18336,1) and trade:getItemCount() == 1 and player:hasItem(19394) == false) then
			player:tradeComplete();
			player:addItem(19394); -- COR GUN
			player:messageSpecial(ITEM_OBTAINED, 19394);
			player:PrintToPlayer("Heh look at that crap. Who wants that trash.");
	elseif (trade:hasItemQty(18330,1) and trade:getItemCount() == 1 and player:hasItem(18592) == false) then
			player:tradeComplete();
			player:addItem(18592); -- SCH STAFF
			player:messageSpecial(ITEM_OBTAINED, 18592);
			player:PrintToPlayer("Heh look at that crap. Who wants that trash.");
	elseif (trade:hasItemQty(18270,1) and trade:getItemCount() == 1 and player:hasItem(19102) == false) then
			player:tradeComplete();
			player:addItem(19102); -- DNC DAGGER
			player:messageSpecial(ITEM_OBTAINED, 19102);
			player:PrintToPlayer("Heh look at that crap. Who wants that trash.");
	elseif (trade:hasItemQty(18264,1) and trade:getItemCount() == 1 and player:hasItem(18754) == false) then
			player:tradeComplete();
			player:addItem(18754); -- PUP HANDS
			player:messageSpecial(ITEM_OBTAINED, 18754);
			player:PrintToPlayer("Heh look at that crap. Who wants that trash.");
	end
end;


-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	player:PrintToPlayer("I found these weapons washed up on the beach here.");
	player:PrintToPlayer("They look trash.");
	player:PrintToPlayer("U wot m8? You think these are actually amazing? Heh you must be a sucker");
	player:PrintToPlayer("Let's make a trade then.");
	--player:PrintToPlayer("Trade me the Relic Weapon, A Fragment, The Attestation and a Necropsyche.");
   -- player:PrintToPlayer("Don't forget to pay me too. I want currency.");
	player:PrintToPlayer("If you already got the fully upgraded version, You can trade it to me for a swap.");
	player:PrintToPlayer("A Sword for a Blue Sword, A Gun for a Corsair Gun");
	player:PrintToPlayer("Or how about a Dagger for this Dancer Dagger, Or a Staff for the Scholar Staff.");
	player:PrintToPlayer("Oh, And I'm looking for the fully upgraded version. No cheap shit.");
end;