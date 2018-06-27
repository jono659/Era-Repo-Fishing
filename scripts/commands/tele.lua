---------------------------------------------------------------------------------------------------
-- func: tele
-- auth: Jef (Iienji)
-- desc: teleports char
---------------------------------------------------------------------------------------------------
require("scripts/globals/teleports");
require("scripts/globals/keyitems");
require("scripts/globals/status");

cmdprops =
{
    permission = 0,
    parameters = "s"
};

function onTrigger(player,tele)

	if (player:getAnimation() == 44) then
		player:PrintToPlayer('You cannot do that while crafting. Cheater.');
		return;
	end

if((player:getZone():getID() == 0) or (player:getZone():getID() == 48) or (player:getZone():getID() == 50) or (player:getZone():getID() >= 230 and player:getZone():getID() <= 246)) then
	
	if(tele == "altep") then
		if (player:hasKeyItem(ALTEPA_GATE_CRYSTAL) == true) then
            player:addStatusEffectEx(dsp.effects.TELEPORT,0,TELEPORT_ALTEP,0,15);
			player:PrintToPlayer(string.format("Teleporting to Altep in 15 seconds."));
        else
            player:PrintToPlayer(string.format("Altepa Gate Crystal is required to use this teleport"));
        end;
        return 0;
	elseif(tele == "dem") then
		if (player:hasKeyItem(DEM_GATE_CRYSTAL) == true) then
            player:addStatusEffectEx(dsp.effects.TELEPORT,0,TELEPORT_DEM,0,15);
			player:PrintToPlayer(string.format("Teleporting to Dem in 15 seconds."));
        else
            player:PrintToPlayer(string.format("Dem Gate Crystal is required to use this teleport"));
        end;
        return 0;
	elseif(tele == "holla") then
		if (player:hasKeyItem(HOLLA_GATE_CRYSTAL) == true) then
            player:addStatusEffectEx(dsp.effects.TELEPORT,0,TELEPORT_HOLLA,0,15);
			player:PrintToPlayer(string.format("Teleporting to Holla in 15 seconds."));
        else
            player:PrintToPlayer(string.format("Holla Gate Crystal is required to use this teleport"));
        end;
        return 0;
	elseif(tele == "mea") then
		if (player:hasKeyItem(MEA_GATE_CRYSTAL) == true) then
            player:addStatusEffectEx(dsp.effects.TELEPORT,0,TELEPORT_MEA,0,15);
			player:PrintToPlayer(string.format("Teleporting to Mea in 15 seconds."));
        else
            player:PrintToPlayer(string.format("Mea Gate Crystal is required to use this teleport"));
        end;
        return 0;
	elseif(tele == "vahzl") then
		if (player:hasKeyItem(VAHZL_GATE_CRYSTAL) == true) then
            player:addStatusEffectEx(dsp.effects.TELEPORT,0,TELEPORT_VAHZL,0,15);
			player:PrintToPlayer(string.format("Teleporting to Vahzl in 15 seconds."));
        else
            player:PrintToPlayer(string.format("Vahzl Gate Crystal is required to use this teleport"));
        end;
        return 0;
	elseif(tele == "yhoat") then
		if (player:hasKeyItem(YHOATOR_GATE_CRYSTAL) == true) then
            player:addStatusEffectEx(dsp.effects.TELEPORT,0,TELEPORT_YHOAT,0,15);
			player:PrintToPlayer(string.format("Teleporting to Holla in 15 seconds."));
        else
            player:PrintToPlayer("Yhoator Gate Crystal is required to use this teleport");
        end;
        return 0;
	elseif(tele == "jugner") then
		if (player:hasKeyItem(JUGNER_GATE_CRYSTAL) == true) then
            player:addStatusEffectEx(dsp.effects.TELEPORT,0,RECALL_JUGNER,0,15);
			player:PrintToPlayer(string.format("Teleporting to Jugner in 15 seconds."));
        else
            player:PrintToPlayer(string.format("Jugner Gate Crystal is required to use this teleport"));
        end;
        return 0;
	elseif(tele == "meriph") then
		if (player:hasKeyItem(MERIPHATAUD_GATE_CRYSTAL) == true) then
            player:addStatusEffectEx(dsp.effects.TELEPORT,0,RECALL_MERIPH,0,15);
			player:PrintToPlayer(string.format("Teleporting to Meriph in 15 seconds."));
        else
            player:PrintToPlayer(string.format("Meriphataud Gate Crystal is required to use this teleport"));
        end;
        return 0;
	elseif(tele == "pashow") then
		if (player:hasKeyItem(PASHHOW_GATE_CRYSTAL) == true) then
            player:addStatusEffectEx(dsp.effects.TELEPORT,0,RECALL_PASHH,0,15);
			player:PrintToPlayer(string.format("Teleporting to Pashow in 15 seconds."));
        else
            player:PrintToPlayer(string.format("Pashow Gate Crystal is required to use this teleport"));
        end;
        return 0;
	else
		player:PrintToPlayer("Please enter a valid teleport. Command @tele loc");
		player:PrintToPlayer("Acceptable locs: holla, dem, mea, altep, yhoat, vahzl, jugner, meriph, pashow. [ex. @tele holla]")
		player:PrintToPlayer("Warning: Once you use the command, it cannot be cancelled. Use at own risk.")
		return;
	end
	
else
	player:PrintToPlayer("You may only use this command inside a city.");
end
	
end