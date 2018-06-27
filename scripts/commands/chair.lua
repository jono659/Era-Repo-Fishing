--func: @chair
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "s"
}

function onTrigger(player)

	if (player:getAnimation() == 44) then
		caster:setVar("cheatercheater", caster:getVar("cheatercheater")+1);
	elseif (player:getAnimation() == 65) then
		player:setAnimation(0);
		else
        player:setAnimation(65);
	end
end;