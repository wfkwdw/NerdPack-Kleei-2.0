local _G = _G
local NeP = NeP

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

local BTS = { 
    235450,  -- Prismatic Barrier    -- Mage Arcane
	12042,   -- Arcane Power         -- Mage Arcane
	11426,   -- Ice Barrier          -- Mage Frost
	12472,   -- Ice Veins            -- Mage Frost
	190319,  -- Combustion           -- Mage Fire
	235313,  -- Fire Shield          -- Mage Fire
	198111,  -- Temporal Shield      -- Mage Fire PVP Talent
	29166,   -- Innervate            -- Druid
	1044,    -- Blessing of Freedom  -- Paladin
	184662,  -- Shield of Vengeance  -- Paladin
	47536,   -- Rapture              -- Priest
	17,      -- Power Word: Shield   -- Priest
	152118,  -- Clarity of Will      -- Priest
	212295,  -- Nether Ward          -- Warlock
	196098,  -- Soul Harvest         -- Warlock
	222477,  -- Vengeful Wail (+50% DMG)
	197892,  -- Runic Empowerment (Damage done increased by 30%.Damage taken reduced by 30%.)
	198745,  -- Protective Light (Absorbs 1.500.000 damage)
	182327,  -- Mrgggrrrll! (Haste increased by %50)
}

-- /dump BuffToSteal("player")
function BuffToSteal(unit)
  for i = 1, #BTS do
   local BuffToStealName = _G.GetSpellInfo(BTS[i])
	if NeP.DSL:Get("buff.any")(unit, BuffToStealName) then
    	return true
	end
  end
end

--Enemies with buffs that needs to be stolen
-- /dump NeP.FakeUnits:Filter("enemystbuff")
NeP.FakeUnits:Add("enemystbuff", function()
  for _, Obj in pairs(NeP.OM:Get("Enemy", true)) do
	 if NeP.Protected.Distance("player", Obj.key) < 40
	 and _G.UnitCanAttack(Obj.key, "player")
     and BuffToSteal(Obj.key)
     and not NeP.DSL:Get("immune_all")(Obj.key)
     and not NeP.DSL:Get("immune_spell")(Obj.key) then
	  return Obj.key
	end
  end
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--Dead group member that can be resurrected (not ghost) 
NeP.FakeUnits:Add({"deadgroupmember", "deadfriend"}, function()
    for _, Obj in pairs(NeP.OM:Get("Dead")) do
	  if NeP.Protected.Distance("player", Obj.key) < 50
	   and _G.UnitIsDead(Obj.key)
	   and not _G.UnitIsGhost(Obj.key)
	   and (_G.UnitInRaid(Obj.key) or _G.UnitInParty(Obj.key))
	   and _G.UnitIsPlayer(Obj.key)
	   and not _G.UnitHasIncomingResurrection(Obj.key) then
	    return Obj.key
	  end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

---Enemy UNIT with most enemies around
NeP.FakeUnits:Add("mostenemies", function(num)
   local tempTable = {}
    for _, Obj in pairs(NeP.OM:Get("Enemy")) do
	  if NeP.Protected.Distance("player", Obj.key) < 50
	   and _G.UnitCanAttack(Obj.key, "player")
	   and _G.UnitAffectingCombat(Obj.key) then
		tempTable[#tempTable+1] = {
			key = Obj.key,
			prio = NeP.DSL:Get("area.enemies")(Obj.key, "6"),
			name = Obj.name,
		}
	  end
	end
	table.sort( tempTable, function(a,b) return a.prio > b.prio end )
	return tempTable[num] and tempTable[num].key
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--- Highest Health Enemy
NeP.FakeUnits:Add("highestenemy", function(num)
   local tempTable = {}
    for _, Obj in pairs(NeP.OM:Get("Enemy")) do
	  if _G.UnitInPhase(Obj.key)
	   and NeP.Protected.Distance("player", Obj.key) < 40
	   and _G.UnitCanAttack(Obj.key, "player")
	   and _G.UnitAffectingCombat(Obj.key)
	   and not _G.UnitIsPlayer(Obj.key)
	   and not _G.UnitIsPVP(Obj.key)
	   and not NeP.DSL:Get("boss")(Obj.key)
       and NeP.Protected.Infront("player", Obj.key) then
		tempTable[#tempTable+1] = {
			key = Obj.key,
			health = _G.UnitHealth(Obj.key),
			name = Obj.name,
		}
	  end
	end
	table.sort( tempTable, function(a,b) return a.health > b.health end )
	return tempTable[num] and tempTable[num].key
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
