--[[
	> function: !setskin slot id
]]

cmdprops = 
{
	permission = 0,
	parameters = "si"
};

function onTrigger(player,slot,id)

	local slot = string.lower(slot)
	
	setskin = {
		["main"]   = function (x) set(player,id,0) end,
		["sub"]    = function (x) set(player,id,1) end,
		["ranged"] = function (x) set(player,id,2) end,
		["ammo"]   = function (x) set(player,id,3) end,
		["head"]   = function (x) set(player,id,4) end,
		["body"]   = function (x) set(player,id,5) end,
		["hands"]  = function (x) set(player,id,6) end,
		["legs"]   = function (x) set(player,id,7) end,
		["feet"]   = function (x) set(player,id,8) end,
		["usage"]  = function (x) usage("",player) end,
		["help"]   = function (x) usage("",player) end
	}
	
	if slot == "usage" or slot == "help" then
		id = 0
	end
	if id == nil then
		usage("no id detected...\n",player)
	elseif id < 900 then
		if slot ~= "set" then
			if setskin[slot] then
				setskin[slot](id)
			else
				usage("invalid slot...\n",player)
			end
		else
			for i = 4,8 do
				set(player,id,i)
			end
		end
	else
		usage("id out of range...\n",player)
	end
	
end

function set(player,slot,id)
	player:setModelId(slot,id)
end

function usage(msg,player)
	player:PrintToPlayer(msg.."usage: !setskin <slot> <id>"
	                        .."\n  slot: set,main,sub,ranged,ammo,head,body,hands,legs,feet,usage,help"
							.."\n    id: 0~899")
end