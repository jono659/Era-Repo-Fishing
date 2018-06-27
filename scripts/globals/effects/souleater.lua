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
    target:addMod(MOD_ACC,25);
	
	-- ERA Custom Absolute Virtue Imunity KnowOne

	if target:getZoneID() == 33 then
	local AV = GetMobByID(16912876);
	local AVDistance = target:checkDistance(AV);
		if (AV):isSpawned() then
			if AVDistance < 200 then
				target:delStatusEffect(dsp.effects.SOULEATER);
			end
		end	
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
    target:delMod(MOD_ACC,25);
end;