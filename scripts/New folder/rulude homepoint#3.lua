-----------------------------------
-- Area: Ru'Lude Gardens
-- NPC:  Home Point #3
-- @pos -67 6 -25 243
-----------------------------------

package.loaded["scripts/zones/RuLude_Gardens/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/zones/RuLude_Gardens/TextIDs");
require("scripts/globals/homepoint");

-----------------------------------
-- Global Script Vars
-----------------------------------
Crystals = {4096,4097,4098,4099,4100,4101,4102,4103};
Clusters = {4104,4105,4106,4107,4108,4109,4110,4111};
-- ORDER = Fire -> Ice -> Wind -> Earth -> Lightning -> Water -> Light -> Dark
-- THIS APPLIES TO BOTH ARRAYS.
     
-----------------------------------
-- onTrade Action
-----------------------------------
function onTrade(player,npc,trade)

    local nItem = trade:getItemCount();
    local gil = trade:getGil();
    local tCount = {};
    local conv = {};
    local conv_a = 0;
    local conv_b = 0;
	
	if (player:getFreeSlotsCount() == 0) then
		player:PrintToPlayer("Your inventory is full, please clear some space before trading.");
		return;
	else
		if (trade:hasItemQty(15533,1)) then
			player:tradeComplete();
			player:addItem(15533,1); -- Chocobo Whistle
			player:PrintToPlayer("Your Chocobo Whistle has been re-charged!");
		elseif (gil == 0) then
			if(nItem >= 12) then
				for x = 1, 8 do
					tCount[x] = trade:getItemQty(Crystals[x]);
					if((nItem >= 12) and (trade:getItemQty(Crystals[x]) == tCount[x])) then
						conv = ConvertCrystals(x, tCount[x]);
						if(conv[2] >= 1) then
							player:addItem(Clusters[x], conv[2]);
							player:messageSpecial(ITEM_OBTAINED, Clusters[x]);
							player:setVar("ClustersConverted", (player:getVar("ClustersConverted") + conv[2]));
							conv_b = conv_b + conv[2];
						end
						if(conv[3] >= 1) then
							player:addItem(Crystals[x], conv[3]);
							player:messageSpecial(ITEM_OBTAINED, Crystals[x]);
							conv_a = conv_a + conv[3];
						end
					else
						break;
					end
				end
        
			local ConvertString = string.format("You have converted %d crystals into %d clusters, with %d crystals remaining", nItem, conv_b, conv_a);
			local TotalClustersString = string.format("You have converted %d total clusters in your lifetime", player:getVar("ClustersConverted"));
		
			player:PrintToPlayer(ConvertString);
			player:PrintToPlayer(TotalClustersString);
			player:tradeComplete();
			end
		end
	end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

	local duration = (player:getRank() + getNationRank(player:getNation()) + 3) * 3600;
	local rand = math.random(1,2417);
	
	player:setHomePoint();
	player:messageSpecial(HOMEPOINT_SET);
	
	player:delStatusEffect(EFFECT_SIGNET);
	player:addStatusEffect(EFFECT_SIGNET,0,0,duration); -- Grant Signet
	
	player:addStatusEffect(EFFECT_FLEE,200,0,10);
	player:costume(rand);
	player:addStatusEffect(EFFECT_COSTUME,rand,0,3600);
	
end; 

function ConvertCrystals(id, amount)
    local a = math.floor(amount / 12);
    local b = (amount - (a * 12));
    
	if((a > 0) and (a < 1)) then a = 0; end
	if((b > 0) and (b < 1)) then b = 0; end
	
    local OUT = {id, a, b}; -- index, clusters, crystals
    return OUT;
end;
