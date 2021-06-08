Preset = {}

function Preset:create(s)
    self.settings = s
    Preset:load(self.settings)
end

function Preset:load(s)
    Tracker:FindObjectForCode("y_button_enabled").CurrentStage = s[1]
    Tracker:FindObjectForCode("dont_require_lamp_for_darkness").CurrentStage = s[2]
    Tracker:FindObjectForCode("require_golden_bee_for_sale").CurrentStage = s[3]
    Tracker:FindObjectForCode("captains_sword").CurrentStage = s[4]
    Tracker:FindObjectForCode("borrowed_sword").CurrentStage = s[5]
    Tracker:FindObjectForCode("lamp_progression").CurrentStage = s[6]
    Tracker:FindObjectForCode("first_bracelet").CurrentStage = s[7]
    Tracker:FindObjectForCode("open").CurrentStage = s[8]
    Tracker:FindObjectForCode("barrier").CurrentStage = s[9]
end
