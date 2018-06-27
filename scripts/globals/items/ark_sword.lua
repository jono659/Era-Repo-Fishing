-----------------------------------------
--  ID: 4265
--  Item: Black Drop
-----------------------------------------
--  Transports the user to their Home Point
-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
local result = 0;
       
return result;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
        target:costume(785);
        
end;