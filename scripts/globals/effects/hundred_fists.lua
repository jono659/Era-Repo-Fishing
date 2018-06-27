-----------------------------------
--
--     dsp.effects.HUNDRED_FISTS
--     
-----------------------------------

-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target,effect)
-- ERA Custom Code
	if target:getVar("boots") == 1 then
       target:delMod(MOD_ATT, 20);
	   target:delMod(MOD_ACC, 20);
	   target:setVar("boots",0);
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
end;