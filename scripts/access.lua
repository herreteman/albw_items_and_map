function has(item)
    return Tracker:ProviderCountForCode(item) == 1
end

-- Can the player use items?
function use()
    return has("y_true") or
        (has("y_false") and has("lamp"))
end

-- Can the player deal damage?
function damage()
    return has("sword1") or
        (use() and 
        (has("bow") or
        has("hammer") or
        has("frod") or
        has("bombs") or
        has("irod") or
        has("lamp")))
end

-- Can the player destroy thin trees?
function trees()
    return has("sword1") or
        (use() and 
        (has("lamp") or
        has("frod") or
        has("bombs") or
        has("irod")))
end

-- Can the player destroy boulders?
function boulders()
    return use() and
        (has("hammer") or
        has("bombs"))
end

-- Can the player use a fire source?
function fire()
    return use() and
        (has("frod") or
        has("lamp"))
end

-- Can the player stun enemies?
function stun()
    return use() and
        (has("hookshot") or
        has("boomerang") or
        has("srod") or
        (has("shield1") and has("trod")))
        -- Require shield because the purpose of this is moving enemies
end

-- Can the player stun enemies at a distance?
function stun_far()
    return use() and
        (has("hookshot") or
        has("boomerang"))
end

-- Can the player use projectiles to hit switches?
function projectile()
    if use() and 
        (has("hookshot") or
        has("boomerang") or
        has("bow") or
        has("bombs") or
        has("irod")) then
        return true, AccessibilityLevel.Normal
    elseif has("sword2") then
        return true, AccessibilityLevel.SequenceBreak
	else
		return false, AccessibilityLevel.None
	end
end

-- Can the player use projectiles to hit far away switches?
function projectile_far()
    if use() and 
        (has("hookshot") or
        has("boomerang") or
        has("bow") or
        has("bombs") or
        has("niceirod")) then
        return true, AccessibilityLevel.Normal
    elseif has("sword2") then
        return true, AccessibilityLevel.SequenceBreak
	else
		return false, AccessibilityLevel.None
	end
end

-- Can the player use projectiles to damage enemies?
function projectile_damage()
    if use() and 
        (has("bow") or
        has("bombs") or
        has("niceirod")) then
        return true, AccessibilityLevel.Normal
    elseif has("sword2") then
        return true, AccessibilityLevel.SequenceBreak
	else
		return false, AccessibilityLevel.None
	end
end

-- Can the player damage boost to a ledge?
function ledge()
    return use() and
        (has("frod") or
        has("bombs"))
end

-- Can the player escape a softlock via damaging itself or warping away?
function escape()
    return has("bell") or
        (use() and 
        (has("frod") or
        has("bombs") or
        has("bell")))
end

-- Can the player logically traverse dark rooms?
function darkrooms()
    return has("darkrooms_true") or
        (has("darkrooms_false") and has("lamp"))
end