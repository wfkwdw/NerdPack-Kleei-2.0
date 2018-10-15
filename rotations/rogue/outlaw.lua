local unpack = unpack

local Logo_GUI = {

	{type = "texture", texture = "Interface\\AddOns\\Nerdpack-Kleei-2.0\\media\\outlaw.blp", width = 250, height = 250, offset = 105, y = -50, align = "center"},

}

local GUI = {

	unpack(Logo_GUI),

	{type = "header", size = 16, text = "Keybinds", align = "center"},
	{type = "text", text = "|c0000FA9A Just hold the Key|r", align = "center"},
	{type = "text", text = "|c0087CEFA Choose Keybind:", align = "center"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Grappling Hook:|c0000FA9A on cursor ground", key = "list3", width = 100, list = {
	{key = "7", text = "Shift Keybind"},
	{key = "8", text = "Control Keybind"},
	{key = "9", text = "Alt Keybind"},
	{key = "none", text = "Disable"}, 
	}, default = "8" },
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Cheap Shot, Between the Eyes:|c0000FA9A", key = "list1", width = 100, list = {
	{key = "1", text = "Shift Keybind"},
	{key = "2", text = "Control Keybind"},
	{key = "3", text = "Alt Keybind"},
	{key = "none", text = "Disable"},
	}, default = "1" },	
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Gouge:|c0000FA9A you should be in front of target", key = "list2", width = 100, list = {
	{key = "4", text = "Shift Keybind"},
	{key = "5", text = "Control Keybind"},
	{key = "6", text = "Alt Keybind"},
	{key = "none", text = "Disable"},	
	}, default = "6" },	
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "Blind:|c0000FA9A target should be behind you or out of melee"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
    {type = 'header', size = 16, text = 'PVP', align = 'center'},
    {type = 'checkbox',	text = "Stun:|c0000FA9A auto [CS] or [BTE] PVP Target.|r", align = 'left', key = 'stun', default = true},
    {type = 'checkbox',	text = "Sap:|c0000FA9A auto [Sap] PVP Target.", align = 'left', key = 'sap_key', default = true},
	--{type = 'checkbox',	text = "Blind:|c0000FA9A target not stuned and [Vanish] is on CD", align = 'left', key = 'blind_no_van', default = false},
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
	{type = "checkspin", text = "Use Crimson Vial:", key = 'cv', check = true, spin = 65, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Riposte:", key = 'ripo', check = true, spin = 55, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Health Stone:", key = 'hs', check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
	{type = "header", size = 16, text = "Cooldowns Toggle:", align = 'center'},
	{type = 'checkbox', text = "Adrenaline Rush:", key = "adr_key", default = true},
	{type = 'checkbox', text = "Thistle Tea:|c0000FA9A when energy < 40 and target boss or PVP enemy", key = "tea_key", default = true},
	{type = 'checkbox', text = "Marked for Death:|c0000FA9A when < 2 combo points", key = "mfd_key", default = true},
	{type = 'checkbox', text = "Killing Spree:|c0000FA9A when half energy remains", key = "ks_key", default = true},
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
	{type = "checkbox", text = "Use Tricks of the Trade:|c0000FA9A in party on tank", key = "tott", default = true},
	{type = "checkbox", text = "Pick Pocket:|c0000FA9A < 10 yards when you stand and don't move", 	key = "pp",   default = false},
	{type = "spinner", text = "Blade Flurry:|c0000FA9A when count enemies around", key = "bladeF_key", default = 3, width = 100, step = 1, min = 2, max = 10},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"},{type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
	{type = "text", size = 11, text = "Between the Eyes:|c0000FA9A will be usable when:", align = "center"},
	{type = "spinner", text = "|c0000FA9Ahave combo points more or equal with", key = "combopoints_bte_key", default = 3, width = 100, step = 1, min = 1, max = 6},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "Trinkets", align = "center"},
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
 	print("|c0000FA9A --- |r|cffffff00ROGUE - Outlaw|r")	
	print("|c0000FA9A ------------------------------PVE--PVP--------------------------------|r")
 	print("|c0000FA9A --- |rRecommended Talents: 1/1 - 2/2 - 3/1 - 4/x - 5/1 - 6/2 - 7/3")
 	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print('|c0000FA9A ----------------------Still descovering BFA-------------------------|r')
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")
	print("|c0000FA9A If you like my work you can always support me|r|c00FF0000 https://www.paypal.me/thekleei|r")

	NeP.Interface:AddToggle({key = "RTB_key", icon = "Interface\\Icons\\ability_rogue_rollthebones", name = "Roll the Bones", text = "Include Roll the Bones in rotation."})

