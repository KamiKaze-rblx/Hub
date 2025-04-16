local isLoaded = game:IsLoaded() or game.Loaded:Wait()

local VirtualUser = game:GetService('VirtualUser')
player.Idled:connect(function()
	VirtualUser:CaptureController()
	VirtualUser:ClickButton2(Vector2.new())
end)

-- Services
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

print("AFK Rewards")
if game.PlaceId ~= 116614712661486 then
	game:GetService("TeleportService"):Teleport(116614712661486, game.Players.LocalPlayer)
	task.wait(1)
end

-- Stats
local RewardsPath = player.PlayerGui.CountDown.Frame.Recieved.ScrollingFrame
local RewardInfo = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/KamiKaze-rblx/Hub/refs/heads/main/Assets.lua"))()

getgenv().Webhook = getgenv().Webhook or ""
getgenv().DiscordId = getgenv().DiscordId or ""

local function WebhookUpdate(NewItem)
	local discordMention = getgenv().DiscordId ~= "" and "<@" .. getgenv().DiscordId .. ">" or ""
	local embedFields = {
		{
			name = "Rewards:",
			value = ""
		}
	}

	for _, Reward in pairs(RewardsPath:GetChildren()) do
		if Reward.Name ~= "Template" and Reward.Name ~= "UIListLayout" then
			table.insert(embedFields, {
				name = "",
				value = RewardInfo[Reward.Name].Image .. " " .. Reward.RewardName.Text,
			})
		end
	end

	if NewItem then
		table.insert(embedFields, {
			name = "New Item:",
			value = RewardInfo[NewItem].Image .. " " .. RewardInfo[NewItem].Name,
		})
	end

	local response = request({
		Url = getgenv().Webhook or "",
		Method = "POST",
		Headers = {
			["Content-Type"] = "application/json"
		},
		Body = HttpService:JSONEncode({
			["content"] = discordMention,
			["embeds"] = {{
				["title"] = "Arise Crossover AFK", 
				["description"] = "**Username:** ||" .. player.Name .. "||",
				["type"] = "rich",
				["color"] = tonumber("378bff", 16),
				["fields"] = embedFields,
				["thumbnail"] = {
					["url"] = "https://cdn.discordapp.com/attachments/1284696130852225064/1357029874585571603/noFilter_3.png?ex=67eeb80e&is=67ed668e&hm=019bb2156edcdaac511cd384fc337345e5473a3d8e24181c0c2e05341cdfd7d4&" 
				},
				["footer"] = {
					["text"] = "Arise CrossOver",
					["icon_url"] = "https://media.discordapp.net/attachments/1268028183966519432/1268028224730824776/Jewels.png?ex=66aaeecf&is=66a99d4f&hm=4e9289e29287a8ced35727493e776b413672d1050eb879af6106639fbe468794&=&format=webp&quality=lossless"
				}
			}}
		})
	})
end

game:GetService("Players").LocalPlayer:WaitForChild("leaderstats"):WaitForChild("AfkRewards").AttributeChanged:Connect(function(Attribute)
	WebhookUpdate(Attribute)
end)
