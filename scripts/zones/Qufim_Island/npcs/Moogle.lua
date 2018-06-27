-----------------------------------	
-- Area: Qufim Island	
-- NPC:  Moogle
-----------------------------------	
	
require("/scripts/globals/settings");
require("/scripts/globals/fieldsofvalor");
require("/scripts/globals/mentor");
	
-----------------------------------	
-- onTrigger Action	
-----------------------------------	

function onTrigger(player,npc)

	GetNPCByID(17293704):setPos(-13,-17,98,0);
	GetNPCByID(17293704):setStatus(STATUS_NORMAL);
	
	GetNPCByID(17293706):setPos(-19,-21,270,39);
	GetNPCByID(17293706):setStatus(STATUS_NORMAL);

	local PondMoogle = (npc:getID() == 17293704);
	local SeaMoogle = (npc:getID() == 17293706);

	if ((PondMoogle or SeaMoogle) and (player:getVar("MentorFlag") == 1) and (player:getMainLvl() >= 18)) then
		player:PrintToPlayer("Mentor Status Confirmed: Opening Shop...");
		stock = 
				{
					4625, 10000, 	-- Scroll of Silena
					19222, 20000, 	-- Wurger
					16930, 20000, 	-- Mercenary's Greatsword
					18503, 20000, 	-- Mammut
					16863, 20000, 	-- Cruel Spear
					16773, 20000, 	-- Cruel Scythe
					16511, 20000, 	-- Burnite Shell Stone
					17708, 20000, 	-- Auriga Xiphos
					17211, 20000, 	-- Almogavar Bow
				}
		showShop(player, STATIC, stock);
	else
		player:PrintToPlayer("Status Confirmed. Opening field manual.");	
		startFov(FOV_EVENT_QUFIM, player);
	end
	clickMoogle(player, npc);
end;

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onEventSelection
-----------------------------------

function onEventUpdate(player,csid,menuchoice)
    updateFov(player,csid,menuchoice,41,42,43,44,45);
end;

-----------------------------------
-- onEventFinish Action
-----------------------------------

function onEventFinish(player,csid,option)
    finishFov(player,csid,option,41,42,43,44,45,FOV_MSG_QUFIM);
end;