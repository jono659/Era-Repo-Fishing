require("scripts/globals/magic");
require("scripts/globals/status");
require("scripts/globals/bluemagic");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
	return 0;
end;

function onSpellCast(caster,target,spell)

if(caster:getRotPos() - target:getRotPos() < 23 and caster:hasStatusEffect(dsp.effects.SNEAK_ATTACK)) then

    local params = {};
	
	    params.tpmod = TPMOD_DAMAGE;
        params.dmgtype = DMGTYPE_H2H;
        params.scattr = SC_FUSION;
        params.numhits = 1;
		params.multiplier = 3.75;
        params.tp150 = 2.125;
        params.tp300 = 2.75;
        params.azuretp = 2.875;
        params.duppercap = 75;
        params.str_wsc = 0.5;
        params.dex_wsc = 0.0;
        params.vit_wsc = 0.5;
        params.agi_wsc = 0.0;
        params.int_wsc = 0.0;
        params.mnd_wsc = 0.0;
        params.chr_wsc = 0.0;

		damage = caster:getStat(MOD_DEF)*3;
		damage = damage - target:getStat(MOD_DEF)*math.random(1.70,1.80)
		damage = BlueFinalAdjustments(caster, target, spell, damage, params);
		
		caster:delStatusEffect(dsp.effects.SNEAK_ATTACK);
		return damage;
	
else
		
    local params = {};

        params.tpmod = TPMOD_DAMAGE;
        params.dmgtype = DMGTYPE_H2H;
        params.scattr = SC_FUSION;
        params.numhits = 1;
        params.multiplier = 1.75;
        params.tp150 = 2.125;
        params.tp300 = 2.75;
        params.azuretp = 2.875;
        params.duppercap = 75;
        params.str_wsc = 0.5;
        params.dex_wsc = 0.0;
        params.vit_wsc = 0.5;
        params.agi_wsc = 0.0;
        params.int_wsc = 0.0;
        params.mnd_wsc = 0.0;
        params.chr_wsc = 0.0;
		
		damage = caster:getStat(MOD_DEF)*0.5;
		damage = damage - target:getMod(MOD_DEF)*0.2
		damage = BlueFinalAdjustments(caster, target, spell, damage, params);
	
		caster:delStatusEffect(dsp.effects.SNEAK_ATTACK);
		return damage;
	end
end;
