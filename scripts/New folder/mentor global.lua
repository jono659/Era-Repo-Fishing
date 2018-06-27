-----------------------------------
-- Moogle Buffs
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/common");

-----------------------------------

function clickMoogle(player,npc)
    -- player:delStatusEffect(dsp.effects.WEAKNESS); -- Warp doing, Warp things
	local plevel = player:getMainLvl();
	
	local protect = 0;
	local shell = 0;
	local regenfresh = 0;
	
	local capduration = 1800; -- Non Mentor: Level 75 get 30min buff durations.
	local lvlduration = 3600; -- Non Mentor: Level 1-74 get 60min buff durations.
	local mentorduration = 3600; -- Mentor: Level 1-75 get 60min buff durations.
	
	-- Check the players level and change the strength of Regen/Refresh accordingly.
	
	if (plevel >= 1 and plevel <= 20) then
		regenfresh = 1;
	elseif (plevel >= 21 and plevel <= 40) then
		regenfresh = 2;
	else
		regenfresh = 2;
	end

	-- Check the players level and change the strength of Protect accordingly.
	
	if (plevel >= 1 and plevel <= 26) then
		protect = 15; -- Protect I
	elseif (plevel >= 27 and plevel <= 46) then
		protect = 40; -- Protect II
	elseif (plevel >= 47 and plevel <= 62) then
		protect = 75; -- Protect III
	else
		protect = 120; -- Protect IV
	end
	
	-- Check the players level and change the strength of Shell accordingly.

	if (plevel >= 1 and plevel <= 36) then
		shell = 9; -- Shell I
	elseif (plevel >= 37 and plevel <= 56) then
		shell = 14; -- Shell II
	elseif (plevel >= 57 and plevel <= 68) then
		shell = 19; -- Shell III
	else
		shell = 22; -- Shell IV
	end
	
	--if (player:getGMLevel() >= 1) then 
	
	--	player:PrintToPlayer("Use @godmode, you fruit-loop-dingus.");
	--	return;
		
	--end
	
	if (player:getVar("MentorFlag") == 0) then
	
		if (plevel >= 1 and plevel <= 74) then
		
			player:addStatusEffect(EFFECT_PROTECT,protect,0,lvlduration);
			player:addStatusEffect(EFFECT_SHELL,shell,0,lvlduration);
			player:addStatusEffect(EFFECT_REGEN,regenfresh,3,lvlduration);
			player:addStatusEffect(EFFECT_REFRESH,regenfresh,3,lvlduration);
			player:addStatusEffect(EFFECT_RERAISE,1,0,lvlduration);
			
			player:setVar("MoogleBuffs", 1);
			
			player:PrintToPlayer("Enjoy your 60min Non-Mentor buffs, they're removed when you zone.");
			
		elseif (plevel >= 75) then

			player:addStatusEffect(EFFECT_PROTECT,protect,0,capduration);
			player:addStatusEffect(EFFECT_SHELL,shell,0,capduration);
			player:addStatusEffect(EFFECT_REGEN,regenfresh,3,capduration);
			player:addStatusEffect(EFFECT_REFRESH,regenfresh,3,capduration);
			player:addStatusEffect(EFFECT_RERAISE,1,0,capduration);
						
			player:setVar("MoogleBuffs", 1);
			
			player:PrintToPlayer("Enjoy your 30min Non-Mentor buffs, they're removed when you zone.");
			
		else
			player:dispelAllStatusEffect();
			player:PrintToPlayer("How the fuck did you get past level 75?");
		end
	end

	if (player:getVar("MentorFlag") == 1) then
		
		if (plevel >= 1 and plevel <= 75) then
	
			player:addStatusEffect(EFFECT_PROTECT,protect,0,mentorduration);
			player:addStatusEffect(EFFECT_SHELL,shell,0,mentorduration);
			player:addStatusEffect(EFFECT_REGEN,regenfresh,3,mentorduration);
			player:addStatusEffect(EFFECT_REFRESH,regenfresh,3,mentorduration);
			player:addStatusEffect(EFFECT_RERAISE,1,0,mentorduration);
		
			player:addStatusEffect(EFFECT_STR_BOOST,10,0,mentorduration); -- Mentor Only
			player:addStatusEffect(EFFECT_HASTE,20,0,mentorduration); -- Mentor Only
			
			player:setVar("MoogleBuffs", 1);
			
			player:PrintToPlayer("Enjoy your 60min Mentor buffs, they're removed when you zone.");		
			
		else
			player:dispelAllStatusEffect();
			player:PrintToPlayer("How the fuck did you get past level 75?");
		end
	end

end;

function townMog(player, npc)

	toHomeNation(player);

end

-- Loco: Stuff I've taken out but may put in later once I talk to other Dev's.

-- local zone = npc:getZoneID(); -- May use later

	--[[
		player:delStatusEffect(EFFECT_STR_BOOST);
		player:delStatusEffect(EFFECT_DEX_BOOST);
		player:delStatusEffect(EFFECT_BARWATER);
		player:delStatusEffect(EFFECT_INT_BOOST);
		player:delStatusEffect(EFFECT_MAGIC_ATK_BOOST);
		player:delStatusEffect(EFFECT_ACCURACY_BOOST);
		player:delStatusEffect(EFFECT_REGAIN);
	]]
		
	--[[
		player:addStatusEffect(EFFECT_STR_BOOST,25,3,900);
		player:addStatusEffect(EFFECT_DEX_BOOST,15,3,900);
		player:addStatusEffect(EFFECT_BARWATER, 40, 3, 1000);
		player:addStatusEffect(EFFECT_INT_BOOST,15,3,900);
		player:addStatusEffect(EFFECT_MAGIC_ATK_BOOST,19,0,900);
		player:addStatusEffect(EFFECT_ACCURACY_BOOST,25,3,900);
		player:addStatusEffect(EFFECT_REGAIN,6,3,900);
	]]
	
	--[[
	if npc:getZoneID() == 153 then

			player:delStatusEffect(EFFECT_STR_BOOST);
			player:addStatusEffect(EFFECT_STR_BOOST,bufp,3,1800);
								
			player:delStatusEffect(EFFECT_DEX_BOOST);
			player:addStatusEffect(EFFECT_DEX_BOOST,(bufp/2),3,1800);
								
			player:delStatusEffect(EFFECT_BARWATER);
			player:addStatusEffect(EFFECT_BARWATER, bufp, 3, 1800);
								
			player:delStatusEffect(EFFECT_INT_BOOST);
			player:addStatusEffect(EFFECT_INT_BOOST,(bufp/2),3,1800);
						
			player:delStatusEffect(EFFECT_MAGIC_ATK_BOOST)
			player:addStatusEffect(EFFECT_MAGIC_ATK_BOOST,(bufp/3),0,1800) 
								
			player:delStatusEffect(EFFECT_ACCURACY_BOOST);
			player:addStatusEffect(EFFECT_ACCURACY_BOOST,bufp,3,1800);
								
			--player:delStatusEffect(EFFECT_REGAIN);
			--player:addStatusEffect(EFFECT_REGAIN,(bufp/4),3,600);

	end
	]]
	
--[[
function townMog(player, npc)
	local gilsink = GetServerVariable("mogfees");
	local cost = math.random(100, 400);

	if (player:getMainLvl() < 60) then
		cost = 10;
	end
		
	toHomeNation(player);
	
	player:delGil(cost);
	SetServerVariable("mogfees",gilsink + cost);
end;
]]