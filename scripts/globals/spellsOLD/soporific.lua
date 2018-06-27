----------------------------------------
-- Spell: Soporific
-----------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/magic");
-----------------------------------------
-- OnMagicCastingCheck
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onSpellCast(caster,target,spell)

    local typeEffect = dsp.effects.SLEEP_II;
    local dINT = (caster:getStat(MOD_INT) - target:getStat(MOD_INT));
    local resist = applyResistanceEffect(caster,spell,target,dINT,BLUE_SKILL,0,typeEffect);
    local duration = 90 * resist;
	local mobid  = target:getID();
	
	if 	(mobid == 16806227) or -- Tiamat
		(mobid == 17555890) or -- Vrtra
		(mobid == 16797969) or -- Jorm
		(mobid == 17408018) or -- Fafnir
		(mobid == 17408019) or -- Nidhogg
		(mobid == 17297440)	or -- Behemoth
		(mobid == 17297441)	or -- King Behemoth
		(mobid == 17301537)	or -- Adamantoise
		(mobid == 17301538)	or -- Aspidochelone
		(mobid == 17228242)	or -- Simurgh
		(mobid == 17269106)	or -- Roc
		(mobid == 17203216)	or -- King Arthro
		(mobid == 17396137)	or -- Tzee Xicu the Manifest
		(mobid == 17309983)	or -- Suzaku
		(mobid == 17506674)	or -- Suzaku (Kirin's Pet)
		(mobid == 17309981)	or -- Seiryu
		(mobid == 17506672)	or -- Seiryu (Kirin's Pet)
		(mobid == 17309980)	or -- Genbu
		(mobid == 17506671)	or -- Genbu (Kirin's Pet)
		(mobid == 17309982)	or -- Byakko
		(mobid == 17506673)	or -- Byakko (Kirin's Pet)
		(mobid == 17506670)	or -- Kirin
		(mobid == 17506675)	or -- Kirin S Avatar
		(mobid == 17027458)	or -- Cerberus
		(mobid == 17101201)	or -- Khimaira
		(mobid == 17289575)	or -- King Vinegarroon
		(mobid == 17596720)	or -- Serket
		(mobid == 16912846)	or -- Prudence 1
		(mobid == 16912847) or -- Prudence 2
		(mobid == 16916814) or -- Temperance
		(mobid == 16912838) or -- Hope
		(mobid == 16921021) or -- Faith
		(mobid == 16921015) or -- Fortitude
		(mobid == 16912839) or -- Justice
		(mobid == 16912848) -- Love
	then
		spell:setMsg(85);
		return typeEffect;
	end	

    if (resist > 0.5) then -- Do it!
            if (target:addStatusEffect(typeEffect,2,0,duration)) then
                spell:setMsg(236);
            else
                spell:setMsg(75);
          
			end
    else
        spell:setMsg(85);
    end

    return typeEffect; 
end; 