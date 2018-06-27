---------------------------------------------------------------------------------------------------
-- func: @setplayermodel <modelid> <slot> <player>
-- desc: Sets the look of the user or target player based on model id offset and slot (for testing).
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "iis"
};

function onTrigger(player, model, slot, target)

	if (player:getVar("seasonleader")) == 1 then

    if (model < 0 and target == nil) then
        model = math.random(1,450);
		model2 = math.random(1,450);
		player:setModelId(model, 0);
		player:setModelId(model2, 1);
		return;
	elseif model == 0 then
	model = math.random(1,400);
	player:setModelId(model, 2);
	model = math.random(1,400);
		player:setModelId(model, 4);
		model = math.random(1,400);
		player:setModelId(model, 5);
		model = math.random(1,400);
		player:setModelId(model, 6);
		model = math.random(1,400);
		player:setModelId(model, 7);
		model = math.random(1,400);
		player:setModelId(model, 8);
	elseif model > 0 or slot == nil or target == nil then
	
	model = math.random(1,400);
		
        
   

    
        
		
		player:setModelId(model, 2);
		player:setModelId(model, 4);
		player:setModelId(model, 5);
		player:setModelId(model, 6);
		player:setModelId(model, 7);
		player:setModelId(model, 8);
   
       
        end
    
	else 
	--player:PrintToPlayer("This feature is reserved only for those who earn it");  -- no randomskin
	
	
	
	

    if (model < 0 and target == nil) then
        model = math.random(1,450);
		model2 = math.random(1,450);
		player:setModelId(model, 0);
		player:setModelId(model2, 1);
		return;
	elseif model == 0 then
	model = math.random(1,400);
	player:setModelId(model, 2);
	model = math.random(1,400);
		player:setModelId(model, 4);
		model = math.random(1,400);
		player:setModelId(model, 5);
		model = math.random(1,400);
		player:setModelId(model, 6);
		model = math.random(1,400);
		player:setModelId(model, 7);
		model = math.random(1,400);
		player:setModelId(model, 8);
	elseif model > 0 or slot == nil or target == nil then
	
	model = math.random(1,400);
		
        
   

    
        
		
		player:setModelId(model, 2);
		player:setModelId(model, 4);
		player:setModelId(model, 5);
		player:setModelId(model, 6);
		player:setModelId(model, 7);
		player:setModelId(model, 8);
   
       
        end-- free randomskin for all
	
	end
end;