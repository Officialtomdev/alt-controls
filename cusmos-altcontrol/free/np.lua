local Players = game:GetService("Players")

local groupId = 11268456 -- Replace this with your group ID

local function isUserInGroup(userId)
    local success, result = pcall(function()
        return Players:GetUserAsync(userId):IsInGroup(groupId)
    end)
    return success and result
end

if isUserInGroup(3129332948) then
    print("User is in the group")
else
    print("User is NOT in the group")
end


local Players = game:GetService("Players")

local function onPlayerAdded(player)
	if player:IsInGroup(15697632) then
		print("Player is in the Roblox Fan club!")
	end
end

Players.PlayerAdded:Connect(onPlayerAdded)




getgenv().Settings = {
    ["HostSettings"] = {
        ["Controller"] = 3129332948, -- Host must be inside the group
        -- Other settings (to be added)
    },
    ["Settings"] = {
        ["prefix"] = "."
    }
}

getgenv().AltSettings = {
    ["AltSettings"] = {
        ["AltFps"] = 5, -- Set to null for unlimited
        ["Alts"] = {
            ["Alt1"] = 3178935511, -- Use user IDs as keys
            -- Add more alts as needed: [altUserId] = "AltName",
        }
    }
}


--local Players = game:GetService("Players")
--
--local groupId = 5512768 -- Replace this with your group ID
--local mainUserIdToCheck = getgenv().Settings.HostSettings.Controller
--print(mainUserIdToCheck)
--
--local function isUserInGroup()
--    local success, result = pcall(function()
--        return Players:GetUserAsync(mainUserIdToCheck):IsInGroupAsync(5512768)
--    end)
--    return success and result
--end
--
--local function kickPlayer(userId, message)
--    local player = Players:GetPlayerByUserId(userId)
--    if player then
--        warn(message)
--    end
--end
--
--local function checkAndKick()
--    if not isUserInGroup() then
--        kickPlayer(mainUserIdToCheck, "Your account isn't in the required group. Sorry!")
--    else
--        for i, v in pairs(getgenv().AltSettings.AltSettingss.Alts) do
--            if v ~= mainUserIdToCheck and not isUserInGroup(v) then
--                local altPlayer = Players:GetPlayerByUserId(v)
--                if altPlayer then
--                    kickPlayer(v, "Your main account isn't in the required group. Sorry!")
--                end
--            end
--        end
--    end
--end
--
--checkAndKick()



-- Assuming the necessary getgenv() settings are already in place


--local mainUserIdToCheck = getgenv().Settings.HostSettings.Controller
--
--local function isUserInGroup(userId)
--    local player = Players:GetPlayerByUserId(userId)
--    if player then
--        if player:IsInGroup(groupId) then
--            return true
--        end
--    end
--    return false
--end
--
--local function kickPlayer(userId, message)
--    local player = Players:GetPlayerByUserId(userId)
--    if player then
--        warn(message)
--    end
--    -- Kick the player here (if required)
--end
--
--local function checkAndKick()
--    if not isUserInGroup(mainUserIdToCheck) then
--        kickPlayer(mainUserIdToCheck, "Your account isn't in the required group. Sorry!")
--    else
--        for qq, altUserId  in pairs(getgenv().AltSettings.AltSettings.Alts) do
--            if altUserId ~= mainUserIdToCheck and not isUserInGroup(altUserId) then
--                kickPlayer(altUserId, "Your main account isn't in the required group. Sorry!")
--            end
--        end
--    end
--end
--
--checkAndKick()