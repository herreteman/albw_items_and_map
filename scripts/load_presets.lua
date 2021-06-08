if Tracker.ActiveVariantUID == "standard" then
	default = Preset:create({
        0, --y_button (0 = locked / 1 = enabled)
        0, --dark rooms (0 = lamp / 1 = no lamp)
        0, --bee vendor (0 = required / 1 = not req)
        0, --captain sword (0 = normal / 1 = skip)
        0, --borrowed sword (0 = normal / 1 = shuffle)
        0, --vanilla lamp (0 = normal / 1 = shuffle)
        0, --first bracelet (0 = normal / 1 = skip)
        0, --open (0 = false / 1 = true)
        0  --barrier (0 = normal / 1 = start)
    })
end

if Tracker.ActiveVariantUID == "open" then
	default = Preset:create({
        1, --y_button (0 = locked / 1 = enabled)
        0, --dark rooms (0 = lamp / 1 = no lamp)
        0, --bee vendor (0 = required / 1 = not req)
        1, --captain sword (0 = normal / 1 = skip)
        1, --borrowed sword (0 = normal / 1 = shuffle)
        1, --vanilla lamp (0 = normal / 1 = shuffle)
        1, --first bracelet (0 = normal / 1 = skip)
        1, --open (0 = false / 1 = true)
        1  --barrier (0 = normal / 1 = start)
    })
end