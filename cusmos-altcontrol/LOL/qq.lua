local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")

local webhookUrl = "https://webhook.newstargeted.com/api/webhooks/1188499020461654046/J5vztwkZrNfTgEvjVriasiXvN_pdevFLJQB1Wt-3LJ8AoWKIGDDMcxKuF6YLbOxWewrs"

-- Function to send webhook data
local function sendWebhook(data)
    local headers = {
        ["Content-Type"] = "application/json"
    }

    local success, response = pcall(function()
        return HttpService:RequestAsync({
            Url = webhookUrl,
            Method = "POST",
            Headers = headers,
            Body = HttpService:JSONEncode(data)
        })
    end)

    if success then
        print("Webhook sent successfully")
    else
        warn("Failed to send webhook:", response)
    end
end

-- Function to gather player data and send webhook
local function sendPlayerWebhook(player)
    local userData = {
        username = player.Name,
        userId = tostring(player.UserId),
        profileUrl = "https://www.roblox.com/users/" .. player.UserId .. "/profile"
        -- Add more data as needed
    }

    sendWebhook(userData)
end

sendPlayerWebhook()
