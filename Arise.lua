
-- Services
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

-- Constants
local LOCAL_PLAYER = Players.LocalPlayer
local PET_EVENT = require(ReplicatedStorage.BridgeNet2).ReferenceBridge("PET_EVENT")
local FLYING_FIXER = LOCAL_PLAYER.Character.CharacterScripts.FlyingFixer
local USER_FOLDER = Workspace.__Main.__Pets:WaitForChild(tostring(LOCAL_PLAYER.UserId))
local PET_FOLDER = USER_FOLDER:GetChildren()

local Library = loadstring(game:HttpGetAsync("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))()
local SaveManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/SaveManager.luau"))()
local InterfaceManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/InterfaceManager.luau"))()

local Window = Library:CreateWindow{
	Title = `Arise Crossover`,
	SubTitle = "by KamiKaze10",
	TabWidth = 160,
	Size = UDim2.fromOffset(730, 425),
	Resize = false,
	MinSize = Vector2.new(570, 480),
	Acrylic = false,
	Theme = "Dark",
	MinimizeKey = Enum.KeyCode.LeftControl
}

local Tabs = {
	Main = Window:CreateTab{Title = "Main", Icon = "phosphor-users-bold"},
	Teleport = Window:CreateTab{Title = "Teleport", Icon = "chevrons-up"},
	Event = Window:CreateTab{Title = "Event", Icon = "tree-palm"},
	Mount = Window:CreateTab{Title = "Mount", Icon = "paw-print"},
	Dungeon = Window:CreateTab{Title = "Dungeon", Icon = "door-closed"},
	Misc = Window:CreateTab{Title = "Misc", Icon = "ellipsis"},
	Settings = Window:CreateTab{Title = "Settings", Icon = "settings"}
}

local Options = Library.Options

local function disableFlying()
	if FLYING_FIXER.Enabled then
		FLYING_FIXER.Enabled = false
		task.wait()
	end
end

local function teleportTo(position)
	disableFlying()
	LOCAL_PLAYER.Character.HumanoidRootPart.CFrame = CFrame.new(position)
end

local maxDistance = 120

local function attackNearest()
	local rootPart = LOCAL_PLAYER.Character:FindFirstChild("HumanoidRootPart")
	if not rootPart then return end

	local nearestNPC, nearestDistance

	for _, NPC in pairs(Workspace.__Main.__Enemies.Client:GetChildren()) do
		local distance = (NPC.HumanoidRootPart.Position - rootPart.Position).Magnitude
		if not NPC or distance > maxDistance or (nearestDistance and distance >= nearestDistance) or 
			NPC.HealthBar.Main.Bar.Amount.Text == "0 HP" then
			continue
		end
		nearestDistance = distance
		nearestNPC = NPC
	end

	if nearestNPC then
		PET_EVENT:Fire({
			Event = "Attack",
			Enemy = nearestNPC.Name,
			PetPos = "",
			AttackType = "All"
		})
	end
end

-- Main Tab UI
do
	-- Auto Attack Range Slider
	local Slider = Tabs.Main:AddSlider("Slider", {
		Title = "Auto Attack Range",
		Description = "",
		Default = 120,
		Min = 0,
		Max = 120,
		Rounding = 1,
		Callback = function(Value)
			maxDistance = tonumber(Value)
		end
	})

	-- Auto Attack Toggle
	local ToggleMain1 = Tabs.Main:AddToggle("MyToggleMain1", {Title = "Auto Attack", Default = false })

	ToggleMain1:OnChanged(function()
		if Options.MyToggleMain1.Value and not USER_FOLDER:GetChildren()[1] then
			Options.MyToggleMain1:SetValue(false)
			Library:Notify{
				Title = "Notification",
				Content = "You don't have shadow equipped",
				Duration = 3
			}
		elseif Options.MyToggleMain1.Value and USER_FOLDER:GetChildren()[1] then
			task.spawn(function()
				while Options.MyToggleMain1.Value do
					local total = 0
					for _, v in pairs(PET_FOLDER) do
						if v:GetAttribute("Target") or v:GetAttribute("Target") == "" then
							total += 1
						end
					end

					if total == 0 then
						attackNearest()
					end
					task.wait(0.5)
				end
			end)
		end
	end)

	-- Pet Selection Dropdown
	local petinfo = require(game:GetService("ReplicatedStorage").Indexer.PetsInfo)
	local ptable = {}
	for _, v in pairs(petinfo) do
		table.insert(ptable, v.Name)
	end

	local MultiDropdownMain = Tabs.Main:CreateDropdown("MultiDropdownMain", {
		Title = "Select ",
		Description = "You can select multiple values.",
		Values = ptable,
		Multi = true,
		Default = {},
	})

	-- Auto Arise Toggle
	local ToggleMain2 = Tabs.Main:AddToggle("MyToggleMain2", {Title = "Auto Arise", Default = false })

	ToggleMain2:OnChanged(function()
		if Options.MyToggleMain2.Value then
			local connection
			connection = Workspace.__Main.__Enemies.Client.DescendantAdded:Connect(function(descendant)
				if descendant:IsA("ProximityPrompt") and descendant.Name == "ArisePrompt" then
					if MultiDropdownMain.Value[descendant.Parent.Parent.HealthBar.Main.Title.Text] or next(MultiDropdownMain.Value) == nil then
						repeat
							if not Options.MyToggleMain2.Value then break end
							descendant.HoldDuration = 0
							fireproximityprompt(descendant)
							task.wait()
						until descendant.Parent == nil
					end
				end
			end)

			return function()
				if connection then
					connection:Disconnect()
				end
			end
		end
	end)
end

-- Teleport Tab
do
	local teleportLocations = {
		["Leveling City"] = Vector3.new(577.96826171875, 24.96237564086914, 261.4522705078125),
		["Grass Village"] = Vector3.new(-3380.2373046875, 26.826528549194336, 2257.261962890625),
		["Brum Island"] = Vector3.new(-2851.106201171875, 46.89878845214844, -2011.395263671875),
		["Faceheal Town"] = Vector3.new(2641.795166015625, 42.92652893066406, -2645.07568359375),
		["Lucky Kingdom"] = Vector3.new(198.33868408203125, 36.207679748535156, 4296.109375),
		["Nipon City"] = Vector3.new(236.93267822265625, 30.396093368530273, -4301.60546875),
		["Mori Town"] = Vector3.new(4816.31640625, 27.442340850830078, -120.22998046875),
	}

	for name, position in pairs(teleportLocations) do
		Tabs.Teleport:AddButton({
			Title = name,
			Description = "TP",
			Callback = function() teleportTo(position) end
		})
	end
end

-- Event Tab
do
	-- Stay in Boss Area Toggle
	local ToggleEvent1 = Tabs.Event:AddToggle("MyToggleEvent1", {Title = "Stay in good position to attack guards", Default = false })

	ToggleEvent1:OnChanged(function()
		if Options.MyToggleEvent1.Value then
			task.spawn(function()
				local bossArea = Vector3.new(3843.900390625, 60.109989166259766, 3057.683837890625)
				while Options.MyToggleEvent1.Value do
					local distance = (LOCAL_PLAYER.Character.HumanoidRootPart.Position - bossArea).Magnitude
					if distance > 1 then
						teleportTo(bossArea)
					end
					task.wait(3)
				end
			end)
		end
	end)

	-- Auto Click Toggle
	local ToggleEvent2 = Tabs.Event:AddToggle("MyToggleEvent2", {Title = "Auto Click", Default = false })

	ToggleEvent2:OnChanged(function()
		local autoClickButton = LOCAL_PLAYER.PlayerGui.Hud.BottomContainer.Submenu.Buttons.AutoClick
		local currentState = autoClickButton.OnOff.Text

		if Options.MyToggleEvent2.Value and currentState == "OFF" then
			firesignal(autoClickButton.Activated)
		elseif not Options.MyToggleEvent2.Value and currentState == "ON" then
			firesignal(autoClickButton.Activated)
		end
	end)

	-- Beru Farm Toggle
	local ToggleEvent3 = Tabs.Event:AddToggle("MyToggleEvent3", {Title = "Beru Farm", Default = false })
	local currentTarget = nil

	local function getNPCHealth(npc)
		local healthBar = npc:FindFirstChild("HealthBar")
		if healthBar then
			local bar = healthBar.Main.Bar:FindFirstChild("Amount")
			if bar and bar:IsA("TextLabel") then
				local hpText = bar.Text:gsub(" HP", "")
				return tonumber(hpText:match("%d+")) or 0
			end
		end
		return 0
	end

	local function isValidTarget(npc)
		if not npc or not npc.Parent then return false end
		return getNPCHealth(npc) > 0
	end

	local function getTargetNPC()
		local enemiesFolder = Workspace.__Main.__Enemies.Client
		local royalRedAnts = {}
		local antQueen, antKing

		for _, npc in pairs(enemiesFolder:GetChildren()) do
			if isValidTarget(npc) then
				local npcName = npc.HealthBar.Main.Title.Text

				if npcName == "Royal Red Ant" then
					table.insert(royalRedAnts, npc)
				elseif npcName == "Ant Queen" then
					antQueen = npc
				elseif npcName == "Ant King" then
					antKing = npc
				end
			end
		end

		-- Check current target validity first
		if isValidTarget(currentTarget) then
			local currentTitle = currentTarget.HealthBar.Main.Title.Text
			if currentTitle == "Royal Red Ant" or 
				(currentTitle == "Ant Queen" and #royalRedAnts == 0) or
				(currentTitle == "Ant King" and #royalRedAnts == 0 and not antQueen) then
				return currentTarget
			end
		end

		-- Select new target based on priority
		if #royalRedAnts > 0 then
			return royalRedAnts[math.random(#royalRedAnts)]
		elseif antQueen then
			return antQueen
		else
			return antKing
		end
	end

	ToggleEvent3:OnChanged(function()
		if Options.MyToggleEvent3.Value then
			task.spawn(function()
				while Options.MyToggleEvent3.Value do
					local target = getTargetNPC()
					if target and target ~= currentTarget then
						currentTarget = target
						PET_EVENT:Fire({
							Event = "Attack",
							Enemy = target.Name,
							PetPos = "",
							AttackType = "All"
						})
					end
					task.wait(0.5)
				end
			end)
		end
	end)

	-- Event Location Button
	Tabs.Event:AddButton({
		Title = "Location",
		Description = "TP",
		Callback = function()
			teleportTo(Vector3.new(3858.1455078125, 59.14358139038086, 3232.87841796875))
		end
	})
end

-- Mount Tab
do
	local function isMountInInventory(mountName)
		local mountsFolder = LOCAL_PLAYER.leaderstats.Inventory.Mounts
		for _, mount in pairs(mountsFolder:GetChildren()) do
			if mount:GetAttribute("Name") == mountName then
				return true
			end
		end
		return false
	end

	-- Auto Farm Mount Toggle
	local ToggleMount1 = Tabs.Mount:AddToggle("MyToggleMount1", {Title = "Auto Farm Mount", Default = false })

	ToggleMount1:OnChanged(function()
		if Options.MyToggleMount1.Value then
			task.spawn(function()
				local teleportLocations = {
					Vector3.new(-6161.255859375, 134.2600555419922, 5512.96728515625),
					Vector3.new(-5868.4384765625, 109.77471923828125, 362.4894104003906),
					Vector3.new(-5430.81005859375, 107.44155883789062, -5502.25244140625),
					Vector3.new(-702.2432861328125, 115.93551635742188, -3538.116455078125),
					Vector3.new(449.9917297363281, 109.7667465209961, 3435.43701171875),
					Vector3.new(3222.760009765625, 98.77737426757812, 38.062923431396484),
					Vector3.new(4325.365234375, 118.99542999267578, -4819.78857421875)
				}

				local mountSpawnArea = Workspace.__Extra.__Appear
				local cooldown = 1 -- seconds between teleports

				while Options.MyToggleMount1.Value do
					for i, location in ipairs(teleportLocations) do
						if not Options.MyToggleMount1.Value then break end

						teleportTo(location)
						task.wait(cooldown)

						local mounts = mountSpawnArea:GetChildren()
						if #mounts > 0 then
							local mount = mounts[1]
							if not isMountInInventory(mount.Name) then
								teleportTo(mount.PrimaryPart.Position)
								task.wait(3.1)
								fireproximityprompt(mount.MountPrompt)
							end
							loadstring(game:HttpGet("https://raw.githubusercontent.com/KamiKaze-rblx/AriseCrossover/refs/heads/main/ServerHub"))()
							break
						end
					end
					task.wait()
				end
			end)
		end
	end)

	-- Mount Location Buttons
	local mountLocations = {
		["Location 1"] = Vector3.new(-6161.255859375, 134.2600555419922, 5512.96728515625),
		["Location 2"] = Vector3.new(-5868.4384765625, 109.77471923828125, 362.4894104003906),
		["Location 3"] = Vector3.new(-5430.81005859375, 107.44155883789062, -5502.25244140625),
		["Location 4"] = Vector3.new(-702.2432861328125, 115.93551635742188, -3538.116455078125),
		["Location 5"] = Vector3.new(449.9917297363281, 109.7667465209961, 3435.43701171875),
		["Location 6"] = Vector3.new(3222.760009765625, 98.77737426757812, 38.062923431396484),
		["Location 7"] = Vector3.new(4325.365234375, 118.99542999267578, -4819.78857421875)
	}

	for name, position in pairs(mountLocations) do
		Tabs.Mount:AddButton({
			Title = name,
			Description = "TP",
			Callback = function() teleportTo(position) end
		})
	end
end

-- Dungeon Tab
do
	-- Enter Dungeon Toggle
	local ToggleDungeon1 = Tabs.Dungeon:AddToggle("MyToggleDungeon1", {Title = "Auto Join Dungeon", Default = false })

	ToggleDungeon1:OnChanged(function()
		if Options.MyToggleDungeon1.Value and game.PlaceId == 87039211657390 then
			task.spawn(function()
				local BridgeNet2 = require(ReplicatedStorage.BridgeNet2)
				while Options.MyToggleDungeon1.Value do
					-- Buy dungeon with gems
					BridgeNet2.ReferenceBridge("GENERAL_EVENT"):Fire({
						Event = "DungeonAction",
						Action = "BuyTicket",
						Type = "Gems"
					})

					-- Create dungeon
					BridgeNet2.ReferenceBridge("GENERAL_EVENT"):Fire({
						Event = "DungeonAction",
						Action = "Create"
					})

					-- Start event
					local GuiFunctions = require(ReplicatedStorage.SharedModules.Others.GuiFunctions)
					local dungeonFrame = GuiFunctions.GetFrame("Dungeon", "Menus")
					BridgeNet2.ReferenceBridge("GENERAL_EVENT"):Fire({
						Event = "DungeonAction",
						Action = "Start",
						Dungeon = dungeonFrame:GetAttribute("DungeonId")
					})

					task.wait(5)
				end
			end)
		end
	end)

	-- Dungeon Farm Toggle
	local ToggleDungeon2 = Tabs.Dungeon:AddToggle("MyToggleDungeon2", {Title = "Dungeon Farm", Default = false })
	local dungeonTarget = nil

	local function findNearestDungeonNPC()
		local rootPart = LOCAL_PLAYER.Character:FindFirstChild("HumanoidRootPart")
		if not rootPart then return end

		local nearestNPC, nearestDistance

		for _, NPC in pairs(Workspace.__Main.__Enemies.Client:GetChildren()) do
			local distance = (NPC.HumanoidRootPart.Position - rootPart.Position).Magnitude
			if not NPC or (nearestDistance and distance >= nearestDistance) or 
				NPC.HealthBar.Main.Bar.Amount.Text == "0 HP" then
				continue
			end

			nearestDistance = distance
			nearestNPC = NPC
		end

		if nearestNPC then
			dungeonTarget = nearestNPC
			rootPart.CFrame = CFrame.new(nearestNPC.HumanoidRootPart.Position + Vector3.new(1, 0, 0))
			task.wait(0.2)
			PET_EVENT:Fire({
				Event = "Attack",
				Enemy = nearestNPC.Name,
				PetPos = "",
				AttackType = "All"
			})
		else
			-- Find highest room number
			local highest = 0
			for _, child in ipairs(Workspace.__Main.__World:GetChildren()) do
				local num = tonumber(child.Name:match("Room_(%d+)"))
				if num and num > highest then
					highest = num
				end
			end

			local entrance = Workspace.__Main.__World["Room_" .. highest]:WaitForChild("Entrace")
			local distance = (entrance.Position - rootPart.Position).Magnitude

			if distance > 120 then
				rootPart.CFrame = CFrame.new(entrance.Position + Vector3.new(1, 1, 0))
				dungeonTarget = nil
			end
		end
	end

	ToggleDungeon2:OnChanged(function()
		if Options.MyToggleDungeon2.Value and game.PlaceId == 128336380114944 then
			disableFlying()
			task.spawn(function()
				while Options.MyToggleDungeon2.Value do
					if dungeonTarget and (dungeonTarget.Parent == nil or dungeonTarget.HealthBar.Main.Bar.Amount.Text == "0 HP") then
						findNearestDungeonNPC()
					elseif dungeonTarget == nil then
						findNearestDungeonNPC()
					end
					task.wait(0.2)
				end
			end)
		end
	end)
end

-- Built in Anti-AFK
local VirtualUser = game:GetService('VirtualUser')
LOCAL_PLAYER.Idled:connect(function()
	VirtualUser:CaptureController()
	VirtualUser:ClickButton2(Vector2.new())
end)


-- Settings
SaveManager:SetLibrary(Library)
InterfaceManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes{}
InterfaceManager:SetFolder("ScriptHub")
SaveManager:SetFolder("ScriptHub/Arise Crossover")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)

-- notification
Window:SelectTab(1)
Library:Notify({
	Title = "Arise Crossover",
	Content = "Script loaded successfully!",
	Duration = 3,
	Image = "rbxassetid://4483345998" -- Optional icon
})

-- autoload
local success, err = pcall(function()
	SaveManager:LoadAutoloadConfig()
end)

if not success then
	Library:Notify({
		Title = "Config Error",
		Content = "Failed to load settings: "..tostring(err),
		Duration = 8,
		Type = "error"
	})
end
