getgenv().Security = {
    ["Security"] = {
        ["Key"] = "", -- security given in this
        ["DiscordUserName"] = "", -- should already be filled in. leave it as that.
    }
}

getgenv().Settings = {
    ["HostSettings"] = {
        ["Controller"] = 12345,
        ["Hostfps"] = 30, -- set to null for unlimited
        ["ControllerGui"] = true,
    },
    ["Settings"] = {
        ["prefix"] = "!"
    },
    ["CrewSettings"] = { -- alt must already be in the group id
        ["CrewID"] = 1,
        ["JoinCrew"] = true
    },
    ["AdSettings"] = {
        ["Message"] = "" -- put a message in here ( you can always change with using setad command)
    }

}

getgenv().AltSettings {
    ["AltSettings"] = {
        ["AltFps"] = 5, -- set to null for unlimited
        ["Alts"] = { -- and so on down below, make sure to put a comma at end and max is 38 alts
            Alt1 = 12345,
            Alt2 = 12345,
            Alt3 = 12345,
            Alt4 = 12345
        }
    }
}



------------- loader ----- dont change below.