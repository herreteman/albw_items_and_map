ScriptHost:LoadScript("scripts/access.lua")
ScriptHost:LoadScript("scripts/preset.lua")

Tracker:AddItems("items/usable.json")
Tracker:AddItems("items/equipment.json")
Tracker:AddItems("items/dungeons.json")
Tracker:AddItems("items/options.json")
Tracker:AddItems("items/progression.json")

Tracker:AddLayouts("layouts/items.json")
Tracker:AddLayouts("layouts/options.json")
Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/broadcast.json")

Tracker:AddMaps("maps/maps.json")
Tracker:AddLocations("locations/dungeons.json")
Tracker:AddLocations("locations/hyrule.json")
Tracker:AddLocations("locations/lorule.json")

ScriptHost:LoadScript("scripts/load_presets.lua")