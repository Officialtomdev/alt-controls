local CmdSettings = {}

local Connections = {}

local Services = {
    ["Players"] = game:GetService("Players")
}

local Variables = {
    Player = game.Players.LocalPlayer
}

-- if not game:IsLoaded() then
--    repeat
--        wait()
--    until game:IsLoaded()
-- end

local function ShowWallet()
    local Player = game.Players.LocalPlayer
    if Player.Backpack:FindFirstChild("Wallet") then
        Player.Backpack.Wallet.Parent = game.Players.LocalPlayer.Character
    end
end
local function RemoveWallet()
    local Player = game.Players.LocalPlayer
    if Player.Character:FindFirstChild("Wallet") then
        Player.Character.Wallet.Parent = game.Players.LocalPlayer.Backpack
    end
end

local function stopdrop()
    getgenv().isDropping = false
    if getgenv().isDropping == false then
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Stopped Dropping!", 'All')
    end
end

local function drop()

    if getgenv().isDropping == false then

        getgenv().isDropping = true

        if getgenv().isDropping == true then

            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Started Dropping!", 'All')
        end
        while getgenv().isDropping == true do

            if game:GetService("Players").LocalPlayer.DataFolder.Currency.Value < 10000 then
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                    "Ran out of money, stopped dropping.", 'All')
            end

            game.ReplicatedStorage.MainEvent:FireServer("DropMoney", 10000)

            wait(15)
        end

    end
end

local function setupbank()
    game.Players.LocalPlayer.Character.Head.Anchored = false
    for i, v in pairs(getgenv().AltSettings.AltSettings.Alts) do
        if i == "Alt1" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-389, 21, -338)
            end
        end
        if i == "Alt2" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-385, 21, -338)
            end
        end
        if i == "Alt3" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-380, 21, -337)
            end
        end
        if i == "Alt4" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-376, 21, -338)
            end
        end
        if i == "Alt5" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-370, 21, -338)
            end
        end
        if i == "Alt6" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-366, 21, -338)
            end
        end
        if i == "Alt7" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-361, 21, -338)
            end
        end
        if i == "Alt8" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-361, 21, -333)
            end
        end
        if i == "Alt9" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-365, 21, -334)
            end
        end
        if i == "Alt10" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-370, 21, -334)
            end
        end
        if i == "Alt11" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-375, 21, -334)
            end
        end
        if i == "Alt12" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-381, 21, -334)
            end
        end
        if i == "Alt13" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-386, 21, -334)
            end
        end
        if i == "Alt14" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-390, 21, -334)
            end
        end
        if i == "Alt15" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-390, 21, -331)
            end
        end
        if i == "Alt16" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-386, 21, -331)
            end
        end
        if i == "Alt17" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-382, 21, -331)
            end
        end
        if i == "Alt18" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-376, 21, -331)
            end
        end
        if i == "Alt19" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-371, 21, -331)
            end
        end
        if i == "Alt20" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-366, 21, -331)
            end
        end
        if i == "Alt21" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-361, 21, -331)
            end
        end
        if i == "Alt22" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-361, 21, -327)
            end
        end
        if i == "Alt23" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-365, 21, -327)
            end
        end
        if i == "Alt24" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-371, 21, -326)
            end
        end
        if i == "Alt25" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-376, 21, -327)
            end
        end
        if i == "Alt26" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-381, 21, -326)
            end
        end
        if i == "Alt27" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-385, 21, -327)
            end
        end
        if i == "Alt28" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-390, 21, -323)
            end
        end
        if i == "Alt29" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-390, 21, -326)
            end
        end
        if i == "Alt30" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-390, 21, -323)
            end
        end
        if i == "Alt31" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-385, 21, -323)
            end
        end
        if i == "Alt32" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-381, 21, -323)
            end
        end
        if i == "Alt33" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-375, 21, -324)
            end
        end
        if i == "Alt34" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-370, 21, -323)
            end
        end
        if i == "Alt35" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-365, 21, -324)
            end
        end
        if i == "Alt36" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360, 21, -324)
            end
        end
        if i == "Alt37" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-359, 21, -318)
            end
        end
        if i == "Alt38" then
            if v == plr.UserId then
                game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-364, 21, -319)
            end
        end
    end

