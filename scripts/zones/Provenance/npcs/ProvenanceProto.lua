-----------------------------------
--	Area: Southern_San_dOria
--	NPC: Moogle
--	@pos 
-----------------------------------

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	local cruor = player:getCurrency("cruor");
	if(player:getVar("MentorFlag") == 1) then
		player:PrintToPlayer(string.format("You currently have %d Cruor", cruor),0,"KnowOne");
		player:PrintToPlayer(("Trade 1 Gil for 1 Card of Balance, Deducts 1000 Cruor"),0,"KnowOne");
		player:PrintToPlayer(("Trade 2 Gil for 6 Card of Balance, Deducts 6000 Cruor"),0,"KnowOne");
		player:PrintToPlayer(("Trade 3 Gil for 12 Card of Balance, Deducts 12000 Cruor"),0,"KnowOne");
		player:PrintToPlayer(("Trade 4 Gil for 1000 Cruor, Deducts 1 merit"),0,"KnowOne");
		player:PrintToPlayer(("Trade 5 Gil for 10000 Cruor, Deducts 10 Merits"),0,"KnowOne");
	else
		player:PrintToPlayer(string.format("You currently have %d Cruor", cruor),0,"KnowOne");
		player:PrintToPlayer(("Trade 1 Gil for 1 Card of Balance, Deducts 1000 Cruor"),0,"KnowOne");
		player:PrintToPlayer(("Trade 2 Gil for 6 Card of Balance, Deducts 6000 Cruor"),0,"KnowOne");
		player:PrintToPlayer(("Trade 3 Gil for 12 Card of Balance, Deducts 12000 Cruor"),0,"KnowOne");
		player:PrintToPlayer(("Trade 4 Gil for 250 Cruor, Deducts 1 merit"),0,"KnowOne");
		player:PrintToPlayer(("Trade 5 Gil for 2500 Cruor, Deducts 10 Merits"),0,"KnowOne");
	end
end;

function onTrade(player,npc,trade)
local cruor = player:getCurrency("cruor");
local merit = player:getMeritCount();
local newmerit = (merit -1);

if (trade:getGil() == 1) and (trade:getItemCount() == 1) and (player:getFreeSlotsCount() > 0) then
	if (cruor >= 1000) then
		player:delCurrency("cruor", 1000);
		player:addItem(3223);
		player:messageSpecial(ITEM_OBTAINED,3223);
        player:tradeComplete();
	else
		player:PrintToPlayer(("You dont have enough Cruor."),0,"KnowOne");
	end
elseif (trade:getGil() == 2) and (trade:getItemCount() == 1) and (player:getFreeSlotsCount() > 0) then
	if (cruor >= 6000) then
		player:delCurrency("cruor", 6000);
		player:addItem(3223,6);
		player:messageSpecial(ITEM_OBTAINED,3223);
        player:tradeComplete();
	else
		player:PrintToPlayer(("You dont have enough Cruor."),0,"KnowOne");
	end
elseif (trade:getGil() == 3) and (trade:getItemCount() == 1) and (player:getFreeSlotsCount() > 0) then
	if (cruor >= 12000) then
		player:delCurrency("cruor", 12000);
		player:addItem(3223,12);
		player:messageSpecial(ITEM_OBTAINED,3223);
        player:tradeComplete();
	else
		player:PrintToPlayer(("You dont have enough Cruor."),0,"KnowOne");
	end
elseif (trade:getGil() == 4) and (trade:getItemCount() == 1) then
	if (merit >= 1) then
		if(player:getVar("MentorFlag") == 1) then
			player:setMerits(merit -1);
			player:addCurrency("cruor", 1000);
			player:tradeComplete();
			player:PrintToPlayer(("Awarded 1000 Cruor."),0,"KnowOne");
		else
			player:setMerits(merit -1);
			player:addCurrency("cruor", 250);
			player:tradeComplete();
			player:PrintToPlayer(("Awarded 250 Cruor."),0,"KnowOne");
		end
	else
		player:PrintToPlayer(("You dont have enough Merits."),0,"KnowOne");
	end
elseif (trade:getGil() == 5) and (trade:getItemCount() == 1) then
	if (merit >= 10) then
		if(player:getVar("MentorFlag") == 1) then
			player:setMerits(merit -10);
			player:addCurrency("cruor", 10000);
			player:tradeComplete();
			player:PrintToPlayer(("Awarded 10000 Cruor."),0,"KnowOne");
		else
			player:setMerits(merit -10);
			player:addCurrency("cruor", 2500);
			player:tradeComplete();
			player:PrintToPlayer(("Awarded 2500 Cruor."),0,"KnowOne");
		end
	else
		player:PrintToPlayer(("You dont have enough Merits."),0,"KnowOne");
	end
