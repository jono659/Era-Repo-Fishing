---------------------------------------------
--  Doomvoid
--  Description: 
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
   local param = skill:getParam();
    if (param == 0) then
        param = 25;
    end

    if (mob:getHPP() <= param) then
        return 0;
    end

    return 1;
end;
	

function onMobWeaponSkill(target,mob,skill,killer,ally,zone)
		
	if (mob:getLocalVar"KingArthroFight" == 1) then
		SpawnMob(17129519);
 		target:setPos(306, -9, -288, 167, 86);
 		end
 	if (mob:getLocalVar"LambtonWormFight" == 1) then
		SpawnMob(17129532);
 		target:setPos(-19.938, -8.750, -320.105, 65, 86);
 		end
 	if (mob:getLocalVar"SerketFight" == 1) then
 		SpawnMob(17305666);
 		target:setPos(102.365,-0.206,-295.594, 60, 129);
 		end
 	if (mob:getLocalVar"LambtonWormFight" == 2) then
 		SpawnMob(17305667);
 		target:setPos(-459, 0, -48, 50, 129);
 		end	
 	if (mob:getLocalVar"GuivreFight" == 1) then
 		SpawnMob(17158202);
 		target:setPos(-20.541, 0, 249.768, 60, 93);
 		end
 	if (mob:getLocalVar"LambtonWormFight" == 3) then
 		SpawnMob(17158203);
 		target:setPos(347.866, 0, -460.499, 100, 93);
 		end 		
 	if (mob:getID() == 17129532 or mob:getID() == 17158203 or mob:getID() == 17305667) then
 		MobBuffMove(mob,dsp.effects.MAGIC_SHIELD,5,0,30);
 		MobBuffMove(mob,dsp.effects.PHYSICAL_SHIELD,5,0,30);
 		mob:setMsg(MSG_BUFF);
 		end 
		return 1;
 end;