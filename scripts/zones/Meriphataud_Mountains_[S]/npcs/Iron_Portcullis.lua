-----------------------------------
-- Area:  
-- NPC:   
-- Notes: 
-- @pos 
-----------------------------------

-----------------------------------

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
  
    local IronPort = npc:getID();  
    -- Loco: trying to open this stupid gate, about to give up and just make a teleport.
    --local IronPortA = GetNPCByID(IronPort):getAnimation();

    --printf("Iron Port Door: %s",IronPortA);
    --if (IronPortA == 9) then
    --    npc:openDoor(3); 
    --GetNPCByID(IronPort):openDoor(10);
    --end    
    
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
end;

-----------------------------------
-- onEventFinish Action
-----------------------------------

function onEventFinish(player,csid,option)

end;