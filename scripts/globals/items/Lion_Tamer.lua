-----------------------------------------
-- ID: 17961
-- Item: Lion Tamer
-- Item Effect: Adds Enfire
-----------------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
    local result = 0;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------
function onItemUse(target)
    local effect = EFFECT_ENFIRE;
    doEnspell(target,target,nil,effect);
end;