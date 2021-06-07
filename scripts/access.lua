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
        has("bow") or
        has("hammer") or
        has("frod") or
        has("bombs") or
        has("irod") or
        has("lamp")
end

-- Can the player use a fire source?
function fire()
    return has("frod") or
        has("lamp")
end

-- Can the player stun enemies?
function stun()
    return has("hookshot") or
        has("boomerang") or
        has("srod") or
        (has("shield1") and has("trod"))
        -- Require shield because the purpose of this is moving enemies
end

-- Can the player stun enemies at a distance?
function stun_far()
    return has("hookshot") or
        has("boomerang")
end

-- Can the player use projectiles to hit switches?
function projectile()
    return has("hookshot") or
        has("boomerang") or
        has("bow") or
        has("bombs") or
        has("sword2") or
        has("niceirod")
end