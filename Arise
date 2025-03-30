local Library = loadstring(game:HttpGetAsync("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))()
local SaveManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/SaveManager.luau"))()
local InterfaceManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/InterfaceManager.luau"))()

local Window = Library:CreateWindow{
	Title = `Fluent {Library.Version}`,
	SubTitle = "by Actual Master Oogway",
	TabWidth = 160,
	Size = UDim2.fromOffset(730, 425),
	Resize = false, -- Resize this ^ Size according to a 1920x1080 screen, good for mobile users but may look weird on some devices
	MinSize = Vector2.new(570, 480),
	Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
	Theme = "Dark",
	MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
}

-- Fluent Renewed provides ALL 1544 Lucide 0.469.0 https://lucide.dev/icons/ Icons and ALL 9072 Phosphor 2.1.0 https://phosphoricons.com/ Icons for the tabs, icons are optional
local Tabs = {
	Main = Window:CreateTab{
		Title = "Main",
		Icon = "phosphor-users-bold"
	},
	Teleport = Window:CreateTab{
		Title = "Teleport",
		Icon = "phosphor-users-bold"
	},
	Event = Window:CreateTab{
		Title = "Event",
		Icon = "phosphor-users-bold"
	},
	Mount = Window:CreateTab{
		Title = "Mount",
		Icon = "phosphor-users-bold"
	},
	Misc = Window:CreateTab{
		Title = "Misc",
		Icon = "phosphor-users-bold"
	},
	Settings = Window:CreateTab{
		Title = "Settings",
		Icon = "settings"
	}
}

local Options = Library.Options



local LocalPlayer = game:GetService("Players").LocalPlayer
--// anti tp script
local FlyingFixer = LocalPlayer.Character.CharacterScripts.FlyingFixer

--------------------------------------------------------------------------------------------------------------------Main
--// auto farm
local userFolder = workspace.__Main.__Pets:WaitForChild(tostring(LocalPlayer.UserId))
local PET_FOLDER = userFolder:GetChildren() --local PET_FOLDER = userFolder:GetChildren()[1]
local maxDistance = 120
local PET_EVENT = require(game:GetService("ReplicatedStorage").BridgeNet2).ReferenceBridge("PET_EVENT")

local function attackNearest()
	local Player_HumanoidRootPart = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

	local nearestPlayer, nearestDistance

	for _, NPC in pairs(game.Workspace.__Main.__Enemies.Client:GetChildren()) do
		if not Player_HumanoidRootPart then continue end
		local distance = (NPC.HumanoidRootPart.Position - Player_HumanoidRootPart.Position).Magnitude
		if not NPC or distance > maxDistance or (nearestDistance and distance >= nearestDistance) or NPC.HealthBar.Main.Bar.Amount.Text == "0 HP" then
			continue
		end
		nearestDistance = distance
		nearestPlayer = NPC
	end

	if nearestPlayer then
		PET_EVENT:Fire({
			Event = "Attack";
			Enemy = nearestPlayer.Name;
			PetPos = "";
			AttackType = "All";
		})
	end
end


--// Slider
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

Slider:OnChanged(function(Value)
	--print("Slider changed:", Value)
end)
--//

--// Toggle
local ToggleMain1 = Tabs.Main:AddToggle("MyToggleMain1", {Title = "Auto Attack", Default = false })

ToggleMain1:OnChanged(function()
	if Options.MyToggleMain1.Value and not userFolder:GetChildren()[1] then
		Options.MyToggleMain1:SetValue(false)
		Library:Notify{
			Title = "Notification",
			Content = "You don't have shadow equipped",
			Duration = 3
		}
	else if Options.MyToggleMain1.Value and userFolder:GetChildren()[1] then
			
			repeat
				local total = 0
				for _, v in pairs(PET_FOLDER) do
					if v:GetAttribute("Target") or v:GetAttribute("Target") == "" then
						total += 1
						print(total)
					end
				end
				if total == 0 then
					print("total ==", total)
					attackNearest()
				else
					total = 0
					print("total rest")
				end
				wait(0.5)
			until not Options.MyToggleMain1.Value
		end
	end

end)
--//

--// Toggle2
local ToggleMain2 = Tabs.Main:AddToggle("MyToggleMain2", {Title = "Auto Arise", Default = false })

ToggleMain2:OnChanged(function()
	--print("Toggle changed:", Options.MyToggleMain2.Value)
	if Options.MyToggleMain2.Value then
		--print("Enabled ArisePrompt auto-clicker")
		connection = workspace.__Main.__Enemies.Client.DescendantAdded:Connect(function(descendant)
			if descendant:IsA("ProximityPrompt") and descendant.Name == "ArisePrompt" then
				print("Found", descendant)

				local num = 0
				repeat
					if not Options.MyToggleMain2.Value then break end  -- Exit loop if disabled
					descendant.HoldDuration = 0
					fireproximityprompt(descendant)
					num += 1
					print(num, descendant.Parent)
					task.wait()
				until descendant.Parent == nil
			end
		end)
	else
		--print("Disabled ArisePrompt auto-clicker")
		if connection then
			connection:Disconnect()
			connection = nil
		end
	end
end)

--Options.MyToggle2:SetValue(false)
--------------------------------------------------------------------------------------------------------------------Main

--------------------------------------------------------------------------------------------------------------------Teleport
--// Button 1
Tabs.Teleport:AddButton({
	Title = "Leveling City",
	Description = "TP",
	Callback = function()
		if FlyingFixer.Enabled then
			FlyingFixer.Enabled = false
			wait()
		end
		LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(612.1231079101562, 28.08351707458496, 257.28076171875)
	end
})
--//
--// Button 2
Tabs.Teleport:AddButton({
	Title = "Grass Village",
	Description = "TP",
	Callback = function()
		if FlyingFixer.Enabled then
			FlyingFixer.Enabled = false
			wait()
		end
		LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3335.876708984375, 29.82646942138672, 2287.708984375)
	end
})
--//
--// Button 3
Tabs.Teleport:AddButton({
	Title = "Brum Island",
	Description = "TP",
	Callback = function()
		if FlyingFixer.Enabled then
			FlyingFixer.Enabled = false
			wait()
		end
		LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2923.08349609375, 57.44607162475586, -2051.4736328125)
	end
})
--//
--// Button 4
Tabs.Teleport:AddButton({
	Title = "Faceheal Town",
	Description = "TP",
	Callback = function()
		if FlyingFixer.Enabled then
			FlyingFixer.Enabled = false
			wait()
		end
		LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2677.666015625, 46.42753219604492, -2586.08935546875)
	end
})
--//
--// Button 5
Tabs.Teleport:AddButton({
	Title = "Lucky Kingdom",
	Description = "TP",
	Callback = function()
		--/
		if FlyingFixer.Enabled then
			FlyingFixer.Enabled = false
			wait()
		end
		LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(235.01141357421875, 37.853126525878906, 4352.52490234375)
		--/
	end
})
--//
--------------------------------------------------------------------------------------------------------------------Teleport

