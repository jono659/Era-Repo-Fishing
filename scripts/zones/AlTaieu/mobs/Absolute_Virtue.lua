-----------------------------------
-- Area: Al'Taieu
--  HNM: Absolute Virtue
-----------------------------------

-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------

local AV = 16912876;
local wynavs = {16912877, 16912878, 16912879, 16912880, 16912881, 16912882};
local wynavStatus = {GetMobAction(wynavs[1]),GetMobAction(wynavs[2]),GetMobAction(wynavs[3]),GetMobAction(wynavs[4]),GetMobAction(wynavs[5]),GetMobAction(wynavs[6])};

function onMobSpawn(mob)
    mob:setMod(MOD_REGEN, 500); --500
	mob:setSpellList(414);
    mob:setMod(MOD_ATT, 600);
    mob:setMod(MOD_MATT, 150);
    mob:setMod(MOD_DEF, 450);
    mob:setMod(MOD_MEVA, 380);
    mob:setMod(MOD_MDEF, 100);
	mob:setMod(MOD_RDEF, 250);
    mob:setMod(MOD_MOVE, 150);
	mob:setMod(MOD_FASTCAST,100);
	mob:addMod(MOD_STR,40);
	mob:addMod(MOD_DEX,30);
	mob:addMod(MOD_VIT,40);
	mob:setMod(MOD_CHR, 336);
	mob:addMod(MOD_ACC, 60);
	mob:addMod(MOD_EVA, 60);
	mob:addMod(MOD_STUNRES, 30);
	mob:addMod(MOD_SLOWRES, 40);
	mob:addMod(MOD_PARALYZERES, 40);
	mob:addMod(MOD_BLINDRES, 40);
    mob:addMod(MOD_REFRESH, 250);
	mob:addMod(MOD_POLEARM, 100);
	mob:addMod(MOD_REGAIN, 10);
	mob:setLocalVar("despawnTime", os.time() + 7200); --GetServerVariable("avDespawnTime"));
    local ults = {"mightyStrikes", "hundredFists", "benediction", "manaFont", "chainspell", "perfectDodge", "invincible", "bloodWeapon", "familiar", "soulVoice", "eagleEyeShot", "astralFlow", "mijinGakure", "callWyvern", "meikyoShisui"};
    for i = 1, 15 do
        mob:setLocalVar(ults[i], 1);
        mob:setLocalVar(ults[i] .. "Time", 0);
    end;
    return;
end;

function onMobEngaged(mob, target)
	
    if GetServerVariable("JoL_Qn_xzomit_Killed") == 9 and GetServerVariable("JoL_Qn_hpemde_Killed") == 9 then initialRegen = 250 end;
    mob:setLocalVar("defUpHPP", 90);
    mob:setLocalVar("lastUlt", 10);
    mob:setLocalVar("ultTime", 5);
    mob:setLocalVar("phaseTime", 0);
	mob:setMobMod(MOBMOD_MAGIC_COOL, 40);
    initUltVars(mob);
end;

