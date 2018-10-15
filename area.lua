local _G = _G
local NeP = NeP

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--  /dump NeP.DSL.Parse("player.all.enemies(100).area", "", "")
-- USAGE: UNIT.all.enemies(DISTANCE).area >= # all enemies (out of combat included)
NeP.DSL:Register("all.enemies.area", function(unit, distance)
 if not _G.UnitExists(unit) then return 0 end
  local total = 0
  for _, Obj in pairs(NeP.OM:Get("Enemy")) do
	if NeP.DSL:Get("distancefrom")(unit, Obj.key) < (tonumber(distance) or 0)
     and _G.UnitCanAttack(Obj.key, "player") then
       total = total +1
    end
  end
  return total
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("count.enemies.combat", "", "")
NeP.DSL:Register("count.enemies.combat", function()
local encombat = 0
  for _, Obj in pairs(NeP.OM:Get("Enemy", true)) do
      if NeP.DSL:Get("distancefrom")(unit, Obj.key) < 40
	   and _G.UnitCanAttack(Obj.key, "player")
	   and NeP.Protected.Infront("player", Obj.key)
	   and _G.UnitAffectingCombat(Obj.key) then
          encombat = encombat + 1
      end
  end
  return encombat
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("target.area().enemies.nocombat", "", "")
NeP.DSL:Register("area.enemies.nocombat", function(unit, distance)
  for _, Obj in pairs(NeP.OM:Get("Enemy", true)) do
    if NeP.DSL:Get("distancefrom")(unit, Obj.key) < (tonumber(distance) or 40)
	 and _G.UnitCanAttack(Obj.key, "player")
     and not _G.UnitAffectingCombat(Obj.key) then
      return true
    end
  end
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
