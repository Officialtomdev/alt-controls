local Players = game:GetService("Players")

local groupId = 6959944 -- Replace this with your group ID
local mainUserIdToCheck = getgenv().Settings.HostSettings.Controller
local altIds = getgenv().AltSettings.AltSettings.Alts or {}

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
        kickPlayer(mainUserIdToCheck, "Your account isn't in the required group. Sorry!")
    else
        for _, altUserId in pairs(altIds) do
            if altUserId ~= mainUserIdToCheck and not isUserInGroup(altUserId) then
                local altPlayer = Players:GetPlayerByUserId(altUserId)
                if altPlayer then
                    kickPlayer(altUserId, "Your main account isn't in the required group. Sorry!")
                end
            end
        end
    end
end

checkAndKick()














