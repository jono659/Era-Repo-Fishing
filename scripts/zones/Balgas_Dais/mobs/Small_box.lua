-----------------------------------
-- Area: Ilrusi Atoll
--  Mob: Small Box
-----------------------------------
require("scripts/zones/Balgas_Dais/MObIDs");
require("scripts/globals/status");
-----------------------------------

function onMobEngaged(mob,target)
    
    local mobID = mob:getID();
	local wb = mob:getBattlefield():getBattlefieldNumber();
	winb =("Winning_Box" .. wb);
    local Winning_Box = GetServerVariable(winb);

    if (mobID == Winning_Box) then
        GetMobByID(17375353):setHP(0);
        GetMobByID(17375354):setHP(0);
        GetMobByID(17375355):setHP(0);
    else
        GetMobByID(17375354):setHP(0);
        GetMobByID(17375355):setHP(0);
    end
end;

function onMobDeath(mob)
end;
