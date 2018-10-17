local unpack = unpack

local Logo_GUI = {

	{type = "texture", texture = "Interface\\AddOns\\Nerdpack-Kleei-2.0\\media\\assassin.blp", width = 160, height = 160, offset = 125, y = -60, align = "center"},

}

local GUI = {

	unpack(Logo_GUI),

	{type = "header", size = 16, text = "Keybinds", align = "center"},
	{type = "text", text = "|c0000FA9A Just hold the Key|r", align = "center"},
	{type = "text", text = "|c0087CEFA Choose Keybind:", align = "center"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Cheap Shot, Kidney Shot:|c0000FA9A", key = "list1", width = 100, list = {
	{key = "1", text = "Shift Keybind"},
	{key = "2", text = "Control Keybind"},
	{key = "3", text = "Alt Keybind"},
	{key = "none", text = "Disable"},
	}, default = "1" },
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Blind:|c0000FA9A target behind you or out of melee", key = "list2", width = 100, list = {
	{key = "4", text = "Shift Keybind"},
	{key = "5", text = "Control Keybind"},
	{key = "6", text = "Alt Keybind"},
	{key = "none", text = "Disable"},	
	}, default = "6" },	
	{type = "text", text = "", align = "center"}, --------------------------------------
	--{type = "combo", default = "9", key = "list3", list = keybind_list_3, width = 100},		
    --{type = "text", text = "Use Shadowstep:|c0000FA9A on target"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
    {type = 'header', size = 16, text = 'PVP', align = 'center'},
    {type = "checkbox",	text = "Stun:|c0000FA9A auto stun PVP Target [Kidney Shot].|r", align = "left", key = "stun", default = true},
    {type = "checkbox",	text = "Sap:|c0000FA9A auto [Sap] PVP Target.", align = "left", key = "sap_key", default = true},
    --{type = 'checkbox',	text = "Vanish:|c0000FA9A target PVP not stuned and [Kidney Shot] is on CD", align = 'left', key = 'van_no_stun', default = false},
	--{type = 'checkbox',	text = "Blind:|c0000FA9A target PVP not stuned and [Vanish] is on CD", align = 'left', key = 'blind_no_van', default = false},
    {type = 'checkbox',	text = "Gladiator's Medallion , Every Man for Himself:", align = 'left', key = 'medal', default = true},
	{type = 'text', text = "|c0000FA9A      Remove stun/fear/disorient/charm.|r"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "Survival", align = "center"},
	{type = "checkspin", text = "Use Vanish:|c0000FA9A PVP", key = "van_pvp", check = true, spin = 15, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Vanish:|c0000FA9A PVE", key = "van_pve", check = false, spin = 15, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Crimson Vial:", key = "cv", check = true, spin = 70, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Evasion:", key = "eva", check = true, spin = 65, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Health Stone:", key = "hs", check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
	{type = "header", size = 16, text = "Cooldowns Toggle:", align = 'center'},
	{type = "checkbox", text = "Vendetta:", key = "vendeta_key", default = true},
	{type = "checkbox", text = "Marked for Death:", key = "mfd_key", default = true},
	{type = "checkbox", text = "Thistle Tea:|c0000FA9A when energy < 40 and target boss or PVP enemy", key = "tea_key", default = true},
	{type = 'checkbox', text = "Arcane Torrent:|c0000FA9A Blood Elf Racial, when less 30 energy", key = "blood_elf_racial_key", default = true},
	{type = "checkbox", text = "Blood Fury:|c0000FA9A ORC Racial", key = "bloodfury_key", default = true},
	{type = "checkbox", text = "Berserking:|c0000FA9A Troll Racial", key = "berserking_key", default = true},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "Other", align = "center"},
	--{type = "checkbox", text = "Auto Targeting:|c0000FA9A when you have no target or target is dead", key = "auto_target_key", default = true},
	{type = "checkbox", text = "Auto Stealth:|c0000FA9A when you have enemy target", key = "stealth_key", default = true},
	{type = "checkbox", text = "Use Tricks of the Trade:|c0000FA9A in dungeon on tank", key = "tott", default = true},
	{type = "checkbox", text = "Pick Pocket:|c0000FA9A when in Range", key = "pocket_key",   default = false},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Lethal Poisons:|c0000FA9A <= 10 min.", key = "poisons_list", width = 100, list = {
	{key = "22", text = "Deadly Poison"},
	{key = "23", text = "Wound Poison"},
	{key = "none", text = "Disable"},	
	}, default = "22" },	
	{type = "checkbox", text = "Crippling Poison:|c0000FA9A", key = "crippling_key",   default = true},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = 'header', size = 16, text = "Trinkets", align = 'center'},
	{type = 'text', text = '|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r', align = 'center'},
	{type = 'checkbox', text = 'Trinket #1', 	key = 'trk1',	default = false},
	{type = 'checkbox', text = 'Trinket #2', 	key = 'trk2',   default = false},
	{type = 'text', text = '|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r'},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

} 