--------------------------------------------------------------------------------------------------------------------Event

--// Toggle
local ToggleEvent1 = Tabs.Event:AddToggle("MyToggleEvent1", {Title = "Stay in boss area", Default = false })

ToggleEvent1:OnChanged(function()
	if Options.MyToggleEvent1.Value then
		repeat
			local distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(3843.900390625, 60.109989166259766, 3057.683837890625)).Magnitude
			if distance > 1 then
				print("1", distance)
				--/
				if FlyingFixer.Enabled then
					FlyingFixer.Enabled = false
					wait()
				end
				LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3843.900390625, 60.109989166259766, 3057.683837890625)
				--/
			else
				print("2", distance)
			end
			wait(3)
		until not Options.MyToggleEvent1.Value
	end
end)
--//

--// Toggle
local ToggleEvent2 = Tabs.Event:AddToggle("MyToggleEvent2", {Title = "auto click", Default = false })

ToggleEvent2:OnChanged(function()
	if Options.MyToggleEvent2.Value then
		if game:GetService("Players").LocalPlayer.PlayerGui.Hud.BottomContainer.Submenu.Buttons.AutoClick.OnOff.Text == "OFF" then
			firesignal(game:GetService("Players").LocalPlayer.PlayerGui.Hud.BottomContainer.Submenu.Buttons.AutoClick.Activated)
			--game:GetService("ReplicatedStorage").__Assets.WepetEvent:Fire("AutoClick") #fire remote directly
			print("turned on")
		end
	else
		if game:GetService("Players").LocalPlayer.PlayerGui.Hud.BottomContainer.Submenu.Buttons.AutoClick.OnOff.Text == "ON" then
			firesignal(game:GetService("Players").LocalPlayer.PlayerGui.Hud.BottomContainer.Submenu.Buttons.AutoClick.Activated)
			print("turned off")
		end
	end
end)

