------------------------
--    Energy Drain    -- 
------------------------

function onUseWeaponSkill(player, target, wsID, tp, primary, action, taChar)
   -- TODO: Should steal MP based on TP and not wake the mob involved.
   local chance = 100
    if (player:getEquipID(SLOT_NECK) == 27510 ) then
		if (math.random(0,100) >= chance ) then
			player:setTP(1000);
		end
	end
    scoreCheck(player, wsID, damage, target); return 1, 0, false, 65;
end