end

local Vaug1 = math.random(512,518);
local Vaug2 = math.random(768,775);
local stataug = math.random(512,518);
local Vval1 = math.random(0,2);
local Vval2 = math.random(9,29);
local Vval3 = math.random(0,20);
local Vval4 = math.random(4,9);
local Vval5 = math.random(0,4);
local Vval6 = math.random(2,12);
local Vval7 = math.random(0,3);
local Vval8 = math.random(9,19);
local Vval9 = math.random(2,9);
local Vval10 = math.random(7,9);
local Vval11 = math.random(0,31);
local Vval12 = math.random(2,7);
local Vval13 = math.random(0,5);
local Vval14 = math.random(1,5);
local Vval15 = math.random(0,10);
local baug1 = 0;
local bval1 = 0;
local baug2 = 0;
local bval2 = 0;
local wheel4 = math.random(0,3);
local wheel9 = math.random(0,8);
local Gval1 = math.random(0,1);
local Gval2 = math.random(0,2);
local Gval3 = math.random(2,4);
local Gval4 = math.random(2,8);
local torval1 = math.random(0,2);
local torval2 = math.random(0,2);
local newaug1 = math.random(526,549);
local newaug2 = math.random(526,549);
local toreador1 = math.random(0,20);
local toreador2 = math.random(0,20);
local pole1 = math.random(0,10) -- 44 = storetp + subtle blow, 23 = accuracy, 179 = resist blind, 178 = resist paralyze, 198 = zanshin, 260, 262-264, 266, 268 2h skills
local pole2 = math.random(1,3)
local poleval1;
local poleval2;
local poleaug1;
local poleaug2;
if(pole1 == 10)then -- storetp/subtleblow + 1 * math.random(1,3)
poleaug1 = 44; 
poleval1 = math.random(1,3);
elseif(pole1 == 9)then -- accuracy + math.random(1,3) * math.random(1,2)
poleaug1 = 23;
poleval1 = math.random(1,3) * math.random(1,2);
elseif(pole1 == 8)then -- zanshin + 1
poleaug1 = 198;
poleval1 = 1;
elseif(pole1 == 7)then -- skill + 1 * math.random(1,3)
poleaug1 = 260;
poleval1 = 1 * math.random(1,3);
elseif(pole1 == 6)then -- skill + 1 * math.random(1,3)
poleaug1 = 262;
poleval1 = 1 * math.random(1,3);
elseif(pole1 == 5)then -- skill + 1 * math.random(1,3)
poleaug1 = 263;
poleval1 = 1 * math.random(1,3);
elseif(pole1 == 4)then -- skill + 1 * math.random(1,3)
poleaug1 = 264;
poleval1 = 1 * math.random(1,3);
elseif(pole1 == 3)then -- skill + 1 * math.random(1,3)
poleaug1 = 266;
poleval1 = 1 * math.random(1,3);
elseif(pole1 == 2)then -- skill + 1 * math.random(1,3)
poleaug1 = 268;
poleval1 = 1 * math.random(1,3);
elseif(pole1 <= 1)then
	local poleres = math.random(1,2);
	if poleres == 1 then -- blind resist + 3 * math.random(1,3)
	poleaug1 = 179;
	poleval1 = 3 * math.random(1,3);
	else
	poleaug1 = 178; -- paralyze resist +3 * math.random(1,3)
	poleval1 = 3 * math.random(1,3);
	end
end