end

local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- // Vars
local tablefind = table.find
local MainEvent = ReplicatedStorage.MainEvent
local SpoofTable = {
    WalkSpeed = 16,
    JumpPower = 50
}

-- // Configuration
local Flags = {"CHECKER_1", "TeleportDetect", "OneMoreTime"}

-- // __namecall hook
local __namecall
__namecall = hookmetamethod(game, "__namecall", function(...)
    -- // Vars
    local args = {...}
    local self = args[1]
    local method = getnamecallmethod()
    local caller = getcallingscript()

    -- // See if the game is trying to alert the server
    if (method == "FireServer" and self == MainEvent and tablefind(Flags, args[2])) then
        return
    end

    -- // Anti Crash
    if (not checkcaller() and getfenv(2).crash) then
        -- // Hook the crash function to make it not work
        hookfunction(getfenv(2).crash, function()
            warn("Crash Attempt")
        end)
    end

    -- //
    return __namecall(...)
end)

-- // __index hook
local __index
__index = hookmetamethod(game, "__index", function(t, k)
    -- // Make sure it's trying to get our humanoid's ws/jp
    if (not checkcaller() and t:IsA("Humanoid") and (k == "WalkSpeed" or k == "JumpPower")) then
        -- // Return spoof values
        return SpoofTable[k]
    end

    -- //
    return __index(t, k)
end)

-- // __newindex hook
local __newindex
__newindex = hookmetamethod(game, "__newindex", function(t, k, v)
    -- // Make sure it's trying to set our humanoid's ws/jp
    if (not checkcaller() and t:IsA("Humanoid") and (k == "WalkSpeed" or k == "JumpPower")) then
        -- // Add values to spoof table
        SpoofTable[k] = v

        -- // Disallow the set
        return
    end

    -- //
    return __newindex(t, k, v)
end)

