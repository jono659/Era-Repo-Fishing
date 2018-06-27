---------------------------------------------------------------------------------------------------
-- func: bazaar
-- auth: Run_Away
-- desc: Teleports a player to the Bazaar zone (222).
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "s"
};

---------------------------------------------------------------------------------------------------
-- func: onTrigger
-- desc: Called when this command is invoked.
---------------------------------------------------------------------------------------------------
function onTrigger(player)   

if (player:getAnimation() == 44) then
player:PrintToPlayer('You cannot do that while crafting. Cheater.');
return;
end

    if(player:getZone():getID() == 230) then	
        player:setPos(0, 0, 0, 0, 222);
    elseif(player:getZone():getID() == 50) then	
        player:setPos(0, 0, 0, 0, 222);    
    elseif(player:getZone():getID() == 231) then	
        player:setPos(0, 0, 0, 0, 222);
    elseif(player:getZone():getID() == 232) then	
        player:setPos(0, 0, 0, 0, 222);
    elseif(player:getZone():getID() == 233) then	
        player:setPos(0, 0, 0, 0, 222);
    elseif(player:getZone():getID() == 234) then	
        player:setPos(0, 0, 0, 0, 222);
    elseif(player:getZone():getID() == 235) then	
        player:setPos(0, 0, 0, 0, 222);
    elseif(player:getZone():getID() == 236) then	
        player:setPos(0, 0, 0, 0, 222);
    elseif(player:getZone():getID() == 237) then	
        player:setPos(0, 0, 0, 0, 222);
    elseif(player:getZone():getID() == 238) then	
        player:setPos(0, 0, 0, 0, 222);
    elseif(player:getZone():getID() == 239) then	
        player:setPos(0, 0, 0, 0, 222); 
    elseif(player:getZone():getID() == 240) then	
        player:setPos(0, 0, 0, 0, 222);
    elseif(player:getZone():getID() == 241) then	
        player:setPos(0, 0, 0, 0, 222); 
    elseif(player:getZone():getID() == 242) then	
        player:setPos(0, 0, 0, 0, 222);
    elseif(player:getZone():getID() == 243) then	
        player:setPos(0, 0, 0, 0, 222);  
    elseif(player:getZone():getID() == 244) then	
        player:setPos(0, 0, 0, 0, 222);
    elseif(player:getZone():getID() == 245) then	
        player:setPos(0, 0, 0, 0, 222);
    elseif(player:getZone():getID() == 246) then	
        player:setPos(0, 0, 0, 0, 222);        
    elseif(player:getZone():getID() <= 229) then
        player:PrintToPlayer( "I'm sorry, Dave. I'm afraid I can't do that" );
    elseif(player:getZone():getID() >= 247) then
        player:PrintToPlayer( "I'm sorry, Dave. I'm afraid I can't do that" );    
    end
    
    
    
end;
