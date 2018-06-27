-- 	Guide Stone
-- 	Normal Text
-----------------------------------
require("/scripts/globals/settings");		
-----------------------------------
-- onTrigger Action
-----------------------------------
function onTrigger(player,npc)
player:addStatusEffectEx(dsp.effects.TELEPORT,0,TELEPORT_WARP,0,3.4);
end; 

-----------------------------------
-- onTrade Action
-----------------------------------
function onTrade(player,npc,trade)
end; 
 
  
-----------------------------------
-- onEventFinish Action
-----------------------------------
function onEventFinish(player,csid,option)
--print("CSID:",csid);
--print("RESULT:",option);
end;