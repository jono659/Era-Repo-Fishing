-----------------------------------
--	Area: Southern_San_dOria
--	NPC: Moogle
--	@pos 
-----------------------------------

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
if (player:getVar("MentorFlag") == 1) then 
player:setMentor(1);

end
    if(player:getVar("MentorFlag") == 0 and player:getPlaytime(false) < 1800 and player:getVar("fov_regimeid") == 0 and player:getMainLvl()==1) then
                player:PrintToPlayer(string.format("Mentor mode enabled! Your exp rate is: 1x retail!"));
                player:setMentor(1);
                player:setVar("MentorFlag",1);
				
                player:speed(150);
				
    elseif(player:getVar("MentorFlag") == 1 and player:getPlaytime(false) < 1800 and player:getMainLvl()==1) then
                player:PrintToPlayer(string.format("Mentor mode disabled! Your exp rate is: 4x retail."));
                player:setMentor(0);
                player:speed(80);
                player:setVar("MentorFlag",0);
	elseif(player:getVar("MentorFlag") == 1 and player:getPlaytime(false) > 1800) then
		if (player:hasItem(15533) and player:getMainLvl()>=71) then
       		player:PrintToPlayer("Shopping spree Kapu~!");
                stock = {12262,1, -- red leggings
                            12263, 1, -- white leggings
                            12226, 1, -- red hose
                            12227, 1, -- white hose
                            12190, 1, -- red gauntlets
                            12191, 1, -- white gauntlets
                            12154, 1, -- red breastplate
                            12155, 1, -- white breastplate
                            12118, 1, -- red armet
                            12119, 1, -- white armet
   --[[                         16738, 1, -- Ebon
                            16738, 1, -- Ebon
                            16738, 1, -- Ebon
                            16738, 1, -- Ebon
                            16738, 1, -- Ebon
                            16738, 1, -- Ebon
                            16738, 1, -- Ebon]]
                            4157, 200} -- poison potion 
                   showShop(player, STATIC, stock);
		else
			player:addItem(15533);
		end
	end
	
		if(player:getMainLvl()>=2)then
					player:PrintToPlayer(string.format("~higher than level 1~"));
		end
		if(player:getPlaytime(false) >= 1800)then
					player:PrintToPlayer(string.format("~Play time greater than 30 minutes~"));
		end
		if(player:getVar("fov_regimeid") > 0)then
					player:PrintToPlayer(string.format("~Field Page Active~"));
		end
	
end;
