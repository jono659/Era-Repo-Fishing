-----------------------------------
-- 	Guide Stone
-- 	Normal Text
-----------------------------------
require("/scripts/globals/settings");	
require("/scripts/globals/fieldsofvalor");	

function onTrigger(player,npc)
local npc = GetNPCByID(17686619);
    if (player:getVar("MentorFlag") == 1) then
    	toHomeNation(player);
    else    
        
		toHomeNation(player);
	    player:addStatusEffect(dsp.effects.RERAISE,1,0,7200);
    --   player:addStatusEffect(dsp.effects.DEDICATION,50,0,43200);
    --   player:addMod(MOD_DEDICATION_CAP, 3000);
      	
    end    
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