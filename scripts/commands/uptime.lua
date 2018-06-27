---------------------------------------------------------------------------------------------------
-- func: @uptime
-- auth: Loco
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "s"
}

function onTrigger(player)

	time_difference = (os.time() - GetServerVariable("server_jeuno_time"));
		
	local weeks, days, hours, minutes, seconds = FormatSeconds(time_difference);
	
	if (time_difference >= 604800) then
		player:PrintToPlayer(string.format("Server Uptime: %s Week(s), %s Day(s), %s Hour(s), %s Minute(s), %s Seconds", weeks, days, hours, minutes, seconds));
	elseif (time_difference >= 86400) then
		player:PrintToPlayer(string.format("Server Uptime: %s Day(s), %s Hour(s), %s Minute(s), %s Seconds", days, hours, minutes, seconds));
	elseif (time_difference >= 3600) then
		player:PrintToPlayer(string.format("Server Uptime: %s Hour(s), %s Minute(s), %s Seconds", hours, minutes, seconds));
	elseif (time_difference >= 60) then
		player:PrintToPlayer(string.format("Server Uptime: %s Minute(s), %s Seconds", minutes, seconds));
	else
		player:PrintToPlayer(string.format("Server Uptime: %s Seconds", seconds));
	end
	
end;

function FormatSeconds(sec_to_date)

   local weeks = math.floor(sec_to_date / 604800);
   local remainder = sec_to_date % 604800;
   local days = math.floor(remainder / 86400);
   local remainder = remainder % 86400;
   local hours = math.floor(remainder / 3600);
   local remainder = remainder % 3600;
   local minutes = math.floor(remainder / 60);
   local seconds = remainder % 60;
   
   return weeks, days, hours, minutes, seconds;
   
end;