if(pole2 == 10)then -- storetp/subtleblow + 1 * math.random(1,3)
poleaug2 = 44;
poleval2 = math.random(1,3);
elseif(pole2 == 9)then -- accuracy + math.random(1,3) * math.random(1,2)
poleaug2 = 23;
poleval2 = math.random(1,3) * math.random(1,2);
elseif(pole2 == 8)then -- zanshin + 1
poleaug2 = 198;
poleval2 = 1;
elseif(pole2 == 7)then -- skill + 1 * math.random(1,3)
poleaug2 = 260;
poleval2 = 1 * math.random(1,3);
elseif(pole2 == 6)then -- skill + 1 * math.random(1,3)
poleaug2 = 262;
poleval2 = 1 * math.random(1,3);
elseif(pole2 == 5)then -- skill + 1 * math.random(1,3)
poleaug2 = 263;
poleval2 = 1 * math.random(1,3);
elseif(pole2 == 4)then
-- skill + 1 * math.random(1,3)
poleaug2 = 264;
poleval2 = 1 * math.random(1,3);
elseif(pole2 == 3)then
-- skill + 1 * math.random(1,3)
poleaug2 = 266;
poleval2 = 1 * math.random(1,3);
elseif(pole2 == 2)then
-- skill + 1 * math.random(1,3)
poleaug2 = 268;
poleval2 = 1 * math.random(1,3);
elseif(pole2 <= 1)then
	local poleres = math.random(1,2);
	if poleres == 1 then 
	-- blind resist + 3 * math.random(1,3)
	poleaug2 = 179;
	poleval2 = 3 * math.random(1,3);
	else
	-- paralyze resist +3 * math.random(1,3)
	poleaug2 = 178;
	poleval2 = 3 * math.random(1,3);
	end
end




if(toreador1 == 20) then
toraug1 = 41;  -- critical hite rate
torval1 = math.random(0,1);
end
if(toreador1 == 19) then
toraug1 = 328; -- crit hit damage +1%
torval1 = math.random(0,4);
end
if(toreador1 == 18) then
toraug1 = 41; -- crit hit rate +1
torval1 = math.random(0,2);

end
if(toreador1 == 17) then
toraug1 = 29; --ranged attack +1
torval1 = math.random(0,6);

end
if(toreador1 == 16) then
toraug1 = 27; -- rng acc +1
torval1 = math.random(0,12);

end
if(toreador1 == 15) then
toraug1 = 144; --triple attack +1
torval1 = math.random(0,1);

end
if(toreador1 == 14) then
toraug1 = 39; -- enmity +1
torval1 = math.random(0,4);

end
if(toreador1 == 13) then
toraug1 = 40; -- enmity -1
torval1 = math.random(0,4);

end
if(toreador1 == 12) then
toraug1 = 23;  -- acc +1
torval1 = math.random(0,4);

end
if(toreador1 == 11) then
toraug1 = 23; -- acc +1
torval1 = math.random(0,4);

end
if(toreador1 == 10) then
toraug1 = 25;  -- attack +1
torval1 = math.random(0,4);

end
if(toreador1 == 9) then
toraug1 = 25; -- attack +1
torval1 = math.random(0,4);

end
if((toreador1 <= 8) and (toreador1 >= 6)) then
toraug1 = math.random(512,518); -- random stat +1
torval1 = math.random(0,2);

end
if(toreador1 <= 5) then
toraug1 = math.random(768,775);  -- random elem resist +1
torval1 = math.random(0,11);

end

-- begin toreador 2

if(toreador2 >= 20 and toreador2 <= 99) then
toraug2 = math.random(512,518); --atributes +, -
torval2 = math.random(0,2);
end
if(toreador2 == 19) then
toraug2 = 328; -- crittical hit damage
torval2 = math.random(0,4);
end
if(toreador2 == 18) then
toraug2 = 41; -- critical hit rate +
torval2 = math.random(0,2);

end
if(toreador2 == 17) then
toraug2 = 29; -- rng att +
torval2 = math.random(0,6);

end
if(toreador2 == 16) then
toraug2 = 27; -- rng acc +
torval2 = math.random(0,12);

end
if(toreador2 == 15) then
toraug2 = 144; -- tripple attack
torval2 = math.random(0,1);

end
if(toreador2 == 14) then
toraug2 = 39; -- enmity +
torval2 = math.random(0,4);

end
if(toreador2 == 13) then
toraug2 = 40; -- enmity -
torval2 = math.random(0,4);

end
if(toreador2 == 12) then
toraug2 = 23; -- accuracy +
torval2 = math.random(0,4);

end
if(toreador2 == 11) then
toraug2 = 23; -- accurcy -
torval2 = math.random(0,4);

end
if(toreador2 == 10) then
toraug2 = 25; -- attack +
torval2 = math.random(0,4);

end
if(toreador2 == 9) then
toraug2 = 25; -- attack 
torval2 = math.random(0,4);

end
if((toreador2 <= 8) and (toreador2 >= 6)) then
toraug2 = math.random(512,518); -- random atributes +
torval2 = math.random(0,2);

end
if(toreador2 <= 5) then
toraug2 = math.random(768,775); -- random resist +
torval2 = math.random(0,11);

end

if(toreador1 == 20 and toreador2 == 20) then 
	toraug2 = 1080;
	torval2 = 0;
	local toreador1 = math.random(1,20);
	player:setVar("wsdmgaug");