--// Toggle
local ToggleEvent3 = Tabs.Event:AddToggle("MyToggleEvent3", {Title = "Beru Farm", Default = false })

local LocalPlayer = game:GetService("Players").LocalPlayer
local petsFolder = workspace.__Main.__Pets:WaitForChild(tostring(LocalPlayer.UserId))
local currentTarget = nil

local function getNPCHealth(npc)
	local healthBar = npc:FindFirstChild("HealthBar")
	if healthBar then
		local bar = healthBar.Main.Bar:FindFirstChild("Amount")
		if bar and bar:IsA("TextLabel") then
			local hpText = bar.Text:gsub(" HP", "")
			local currentHP = tonumber(hpText:match("%d+")) or 0
			return currentHP
		end
	end
	return 0
end

local function isValidTarget(npc)
	if not npc or not npc.Parent then return false end
	return getNPCHealth(npc) > 0
end

local function getTargetNPC()
	local enemiesFolder = workspace.__Main.__Enemies.Client
	local royalRedAnts = {}
	local antQueen = nil
	local antKing = nil

	for _, npc in pairs(enemiesFolder:GetChildren()) do
		if isValidTarget(npc) then
			local title = npc.HealthBar.Main.Title
			local npcName = title.Text

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
		repeat
			local target = getTargetNPC()

			if target and target ~= currentTarget then
				currentTarget = target
				--//
				local A_1 = 
					{
						[1] = 
						{
							["PetPos"] = 
							{}, 
							["AttackType"] = "All", 
							["Event"] = "Attack", 
							["Enemy"] = target.Name
						}, 
						[2] = "	"
					}
				local Event = game:GetService("ReplicatedStorage").BridgeNet2.dataRemoteEvent
				Event:FireServer(A_1)
				--//
			end

			task.wait(0.5) -- Adjust wait time as needed
		until not Options.MyToggleEvent3.Value
	end
end)

--// Button 1
Tabs.Event:AddButton({
	Title = "Location",
	Description = "TP",
	Callback = function()
		--/
		if FlyingFixer.Enabled then
			FlyingFixer.Enabled = false
			wait()
		end
		LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3858.1455078125, 59.14358139038086, 3232.87841796875)
		--/
	end
})
--------------------------------------------------------------------------------------------------------------------Event

--------------------------------------------------------------------------------------------------------------------Mount
--// Function to check if mount exists in inventory
local function isMountInInventory(mountName)
	local mountsFolder = LocalPlayer.leaderstats.Inventory.Mounts
	for _, mount in pairs(mountsFolder:GetChildren()) do
		if mount:GetAttribute("Name") == mountName then
			return true
		end
	end
	return false
end
--//

--// Toggle
local ToggleMount1 = Tabs.Mount:AddToggle("MyToggleMount1", {Title = "Auto Farm Mount", Default = false })

ToggleMount1:OnChanged(function()
	if Options.MyToggleMount1.Value then

		local Players = game:GetService("Players")
		local player = Players.LocalPlayer
		local humanoid = player.Character:FindFirstChildOfClass("Humanoid")

		local teleportLocations = {
			Vector3.new(-6161.255859375, 134.2600555419922, 5512.96728515625),
			Vector3.new(-5868.4384765625, 109.77471923828125, 362.4894104003906),
			Vector3.new(-5430.81005859375, 107.44155883789062, -5502.25244140625),
			Vector3.new(-702.2432861328125, 115.93551635742188, -3538.116455078125),
			Vector3.new(449.9917297363281, 109.7667465209961, 3435.43701171875),
			Vector3.new(3222.760009765625, 98.77737426757812, 38.062923431396484),
			Vector3.new(4325.365234375, 118.99542999267578, -4819.78857421875)
		}

		local mountSpawnArea = workspace.__Extra.__Appear
		local cooldown = 1 -- seconds between teleports
		local isSearching = false

		local function checkForMounts()
			local mounts = mountSpawnArea:GetChildren()
			if #mounts > 0 then
				return true, mounts[1].Name -- Return first mount found
			end
			return false, nil
		end

		local function teleportToLocation(location)
			if not humanoid or not humanoid.RootPart then return end
			--//
			if FlyingFixer.Enabled then
				FlyingFixer.Enabled = false
				wait()
			end
			--//
			humanoid.RootPart.CFrame = CFrame.new(location)
		end

		local function startSearch()
			if isSearching then return end
			isSearching = true

			for i, location in ipairs(teleportLocations) do
				teleportToLocation(location)
				wait(cooldown) -- Wait for mounts to potentially spawn

				local mountFound, mountName = checkForMounts()

				if mountFound then
					print("✅ Mount found at location "..i..": "..mountName)
					isSearching = false
					--//
					if isMountInInventory(game.Workspace.__Extra.__Appear:GetChildren()[1].Name) then
						print("You already have this mount in your inventory:", game.Workspace.__Extra.__Appear:GetChildren()[1])
					else
						print("New mount found! Adding to inventory:", game.Workspace.__Extra.__Appear:GetChildren()[1])
						-- Here you would add logic to actually add the mount to inventory
						LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Workspace.__Extra.__Appear:GetChildren()[1].PrimaryPart.Position)
						wait(3.1)
						fireproximityprompt(game.Workspace.__Extra.__Appear:GetChildren()[1].MountPrompt)
						wait(0.5)
					end
					--//
					--// server hub
					loadstring(game:HttpGet("https://raw.githubusercontent.com/KamiKaze-rblx/AriseCrossover/refs/heads/main/ServerHub"))()
					--//
					return
				end

				if i == #teleportLocations then
					print("❌ No mounts found after checking all locations")
					--// server hub
					loadstring(game:HttpGet("https://raw.githubusercontent.com/KamiKaze-rblx/AriseCrossover/refs/heads/main/ServerHub"))()
					--//
				end
			end

			isSearching = false
		end

		-- Connect to a button or trigger to start the search
		-- Example: script.Parent.MouseButton1Click:Connect(startSearch)
		startSearch() -- Or call this when you want to start searching
	end
