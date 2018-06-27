-----------------------------------
--
--
--
-----------------------------------

require("scripts/globals/status");

-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target,effect)
    target:addMod(MOD_KICK_ATTACK,20);
--ERA Custom Code
		if (target:getEquipID(SLOT_FEET) == 11405) and (target:hasStatusEffect(dsp.effects.HUNDRED_FISTS) == false) then
       target:addMod(MOD_ATT, 20);
	   target:addMod(MOD_ACC, 20);
	   target:setVar("boots",1);
	end
end;

-----------------------------------
-- onEffectTick Action
-----------------------------------

function onEffectTick(target,effect)
end;

-----------------------------------
-- onEffectLose Action
-----------------------------------

function onEffectLose(target,effect)
    target:delMod(MOD_KICK_ATTACK,20);
-- ERA Custom Code
	if target:getVar("boots") == 1 then
       target:delMod(MOD_ATT, 20);
	   target:delMod(MOD_ACC, 20);
	   target:setVar("boots",0);
	end
end;
