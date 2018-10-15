local _G = _G
local NeP = NeP

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("target.player", "", "")
NeP.DSL:Register("player", function(target)
    return _G.UnitIsPlayer(target)
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("target.caster", "", "")
NeP.DSL:Register("caster", function(target)
    local class = select(2, _G.UnitClass(target))
    if class == "Priest" or class == "Mage" or class == "Warlock" then
      return true
    end
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("target.disarmclass", "", "")
NeP.DSL:Register("disarmclass", function(target)
    local class = select(2, _G.UnitClass(target))
    if class == "WARRIOR" or class == "PALADIN" or class == "HUNTER" or 
	class == "ROGUE" or class == "DEATHKNIGHT" or class == "MONK" or 
	class == "DEMONHUNTER" then
      return true
    end
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("player.infront.of.target", "", "")
NeP.DSL:Register("infront.of.target", function(target)
    return NeP.Protected.Infront("target", target)
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("player.behind.of.target", "", "")
NeP.DSL:Register("behind.of.target", function(target)
  return not NeP.Protected.Infront("target", target)
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("target.race", "", "")
NeP.DSL:Register("race", function(target)
    return _G.UnitRace(target)
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("target.canAttack", "", "")
NeP.DSL:Register("canAttack", function(target)
  return _G.UnitCanAttack(target, "player") and _G.UnitCanAttack("player", target)
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("target.faction.positive", "", "")
NeP.DSL:Register("faction.positive", function(target)
    if _G.UnitFactionGroup("player") == _G.UnitFactionGroup(target)
	and _G.UnitIsPlayer(target)
	and not _G.UnitIsDeadOrGhost(target) then
      return true 
    end
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("target.faction.negative", "", "")
NeP.DSL:Register("faction.negative", function(target)
    if _G.UnitFactionGroup("player") ~= _G.UnitFactionGroup(target)
	and _G.UnitIsPlayer(target)
	and not _G.UnitIsDeadOrGhost(target) then
      return true 
    end
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("flying", "", "")
NeP.DSL:Register("flying", function()
  return _G.IsFlying()
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

local last_fall = 0;
local falling_for = 0;
function buildFallTime()
    -- if we´re not falling then reset the counter and return 0
  if not _G.IsFalling() then
    last_fall = 0
        falling_for = 0
        return;
  end
  -- if we have a time set then return the difference
  local time = _G.GetTime()
  if last_fall > 0 then
    falling_for = time - last_fall
        return;
  end
  -- otherwise set time and return 0
  last_fall = time
    falling_for = 0
end

C_Timer.NewTicker(0.1, buildFallTime)

--/dump NeP.DSL.Parse("falling.duration", "", "") -- dump when you fall
NeP.DSL:Register({"falling.duration", "fall.duration"}, function()
  return falling_for
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
