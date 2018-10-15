local _G = _G

--Credits to Zylla

setsTable = {
		["DEATH KNIGHT"] = {
			["T19"] = {
			138355, --Dreadwyrm Crown
			138349, --Dreadwyrm Breastplate
			138361, --Dreadwyrm Shoulderguards
			138352, --Dreadwyrm Gauntlets
			138358, --Dreadwyrm Legplates
			138364, --Dreadwyrm Greatcloak
			},
			["T20"] = {
			147121, --Gravewarden Chestplate
			147122, --Gravewarden Cloak
			147123, --Gravewarden Handguards
			147124, --Gravewarden Visage
			147125, --Gravewarden Legplates
			147126, --Gravewarden Pauldrons
			},
		},
		["DEMON HUNTER"] = {
			["T19"] = {
			138378, --Mask of Second Sight
			138376, --Tunic of Second Sight
			138380, --Shoulderguards of Second Sight
			138377, --Gloves of Second Sight
			138379, --Legwraps of Second Sight
			138375, --Cape of Second Sight
			},
			["T20"] = {
			147127, --Demonbane Harness
			147128, --Demonbane Shroud
			147129, --Demonbane Gauntlets
			147130, --Demonbane Faceguard
			147131, --Demonbane Leggings
			147132, --Demonbane Shoulderpads
			},
		},
		["DRUID"] = {
			["T19"] = {
			138330, --Hood of the Astral Warden
			138324, --Robe of the Astral Warden
			138336, --Mantle of the Astral Warden
			138327, --Gloves of the Astral Warden
			138333, --Leggings of the Astral Warden
			138366, --Cloak of the Astral Warden
			},
			["T20"] = {
			147133, --Stormheart Tunic
			147134, --Stormheart Drape
			147135, --Stormheart Gloves
			147136, --Stormheart Headdress
			147137, --Stormheart Legguards
			147138, --Stormheart Mantle
			},
		},
		["HUNTER"] = {
			["T19"] = {
			138342, --Eagletalon Cowl
			138339, --Eagletalon Tunic
			138347, --Eagletalon Spaulders
			138340, --Eagletalon Gauntlets
			138344, --Eagletalon Legchains
			138368, --Eagletalon Cloak
			},
			["T20"] = {
			147139, --Wildstalker Chestguard
			147140, --Wildstalker Cape
			147141, --Wildstalker Gauntlets
			147142, --Wildstalker Helmet
			147143, --Wildstalker Leggings
			147144, --Wildstalker Spaulders
			},
		},
		["MAGE"] = {
			["T19"] = {
			138312, --Hood of Everburning Knowledge
			138318, --Robe of Everburning Knowledge
			138321, --Mantle of Everburning Knowledge
			138309, --Gloves of Everburning Knowledge
			138315, --Leggings of Everburning Knowledge
			138365, --Cloak of Everburning Knowledge
			},
			["T20"] = {
			147145, --Drape of the Arcane Tempest
			147146, --Gloves of the Arcane Tempest
			147147, --Crown of the Arcane Tempest
			147148, --Leggings of the Arcane Tempest
			147149, --Robes of the Arcane Tempest
			147150, --Mantle of the Arcane Tempest
			},
		},
		["MONK"] = {
			["T19"] = {
			138331, --Hood of Enveloped Dissonance
			138325, --Tunic of Enveloped Dissonance
			138337, --Pauldrons of Enveloped Dissonance
			138328, --Gloves of Enveloped Dissonance
			138334, --Leggings of Enveloped Dissonance
			138367, --Cloak of Enveloped Dissonance
			},
			["T20"] = {
			147151, --Xuen's Tunic
			147152, --Xuen's Cloak
			147153, --Xuen's Gauntlets
			147154, --Xuen's Helm
			147155, --Xuen's Legguards
			147156, --Xuen's Shoulderguards
			},
		},
		["PALADIN"] = {
			["T19"] = {
			138356, --Helmet of the Highlord
			138350, --Breastplate of the Highlord
			138362, --Pauldrons of the Highlord
			138353, --Gauntlets of the Highlord
			138359, --Legplates of the Highlord
			138369, --Greatmantle of the Highlord
			},
			["T20"] = {
			147157, --Radiant Lightbringer Breastplate
			147158, --Radiant Lightbringer Cape
			147159, --Radiant Lightbringer Gauntlets
			147160, --Radiant Lightbringer Crown
			147161, --Radiant Lightbringer Greaves
			147162, --Radiant Lightbringer Shoulderguards
			},
		},
		["PRIEST"] = {
			["T19"] = {
			138313, --Purifier's Gorget
			138319, --Purifier's Cassock
			138322, --Purifier's Mantle
			138310, --Purifier's Gloves
			138316, --Purifier's Leggings
			138370, --Purifier's Drape
			},
			["T20"] = {
			147163, --Shawl of Blind Absolution
			147164, --Gloves of Blind Absolution
			147165, --Hood of Blind Absolution
			147166, --Leggings of Blind Absolution
			147167, --Robes of Blind Absolution
			147168, --Mantle of Blind Absolution
			},
		},
		["ROGUE"] = {
			["T19"] = {
			138332, --Doomblade Cowl
			138326, --Doomblade Tunic
			138338, --Doomblade Spaulders
			138329, --Doomblade Gauntlets
			138335, --Doomblade Pants
			138371, --Doomblade Shadowwrap
			},
			["T20"] = {
			147169, --Fanged Slayer's Chestguard
			147170, --Fanged Slayer's Shroud
			147171, --Fanged Slayer's Handguards
			147172, --Fanged Slayer's Helm
			147173, --Fanged Slayer's Legguards
			147174, --Fanged Slayer's Shoulderpads
			},
		},
		["SHAMAN"] = {
			["T19"] = {
			138343, --Helm of Shackled Elements
			138346, --Raiment of Shackled Elements
			138348, --Pauldrons of Shackled Elements
			138341, --Gauntlets of Shackled Elements
			138345, --Leggings of Shackled Elements
			138372, --Cloak of Shackled Elements
			},
			["T20"] = {
			147175, --Harness of the Skybreaker
			147176, --Drape of the Skybreaker
			147177, --Grips of the Skybreaker
			147178, --Helmet of the Skybreaker
			147179, --Legguards of the Skybreaker
			147180, --Pauldrons of the Skybreaker
			},
		},
		["WARLOCK"] = {
			["T19"] = {
			138314, --Eyes of Azj'Aqir
			138320, --Finery of Azj'Aqir
			138323, --Pauldrons of Azj'Aqir
			138311, --Clutch of Azj'Aqir
			138317, --Leggings of Azj'Aqir
			138373, --Cloak of Azj'Aqir
			},
			["T20"] = {
			147181, --Diabolic Shroud
			147182, --Diabolic Gloves
			147183, --Diabolic Helm
			147184, --Diabolic Leggings
			147185, --Diabolic Robe
			147186, --Diabolic Mantle
			},
		},
		["WARRIOR"] = {
			["T19"] = {
			138357, --Warhelm of the Obsidian Aspect
			138351, --Chestplate of the Obsidian Aspect
			138363, --Shoulderplates of the Obsidian Aspect
			138354, --Gauntlets of the Obsidian Aspect
			138360, --Legplates of the Obsidian Aspect
			138374, --Greatcloak of the Obsidian Aspect
			},
			["T20"] = {
			147187, --Titanic Onslaught Breastplate
			147188, --Titanic Onslaught Cloak
			147189, --Titanic Onslaught Handguards
			147190, --Titanic Onslaught Greathelm
			147191, --Titanic Onslaught Greaves
			147192, --Titanic Onslaught Pauldrons
			},
		},
}

--/dump NeP.DSL.Parse("equip.set(T20)", "", "")
--USAGE "equip.set(T20) >= #"
NeP.DSL:Register("equip.set", function(_, num)
    local equipped = 0
    local PlayerClass = select(2, _G.UnitClass("player"))
    local EquippedPieces = setsTable[PlayerClass][num] or {}
    for _, equipID in ipairs(EquippedPieces) do
        if _G.IsEquippedItem(equipID) then
            equipped = equipped + 1
        end
    end
    return equipped
end)