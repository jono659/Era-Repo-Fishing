function onMobDeath(mob,player)

	if(GetMobAction(17473540) == 0 and GetMobAction(17473541) == 0 and GetMobAction(17473543) == 0) then
		player:startEvent(0x7d04);
	end

end;

function onEventFinish(player,csid,option)
--printf("finishCSID: %u",csid);
--printf("RESULT: %u",option);

	if(csid == 0x7d04) then
		SpawnMob(17473544):updateEnmity(player);
		SpawnMob(17473545):updateEnmity(player);
	end

end;