end

    if (trade:hasItemQty(14674,1) and trade:hasItemQty(3223,1))then
			player:tradeComplete(); -- Toreador's Ring
            player:addItem(14674,1,toraug1,torval1,toraug2,torval2);
            player:PrintToPlayer(("You have successfully augmented your Toreador's Ring"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
    end
	
	if (trade:hasItemQty(19041,1) and trade:hasItemQty(3223,1))then
			player:tradeComplete(); -- Rose strap
            player:addItem(19041,1,poleaug1,poleval1,poleaug2,poleval2);
            player:PrintToPlayer(("You have successfully augmented your Rose Strap"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
    end

local brutal1 = math.random(0,3);
if(brutal1 == 0) then
 baug1 = 143;
 bval1 = math.random(0,2);
end
if (brutal1 == 1) then
 baug1 = 146;
 bval1 = math.random(0,2);
end
if (brutal1 == 2) then
 baug1 = 49;
 bval1 = math.random(4,9);
end
if (brutal1 == 3) then
 baug1 = 146;
 bval1 = math.random(0,2);
 end
local brutal2 = math.random(0,3);
if(brutal2 == 0) then
 baug2 = 143;
 bval2 = math.random(0,2);
end
if (brutal2 == 1) then
 baug2 = 146;
 bval2 = math.random(0,2);
end
if (brutal2 == 2) then
 baug2 = 49;
 bval2 = math.random(4,9);
end
if (brutal2 == 3) then
 baug2 = 49;
 bval2 = math.random(4,9);
 end

-- prism cape
if(trade:hasItemQty(15899,1) and trade:hasItemQty(3223,1))then -- V belt
player:tradeComplete();
        player:addItem(15899,1,Vaug1,Vval1,Vaug2,19,Vaug2,Vval2);
        player:PrintToPlayer(("You have successfully augmented your Velocious Belt"),0,"KnowOne");
        player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
end
    if (trade:hasItemQty(14812,1) and trade:hasItemQty(3223,1))then
    player:tradeComplete(); -- Loquacious earring
        if (wheel4 == 0) then
            player:addItem(14812,1,10,Vval3);
            player:PrintToPlayer(("You have successfully augmented your Loquacious Earring with MP"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
        elseif (wheel4 == 1) then
            player:addItem(14812,1,141,Vval4);
            player:PrintToPlayer(("You have successfully augmented your Loquacious Earring with Conserve MP"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
        elseif (wheel4 == 2) then
            player:addItem(14812,1,35,Vval5);
            player:PrintToPlayer(("You have successfully augmented your Loquacious Earring with Magical Accuracy"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
        elseif (wheel4 == 3) then
            player:addItem(14812,1,293,Vval6);
            player:PrintToPlayer(("You have successfully augmented your Loquacious Earring with Dark Magic skill"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
        end
    end
	
    if (trade:hasItemQty(14813,1) and trade:hasItemQty(3223,1))then
			player:tradeComplete(); -- Brutal Earring 
            player:addItem(14813,1,baug1,bval1,baug2,bval2);
            player:PrintToPlayer(("You have successfully augmented your Brutal Earring"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
    end
   
    if (trade:hasItemQty(13627,1) and trade:hasItemQty(3223,1))then
    player:tradeComplete(); -- Prism Cape
        if (wheel4 == 0) then
            player:addItem(13627,1,140,Vval1);
            player:PrintToPlayer(("You have successfully augmented your Prism Cape with Fast Cast"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
        elseif (wheel4 == 1) then
            player:addItem(13627,1,35,Vval7);
            player:PrintToPlayer(("You have successfully augmented your Prism Cape with Magic accuracy"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
        elseif (wheel4 == 2) then
            player:addItem(13627,1,329,Vval7);
            player:PrintToPlayer(("You have successfully augmented your Prism Cape with Cure potency"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
        elseif (wheel4 == 3) then
            player:addItem(13627,1,53,Vval8);
            player:PrintToPlayer(("You have successfully augmented your Prism Cape with Spell interruption rate"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
        end
    end
    if (trade:hasItemQty(15270,1) and trade:hasItemQty(3223,1))then
    player:tradeComplete(); -- Turban
        if (wheel4 == 0) then
            player:addItem(15270,1,142,Vval9);
            player:PrintToPlayer(("You have successfully augmented your Wal-Mart Turban with Store TP"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
        elseif (wheel4 == 1) then
            player:addItem(15270,1,49,Vval9);
            player:PrintToPlayer(("You have successfully augmented your Wal-Mart Turban with Haste"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
        elseif (wheel4 == 2) then
            player:addItem(15270,1,31,Vval10);
            player:PrintToPlayer(("You have successfully augmented your Wal-Mart Turban with Evasion"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
        elseif (wheel4 == 3) then
            player:addItem(15270,1,290,Vval9);
            player:PrintToPlayer(("You have successfully augmented your Wal-Mart Turban with Enhancing Magic"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
        end
    end
    if (trade:hasItemQty(13735,1) and trade:hasItemQty(3223,1))then
    player:tradeComplete(); -- Hauby +1
        if (wheel9 == 0) then
            player:addItem(13735,1,259,Vval12,33,Vval11);
            player:PrintToPlayer(("You have successfully augmented your Hauby with Sword Skill"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
        elseif (wheel9 == 1) then
            player:addItem(13735,1,260,Vval12,33,Vval11);
            player:PrintToPlayer(("You have successfully augmented your Hauby with Great Sword Skill"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
        elseif (wheel9 == 2) then
            player:addItem(13735,1,261,Vval12,33,Vval11);
            player:PrintToPlayer(("You have successfully augmented your Hauby with Axe Skill"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
        elseif (wheel9 == 3) then
            player:addItem(13735,1,262,Vval12,33,Vval11);
            player:PrintToPlayer(("You have successfully augmented your Hauby with Great Axe Skill"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
        elseif (wheel9 == 4) then
            player:addItem(13735,1,263,Vval12,33,Vval11);
            player:PrintToPlayer(("You have successfully augmented your Hauby with Scythe Skill"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
        elseif (wheel9 == 5) then
            player:addItem(13735,1,264,Vval12,33,Vval11);
            player:PrintToPlayer(("You Vval12 successfully augmented your  Hauby with Polearm Skill"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
        elseif (wheel9 == 6) then
            player:addItem(13735,1,265,Vval12,33,Vval11);
            player:PrintToPlayer(("You have successfully augmented your Hauby with Katana Skill"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
        elseif (wheel9 == 7) then
            player:addItem(13735,1,266,Vval12,33,Vval11);
            player:PrintToPlayer(("You have successfully augmented your Hauby with Great Katana Skill"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
        elseif (wheel9 == 8) then
            player:addItem(13735,1,267,Vval12,33,Vval11);
            player:PrintToPlayer(("You have successfully augmented your Hauby with Club Skill"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");      
        end
    end
	if (trade:hasItemQty(18257,1) and trade:hasItemQty(3223,1)) then
        player:tradeComplete(); -- Bibiki seashell
        if (wheel4 == 0) then
            player:addItem(18257,1,51,Vval5,52,Vval5,53,Vval1);
            player:PrintToPlayer(("You have successfully augmented your Bibiki Seashell with HP/MP while healing + Spell interruption rate"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
        elseif (wheel4 == 1) then
            player:addItem(18257,1,51,Vval5,52,Vval5,54,Vval1);
            player:PrintToPlayer(("You have successfully augmented your Bibiki Seashell withHP/MP while healing + Phys dmg taken"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
        elseif (wheel4 == 2) then
            player:addItem(18257,1,51,Vval5,52,Vval5,55,Vval1);
            player:PrintToPlayer(("You have successfully augmented your Bibiki Seashell with HP/MP while healing + Magic dmg taken"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
        elseif (wheel4 == 3) then
            player:addItem(18257,1,51,Vval5,52,Vval5,56,Vval1);
            player:PrintToPlayer(("You have successfully augmented your Bibiki Seashell with HP/MP while healing + Breath dmg taken"),0,"KnowOne");
            player:PrintToPlayer(("To examine the augment, highlight item and press minus key on numpad"),0,"KnowOne");
        end
    end 

   
    if (trade:getItemCount() == 2) and (trade:getGil() == 50000) then -- Loco: This is now fixed and working properly.
	 local augitem = trade:getItemId(1);
		if (player:getFreeSlotsCount() > 0) then
			if (augitem ~= 0) then
				player:tradeComplete();
				player:addItem(augitem);
				player:PrintToPlayer(("Augment Removed"),0,"KnowOne");
				player:messageSpecial(ITEM_OBTAINED,augitem);
			else
				player:PrintToPlayer(("You must make more space, picklehead."),0,"KnowOne");
			end		
		else
			player:PrintToPlayer(("I don't want that. You must include 50,000 gil with an item to have an augment removed."),0,"KnowOne");
		end
	end


   
end;


function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

