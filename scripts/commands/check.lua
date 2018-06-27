---------------------------------------------------------------------------------------------------
-- func: !check
-- desc: gets MODS by ID on the player or cursor target
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 3,
    parameters = "i"
};

function onTrigger(player, id)

    -- validate target
    local effectTarget = player:getCursorTarget();
    if (effectTarget == nil) then
        effectTarget = player;
    end

	player:PrintToPlayer(string.format("%s's HP: %i, MP: %i, Attack: %i, R-Attack %i, Defense: %i", effectTarget:getName(), effectTarget:getHP(),
	effectTarget:getMP(), effectTarget:getStat(MOD_ATT), effectTarget:getMod(MOD_RATT), effectTarget:getStat(MOD_DEF)));
	
	player:PrintToPlayer(string.format("Acc: %i, RAcc: %i, Eva: %i", effectTarget:getACC(), effectTarget:getRACC(), effectTarget:getEVA())); 
	
    player:PrintToPlayer(string.format("STR: %i DEX %i VIT %i AGI %i INT %i MND %i CHR %i", effectTarget:getStat(MOD_STR), effectTarget:getStat(MOD_DEX), 
	effectTarget:getStat(MOD_VIT), effectTarget:getStat(MOD_AGI), effectTarget:getStat(MOD_INT), effectTarget:getStat(MOD_MND), effectTarget:getStat(MOD_CHR)));
	
	player:PrintToPlayer(string.format("MACC: %i, MATT: %i, MDEF %i", effectTarget:getMod(MOD_MACC), effectTarget:getMod(MOD_MATT), effectTarget:getMod(MOD_MDEF)));
	

end;