end)
--//

--// Button 1
Tabs.Mount:AddButton({
	Title = "Location 1",
	Description = "TP",
	Callback = function()
		--/ TP
		if FlyingFixer.Enabled then
			FlyingFixer.Enabled = false
			wait()
		end
		LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6161.255859375, 134.2600555419922, 5512.96728515625)
		--/

		--/ pickup mount
		--[[
		wait(1)
		if #game.Workspace.__Extra.__Appear:GetChildren() > 0 then
			print(game.Workspace.__Extra.__Appear:GetChildren()[1])
			LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Workspace.__Extra.__Appear:GetChildren()[1].PrimaryPart.Position)
			print("Found Mount, ", game.Workspace.__Extra.__Appear:GetChildren()[1])
			wait(3)
			fireproximityprompt(game.Workspace.__Extra.__Appear:GetChildren()[1].MountPrompt)
		end
		]]
		--/
	end
})
--//
--// Button 2
Tabs.Mount:AddButton({
	Title = "Location 2",
	Description = "TP",
	Callback = function()
		--/ TP
		if FlyingFixer.Enabled then
			FlyingFixer.Enabled = false
			wait()
		end
		LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5868.4384765625, 109.77471923828125, 362.4894104003906)
		--/

		--/ pickup mount
		--[[
		wait(1)
		if #game.Workspace.__Extra.__Appear:GetChildren() > 0 then
			print(game.Workspace.__Extra.__Appear:GetChildren()[1])
			LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Workspace.__Extra.__Appear:GetChildren()[1].PrimaryPart.Position)
			print("Found Mount, ", game.Workspace.__Extra.__Appear:GetChildren()[1])
			wait(3)
			fireproximityprompt(game.Workspace.__Extra.__Appear:GetChildren()[1].MountPrompt)
		end
		]]
		--/
	end
})
--//
--// Button 3
Tabs.Mount:AddButton({
	Title = "Location 3",
	Description = "TP",
	Callback = function()
		--/ TP
		if FlyingFixer.Enabled then
			FlyingFixer.Enabled = false
			wait()
		end
		LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5430.81005859375, 107.44155883789062, -5502.25244140625)
		--/

		--/ pickup mount
		--[[
		wait(1)
		if #game.Workspace.__Extra.__Appear:GetChildren() > 0 then
			
			print(game.Workspace.__Extra.__Appear:GetChildren()[1])
			LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Workspace.__Extra.__Appear:GetChildren()[1].PrimaryPart.Position)
			print("Found Mount, ", game.Workspace.__Extra.__Appear:GetChildren()[1])
			wait(2.01)
			fireproximityprompt(game.Workspace.__Extra.__Appear:GetChildren()[1].MountPrompt)
		end
		]]
		--/
	end
})
--//
--// Button 4
Tabs.Mount:AddButton({
	Title = "Location 4",
	Description = "TP",
	Callback = function()
		--/ TP
		if FlyingFixer.Enabled then
			FlyingFixer.Enabled = false
			wait()
		end
		LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-702.2432861328125, 115.93551635742188, -3538.116455078125)
		--/

		--/ pickup mount
		--[[
		wait(1)
		if #game.Workspace.__Extra.__Appear:GetChildren() > 0 then
			print(game.Workspace.__Extra.__Appear:GetChildren()[1])
			LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Workspace.__Extra.__Appear:GetChildren()[1].PrimaryPart.Position)
			print("Found Mount, ", game.Workspace.__Extra.__Appear:GetChildren()[1])
			wait(3)
			fireproximityprompt(game.Workspace.__Extra.__Appear:GetChildren()[1].MountPrompt)
		end
		]]
		--/
	end
})
--//
--// Button 1
Tabs.Mount:AddButton({
	Title = "Location 5",
	Description = "TP",
	Callback = function()
		--/ TP
		if FlyingFixer.Enabled then
			FlyingFixer.Enabled = false
			wait()
		end
		LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(449.9917297363281, 109.7667465209961, 3435.43701171875)
		--/

		--/ pickup mount
		--[[
		wait(1)
		if #game.Workspace.__Extra.__Appear:GetChildren() > 0 then
			print(game.Workspace.__Extra.__Appear:GetChildren()[1])
			LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Workspace.__Extra.__Appear:GetChildren()[1].PrimaryPart.Position)
			print("Found Mount, ", game.Workspace.__Extra.__Appear:GetChildren()[1])
			wait(3)
			fireproximityprompt(game.Workspace.__Extra.__Appear:GetChildren()[1].MountPrompt)
		end
		]]
		--/
	end
})
--//
--// Button 1
Tabs.Mount:AddButton({
	Title = "Location 6",
	Description = "TP",
	Callback = function()
		--/ TP
		if FlyingFixer.Enabled then
			FlyingFixer.Enabled = false
			wait()
		end
		LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3222.760009765625, 98.77737426757812, 38.062923431396484)
		--/

		--/ pickup mount
		--[[
		wait(1)
		if #game.Workspace.__Extra.__Appear:GetChildren() > 0 then
			print(game.Workspace.__Extra.__Appear:GetChildren()[1])
			LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Workspace.__Extra.__Appear:GetChildren()[1].PrimaryPart.Position)
			print("Found Mount, ", game.Workspace.__Extra.__Appear:GetChildren()[1].PrimaryPart.Position)
			wait(3)
			fireproximityprompt(game.Workspace.__Extra.__Appear:GetChildren()[1].MountPrompt)
		end
		]]
		--/
	end
})
--//
--// Button 1
Tabs.Mount:AddButton({
	Title = "Location 7",
	Description = "TP",
	Callback = function()
		--/ TP
		if FlyingFixer.Enabled then
			FlyingFixer.Enabled = false
			wait()
		end
		LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4325.365234375, 118.99542999267578, -4819.78857421875)
		--/

		--/ pickup mount
		--[[
		wait(1)
		if #game.Workspace.__Extra.__Appear:GetChildren() > 0 then
			print(game.Workspace.__Extra.__Appear:GetChildren()[1])
			LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Workspace.__Extra.__Appear:GetChildren()[1].PrimaryPart.Position)
			print("Found Mount, ", game.Workspace.__Extra.__Appear:GetChildren()[1])
			wait(3)
			fireproximityprompt(game.Workspace.__Extra.__Appear:GetChildren()[1].MountPrompt)
		end
		]]
		--/
	end
})
--//
--------------------------------------------------------------------------------------------------------------------Mount

--------------------------------------------------------------------------------------------------------------------Misc
local ToggleMisc1 = Tabs.Misc:AddToggle("MyToggleMisc1", {Title = "Anti AFK", Default = false })

ToggleMisc1:OnChanged(function()
	if Options.MyToggleMisc1.Value then

	end
end)

local Players = game:GetService("Players");

local VirtualUser=game:GetService('VirtualUser')
game:GetService('Players').LocalPlayer.Idled:connect(function()
	VirtualUser:CaptureController()
	VirtualUser:ClickButton2(Vector2.new())
end)
--------------------------------------------------------------------------------------------------------------------Misc
-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- InterfaceManager (Allows you to have a interface managment system)

-- Hand the library over to our managers
SaveManager:SetLibrary(Library)
InterfaceManager:SetLibrary(Library)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- You can add indexes of elements the save manager should ignore
SaveManager:SetIgnoreIndexes{}

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

Library:Notify{
	Title = "Fluent",
	Content = "The script has been loaded.",
	Duration = 8
}

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
