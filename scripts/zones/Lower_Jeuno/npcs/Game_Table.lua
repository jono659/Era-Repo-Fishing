-----------------------------------
-- Area: Upper Jeuno
-- NPC: Geebeh
-- Standard Info NPC
-----------------------------------

package.loaded["scripts/zones/Lower_Jeuno/TextIDs"] = nil;
require("scripts/zones/Lower_Jeuno/TextIDs");



function onTrade(player,npc,trade)

if (trade:hasItemQty(1505,1)) then
SetServerVariable("attempts", (GetServerVariable("attempts") + 1));
	local playerid = player:getID()
	local spin = math.random(1,101);
	local jspin = math.random(1,401);
	local toggle = math.random(1,10);
	local black = 1;
	local ultratime = GetServerVariable("ultratime");
	local red = 2;
	local ultrawin = 999;
	local result = 0;
	local jackpot = 101;
	local grandPrize = GetServerVariable("jackpot_total");
	local gsink = GetServerVariable("gambling_sink");
	local gfaucet = GetServerVariable("gambling_faucet");
	local ultrapot = math.random(1,209);
	local counter = GetServerVariable("ultrapotforce");
	--SetServerVariable("ultrapotforce", counter + 1);
	local counter = GetServerVariable("ultrapotforce");
	
	if spin > 32 then
		spin = (spin - 30);
	end
	
	if toggle >= 7 then
		spin = math.random(1,101);
	end
	if jspin == 101 then
		spin = jackpot;
	end
	local counter = 1;
	if counter >= 555 then
	if ultratime > 1 then
	result = ultrawin;
	else
	result = jackpot;
	end
	elseif toggle >= 9 then
		SetServerVariable("lasttier1pass", playerid);
		if spin == 101 then
			SetServerVariable("lasttier2pass", playerid);
			if ultrapot == 101 then
				SetServerVariable("lasttier3pass", playerid);
				if ultratime > 1 then
						result = ultrawin;
						else result = jackpot;
						end
			end
		end
	elseif spin <= 54 then 
		result = red;
	elseif spin == jackpot then
	result = jackpot;
	local youwin = GetServerVariable("attemptsucceed");
	SetServerVariable("attemptsucceed", youwin + 1);
	else
		result = black;
	local youwin = GetServerVariable("attemptsucceed");
	SetServerVariable("attemptsucceed", youwin + 1);
	end
	
	if ((result == ultrawin)  and (ultratime == 2)) then
	local playerid = player:getID()
		player:tradeComplete();
		player:PrintToPlayer("ULTRA MEGA JACKPOT ULTRA MEGA JACKPOT ULTRA MEGA JACKPOT ");
		player:PrintToPlayer("ULTRA MEGA JACKPOT ULTRA MEGA JACKPOT ULTRA MEGA JACKPOT ");
		player:PrintToPlayer("ULTRA MEGA JACKPOT ULTRA MEGA JACKPOT ULTRA MEGA JACKPOT ");
		player:PrintToPlayer("ULTRA MEGA JACKPOT ULTRA MEGA JACKPOT ULTRA MEGA JACKPOT ");
		player:PrintToPlayer("ULTRA MEGA JACKPOT ULTRA MEGA JACKPOT ULTRA MEGA JACKPOT ");
		player:addGil(grandPrize);
		player:messageSpecial(GIL_OBTAINED,grandPrize);
		SetServerVariable("ultrawin", playerid);
		if (player:getFreeSlotsCount() < 1) then
		player:setVar("prizedue", 1);
		player:PrintToPlayer("Make room and then talk to the table again.");
		player:messageSpecial(ITEM_CANNOT_BE_OBTAINED);
		else
		player:addItem(18447); 
		player:messageSpecial(ITEM_OBTAINED,18447);
		SetServerVariable("gambling_faucet", gfaucet + adj);
		SetServerVariable("jackpot_total", 300000);
		SetServerVariable("ultratime", 1);
		end
		
	elseif result == red then
		player:tradeComplete();
		player:PrintToPlayer(string.format("You rolled %s. You must roll a 55 or higher to win. You lose.", spin));
		SetServerVariable("jackpot_total", grandPrize + 20678);
		SetServerVariable("gambling_sink", gsink + 99999);
	elseif result == black then
		player:tradeComplete();
		player:PrintToPlayer(string.format("You rolled %s... You win!", spin));
		player:addGil(200000);
		player:messageSpecial(GIL_OBTAINED,200000);
		SetServerVariable("gambling_faucet", gfaucet + 100001);
	elseif result == jackpot then
	local adj = grandPrize - 99999;
		player:tradeComplete();
		player:PrintToPlayer("JACKPOTJACKPOTJACKPOTJACKPOTJACKPOT!!!!!!!!!!!");
		player:addGil(grandPrize);
		player:messageSpecial(GIL_OBTAINED,grandPrize);
		SetServerVariable("gambling_faucet", gfaucet + adj);
		SetServerVariable("jackpot_total", 300000);
	end
	
	
end	
local gsink = GetServerVariable("gambling_sink");
local gfaucet = GetServerVariable("gambling_faucet");
local totaltry = GetServerVariable("attempts");
local wintry = GetServerVariable("attemptsucceed");
SetServerVariable("gambling_net", gfaucet - gsink);
local rate = ((wintry / totaltry) * 100)
SetServerVariable("gwin_ratep", rate);
end; 



function onTrigger(player,npc)
local ultratime = GetServerVariable("ultratime");
if player:getVar("prizedue") == 1 then
if (player:getFreeSlotsCount() < 1) then
		player:setVar("prizedue", 1);
		player:PrintToPlayer("Make room and then talk to the table again.");
		player:messageSpecial(ITEM_CANNOT_BE_OBTAINED, 18447);
		else
		player:setVar("prizedue", 0);
		player:addItem(18447); 
		player:messageSpecial(ITEM_OBTAINED,18447);
		SetServerVariable("gambling_faucet", gfaucet + adj);
		SetServerVariable("jackpot_total", 300000);
		SetServerVariable("ultratime", 1);
		player:setVar("prizedue", 0);
		
		end
end
SetServerVariable("ultratime", 1);
local gwin_ratep = GetServerVariable("gwin_ratep");
local grandPrize = GetServerVariable("jackpot_total");
player:PrintToPlayer("Roulette! Trade an 'R' Egg to play!");
player:PrintToPlayer(string.format("Current Jackpot: %s", grandPrize));
player:PrintToPlayer(string.format("Overall Win Rate: %s percent", gwin_ratep));
if ultratime == 2 then
player:PrintToPlayer("Current ULTRA Jackpot: Nanatsusaya");
end
stock = {1505,99999, -- "R" Egg
						} 
						showShop(player, STATIC, stock);
end; 



function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;



function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;



