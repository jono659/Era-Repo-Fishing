-----------------------------------
-- 	Guide Stone
-- 	Normal Text
-----------------------------------
require("/scripts/globals/settings");	
require("/scripts/globals/fieldsofvalor");	

function onTrigger(player,npc)
local npc = GetNPCByID(17686641);
player:addStatusEffectEx(EFFECT_TELEPORT,0,TELEPORT_WARP,0,4);
end; 


function onTrade(player,npc,trade)
end; 
 
  
-----------------------------------
-- onEventFinish Action
-----------------------------------
function onEventFinish(player,csid,option)
--print("CSID:",csid);
--print("RESULT:",option);
end;