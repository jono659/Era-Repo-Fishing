---------------------------------------------------------------------------------------------------
-- func: masterkey
-- desc: opens doors
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "i"
};

function onTrigger(player,target)

-- Determining if player is a GM
	gm = player:getGMLevel();
	
--[[ Checking for Masterkey authorization - Loco: Temporarily Disabled
	if (gm == 0 and player:getVar("masterkey") ~= 1) then
		player:PrintToPlayer("You must unlock Masterkey prior to using this command.");
		return;
	end
]]

-- First part is for no id inputted nor any doors targetted.
    if (target == nil) then
		target = player:getCursorTarget();
		if (target == nil) then
			player:PrintToPlayer(string.format("You must either target a door or enter a valid ID"));
-- For no id inputted, but a door is targetted. Getting exceptions out of the way first.
		else
-- Adjusting value for Ifrit's Cauldron Flame Spouts
			if (player:getZoneID() == 205) then
				GetNPCByID(target:getID() + 5):openDoor(15);
				player:PrintToPlayer("Success!")
		-- Adjusting value for Memory Receptacles in Promyvion, Disabling for normal players
			elseif (player:getZoneID() == 16 or player:getZoneID() == 18 or player:getZoneID() == 20 or 	player:getZoneID() == 22) then
				if (gm == 0) then
					player:PrintToPlayer(string.format("Masterkey is not allowed in Promyvion."));
				else
					mr = GetMobByID(target:getID());
					if (target:getID() == 16842781) then
						GetNPCByID(16843057):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16842839) then
						GetNPCByID(16843053):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16842846) then
						GetNPCByID(16843054):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16842860) then
						GetNPCByID(16843056):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16842853) then
						GetNPCByID(16843055):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16842886) then
						GetNPCByID(16843050):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16842895) then
						GetNPCByID(16843051):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16842904) then
						GetNPCByID(16843052):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16842938) then
						GetNPCByID(16843058):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16842947) then
						GetNPCByID(16843059):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16842956) then
						GetNPCByID(16843060):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16850971) then
						GetNPCByID(16851268):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16851025) then
						GetNPCByID(16851272):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16851032) then
						GetNPCByID(16851273):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16851039) then
						GetNPCByID(16851274):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16851046) then
						GetNPCByID(16851275):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16851072) then
						GetNPCByID(16851269):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16851081) then
						GetNPCByID(16851270):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16851090) then
						GetNPCByID(16851271):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16851149) then
						GetNPCByID(16851276):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16851158) then
						GetNPCByID(16851277):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16851167) then
						GetNPCByID(16851278):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16859151) then
						GetNPCByID(16859453):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16859198) then
						GetNPCByID(16859456):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16859205) then
						GetNPCByID(16859460):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16859212) then
						GetNPCByID(16859461):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16859219) then
						GetNPCByID(16859462):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16859273) then
						GetNPCByID(16859454):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16859282) then
						GetNPCByID(16859455):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16859291) then
						GetNPCByID(16859457):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16859349) then
						GetNPCByID(16859458):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16859358) then
						GetNPCByID(16859459):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16859367) then
						GetNPCByID(16859463):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16867387) then
						GetNPCByID(16867700):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16867382) then
						GetNPCByID(16867699):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16867429) then
						GetNPCByID(16867697):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16867436) then
						GetNPCByID(16867698):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16867501) then
						GetNPCByID(16867703):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16867515) then
						GetNPCByID(16867705):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16867494) then
						GetNPCByID(16867702):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16867508) then
						GetNPCByID(16867704):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16867604) then
						GetNPCByID(16867707):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16867586) then
						GetNPCByID(16867701):openDoor(15);
						mr:setHP(0);
					elseif (target:getID() == 16867595) then
						GetNPCByID(16867706):openDoor(15);
						mr:setHP(0);
					end
				end
			else
			
-- Adjusting value for the Cast Iron Gates in Halvung
				if (target:getID() == 17031686) then
					GetNPCByID(17031684):openDoor(15);
				elseif (target:getID() == 17031687) then
					GetNPCByID(17031684):openDoor(15);
				elseif (target:getID() == 17031670) then
					GetNPCByID(17031668):openDoor(15);
				elseif (target:getID() == 17031671) then
					GetNPCByID(17031668):openDoor(15);
				elseif (target:getID() == 17031674) then
					GetNPCByID(17031672):openDoor(15);
				elseif (target:getID() == 17031675) then
					GetNPCByID(17031672):openDoor(15);
				elseif (target:getID() == 17031682) then
					GetNPCByID(17031680):openDoor(15);
				elseif (target:getID() == 17031683) then
					GetNPCByID(17031680):openDoor(15);
				elseif (target:getID() == 17031678) then
					GetNPCByID(17031676):openDoor(15);
				elseif (target:getID() == 17031679) then
					GetNPCByID(17031676):openDoor(15);
-- Adjusting value for Stone Frame Picture Door
				elseif (target:getID() == 17428990) then
					GetNPCByID(17428989):openDoor(15);
					player:PrintToPlayer( string.format("Door ID is 17428989"));
-- Adjusting value for Phomiuna Aqueducts elemental lamps
				elseif (target:getID() == 16888067) then
					GetNPCByID(16888065):openDoor(15);
				elseif (target:getID() == 16888068) then
					GetNPCByID(16888065):openDoor(15);
				elseif (target:getID() == 16888069) then
					GetNPCByID(16888065):openDoor(15);
				elseif (target:getID() == 16888070) then
					GetNPCByID(16888065):openDoor(15);
				elseif (target:getID() == 16888071) then
					GetNPCByID(16888065):openDoor(15);
				elseif (target:getID() == 16888072) then
					GetNPCByID(16888065):openDoor(15);
				elseif (target:getID() == 16888073) then
					GetNPCByID(16888065):openDoor(15);
				elseif (target:getID() == 16888074) then
					GetNPCByID(16888065):openDoor(15);
-- Adjusting value for Sarcarium key door
				elseif (target:getID() == 16892141) then
					GetNPCByID(16892139):openDoor(15);
				elseif (target:getID() == 16892142) then
					GetNPCByID(16892139):openDoor(15);
-- For most everything else where we don't need to adjust
				else
					npc = GetNPCByID(target:getID()):openDoor(15);
				end
				player:PrintToPlayer(string.format("Success!"));
			end
		end

-- For cases where a player did input a door id
	else
		if (target >= 16843050 and target <= 16843060 or target >= 16851268 and target <= 16851278 or target >= 16859453 and target <= 16859463 or target >= 16867697 and target <= 16867707) then
			if (gm == 0) then
				player:PrintToPlayer(string.format("Masterkey is not allowed in Promyvion."));
			else
				GetNPCByID(target);
				door:openDoor(15);
				player:PrintToPlayer(string.format("Success!"));
			end
		else
			door = GetNPCByID(target);
			if (door == nil) then
				player:PrintToPlayer("Invalid door ID.");
				return;
			end
			door:openDoor(15);
			player:PrintToPlayer(string.format("Success!"));
		end
	end
end;