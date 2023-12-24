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



local Players = game:GetService("Players")

local groupId = 6959944 -- Replace this with your group ID
local mainUserIdToCheck = getgenv().Settings.HostSettings.Controller
print(mainUserIdToCheck)
local altIds = getgenv().AltSettings.AltSettings.Alts or {}
print(altIds)

local function isUserInGroup(userId)
    local success, result = pcall(function()
        return Players:GetUserAsync(userId):IsInGroupAsync(groupId)
    end)
    return success and result
end

local function kickPlayer(userId, message)
    local player = Players:GetPlayerByUserId(userId)
    if player then
        warn("trying to kick")
    end
end

local function checkAndKick()
    if not isUserInGroup(mainUserIdToCheck) then
        print("Your main account isn't in the required group. Sorry!")
        kickPlayer(mainUserIdToCheck, "Your account isn't in the required group. Sorry!")
    else
        for _, altUserId in pairs(altIds) do
            if altUserId ~= mainUserIdToCheck and not isUserInGroup(altUserId) then
                local altPlayer = Players:GetPlayerByUserId(altUserId)
                if altPlayer then
                    kickPlayer(altUserId, "Your main account isn't in the required group. Sorry!")
                    print("Your main account isn't in the required group. Sorry!")
                end
            end
        end
    end
end

checkAndKick()