if game.PlaceId == 2788229376 then
    -- local Players = game:GetService("Players")
    --
    -- local groupId = 14181223 -- Replace with your desired group ID
    --
    -- local function isUserInGroup(userId)
    --    local success, isMember = pcall(function()
    --        return player:IsInGroup(groupId)
    --    end)
    -- end
    --
    -- local function kickPlayer(userId, message)
    --    local player = Players:GetPlayerByUserId(userId)
    --    if player then
    --        player:Kick(message)
    --    end
    -- end
    --
    -- local mainUserIdToCheck = getgenv().Settings.HostSettings.Controller
    --
    -- local function checkAndKick()
    --    if not isUserInGroup(mainUserIdToCheck) then
    --        kickPlayer(mainUserIdToCheck, "Your account isn't in the required group. Sorry!")
    --    end
    -- end
    --
    -- checkAndKick()

    local Players = game:GetService("Players")

    local groupId = 15697632 -- Replace with your desired group ID

    local function isUserInGroup(userId)
        local player = Players:GetPlayerByUserId(userId)
        local success, isMember = pcall(function()
            return player:IsInGroup(groupId)
        end)
        return success and isMember
    end

    local function kickPlayer(userId, message)
        local player = Players:GetPlayerByUserId(userId)
        if player then
            player:Kick(message)
        end
    end

    local mainUserIdToCheck = getgenv().Settings.HostSettings.Controller

    if not isUserInGroup(mainUserIdToCheck) then
        kickPlayer(mainUserIdToCheck, "Your account isn't in the required group. Sorry!")
    end

    getgenv().adverting = false
    getgenv().isDropping = false
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end)

    Players.PlayerAdded:Connect(function(player)
        game.StarterGui:SetCore("SendNotification", {
            Title = "Someone joined!",
            Text = player.name .. " joined the game.",
            Duration = 5
        })
    end)

    local function PlayerAdded(Player)
        local function Chatted(Message)
            local plr = game.Players.LocalPlayer
            local character = plr.Character or plr.CharacterAdded:Wait()

            if Player.UserId == getgenv().Settings.HostSettings.Controller then

                local finalMsg = Message:lower()

                for i, v in pairs(getgenv().AltSettings.AltSettings.Alts) do
                    if v == plr.UserId then

                        if finalMsg == getgenv().Settings.Settings.prefix .. "setup bank" then
                            setupbank()
                        end

                        if finalMsg == getgenv().Settings.Settings.prefix .. "drop" then
                            drop()
                        end

                        if finalMsg == getgenv().Settings.Settings.prefix .. "stop" then
                            stopdrop()
                        end

                        if finalMsg == getgenv().Settings.Settings.prefix .. "wallet" then
                            ShowWallet()
                        end

                        if finalMsg == getgenv().Settings.Settings.prefix .. "stopwallet" then
                            RemoveWallet()
                        end

                    end
                end

            end
        end
        Player.Chatted:Connect(Chatted)
    end

    local GetPlayers = Players:GetPlayers()
    for i = 1, #GetPlayers do
        local Player = GetPlayers[i]
        coroutine.resume(coroutine.create(function()
            PlayerAdded(Player)
        end))
    end
    Players.PlayerAdded:Connect(PlayerAdded)

    for i, v in pairs(getgenv().AltSettings.AltSettings.Alts) do

        if v == game.Players.LocalPlayer.UserId then

            Clip = false

            local speaker = game.Players.LocalPlayer
            wait(0.1)
            local function NoclipLoop()
                if Clip == false and speaker.Character ~= nil then
                    for _, child in pairs(speaker.Character:GetDescendants()) do
                        if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
                            child.CanCollide = false
                        end
                    end
                end
            end
            Noclipping = game:GetService('RunService').Stepped:Connect(NoclipLoop)
            workspace:FindFirstChildOfClass('Terrain').WaterWaveSize = 0
            workspace:FindFirstChildOfClass('Terrain').WaterWaveSpeed = 0
            workspace:FindFirstChildOfClass('Terrain').WaterReflectance = 0
            workspace:FindFirstChildOfClass('Terrain').WaterTransparency = 0
            game:GetService("Lighting").GlobalShadows = false
            game:GetService("Lighting").FogEnd = 9e9
            settings().Rendering.QualityLevel = 1
            for i, v in pairs(game:GetDescendants()) do
                if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or
                    v:IsA("TrussPart") then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                elseif v:IsA("Decal") then
                    v.Transparency = 1
                elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                    v.Lifetime = NumberRange.new(0)
                elseif v:IsA("Explosion") then
                    v.BlastPressure = 1
                    v.BlastRadius = 1
                end
            end
            for i, v in pairs(game:GetService("Lighting"):GetDescendants()) do
                if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or
                    v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
                    v.Enabled = false
                end
            end
            workspace.DescendantAdded:Connect(function(child)
                coroutine.wrap(function()
                    if child:IsA('ForceField') then
                        game:GetService('RunService').Heartbeat:Wait()
                        child:Destroy()
                    elseif child:IsA('Sparkles') then
                        game:GetService('RunService').Heartbeat:Wait()
                        child:Destroy()
                    elseif child:IsA('Smoke') or child:IsA('Fire') then
                        game:GetService('RunService').Heartbeat:Wait()
                        child:Destroy()
                    end
                end)()
            end)

            local timeBegan = tick()
            for i, v in ipairs(workspace:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.Material = "SmoothPlastic"
                end
            end
            for i, v in ipairs(game:GetService("Lighting"):GetChildren()) do
                v:Destroy()
            end
            local timeEnd = tick() - timeBegan
            local timeMS = math.floor(timeEnd * 1000)

            local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
            local g = game
            local w = g.Workspace
            local l = g.Lighting
            local t = w.Terrain
            t.WaterWaveSize = 0
            t.WaterWaveSpeed = 0
            t.WaterReflectance = 0
            t.WaterTransparency = 0
            l.GlobalShadows = false
            l.FogEnd = 9e9
            l.Brightness = 0
            settings().Rendering.QualityLevel = "Level01"
            for i, v in pairs(g:GetDescendants()) do
                if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                    v.Transparency = 1
                elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                    v.Lifetime = NumberRange.new(0)
                elseif v:IsA("Explosion") then
                    v.BlastPressure = 1
                    v.BlastRadius = 1
                elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
                    v.Enabled = false
                elseif v:IsA("MeshPart") then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                    v.TextureID = 10385902758728957
                end
            end
            for i, e in pairs(l:GetChildren()) do
                if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or
                    e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                    e.Enabled = false
                end
            end

            local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
            local g = game
            local w = g.Workspace
            local l = g.Lighting
            local t = w.Terrain
            t.WaterWaveSize = 0
            t.WaterWaveSpeed = 0
            t.WaterReflectance = 0
            t.WaterTransparency = 0
            l.GlobalShadows = false
            l.FogEnd = 9e9
            l.Brightness = 0
            settings().Rendering.QualityLevel = "Level01"
            for i, v in pairs(g:GetDescendants()) do
                if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                    v.Transparency = 1
                elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                    v.Lifetime = NumberRange.new(0)
                elseif v:IsA("Explosion") then
                    v.BlastPressure = 1
                    v.BlastRadius = 1
                elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
                    v.Enabled = false
                elseif v:IsA("MeshPart") then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                    v.TextureID = 10385902758728957
                end
            end
            for i, e in pairs(l:GetChildren()) do
                if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or
                    e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                    e.Enabled = false
                end
            end

            -- Gui to Lua
            -- Version: 3.2
            game:GetService("RunService"):Set3dRenderingEnabled(false)
            -- Instances:

            local PSiwshuwDUItgsuiz = Instance.new("ScreenGui")
            local Frame = Instance.new("Frame")
            local TextLabel = Instance.new("TextLabel")
            local TextButton = Instance.new("TextButton")
            local UICorner = Instance.new("UICorner")
            local TextButton_2 = Instance.new("TextButton")
            local UICorner_2 = Instance.new("UICorner")
            local TextButton_3 = Instance.new("TextButton")
            local UICorner_3 = Instance.new("UICorner")
            local TextLabel_2 = Instance.new("TextLabel")
            local TextLabel_3 = Instance.new("TextLabel")
            local TextLabel_4 = Instance.new("TextLabel")

            -- Properties:

            PSiwshuwDUItgsuiz.Parent = game.CoreGui
            PSiwshuwDUItgsuiz.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            PSiwshuwDUItgsuiz.IgnoreGuiInset = true
            Frame.Parent = PSiwshuwDUItgsuiz
            Frame.AnchorPoint = Vector2.new(0.5, 0.5)
            Frame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
            Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
            Frame.Size = UDim2.new(1, 0, 1, 36)

            TextLabel.Parent = Frame
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.BorderSizePixel = 0
            TextLabel.Position = UDim2.new(0.379002213, 0, 0.0237247907, 0)
            TextLabel.Size = UDim2.new(0, 325, 0, 54)
            TextLabel.Font = Enum.Font.Code
            TextLabel.Text = "CUSMOS ALT CONTROL MADE BY tomdevw"
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.TextScaled = true
            TextLabel.TextSize = 14.000
            TextLabel.TextWrapped = true

            local RunService = game:GetService("RunService")
            local MaxFPS = getgenv().AltSettings.AltSettings.AltFps
            while true do
                local t0 = tick()
                RunService.Heartbeat:Wait()
                repeat
                until (t0 + 1 / MaxFPS) < tick()
            end
        end
    end

else
    game.Players.LocalPlayer:Kick("Only da hood.")
end

