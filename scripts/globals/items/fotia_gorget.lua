-----------------------------------------
-- ID: 27510	
-- Item: Fotia Gorget
-- 1% Chance of no TP lost on Weaponskills
-----------------------------------------
require("scripts/globals/status");
require("scripts/globals/settings");
require("scripts/globals/weaponskills");

-----------------------------------
-- onUseWeaponSkill Action
-----------------------------------

function onUseWeaponSkill(player, target, wsID, tp, primary, action)
    local chance = 100;

   -- if (math.random(0,100) >= chance ) then
        player:setTP(1000);
	--end
end;
