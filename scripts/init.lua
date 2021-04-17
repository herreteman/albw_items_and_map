Tracker:AddItems("items/usable.json")
Tracker:AddItems("items/equipment.json")
Tracker:AddItems("items/dungeons.json")

Tracker:AddLayouts("layouts/items.json")
Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/broadcast.json")

if Tracker.ActiveVariantUID == "standard" then
    Tracker:AddMaps("maps/maps.json")
    Tracker:AddLocations("locations/dungeons.json")
	Tracker:AddLocations("locations/hyrule.json")
    Tracker:AddLocations("locations/lorule.json")
end