local exeOnLoad = function()

 	print("|c0000FA9A ----------------------------------------------------------------------|r")
 	print("|c0000FA9A --- |r|cffffff00ROGUE - Assassination|r|c00FF0000 for Advanced Unlocker|r")
	--[[print('|c0000FA9A ------------------------PVP-------------------------------------------|r')
 	print('|c0000FA9A --- |rRecommended Talents: 1/1 - 2/3 - 3/3 - 4/3 - 5/2 - 6/3 - 7/1')
    print('|c0000FA9A')]]
	print('|c0000FA9A ------------------------PVE-------------------------------------------|r')
 	print('|c0000FA9A --- |rRecommended Talents: 1/1 - 2/2 - 3/1 - 4/1 - 5/3 - 6/2 - 7/1')
 	print('|c0000FA9A ----------------------------------------------------------------------|r')
	print('|c0000FA9A ----------------------Still descovering BFA-------------------------|r')
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")
	print("|c0000FA9A If you like my work you can always support me|r|c00FF0000 https://www.paypal.me/thekleei|r")
    
	NeP.Interface:AddToggle({key = "rupture_key", icon = "Interface\\Icons\\ability_rogue_rupture", name = "Rupture", text = "Include Rupture in rotation."})

end

local GarroteAoE = {

    {"%pause", "player.energy <= 45", "player"},
    {"Garrote", "inRange.spell", "enemies"},

}

local Garrote = {

    {"%pause", "player.energy <= 45", "player"},
    {"Garrote", "inRange.spell", "target"},

}

