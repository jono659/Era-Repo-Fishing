-----------------------------------------
-- ID: 15817
-- Item: Ecphoria ring
-- Item Effect: This ring remedies Amnesia.
-----------------------------------------

require("scripts/globals/status");

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

    if (target:hasStatusEffect(EFFECT_AMNESIA) == true) then
        target:delStatusEffect(EFFECT_AMNESIA);
    end

end;