-----------------------------------------
-- ID: 18762
-- Item: Lockheart
-- Additional Effect: Dispel
-----------------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/bluemagic");

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------


    
    
function onAdditionalEffect(player,target,damage)
   local chance = math.random(1,8);
       local dmg = EFFECT_NONE;
      
      if (chance >= 6) then
      dmg = target:dispelStatusEffect();
      end
      if dmg == EFFECT_NONE then
      return 0,0,0;
      end
       
           
           return   SUBEFFECT_DEFENSE_DOWN, 159, dmg;
  
        
    end;
   
    