end

local BtE = {

    {"%pause", "energy <= 25", "player"},
	{"Between the Eyes", nil, "target"},

}

local Gouge = {

    {"%pause", "energy <= 25 & !talent(5,1)", "player"},
	{"Gouge", "infront", "target"}, --player.infront.of.target & 

}
local Blade_Flurry = {

    {"%pause", "player.energy <= 40 & player.combopoints == 5 || player.energy <= 50 & player.combopoints < 5 & !player.buff(Opportunity) || player.energy <= 35 & player.combopoints < 5 & player.buff(Opportunity)", "player"},
	{"Blade Flurry", nil, "player"},

}

local Grappling_Hook = {

    {"Grappling Hook", "player.level > 21 & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "cursor.ground"},

}

local pvp = {

    {"!Dismantle", "inRange.spell & honortalent(6,2) & !player.buff(Stealth) & !player.buff(Vanish) & player & canAttack & !state(stun) & disarmclass", "target"},
    {"!Every Man for Himself", "UI(medal) & state(stun) & !buff(Stealth) & !buff(Vanish)", "player"},
    {"!Gladiator's Medallion", "UI(medal) & !buff(Stealth) & !buff(Vanish) & target.player & target.canAttack & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},
	{"Pistol Shot", "inRange.spell & canAttack & player & !inRange(Sinister Strike).spell & !player.buff(Stealth) & !immune_all & !immune_stun & !state(snare) & !state(root) & !state(stun) & !state(fear) & !state(disorient) & !state(incapacitate) & !state(charm)", "target"},

}

local Keybinds = {

	{"%pause", "canAttack & infront & immune_all", "target"},
	{"Cheap Shot", "inRange.spell & canAttack & infront & player.buff(Stealth) & !immune_stun & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2 || UI(stun) & target.player & !player.buff(Vanish) & !target.state(stun)}", "target"},
	{BtE, "target.inRange(Between the Eyes).spell & target.canAttack & target.infront & !player.lastcast(Cheap Shot) & !player.buff(Stealth) & !player.buff(Vanish) & player.combopoints >= UI(combopoints_bte_key) & !target.immune_stun & {!target.state(disarm) || !disarmclass} & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2 || UI(stun) & !target.state(stun) & target.player}"},
	{"Sap", "inRange.spell & canAttack & infront & UI(sap_key) & !player.buff(Vanish) & !immune_stun & !state(stun) & !state(disorient) & !state(incapacitate) & !combat & player", "target"},
	{Gouge, "target.inRange(Gouge).spell  & target.canAttack & !player.buff(Stealth) & !player.buff(Vanish) & !target.immune_stun & {target.buff(Touch of Karma) || keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}"},
	{"Blind", "inRange.spell & canAttack & !immune_stun & !player.buff(Vanish) & {IsStealthed || !IsStealthed & {target.behind || target.fixRange >= 7}} & {target.buff(Touch of Karma) || keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "target"},

}

local PreCombat = {

	{"Pick Pocket", "inRange.spell & canAttack & UI(pp) & !player.moving & player.buff(Stealth) & !player.lastcast(Pick Pocket) & creatureType(Humanoid) & !target.player & !isdummy", "target"},	

	{"Blade Flurry", "toggle(AoE) & energy >= 50 & !buff(Blade Flurry) & target.range < 6.5 & target.all.enemies(6).area >= UI(bladeF_key)", "player"},
	--{"Blade Flurry", "toggle(AoE) & energy >= 50 & !buff(Blade Flurry) & player.area(10).enemies >= UI(bladeF_key)", "player"},
	--{"Blade Flurry", "toggle(AoE) & !buff(Blade Flurry) & lastcast(Blade Rush) & target.area(10).enemies >= UI(bladeF_key)", "player"},
	{"Ambush", "inRange.spell & canAttack & player.buff(Stealth) & {!talent(3,2) & player.combopoints < 4 || talent(3,2) & player.combopoints < 5}", "target"},
	{"Sinister Strike", "inRange.spell & canAttack & {player.level < 22 || !player.buff(Stealth) & !player.buff(Vanish)} & {!talent(3,2) & player.combopoints < 5 || talent(3,2) & player.combopoints < 6}", "target"},

	--{"Death from Above", "talent(7,3) & inRange.spell & canAttack & !player.buff(Stealth) & {!talent(3,2) & player.combopoints == 5 || talent(3,2) & player.combopoints == 6}", "target"},
	{"Dispatch", "inRange.spell & canAttack & {!talent(3,2) & player.combopoints >= 4 || talent(3,2) & player.combopoints >= 5}", "target"},

}

local Survival ={

	--{"#neck", "{equipped(Eternal Will of the Martyr) || equipped(Eternal Woven Ivy Necklace)} & !player.buff(Stealth) & !player.buff(Vanish) & player.health <= 40", "player"},
    {"Vanish", "!player.buff(Stealth) & target.canAttack & target.alive & target.player & health < target.health & health <= UI(van_pvp_spin) & UI(van_pvp_check)", "player"},
	{"Vanish", "!player.buff(Stealth) & target.canAttack & target.alive & !target.player & !pvp.area & health < target.health & health <= UI(van_pve_spin) & UI(van_pve_check)", "player"},
	{"Crimson Vial", "!target.isdummy & health <= UI(cv_spin) & UI(cv_check)", "player"},
	{"Riposte", "!buff(Stealth) & !buff(Vanish) & target.canAttack & target.alive & incdmg.phys(5) >= health.max*0.02 & health <= UI(ripo_spin) & UI(ripo_check)", "player"},
	{"#5512", "item(5512).count >= 1 & target.canAttack & target.alive & health <= UI(hs_spin) & UI(hs_check)", "player"}, --Health Stone

}

local Interrupts = {

	{"!Kick", "interruptAt(60) & inRange.spell & alive & canAttack & infront", "target"},
	--{"!Kick", "interruptAt(60) & inRange.spell & alive & canAttack & infront & !target.interruptAt(1)", "enemies"},
	--{"!Gouge", "interruptAt(50) & inRange.spell & alive & canAttack & infront & !player.lastcast(Kick) & player.infront.of.target & !boss & !immune_stun", "target"},
	--{"!Gouge", "interruptAt(50) & inRange.spell & alive & canAttack & infront & !player.lastcast(Kick) & player.infront.of.target & !boss & !immune_stun", "enemies"},

	--{"!Arcane Torrent", "interruptAt(60) & inRange(Kick).spell & alive & canAttack & dungeon.interrupts & player.level > 99", "enemies"},
	--{"!Arcane Torrent",	"interruptAt(60) & inRange(Kick).spell & alive & canAttack & {player.level < 100 || !indungeon}", "target"},

}

local Cooldowns = {

    {"#7676", "target.inRange(Sinister Strike).spell & UI(tea_key) & item(7676).count > 0 & energy < 40 & {target.boss || target.player}", "player"},
	{"Killing Spree", "inRange.spell & talent(7,3) & UI(ks_key) & {talent(3,1) & player.energy <= 70 || !talent(3,1) & player.energy <= 50}", "target"},
	{"Marked for Death", "inRange(Sinister Strike).spell & UI(mfd_key) & talent(3,3) & player.combopoints < 2 & !player.buff(Killing Spree)", "target"},
	{"&Adrenaline Rush", "target.inRange(Sinister Strike).spell & UI(adr_key) & !buff(Killing Spree) & !lastcast(Killing Spree)", "player"},
	{"Arcane Torrent", "UI(blood_elf_racial_key) & target.inRange(Sinister Strike).spell & energy <= 30", "player"},
	{"Blood Fury", "UI(bloodfury_key) & target.inRange(Sinister Strike).spell", "player"},
    {"Berserking", "UI(berserking_key) & target.inRange(Sinister Strike).spell", "player"},

	{"#trinket1", "UI(trk1) & target.inRange(Sinister Strike).spell & target.canAttack"},
	{"#trinket2", "UI(trk2) & target.inRange(Sinister Strike).spell & target.canAttack"},

}

local Combat = {

	{"Ambush", "inRange.spell & player.buff(Stealth) & {!talent(3,2) & player.combopoints < 5 || talent(3,2) & player.combopoints < 6}", "target"},
    {"/startattack", "!isattacking & inRange(Sinister Strike).spell & !player.buff(Stealth)", "target"},
    
	{"Tricks of the Trade", "target.inRange(Sinister Strike).spell & player.aggro & distance <= 20 & indungeon & UI(tott) & !player.buff(Stealth)", "tank"},

	{Blade_Flurry, "toggle(AoE) & player.area(10).enemies >= UI(bladeF_key) & spell(Blade Flurry).charges >= 1 & !player.buff(Blade Flurry)"},
	{Blade_Flurry, "toggle(AoE) & target.range < 6.5 & target.area(6).enemies >= UI(bladeF_key) & spell(Blade Flurry).charges >= 1 & !player.buff(Blade Flurry)"},
	--{"Blade Flurry", "toggle(AoE) & target.area(10).enemies >= UI(bladeF_key) & !buff(Blade Flurry) & lastcast(Blade Rush)", "player"},	

	--{"Death from Above", "talent(7,3) & inRange.spell & !player.buff(Stealth) & {!talent(3,2) & player.combopoints >= 4 || talent(3,2) & player.combopoints >= 5}", "target"},
	
	{"Roll the Bones", "toggle(RTB_key) & !talent(6,3) & target.deathin > 7 & !buff_of_the_bones & player.combopoints > 2", "player"},
	{"Slice and Dice", "talent(6,3) & buff(Slice and Dice).duration < 3 & combopoints > 1", "player"},
	{"Between the Eyes", "inRange.spell & indungeon & player.buff(Ruthless Precision) & {!talent(3,2) & player.combopoints >= 4 || talent(3,2) & player.combopoints >= 5}", "target"},
    {"Dispatch", "inRange.spell & {!talent(3,2) & player.combopoints >= 4 || talent(3,2) & player.combopoints >= 5}", "target"},

    {"Ghostly Strike", "inRange.spell & talent(1,3) & buff(Ghostly Strike).duration < 2 & {!talent(3,2) & player.combopoints < 5 || talent(3,2) & player.combopoints < 6}", "target"},
	{"Blunderbuss", "inRange.spell & !player.buff(Stealth) & pistol.condition & {!target.state(disorient) & !target.state(incapacitate)}", "target"},
	{"Pistol Shot", "inRange.spell & !player.buff(Stealth) & pistol.condition & {!target.state(disorient) & !target.state(incapacitate)} & player.buff(Opportunity)", "target"},
	{"Sinister Strike", "inRange.spell & !player.buff(Stealth) & {!target.state(disorient) || !target.player}", "target"},
	
}

local inCombat = {

    --[[Targeting Function
	{(function() Targeting() end), "UI(auto_target_key) & area(10).enemies.infront > 0 & {!target.exists || !target.alive || !target.enemy}", "player"},]]

    {pvp},
	{Cannonball},
    {Grappling_Hook},
    {Keybinds, "target.alive"},
    {Interrupts, "toggle(interrupts) & !player.buff(Stealth) & !player.buff(Vanish)"},
	{Survival, "player.health < 100"},
	{"!/stopattack", "canAttack & infront & debuff(Gouge)", "target"},
	{"!/stopattack", "player.buff(Vanish)", "player"},
	{Cooldowns, "toggle(cooldowns) & target.canAttack & target.alive & target.infront & !player.buff(Stealth)"},
	{Combat, "target.canAttack & target.alive & target.infront"},

}

local outCombat = {

    {pvp},
	{Cannonball},
    {Grappling_Hook},
	{"Stealth", "UI(stealth_key) & !state(dot) & !IsStealthed & target.canAttack & target.alive", "player"},
	{"Crimson Vial", "health <= UI(cv_spin) & UI(cv_check)", "player"},
    {Keybinds, "target.alive"},
	{"!/stopattack", "player.buff(Vanish)", "player"},
	{PreCombat, "target.canAttack & target.alive & target.infront"},
    
	--Leather Scraps
	{"#52977", "item(52977).count >= 6 & !target.exists & !player.moving", "player"},
	{"#110610", "item(110610).count >= 11 & !target.exists", "player"},
	
}

NeP.CR:Add(260, {
	name = "[|cffffff00Kleei|r]|cffffff00 ROGUE - Outlaw",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
	wow_ver = "8.0.1",
 	nep_ver = "1.11",
	load = exeOnLoad
})
