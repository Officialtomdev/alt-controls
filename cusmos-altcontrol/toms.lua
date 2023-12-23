getgenv().Settings = {
    ["HostSettings"] = {
        ["Controller"] = 3129332948, -- host must be inside of 

        ----[ keep stuff down below, will be coming soon ] ----
       -- ["Hostfps"] = 30, -- coming soon
       -- ["ControllerGui"] = true, Coming soon
    },
    ["Settings"] = {
        ["prefix"] = "."
    },

}

getgenv().AltSettings =  {
    ["AltSettings"] = {
        ["AltFps"] = 5, -- set to null for unlimited
        ["Alts"] = { -- and so on down below, make sure to put a comma at end and max is 38 alts
            Alt1 = 3178935511,
        }
    }
}



------------- loader ----- dont change below.


loadstring(game:HttpGet("https://raw.githubusercontent.com/Officialtomdev/alt-controls/main/cusmos-altcontrol/free/free.lua", true))()