function onMobFight(mob, target)
	local braceletsHPP = 60;
    local battleTime = mob:getBattleTime();
    local ultTime = mob:getLocalVar("ultTime");
    local lastUlt = mob:getLocalVar("lastUlt");
    local defUpHPP = mob:getLocalVar("defUpHPP");
    local ults = getUlts();

    if ults[lastUlt]['effectId'] ~= nil and mob:hasStatusEffect(ults[lastUlt]['effectId']) and battleTime > mob:getLocalVar("phaseTime") then -- Do ult logic 
        local combatants = mob:getEnmityList();
        local target = combatants[math.random(#combatants)];
		
		if lastUlt == 1 then
			if os.time() - mob:getLocalVar("mightyStrikesTime") >= 40 then
			local mobHPP = mob:getHPP();
				if mobHPP >= 80 then 
					mob:setSpellList(414);
				else
					mob:setSpellList(415);
				end
			end
		end
		if lastUlt == 2 then
			if os.time() - mob:getLocalVar("hundredFistsTime") >= 40 then
			local mobHPP = mob:getHPP();
				if mobHPP >= 80 then 
					mob:setSpellList(414);
				else
					mob:setSpellList(415);
				end
			end
		end
		if lastUlt == 10 then
			if os.time() - mob:getLocalVar("soulVoiceTime") >= 85 then
			local mobHPP = mob:getHPP();
				if mobHPP >= 80 then 
					mob:setSpellList(414);
				else
					mob:setSpellList(415);
				end
			end
		end
		if lastUlt == 4 then
			if (mob:getLocalVar("Meteor") == 0) then
				mob:castSpell(218);
				mob:setLocalVar("Meteor", 1);
			end
			if os.time() - mob:getLocalVar("manaFontTime") >= 60 then
			local mobHPP = mob:getHPP();
				if mobHPP >= 80 then 
					mob:setSpellList(414);
				else
					mob:setSpellList(415);
				end
			end
		end

		if lastUlt == 15 then -- has Sam 2 hour
			if (mob:getLocalVar("Sam Mode") <= 5) then
				local flip = math.random(1,2);
				if flip == 1 then
					mob:addTP(1000);
					mob:useMobAbility(1403); -- explosive Impulse
					mob:setLocalVar("Sam Mode", mob:getLocalVar("Sam Mode")+1);
				--	printf("start %i", mob:getLocalVar("Sam Mode"));
				else
					mob:addTP(1000);
					mob:useMobAbility(1386); -- Medusa Javelin
					mob:setLocalVar("Sam Mode", mob:getLocalVar("Sam Mode")+1);
				--	printf("start %i", mob:getLocalVar("Sam Mode"));
				end
			end
		end
        
        mob:setLocalVar("phaseTime", battleTime + 10);
    elseif battleTime > ultTime then -- Use a new ult
        local newUlt = lastUlt;
        while newUlt == lastUlt do
            newUlt = math.random(1, 15);
			local mobHPP = mob:getHPP();
			if mobHPP >= 80 then 
				mob:setSpellList(414);
			else
				mob:setSpellList(415);
			end
		end
        
        
        --printf("newUlt: %i | Name: %s | LocalVar: %s", newUlt, ults[newUlt]['name'], mob:getLocalVar(ults[newUlt]['name']));
        if mob:getLocalVar(ults[newUlt]['name']) == 1 then
            local skip = false;
            
            if newUlt == 9 or newUlt == 12 or newUlt == 13 then -- Special logic for pet ults familiar, astral flow, Mijin
                skip = true;
                for i = 1, 6 do
                    local wynav = GetMobByID(wynavs[i]);
                    if wynav:isSpawned() then skip = false; break end;
                end;
            end;
            
            if not skip then 
                mob:useMobAbility(ults[newUlt]['abilityId']);
                mob:setLocalVar("lastUlt", newUlt);
                mob:setLocalVar("ultTime", ultTime + math.random(45,90));
            end;
			
			if newUlt == 13 then
				for i = 1, 6 do
                    local wynav = GetMobByID(wynavs[i]);
					wynav:useMobAbility(2254);
				end
			end
        end
	end
    
    -- Check for Defense Up
    if mob:getHPP() <= defUpHPP then
	    if mob:getHPP() > 10 then
        mob:addMod(MOD_DEF, 30);
        mob:addMod(MOD_MEVA, 10);
        mob:addMod(MOD_MDEF, 10);
		mob:addMod(MOD_RDEF, 30);
        mob:setLocalVar("defUpHPP", mob:getHPP() - 10);
		end
    end;
    
    -- Check for Bracelets mode change
    if mob:AnimationSub() ~= 2 and mob:getHPP() < braceletsHPP then
        -- TODO: More buffs?
        mob:addMod(MOD_ATT, 200);
        mob:addMod(MOD_MATT, 40);
        mob:AnimationSub(2);
		mob:setMobMod(MOBMOD_MAGIC_COOL, 30);
    end;
	for i = 1, 6 do
	    if wynavStatus[i] == 16 then
	        GetMobByID(wynavs[i]):updateEnmity(target);
	    end
	end
    
    -- Check despawn timer
    if os.time() > mob:getLocalVar("despawnTime") then
        DespawnMob(AV);
        for i = 1, 6 do
            DespawnMob(wynavs[i]);
        end;
    end;
end;

function onSpellPrecast(mob, spell)
    if (spell:getID() == 218) then -- Meteor
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(30);
        spell:setAnimation(280); -- AoE Meteor Animation
        spell:setMPCost(1);
    end
end;

function onMonsterMagicPrepare(caster, target)
end;

function onMagicHit(caster, target, spell)
    local dayConverter = {2, 3, 4, 5, 6};
    dayConverter[0] = 1;
    
    local regen = target:getMod(MOD_REGEN);
	local dayElem = VanadielDayElement() +1;
    local spellElem = spell:getElement();
--    printf("Regen: %s | DayElem: %s | SpellElem: %s", regen, dayElem, spellElem);
    
    if (regen > 10 and spellElem == dayElem and (caster:isPC() or caster:isPet())) then
        target:setMod(MOD_REGEN, regen - 4);
		printf("Regen change: %s", regen);
    end;
    
    return 1;
end;

function onMobRoam(mob)
	if os.time() > mob:getLocalVar("despawnTime") then
       DespawnMob(AV);
        for i = 1, 6 do
            DespawnMob(wynavs[i]);
        end
    end
end

function onMobDespawn(mob)
    for i = 1, 6 do
      DespawnMob(wynavs[i]);
    end;
end;

function onMobDeath(mob, player, isKiller)
    player:addTitle(VIRTUOUS_SAINT);
	local killed = player:getVar("Killed_AV");
	player:setVar("Killed_AV",killed+1);
end;

function initUltVars(mob)
end;

function getUlts()
    local ults = {};
    ults[1] = {};
    ults[1]["name"] = "mightyStrikes";
    ults[1]["abilityId"] = 2242;
    ults[1]["effectId"] = dsp.effects.MIGHTY_STRIKES;
    ults[2] = {};
    ults[2]["name"] = "hundredFists";
    ults[2]["abilityId"] = 2243;
    ults[2]["effectId"] = dsp.effects.HUNDRED_FISTS;
    ults[3] = {};
    ults[3]["name"] = "benediction";
    ults[3]["abilityId"] = 2244;
    ults[3]["effectId"] = nil;
    ults[4] = {};
    ults[4]["name"] = "manaFont";
    ults[4]["abilityId"] = 2245;
    ults[4]["effectId"] = dsp.effects.MANAFONT;
    ults[5] = {};
    ults[5]["name"] = "chainspell";
    ults[5]["abilityId"] = 2246;
    ults[5]["effectId"] = dsp.effects.CHAINSPELL;
    ults[6] = {};
    ults[6]["name"] = "perfectDodge";
    ults[6]["abilityId"] = 2247;
    ults[6]["effectId"] = dsp.effects.PERFECT_DODGE;
    ults[7] = {};
    ults[7]["name"] = "invincible";
    ults[7]["abilityId"] = 2248;
    ults[7]["effectId"] = dsp.effects.INVINCIBLE;
    ults[8] = {};
    ults[8]["name"] = "bloodWeapon";
    ults[8]["abilityId"] = 2249;
    ults[8]["effectId"] = dsp.effects.BLOOD_WEAPON;
    ults[9] = {};
    ults[9]["name"] = "familiar";
    ults[9]["abilityId"] = 2250;
    ults[9]["effectId"] = dsp.effects.FAMILIAR;
    ults[10] = {};
    ults[10]["name"] = "soulVoice";
    ults[10]["abilityId"] = 2251;
    ults[10]["effectId"] = dsp.effects.SOUL_VOICE;
    ults[11] = {};
    ults[11]["name"] = "eagleEyeShot";
    ults[11]["abilityId"] = 2252;
    ults[11]["effectId"] = nil;
    ults[12] = {};
    ults[12]["name"] = "astralFlow";
    ults[12]["abilityId"] = 2256;
    ults[12]["effectId"] = dsp.effects.ASTRAL_FLOW;
    ults[13] = {};
    ults[13]["name"] = "mijinGakure";
    ults[13]["abilityId"] = nil; --2254;
    ults[13]["effectId"] = nil;
    ults[14] = {};
    ults[14]["name"] = "callWyvern";
    ults[14]["abilityId"] = 2255;
    ults[14]["effectId"] = nil;
    ults[15] = {};
    ults[15]["name"] = "meikyoShisui";
    ults[15]["abilityId"] = 2253;
    ults[15]["effectId"] = dsp.effects.MEIKYO_SHISUI;

    return ults;
end;
        