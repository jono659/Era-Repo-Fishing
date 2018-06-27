---------------------------------------------------------------------------------------------------
-- func: godmode
-- desc: Toggles god mode on the player, granting them several special abilities.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "s"
};

function onTrigger(player, onoff)
    if (onoff == nil) then
        player:PrintToPlayer("The correct syntax is !testmode on / @testmode off");
        return;
    end
    
    if (onoff ~= nil) then
        if (onoff == "on") then
        player:addStatusEffect(dsp.effects.MAX_HP_BOOST,1000,0,0);
        player:addStatusEffect(dsp.effects.MAX_MP_BOOST,1000,0,0);
        player:addStatusEffect(dsp.effects.CHAINSPELL,1,0,0);
        player:addStatusEffect(dsp.effects.MANAFONT,1,0,0);
        player:addStatusEffect(dsp.effects.REGAIN,150,1,0);
        player:addStatusEffect(dsp.effects.REFRESH,99,0,0);
        player:addStatusEffect(dsp.effects.REGEN,99,0,0);
		player:addStatusEffect(dsp.effects.NEGATE_DOOM,1,0,0);
		player:addStatusEffect(dsp.effects.NEGATE_AMNESIA,1,0,0);
		player:addStatusEffect(dsp.effects.NEGATE_PETRIFY,1,0,0);
		player:addStatusEffect(dsp.effects.NEGATE_TERROR,1,0,0);
		player:addStatusEffect(dsp.effects.NEGATE_SLEEP,1,0,0);
		player:addStatusEffect(dsp.effects.NEGATE_BIND,1,0,0);
        player:addHP( 50000 );
        player:addMP( 50000 );
		player:speed( 250 );
        elseif (onoff == "off") then
        player:delStatusEffect(dsp.effects.MAX_HP_BOOST,0,0,0);
        player:delStatusEffect(dsp.effects.MAX_MP_BOOST,0,0,0);
        player:delStatusEffect(dsp.effects.CHAINSPELL,0,0,0);
        player:delStatusEffect(dsp.effects.MANAFONT,0,0,0);
        player:delStatusEffect(dsp.effects.REGAIN,0,1,0);
        player:delStatusEffect(dsp.effects.REFRESH,0,0,0);
        player:delStatusEffect(dsp.effects.REGEN,0,0,0);
		player:delStatusEffect(dsp.effects.NEGATE_DOOM,0,0,0);
		player:delStatusEffect(dsp.effects.NEGATE_AMNESIA,0,0,0);
		player:delStatusEffect(dsp.effects.NEGATE_PETRIFY,0,0,0);
		player:delStatusEffect(dsp.effects.NEGATE_TERROR,0,0,0);
		player:delStatusEffect(dsp.effects.NEGATE_SLEEP,0,0,0);
		player:delStatusEffect(dsp.effects.NEGATE_BIND,0,0,0);
		player:speed( 80 );
        else
            player:PrintToPlayer("You don' goofed.");
        end
    end
end