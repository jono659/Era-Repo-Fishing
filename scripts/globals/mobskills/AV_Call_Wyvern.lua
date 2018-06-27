---------------------------------------------------
-- Call Wyvern
-- Call my pet.
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
require("scripts/globals/msg");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 1;
end;

function onMobWeaponSkill(target, mob, skill)
    mob:setLocalVar("callWyvernTime", os.time());
    mob:setLocalVar("ultTime", mob:getBattleTime() + math.random(45,90));
local wynavs = {16912877, 16912878, 16912879, 16912880, 16912881, 16912882};
local wynavStatus = {GetMobAction(wynavs[1]),GetMobAction(wynavs[2]),GetMobAction(wynavs[3]),GetMobAction(wynavs[4]),GetMobAction(wynavs[5]),GetMobAction(wynavs[6])};

		--	if newUlt == 14 then -- Process Call Wyvern
				local count = 3;

				if mob:AnimationSub() == 2 then count = 6
				end;
    
				for i = 1, count do
					local wynav = GetMobByID(wynavs[i]);
					if not wynav:isSpawned() then
						wynav:spawn()
						wynav:setPos(mob:getXPos() + math.random(-2, 2), mob:getYPos(), mob:getZPos() + math.random(-2, 2));
						wynav:updateEnmity(target);
						wynav:resetEnmity(target);
					end
				end
	--		end
    skill:setMsg(msgBasic.USES);
    return 0;
end;
