---------------------------------------------------------------------------------------------------
-- func: costume
-- auth: <Unknown>
-- desc: Sets the players current costume.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "i"
};

function onTrigger(player, costume)

	if (player:hasStatusEffect(dsp.effects.DEDICATION) == true) then
        player:delStatusEffect(dsp.effects.DEDICATION);
        player:PrintToPlayer("XP Buff removed");
    end

end