local pvp = {

    {"!Every Man for Himself", "UI(medal) & state(stun) & !buff(Stealth) & !buff(Vanish)", "player"},        
    {"!Gladiator's Medallion", "UI(medal) & !buff(Stealth) & !buff(Vanish) & target.player & target.canAttack & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},

    {"Fan of Knives", "canAttack & distance <= 10 & buff(Stealth).any", "enemies"},
    {"Fan of Knives", "canAttack & distance <= 10 & buff(Prowl).any", "enemies"},
	
}

--[[local pvp_1v1 = {

    {"!Every Man for Himself", "UI(medal) & state(stun) & !buff(Stealth) & !buff(Vanish)", "player"},        
    {"!Gladiator's Medallion", "UI(medal) & !buff(Stealth) & !buff(Vanish) & target.player & {player.state(stun) & player.spell(Every Man for Himself)cooldown > 0 & player.race = Human || player.state(stun) & !player.race = Human || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},
    
	{"Kidney Shot", "inRange.spell & !player.buff(Stealth) & !player.buff(Vanish) & player.combopoints >= 3 & UI(stun) & target.debuff(Cheap Shot).duration <= 0.5", "target"},

    {"Vanish", "!player.buff(Stealth) & !player.buff(Cloak of Shadows) & !target.debuff(Sap) & UI(van_no_stun) & !target.state(stun) & !target.state(disorient) & !player.lastcast(Kidney Shot) & player.spell(Kidney Shot).cooldown >= gcd & !player.buff(Evasion)  & {target.class(Rogue) & player.spell(Blind).cooldown >= gcd || !target.class(Rogue)}"}, --test  & targettarget.is(player)
    {"Blind", "inRange.spell & !player.buff(Stealth) & !player.buff(Vanish) & !player.buff(Cloak of Shadows) & !target.debuff(Sap) & !target.debuff(Blind) & UI(blind_no_van) & !target.state(stun) & !target.state(disorient) & !player.lastcast(Kidney Shot) & !player.lastcast(Vanish) & player.spell(Kidney Shot).cooldown >= gcd & !target.immune(disorient) & !player.buff(Evasion)", "target"},-- & targettarget.is(player)

}]]

local Keybinds = {

	{"Cheap Shot", "inRange.spell & canAttack & infront & !immune_stun & {player.buff(Stealth) || player.buff(Subterfuge)} & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2 || UI(stun) & target.player & !player.buff(Vanish) & !target.state(stun)}", "target"},
	{"Kidney Shot", "inRange.spell & canAttack & infront & !IsStealthed & !immune_stun & !state(disarm) & !player.lastcast(Cheap Shot) & player.combopoints >= 3 & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2 || UI(stun) & target.player & !player.buff(Vanish) & !target.state(stun)}", "target"},
	{"Sap", "inRange.spell & canAttack & infront & UI(sap_key) & !player.buff(Vanish) & !immune_stun & !state(stun) & !state(disorient) & !state(incapacitate) & !combat & player", "target"},
	{"Blind", "inRange.spell & canAttack & !immune_stun & !player.buff(Vanish) & {IsStealthed || !IsStealthed & {target.behind || target.distance >= 7}} & {target.buff(Touch of Karma) || keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "target"},

}

local PreCombat = {

    --Leveling
    {"Sinister Strike", "inRange.spell & {player.level < 8 || !keybind(alt) & !keybind(shift) & !keybind(control) & player.level >= 8 & player.level <= 11}", "target"},
	--End Leveling

	{"Pick Pocket", "inRange.spell & UI(pocket_key) & !isdummy & !target.player & !player.moving & player.buff(Stealth) & !player.lastcast(Pick Pocket) & creatureType(Humanoid)", "target"},	

	{"Garrote", "inRange.spell", "target"},

}

local Poisons = {

    {"!/stopcasting", "UI(poisons_list)==22 & casting(Deadly Poison) & buff(Deadly Poison).duration > 600", "player"},
	{"Deadly Poison", "UI(poisons_list)==22 & !casting(Deadly Poison) & buff(Deadly Poison).duration <= 600", "player"},
	
    {"!/stopcasting", "UI(poisons_list)==23 & casting(Wound Poison) & buff(Wound Poison).duration > 600", "player"},
	{"Wound Poison", "UI(poisons_list)==23 & !casting(Wound Poison) & buff(Wound Poison).duration <= 600", "player"},
	
	{"!/stopcasting", "UI(crippling_key) & casting(Crippling Poison) & buff(Crippling Poison).duration > 600", "player"},
	{"Crippling Poison", "UI(crippling_key) & !casting(Crippling Poison) & buff(Crippling Poison).duration <= 600", "player"},
	
}

local Survival ={

    --{"Blind", "inRange.spell & !IsStealthed & player.area(10).enemies < 2 & targettarget(player) & target.buff(Touch of Karma).any", "target"}, -- || many more target CD's
    {"Vanish", "!player.buff(Stealth) & target.canAttack & target.alive & target.player & health < target.health & health <= UI(van_pvp_spin) & UI(van_pvp_check)", "player"},
	{"Vanish", "!player.buff(Stealth) & target.canAttack & target.alive & !target.player & !pvp.area & health < target.health & health <= UI(van_pve_spin) & UI(van_pve_check)", "player"},
	{"Crimson Vial", "!target.isdummy & health <= UI(cv_spin) & UI(cv_check)", "player"},
	{"Evasion", "health <= UI(eva_spin) & UI(eva_check) & !IsStealthed & incdmg.phys(5) >= health.max*0.02 & target.canAttack & target.alive", "player"},
	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check)", "player"}, --Health Stone

}

local Interrupts = {

	{"!Kick", "interruptAt(60) & inRange.spell & alive & canAttack & infront", "target"},

}

local Cooldowns = {

	{"&Vendetta", "inRange(Mutilate).spell & UI(vendeta_key) & canAttack & infront & debuff(Garrote) & debuff(Rupture)", "target"},
    {"#7676", "UI(tea_key) & target.inRange(Garrote).spell & target.canAttack & item(7676).count > 0 & energy < 40 & {target.boss || target.player}", "player"},
	{"&Marked for Death", "inRange(Mutilate).spell & UI(mfd_key) & talent(3,3) & player.combopoints < 2", "target"},
	{"Arcane Torrent", "UI(blood_elf_racial_key) & target.inRange(Mutilate).spell & energy <= 30", "player"},
	{"Blood Fury", "UI(bloodfury_key) & target.inRange(Mutilate).spell & target.canAttack", "player"},
    {"Berserking", "UI(berserking_key) & target.inRange(Mutilate).spell & target.canAttack", "player"},

	{"Exsanguinate", "talent(6,3) & inRange.spell & canAttack & deathin > 5 & debuff(Rupture).duration >= 18 & debuff(Garrote).duration >= 10", "target"},

	{"#trinket1", "UI(trk1) & target.inRange(Mutilate).spell & target.canAttack"},
	{"#trinket2", "UI(trk2) & target.inRange(Mutilate).spell & target.canAttack"},

}

local Combat = {

    {"/startattack", "!isattacking & inRange(Mutilate).spell & canAttack & infront & !IsStealthed", "target"},
    
	{"Tricks of the Trade", "target.inRange(Mutilate).spell & player.aggro & distance <= 20 & indungeon & UI(tott) & !IsStealthed", "tank"},

	--Garrote
    {Garrote, "inRange(Garrote).spell & spell(Garrote).cooldown <= 1 & canAttack & infront & player.combopoints < 4 & debuff(Garrote).duration < 5", "target"},
	{"Garrote", "toggle(AoE) & canAttack & infront & !pvp & target.debuff(Garrote) & debuff(Garrote).duration < 3 & deathin > 9 & count.enemies.debuffs(Garrote) < 3 & player.area(7).enemies >= 2", "enemies"},

    --AoEs
    {"Fan of Knives", "toggle(AoE) & player.area(10).enemies >= 3 & !IsStealthed & {player.combopoints < 4 || !target.exists}", "player"},
	{"Rupture", "toggle(AoE) & toggle(rupture_key) & inRange.spell & canAttack & infront & !pvp & target.debuff(Rupture) & debuff(Rupture).duration < 3 & deathin > 9 & player.combopoints > 2 & count.enemies.debuffs(Rupture) < 3 & player.area(7).enemies >= 2", "enemies"},

    --Finishers
	{"Rupture", "toggle(rupture_key) & inRange.spell & canAttack & infront & deathin > 12 & player.combopoints > 2 & debuff(Rupture).duration <= 8", "target"},
	{"Envenom", "inRange.spell & canAttack & infront & player.combopoints > 3", "target"},

    --Builders
    {"Toxic Blade", "inRange.spell & talent(6,2) & canAttack & infront & player.combopoints < 4 & {!toggle(cooldowns) || toggle(cooldowns) & spell(Vendetta).cooldown > 0}", "target"},
	{"Mutilate", "inRange.spell & canAttack & infront & player.combopoints < 4", "target"},

    {"Sinister Strike", "inRange.spell & canAttack & infront & {player.level < 3 || player.combopoints <= 4 & player.level < 40}", "target"},
	{"Eviscerate", "inRange.spell & canAttack & infront & player.level < 36 & player.combopoints > 4", "target"},

}

local inCombat = {
    
	--Sometimes shit happens XD , so we prevent it.
    {"!/stopcasting", "combat.time < 3 & {player.casting(Deadly Poison) || player.casting(Wound Poison) || player.casting(Crippling Poison)}", "player"},
    --[[Targeting Function
	{(function() Targeting() end), "UI(auto_target_key) & area(10).enemies.infront > 0 & {!target.exists || !target.alive || !target.enemy}", "player"},]]

    {pvp},
	{Survival, "player.health < 100"},
	{"!/stopattack", "player.buff(Vanish) || target.immune_all", "player"},
    --{pvp_1v1, "player.pvp & target.player & target.enemy & target.alive"},
    {Keybinds, "target.alive"},
    {Interrupts, "toggle(interrupts) & !IsStealthed"},
	{Cooldowns, "toggle(cooldowns) & target.canAttack & target.alive & target.infront & !IsStealthed"},
	{Combat, "target.canAttack & target.alive"},

}

local outCombat = {

    {pvp},
	{"Stealth", "UI(stealth_key) & !state(dot) & !IsStealthed & target.canAttack & target.alive", "player"},
	{"Crimson Vial", "health <= UI(cv_spin) & UI(cv_check)", "player"},
	{"!/stopattack", "player.buff(Vanish) || target.immune_all", "player"},
    {Keybinds, "target.canAttack & target.alive & target.infront"},
	{PreCombat, "target.canAttack & target.alive & target.infront"},
	{Poisons, "!player.moving & !player.buff(Vanish)"},

}

NeP.CR:Add(259, {
	name = "[|cffffff00Kleei|r]|cffffff00 ROGUE - Assassination",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
	wow_ver = "8.0.1",
 	nep_ver = "1.11",
	load = exeOnLoad
})
