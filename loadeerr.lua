-- Deobfuscated by deobf (dynamic trace)
-- source: in.lua
-- NOTE: reconstructed from observed behaviour; branches that were not taken
--       during the trace are missing and conditions are only noted in comments.
-- run status: finished
-- 7824 statements recorded in 4.20s
-- URLs requested:
--   https://raw.githubusercontent.com/willrev-424/W424HUB/refs/heads/main/W424_UI.lua
--   https://games.roblox.com/v1/games/0/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true
--   https://games.roblox.com/v1/games/0/servers/Public?sortOrder=Asc&limit=100
--   https://leekguy.vercel.app/roblox/menghub/crack_obf_invisible_93978595733734.lua
--   https://pastefy.app/wa3v2Vgm/raw
-- remotes fired/invoked:
--   ReplicatedStorage.Remotes.Game.loadcharevent
--   ReplicatedStorage.Remotes.Killers.Masked.Activatepower
--   ReplicatedStorage.Remotes.Killers.Masked.Deactivatepower
--   Stunover
-- non-standard globals touched: notif, DBD_Conn, player, forceKickConn, SelfHealToggle, SendNotif, Connections, Killer, Library, VD, setfpscap, espEnabled, startEspLoop, LoadConfigFromFile, CURRENT_VERSION, LoadConfigElements

-- [deobf] folded 37 repeated calls into 10 helper functions and 8 unrolled runs into loops
-- loadstring() of 2440 bytes, its source:
-- |  --[[ 34 comment lines ]] return setfenv(function(...) return WQOmtaH(...) end, setmetatable({ ["WQOmtaH"] = ... }, { __index = getfenv((...)) })) 
-- [deobf] removed 58 lines of the obfuscator's environment/anti-tamper probes
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local UserInputService = game:GetService("UserInputService")
local CollectionService = game:GetService("CollectionService")
local TweenService = game:GetService("TweenService")
local VirtualInputManager = game:GetService("VirtualInputManager")
warn("Anti AFK Automatically Active...")

task.spawn(function(...)
	local Remotes = ReplicatedStorage:WaitForChild("Remotes", 5)
	local Items = Remotes:WaitForChild("Items", 5)
	local lastRemotes = Items:WaitForChild("Parrying Dagger", 5)
	local parryResult = lastRemotes:FindFirstChild("parryResult", 5)

	parryResult.OnClientEvent:Connect(function()
		local thread19 = task.delay(60, function()
		end)

		task.delay(10, function()
		end)
	end)
end)

local players = Players:GetPlayers()

for k, v in pairs(players) do
	v.CharacterAdded:Connect(function(character)
	end)

	local changedSignal = v:GetPropertyChangedSignal("Team")

	changedSignal:Connect(function()
	end)
end

Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character33)
	end)

	local changedSignal33 = player:GetPropertyChangedSignal("Team")

	changedSignal33:Connect(function()
	end)
end)

task.spawn(function()
	task.wait(5)
	local players2 = Players:GetPlayers()

	for k2, v2 in pairs(players2) do
	end

	task.wait(5)
	-- [envlog] the statements above repeat forever (loop)
end)

task.spawn(function()
	task.wait(8)
	task.wait(8)
	-- [envlog] the statements above repeat forever (loop)
end)

task.spawn(function()
	task.wait(0.5)
	local CheckInterractable = Players.LocalPlayer.Character:FindFirstChild("CheckInterractable")
	CheckInterractable:GetAttribute("isRepairing")
	task.wait(0.5)
	local CheckInterractable2 = Players.LocalPlayer.Character:FindFirstChild("CheckInterractable")
	CheckInterractable2:GetAttribute("isRepairing")
	task.wait(0.5)
	-- [envlog] the statements above repeat forever (loop)
end)

-- identifyexecutor() -> "Wave"
_G.ConfigFolder = "W424_Violence/Config/"
local response = game:HttpGet("https://raw.githubusercontent.com/willrev-424/W424HUB/refs/heads/main/W424_UI.lua")
local W424HUB = loadstring(response)()

local W424HUBPREMIUMWindow = W424HUB:Window({
	Title = "FEBZ HUB PREMIUM",
	Color = Color3.fromRGB(30, 132, 243),
	Footer = "| Peaceful Love | VD |",
	Icon = "rbxassetid://140240380177843",
	Image = "140240380177843",
	["Tab Width"] = 130,
	Version = 3
})

-- identifyexecutor() -> "Wave"
W424HUBPREMIUMWindow:Tag({ Title = "Executor: Wave", Color = Color3.fromRGB(100, 100, 100), Radius = 13 })
local Tab = W424HUBPREMIUMWindow:AddTab({ Name = "Info", Icon = "user" })
local Tab2 = W424HUBPREMIUMWindow:AddTab({ Name = "Survivor", Icon = "sword" })
local Tab3 = W424HUBPREMIUMWindow:AddTab({ Name = "Killer", Icon = "skeleton" })
local Tab4 = W424HUBPREMIUMWindow:AddTab({ Name = "ESP", Icon = "eyes" })
local Tab5 = W424HUBPREMIUMWindow:AddTab({ Name = "Emote & Skin", Icon = "player" })
local Tab6 = W424HUBPREMIUMWindow:AddTab({ Name = "Aimbot", Icon = "crosshair" })
local Tab7 = W424HUBPREMIUMWindow:AddTab({ Name = "Settings", Icon = "loop" })
local Tab8 = W424HUBPREMIUMWindow:AddTab({ Name = "Configuration", Icon = "menu" })
local Section = Tab:AddSection("Server", true)

Section:AddButton({
	Title = "Return to Lobby",
	Callback = function(state)
		if state then
			local StarterGui = game:GetService("StarterGui")
		end

		StarterGui:SetCore("SendNotification", { Text = "Back...", Title = "Return To Lobby", Duration = 3, Icon = "rbxassetid://82799775499788" })
		ReplicatedStorage.Remotes.Game.loadcharevent:FireServer()
	end
})

Section:AddButton({
	Title = "Rejoin Server",
	Callback = function()
		StarterGui:SetCore("SendNotification", {
	Text = "Rejoining server...",
	Title = "Rejoin Server",
	Duration = 3,
	Icon = "rbxassetid://140240380177843"
})

		task.delay(1, function()
			TeleportService:Teleport(0)
		end)
	end
})

Section:AddButton({
	Title = "Server Hop",
	Callback = function(state)
		notif("Finding new server...", 1)

		if state then
			local response2 = game:HttpGet("https://games.roblox.com/v1/games/0/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true")
			local data = HttpService:JSONDecode(response2)

			for i, v4 in ipairs(data.data) do
				-- condition: v4.playing < v4.maxPlayers  (assumed true)
			end

			TeleportService:TeleportToPlaceInstance(0, v4.id, Players.LocalPlayer)
		else
			local response3 = game:HttpGet("https://games.roblox.com/v1/games/0/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true")
			local data2 = HttpService:JSONDecode(response3)

			for i2, v5 in ipairs(data2.data) do
				-- condition: v5.playing < v5.maxPlayers  (assumed true)
			end

			TeleportService:TeleportToPlaceInstance(0, v5.id, Players.LocalPlayer)
		end
	end
})

Section:AddButton({
	Title = "Server Hop (Small Server)",
	Callback = function()
		notif("Searching for a small server...", 2)
		local response4 = game:HttpGet("https://games.roblox.com/v1/games/0/servers/Public?sortOrder=Asc&limit=100")
		local data3 = HttpService:JSONDecode(response4)

		for i3, v6 in ipairs(data3.data) do
			-- condition: v6.playing < v6.maxPlayers  (assumed true)
		end
		-- [envlog] error: Luraph Script:1062: Script:3: attempt to compare userdata <= number
	end
})

local Section2 = Tab2:AddSection("Invisible and New Fitur")

task.spawn(function()
	local response5 = game:HttpGet("https://leekguy.vercel.app/roblox/menghub/crack_obf_invisible_93978595733734.lua")
	loadstring(response5)()
	warn("[Meng Hub] Failed to load invisible script: nil")
end)

Section2:AddParagraph({
	Title = "❗️BUKAN VISUAL❗️",
	Content = "Fitur ini benar-benar membuat karakter Anda tidak terlihat, bukan hanya visual."
})

Section2:AddToggle({
	Title = "Invisible",
	Default = false,
	Keybind = true,
	Callback = function()
		notif("Not Ready Yet!")
	end
})

Players.LocalPlayer.CharacterAdded:Connect(function(character2)
	task.wait(2)
end)

task.spawn(function()
end)

Players.LocalPlayer.CharacterAdded:Connect(function(character3)
	task.wait(0.3)
end)

Section2:AddToggle({
	Title = "DBD Camera",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			local Humanoid = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			Humanoid.BodyHeightScale = 0.05
			Humanoid.BodyWidthScale = 0.05
			Humanoid.BodyDepthScale = 0.05
			Humanoid.HeadScale = 0.05
			notif("DBD Camera: ON")
		else
			DBD_Conn:Disconnect()
			local Humanoid2 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			Humanoid2.BodyHeightScale = 1
			Humanoid2.BodyWidthScale = 1
			Humanoid2.BodyDepthScale = 1
			Humanoid2.HeadScale = 1
			Humanoid2.CameraOffset = Vector3.new(0, 0, 0)
			workspace.CurrentCamera.FieldOfView = 70
			Players.LocalPlayer.CameraMaxZoomDistance = 0
			Players.LocalPlayer.CameraMinZoomDistance = 0
			notif("DBD Camera: OFF")
		end
	end
})

Section2:AddInput({
	Title = "DBD Camera Distance",
	Content = "Jarak zoom kamera",
	Default = 3,
	Max = 60,
	Min = 0,
	Callback = function()
	end
})

Section2:AddToggle({
	Title = "DBD Bright + Highlight",
	Content = "Langit terang + kabut tebal + bloom",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			local DBD_MapFog = Lighting:FindFirstChild("DBD_MapFog")
			DBD_MapFog:Destroy()
			local DBD_ColorGrade = Lighting:FindFirstChild("DBD_ColorGrade")
			DBD_ColorGrade:Destroy()
			local DBD_Bloom = Lighting:FindFirstChild("DBD_Bloom")
			DBD_Bloom:Destroy()
			local DBD_SunRays = Lighting:FindFirstChild("DBD_SunRays")
			DBD_SunRays:Destroy()
			local DBD_DOF = Lighting:FindFirstChild("DBD_DOF")
			DBD_DOF:Destroy()
			local DBD_BlackSky = Lighting:FindFirstChild("DBD_BlackSky")
			DBD_BlackSky:Destroy()
			local DBD_WhiteFog = Lighting:FindFirstChild("DBD_WhiteFog")
			DBD_WhiteFog:Destroy()
			Lighting.Ambient = Color3.fromRGB(130, 135, 145)
			Lighting.OutdoorAmbient = Color3.fromRGB(145, 150, 160)
			Lighting.Brightness = 3.2
			Lighting.ClockTime = 16.5
			Lighting.ExposureCompensation = 0.45
			Lighting.GlobalShadows = true
			Lighting.ShadowSoftness = 0.5
			Lighting.FogEnd = 220
			Lighting.FogStart = 25
			Lighting.FogColor = Color3.fromRGB(200, 205, 215)
			local DBD_MapFog4 = Instance.new("Atmosphere")
			DBD_MapFog4.Name = "DBD_MapFog"
			DBD_MapFog4.Density = 0.48
			DBD_MapFog4.Offset = 0.05
			DBD_MapFog4.Color = Color3.fromRGB(210, 210, 220)
			DBD_MapFog4.Decay = Color3.fromRGB(150, 145, 165)
			DBD_MapFog4.Glare = 0.6
			DBD_MapFog4.Haze = 3.5
			DBD_MapFog4.Parent = Lighting
			local DBD_ColorGrade3 = Instance.new("ColorCorrectionEffect")
			DBD_ColorGrade3.Name = "DBD_ColorGrade"
			DBD_ColorGrade3.Brightness = 0.08
			DBD_ColorGrade3.Contrast = 0.18
			DBD_ColorGrade3.Saturation = 0.05
			DBD_ColorGrade3.TintColor = Color3.fromRGB(255, 250, 255)
			DBD_ColorGrade3.Parent = Lighting
			local DBD_Bloom3 = Instance.new("BloomEffect")
			DBD_Bloom3.Name = "DBD_Bloom"
			DBD_Bloom3.Intensity = 1.1
			DBD_Bloom3.Size = 32
			DBD_Bloom3.Threshold = 0.85
			DBD_Bloom3.Parent = Lighting
			local DBD_SunRays4 = Instance.new("SunRaysEffect")
			DBD_SunRays4.Name = "DBD_SunRays"
			DBD_SunRays4.Intensity = 0.35
			DBD_SunRays4.Spread = 1
			DBD_SunRays4.Parent = Lighting
			local DBD_DOF3 = Instance.new("DepthOfFieldEffect")
			DBD_DOF3.Name = "DBD_DOF"
			DBD_DOF3.FarIntensity = 0.05
			DBD_DOF3.FocusDistance = 80
			DBD_DOF3.InFocusRadius = 60
			DBD_DOF3.NearIntensity = 0.03
			DBD_DOF3.Parent = Lighting
			local tween = TweenService:Create(Lighting, TweenInfo.new(2), { Brightness = 3, ClockTime = 18.5, FogColor = Color3.fromRGB(185, 145, 205), FogEnd = 240, FogStart = 30 })
			tween:Play()
			local tween2 = TweenService:Create(DBD_MapFog4, TweenInfo.new(2), { Color = Color3.fromRGB(210, 160, 230), Density = 0.45, Haze = 3.2 })
			tween2:Play()
			local tween3 = TweenService:Create(DBD_ColorGrade3, TweenInfo.new(2), { TintColor = Color3.fromRGB(255, 220, 255) })
			tween3:Play()
			notif("DBD V2: ON")
		else
			Lighting:FindFirstChild("DBD_MapFog")
			DBD_MapFog4:Destroy()
			Lighting:FindFirstChild("DBD_ColorGrade")
			DBD_ColorGrade3:Destroy()
			Lighting:FindFirstChild("DBD_Bloom")
			DBD_Bloom3:Destroy()
			Lighting:FindFirstChild("DBD_SunRays")
			DBD_SunRays4:Destroy()
			Lighting:FindFirstChild("DBD_DOF")
			DBD_DOF3:Destroy()
			local DBD_BlackSky2 = Lighting:FindFirstChild("DBD_BlackSky")
			DBD_BlackSky2:Destroy()
			local DBD_WhiteFog2 = Lighting:FindFirstChild("DBD_WhiteFog")
			DBD_WhiteFog2:Destroy()

			local tween4 = TweenService:Create(Lighting, TweenInfo.new(1.5), {
		Ambient = Lighting.Ambient,
		Brightness = 1,
		ClockTime = 0,
		ExposureCompensation = 0,
		FogColor = Lighting.FogColor,
		FogEnd = 0,
		FogStart = 0,
		GlobalShadows = Lighting.GlobalShadows,
		OutdoorAmbient = Lighting.OutdoorAmbient,
		ShadowSoftness = 0
	})

			tween4:Play()
			notif("DBD V2: OFF")
		end
	end
})

Section2:AddToggle({
	Title = "DBD Black Sky + White Fog",
	Content = "Langit hitam + 5000 bintang + kabut putih pekat",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			local DBD_MapFog2 = Lighting:FindFirstChild("DBD_MapFog")
			DBD_MapFog2:Destroy()
			local DBD_ColorGrade2 = Lighting:FindFirstChild("DBD_ColorGrade")
			DBD_ColorGrade2:Destroy()
			local DBD_Bloom2 = Lighting:FindFirstChild("DBD_Bloom")
			DBD_Bloom2:Destroy()
			local DBD_SunRays2 = Lighting:FindFirstChild("DBD_SunRays")
			DBD_SunRays2:Destroy()
			local DBD_DOF2 = Lighting:FindFirstChild("DBD_DOF")
			DBD_DOF2:Destroy()
			local DBD_BlackSky3 = Lighting:FindFirstChild("DBD_BlackSky")
			DBD_BlackSky3:Destroy()
			local DBD_WhiteFog3 = Lighting:FindFirstChild("DBD_WhiteFog")
			DBD_WhiteFog3:Destroy()
			local DBD_BlackSky4 = Instance.new("Sky")
			DBD_BlackSky4.Name = "DBD_BlackSky"
			DBD_BlackSky4.SkyboxBk = "rbxassetid://7137612289"
			DBD_BlackSky4.SkyboxDn = "rbxassetid://7137612289"
			DBD_BlackSky4.SkyboxFt = "rbxassetid://7137612289"
			DBD_BlackSky4.SkyboxLf = "rbxassetid://7137612289"
			DBD_BlackSky4.SkyboxRt = "rbxassetid://7137612289"
			DBD_BlackSky4.SkyboxUp = "rbxassetid://7137612289"
			DBD_BlackSky4.StarCount = 5000
			DBD_BlackSky4.CelestialBodiesShown = false
			DBD_BlackSky4.SunAngularSize = 0
			DBD_BlackSky4.MoonAngularSize = 0
			DBD_BlackSky4.Parent = Lighting
			Lighting.Ambient = Color3.fromRGB(5, 5, 12)
			Lighting.OutdoorAmbient = Color3.fromRGB(15, 15, 25)
			Lighting.Brightness = 0.8
			Lighting.ClockTime = 0
			Lighting.GeographicLatitude = 0
			Lighting.ExposureCompensation = -0.25
			Lighting.EnvironmentDiffuseScale = 0
			Lighting.EnvironmentSpecularScale = 0
			Lighting.GlobalShadows = true
			Lighting.ShadowSoftness = 0.5
			Lighting.FogColor = Color3.fromRGB(255, 255, 255)
			Lighting.FogStart = 0
			Lighting.FogEnd = 110
			local DBD_WhiteFog4 = Instance.new("Atmosphere")
			DBD_WhiteFog4.Name = "DBD_WhiteFog"
			DBD_WhiteFog4.Density = 0.55
			DBD_WhiteFog4.Offset = 0
			DBD_WhiteFog4.Color = Color3.fromRGB(255, 255, 255)
			DBD_WhiteFog4.Decay = Color3.fromRGB(180, 180, 200)
			DBD_WhiteFog4.Glare = 0
			DBD_WhiteFog4.Haze = 5
			DBD_WhiteFog4.Parent = Lighting
			local DBD_ColorGrade4 = Instance.new("ColorCorrectionEffect")
			DBD_ColorGrade4.Name = "DBD_ColorGrade"
			DBD_ColorGrade4.Brightness = 0.05
			DBD_ColorGrade4.Contrast = 0.2
			DBD_ColorGrade4.Saturation = -0.05
			DBD_ColorGrade4.TintColor = Color3.fromRGB(230, 235, 255)
			DBD_ColorGrade4.Parent = Lighting
			local DBD_Bloom4 = Instance.new("BloomEffect")
			DBD_Bloom4.Name = "DBD_Bloom"
			DBD_Bloom4.Intensity = 1.4
			DBD_Bloom4.Size = 32
			DBD_Bloom4.Threshold = 0.75
			DBD_Bloom4.Parent = Lighting
			local DBD_DOF4 = Instance.new("DepthOfFieldEffect")
			DBD_DOF4.Name = "DBD_DOF"
			DBD_DOF4.FarIntensity = 0.05
			DBD_DOF4.FocusDistance = 80
			DBD_DOF4.InFocusRadius = 60
			DBD_DOF4.NearIntensity = 0.03
			DBD_DOF4.Parent = Lighting
			local tween5 = TweenService:Create(Lighting, TweenInfo.new(2), { ClockTime = 0, FogColor = Color3.fromRGB(240, 235, 255), FogEnd = 120, FogStart = 0 })
			tween5:Play()
			local tween6 = TweenService:Create(DBD_WhiteFog4, TweenInfo.new(2), { Color = Color3.fromRGB(240, 235, 255), Density = 0.5, Haze = 4.5 })
			tween6:Play()
			local tween7 = TweenService:Create(DBD_ColorGrade4, TweenInfo.new(2), { TintColor = Color3.fromRGB(255, 220, 255) })
			tween7:Play()
			notif("DBD V3: ON")
		else
			local DBD_MapFog3 = Lighting:FindFirstChild("DBD_MapFog")
			DBD_MapFog3:Destroy()
			Lighting:FindFirstChild("DBD_ColorGrade")
			DBD_ColorGrade4:Destroy()
			Lighting:FindFirstChild("DBD_Bloom")
			DBD_Bloom4:Destroy()
			local DBD_SunRays3 = Lighting:FindFirstChild("DBD_SunRays")
			DBD_SunRays3:Destroy()
			Lighting:FindFirstChild("DBD_DOF")
			DBD_DOF4:Destroy()
			Lighting:FindFirstChild("DBD_BlackSky")
			DBD_BlackSky4:Destroy()
			Lighting:FindFirstChild("DBD_WhiteFog")
			DBD_WhiteFog4:Destroy()

			local tween8 = TweenService:Create(Lighting, TweenInfo.new(1.5), {
		Ambient = Lighting.Ambient,
		Brightness = 1,
		ClockTime = 0,
		ExposureCompensation = 0,
		FogColor = Lighting.FogColor,
		FogEnd = 0,
		FogStart = 0,
		GlobalShadows = Lighting.GlobalShadows,
		OutdoorAmbient = Lighting.OutdoorAmbient,
		ShadowSoftness = 0
	})

			tween8:Play()
			notif("DBD V3: OFF")
		end
	end
})

Players.LocalPlayer.CharacterAdded:Connect(function(character4)
	task.wait(2)
end)

local module = require(ReplicatedStorage.Modules.Items.GateClient)

Players.LocalPlayer.CharacterAdded:Connect(function(character5)
	task.wait(1)
end)

Section2:AddParagraph({
	Title = "❗️PENJELASAN❗️",
	Content = "Instan TP: setelah masuk gate, kamu langsung pindah ke gate terdekat. Troll TP: posisi kamu balik ke tempat semula biar kelihatan diam."
})

Section2:AddToggle({
	Title = "TP Gate",
	Content = "Instan Teleport",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			notif("Troll TP: ON")
			local Map = workspace:FindFirstChild("Map")
			local descendants = Map:GetDescendants()

			for k4, v7 in pairs(descendants) do
				v7:FindFirstChild("LeftGate")
				v7:FindFirstChild("RightGate")
				local result2 = v7.Name:lower()
				result2:find("finish", 1, true)
			end

			module.StartGate = function(arg23, arg24)
				task.spawn(function()
					module.StartGate(arg23, arg24)
				end)

				Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local Map2 = workspace:FindFirstChild("Map")
				local descendants2 = Map2:GetDescendants()

				for k5, v8 in pairs(descendants2) do
					v8:FindFirstChild("LeftGate")
					v8:FindFirstChild("RightGate")
					local result3 = v8.Name:lower()
					result3:find("finish", 1, true)
				end
			end

			print("Hook ✅ — animasi tetap jalan, TP barengan")
		else
			notif("Troll TP: OFF")
			module.StartGate = module.StartGate
		end
	end
})

Section2:AddToggle({
	Title = "Troll Teleport",
	Content = "TP balik ke posisi lama setelah gate trigger",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			notif("Troll Teleport: enabled")
			require(ReplicatedStorage.Modules.Items.GateClient)
			warn("[Troll Teleport] GateClient module gagal di-load. Coba lagi saat in-match.")
		else
			notif("Troll Teleport: disabled")
		end
	end
})

getgenv().W = {}
local FB_SelfUnhook = Instance.new("ScreenGui")
FB_SelfUnhook.Name = "FB_SelfUnhook"
FB_SelfUnhook.ResetOnSpawn = false
FB_SelfUnhook.IgnoreGuiInset = true
FB_SelfUnhook.Parent = CoreGui
FB_SelfUnhook.Enabled = false
local UnhookButton = Instance.new("TextButton")
UnhookButton.Name = "UnhookButton"
UnhookButton.Size = UDim2.fromOffset(120, 40)
UnhookButton.Position = UDim2.new(0.9, 0, 0.42, 0)
UnhookButton.AnchorPoint = Vector2.new(0.5, 0.5)
UnhookButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
UnhookButton.BorderSizePixel = 0
UnhookButton.Text = "UNHOOK"
UnhookButton.TextColor3 = Color3.fromRGB(230, 230, 230)
UnhookButton.Font = Enum.Font.GothamBold
UnhookButton.TextSize = 13
UnhookButton.AutoButtonColor = false
UnhookButton.Parent = FB_SelfUnhook
local UICorner = Instance.new("UICorner", UnhookButton)
UICorner.CornerRadius = UDim.new(0, 10)
local UIStroke = Instance.new("UIStroke", UnhookButton)
UIStroke.Color = Color3.fromRGB(130, 130, 130)
UIStroke.Thickness = 1.5
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

UnhookButton.InputBegan:Connect(function(input, gameProcessed)
end)

UnhookButton.InputEnded:Connect(function(input2, gameProcessed2)
end)

UserInputService.InputChanged:Connect(function(input3, gameProcessed3)
end)

local function helper()
	local UIStroke2 = UnhookButton:FindFirstChildOfClass("UIStroke")
	UnhookButton.TextColor3 = Color3.fromRGB(230, 230, 230)
	UnhookButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	UIStroke2.Color = Color3.fromRGB(130, 130, 130)
	UIStroke2.Thickness = 1.5
end

helper()

getgenv().Gluto_SUB_SetEnabled = function(arg27)
	FB_SelfUnhook.Enabled = arg27
	helper()
end

getgenv().Gluto_SUB_UpdateVisual = function()
	helper()
end

Section2:AddToggle({
	Title = "Enable Bypass Self Unhook",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			local connection7 = RunService.Heartbeat:Connect(function(deltaTime)
			end)

			local UIStroke5 = UnhookButton:FindFirstChildOfClass("UIStroke")
			UnhookButton.TextColor3 = Color3.fromRGB(80, 170, 255)
			UnhookButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			UIStroke5.Color = Color3.fromRGB(50, 150, 255)
			UIStroke5.Thickness = 1.8
			notif("Self Unhook: ON", 2)
		else
			connection7:Disconnect()
			local UIStroke6 = UnhookButton:FindFirstChildOfClass("UIStroke")
			UnhookButton.TextColor3 = Color3.fromRGB(230, 230, 230)
			UnhookButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			UIStroke6.Color = Color3.fromRGB(130, 130, 130)
			UIStroke6.Thickness = 1.5
			notif("Self Unhook: OFF", 2)
		end
	end
})

Section2:AddToggle({
	Title = "Show Self Unhook Button",
	Default = false,
	Callback = function(state)
		if state then
			FB_SelfUnhook.Enabled = state
			local UIStroke7 = UnhookButton:FindFirstChildOfClass("UIStroke")
			UnhookButton.TextColor3 = Color3.fromRGB(230, 230, 230)
			UnhookButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			UIStroke7.Color = Color3.fromRGB(130, 130, 130)
			UIStroke7.Thickness = 1.5
			notif("Unhook Button: ON", 2)
		else
			FB_SelfUnhook.Enabled = false
			local UIStroke8 = UnhookButton:FindFirstChildOfClass("UIStroke")
			UnhookButton.TextColor3 = Color3.fromRGB(230, 230, 230)
			UnhookButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			UIStroke8.Color = Color3.fromRGB(130, 130, 130)
			UIStroke8.Thickness = 1.5
			notif("Unhook Button: OFF", 2)
		end
	end
})

local Section3 = Tab2:AddSection("Movement")

Players.LocalPlayer.CharacterAdded:Connect(function(character6)
	task.wait(2)
end)

UserInputService.InputBegan:Connect(function(input4, gameProcessed4)
end)

Section3:AddToggle({
	Title = "Moonwalk V1",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

			local connection8 = RunService.RenderStepped:Connect(function(deltaTime2)
			end)
		else
			connection8:Disconnect()
		end
	end
})

Players.LocalPlayer.CharacterAdded:Connect(function(character7)
	task.wait(2)
end)

UserInputService.InputBegan:Connect(function(input5, gameProcessed5)
end)

Section3:AddToggle({
	Title = "Moonwalk V2",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			local Humanoid3 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			Humanoid3.AutoRotate = true
			Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			local Humanoid4 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			Humanoid4.AutoRotate = false
			Humanoid4.WalkSpeed = 16

			local connection9 = RunService.RenderStepped:Connect(function(deltaTime3)
			end)
		else
			connection9:Disconnect()
			local Humanoid5 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			Humanoid5.AutoRotate = true
			Humanoid5.WalkSpeed = Humanoid4.WalkSpeed
		end
	end
})

Section3:AddToggle({
	Title = "Auto Dodge Crouch",
	Default = false,
	Callback = function(state)
		if state then
			local thread = task.spawn(function()
				Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local players3 = Players:GetPlayers()

				for i4, v9 in ipairs(players3) do
				end

				task.wait(0.05)
				Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local players4 = Players:GetPlayers()

				for i5, v10 in ipairs(players4) do
				end

				task.wait(0.05)
				-- [envlog] the statements above repeat forever (loop)
			end)
		else
			task.cancel(thread)
		end
	end
})

getgenv().AutoRunMobileEnabled = false

Section3:AddToggle({
	Title = "Auto Run [Mobile]",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			task.spawn(function()
				getgenv().AutoRunMobileEnabled = state
				Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
				-- [envlog] error: Luraph Script:2965: Luraph Script:2921: Script:3: attempt to index function with 'Magnitude'
			end)

			notif("Auto Run Mobile: ON")
		else
			getgenv().AutoRunMobileEnabled = false
			notif("Auto Run Mobile: OFF")
		end
	end
})

Players.LocalPlayer.CharacterAdded:Connect(function(character8)
	task.wait(1)
end)

Players.LocalPlayer.CharacterAdded:Connect(function(character9)
	task.wait(1)
end)

Section3:AddToggle({
	Title = "Auto Run [PC]",
	Default = false,
	Callback = function(state)
		if state then
			getgenv().AutoRunEnabled = state

			task.spawn(function()
				local mouse = Players.LocalPlayer:GetMouse()
				VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.LeftShift, false, mouse)
				task.wait(0.1)
				local mouse2 = Players.LocalPlayer:GetMouse()
				VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.LeftShift, false, mouse2)
				task.wait(0.1)
				-- [envlog] the statements above repeat forever (loop)
			end)
		else
			getgenv().AutoRunEnabled = false
			local mouse3 = Players.LocalPlayer:GetMouse()
			VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.LeftShift, false, mouse3)
		end
	end
})

Section3:AddToggle({
	Title = "Speed Boost",
	Default = false,
	Keybind = true,
	Callback = function()
		notif("Speedboost Aktif")
		local HumanoidRootPart = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
		HumanoidRootPart:FindFirstChild("SpeedBV")
		-- [envlog] error: Luraph Script:3061: Luraph Script:907: Luraph Script:900: Script:3: attempt to index function with 'Magnitude'
	end
})

Section3:AddToggle({
	Title = "Next Map Prediction",
	Default = false,
	Callback = function(state)
		if state then
			local thread2 = task.spawn(function()
				local MapPredictUI = Instance.new("ScreenGui")
				MapPredictUI.Name = "MapPredictUI"
				MapPredictUI.ResetOnSpawn = false
				MapPredictUI.IgnoreGuiInset = true
				MapPredictUI.Parent = CoreGui
				local MainFrame3 = Instance.new("Frame", MapPredictUI)
				MainFrame3.Name = "MainFrame"
				MainFrame3.Size = UDim2.new(0, 165, 0, 40)
				MainFrame3.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame3.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame3.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame3.BackgroundTransparency = 0.35
				MainFrame3.BorderSizePixel = 0
				local UICorner2 = Instance.new("UICorner", MainFrame3)
				UICorner2.CornerRadius = UDim.new(0, 10)
				local UIStroke9 = Instance.new("UIStroke", MainFrame3)
				UIStroke9.Color = Color3.fromRGB(50, 150, 255)
				UIStroke9.Thickness = 1.8
				UIStroke9.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName = Instance.new("TextLabel", MainFrame3)
				MapName.Name = "MapName"
				MapName.Size = UDim2.new(1, 0, 0, 16)
				MapName.Position = UDim2.new(0, 0, 0, 4)
				MapName.Text = "Map: Scanning..."
				MapName.Font = Enum.Font.GothamBold
				MapName.TextSize = 11
				MapName.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName.BackgroundTransparency = 1
				MapName.TextXAlignment = Enum.TextXAlignment.Center
				MapName.RichText = true
				local MapStatus = Instance.new("TextLabel", MainFrame3)
				MapStatus.Name = "MapStatus"
				MapStatus.Size = UDim2.new(1, 0, 0, 14)
				MapStatus.Position = UDim2.new(0, 0, 0, 21)
				MapStatus.Text = "Status: —"
				MapStatus.Font = Enum.Font.Gotham
				MapStatus.TextSize = 9.5
				MapStatus.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus.BackgroundTransparency = 1
				MapStatus.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI:FindFirstChild("MainFrame")
				MapPredictUI.Enabled = false
				task.wait(0.5)
				MapPredictUI:Destroy()
				local MapPredictUI2 = Instance.new("ScreenGui")
				MapPredictUI2.Name = "MapPredictUI"
				MapPredictUI2.ResetOnSpawn = false
				MapPredictUI2.IgnoreGuiInset = true
				MapPredictUI2.Parent = CoreGui
				local MainFrame4 = Instance.new("Frame", MapPredictUI2)
				MainFrame4.Name = "MainFrame"
				MainFrame4.Size = UDim2.new(0, 165, 0, 40)
				MainFrame4.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame4.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame4.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame4.BackgroundTransparency = 0.35
				MainFrame4.BorderSizePixel = 0
				local UICorner3 = Instance.new("UICorner", MainFrame4)
				UICorner3.CornerRadius = UDim.new(0, 10)
				local UIStroke10 = Instance.new("UIStroke", MainFrame4)
				UIStroke10.Color = Color3.fromRGB(50, 150, 255)
				UIStroke10.Thickness = 1.8
				UIStroke10.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName2 = Instance.new("TextLabel", MainFrame4)
				MapName2.Name = "MapName"
				MapName2.Size = UDim2.new(1, 0, 0, 16)
				MapName2.Position = UDim2.new(0, 0, 0, 4)
				MapName2.Text = "Map: Scanning..."
				MapName2.Font = Enum.Font.GothamBold
				MapName2.TextSize = 11
				MapName2.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName2.BackgroundTransparency = 1
				MapName2.TextXAlignment = Enum.TextXAlignment.Center
				MapName2.RichText = true
				local MapStatus2 = Instance.new("TextLabel", MainFrame4)
				MapStatus2.Name = "MapStatus"
				MapStatus2.Size = UDim2.new(1, 0, 0, 14)
				MapStatus2.Position = UDim2.new(0, 0, 0, 21)
				MapStatus2.Text = "Status: —"
				MapStatus2.Font = Enum.Font.Gotham
				MapStatus2.TextSize = 9.5
				MapStatus2.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus2.BackgroundTransparency = 1
				MapStatus2.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI2:FindFirstChild("MainFrame")
				MapPredictUI2.Enabled = false
				task.wait(0.5)
				MapPredictUI2:Destroy()
				local MapPredictUI3 = Instance.new("ScreenGui")
				MapPredictUI3.Name = "MapPredictUI"
				MapPredictUI3.ResetOnSpawn = false
				MapPredictUI3.IgnoreGuiInset = true
				MapPredictUI3.Parent = CoreGui
				local MainFrame5 = Instance.new("Frame", MapPredictUI3)
				MainFrame5.Name = "MainFrame"
				MainFrame5.Size = UDim2.new(0, 165, 0, 40)
				MainFrame5.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame5.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame5.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame5.BackgroundTransparency = 0.35
				MainFrame5.BorderSizePixel = 0
				local UICorner4 = Instance.new("UICorner", MainFrame5)
				UICorner4.CornerRadius = UDim.new(0, 10)
				local UIStroke11 = Instance.new("UIStroke", MainFrame5)
				UIStroke11.Color = Color3.fromRGB(50, 150, 255)
				UIStroke11.Thickness = 1.8
				UIStroke11.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName3 = Instance.new("TextLabel", MainFrame5)
				MapName3.Name = "MapName"
				MapName3.Size = UDim2.new(1, 0, 0, 16)
				MapName3.Position = UDim2.new(0, 0, 0, 4)
				MapName3.Text = "Map: Scanning..."
				MapName3.Font = Enum.Font.GothamBold
				MapName3.TextSize = 11
				MapName3.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName3.BackgroundTransparency = 1
				MapName3.TextXAlignment = Enum.TextXAlignment.Center
				MapName3.RichText = true
				local MapStatus3 = Instance.new("TextLabel", MainFrame5)
				MapStatus3.Name = "MapStatus"
				MapStatus3.Size = UDim2.new(1, 0, 0, 14)
				MapStatus3.Position = UDim2.new(0, 0, 0, 21)
				MapStatus3.Text = "Status: —"
				MapStatus3.Font = Enum.Font.Gotham
				MapStatus3.TextSize = 9.5
				MapStatus3.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus3.BackgroundTransparency = 1
				MapStatus3.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI3:FindFirstChild("MainFrame")
				MapPredictUI3.Enabled = false
				task.wait(0.5)
				MapPredictUI3:Destroy()
				local MapPredictUI4 = Instance.new("ScreenGui")
				MapPredictUI4.Name = "MapPredictUI"
				MapPredictUI4.ResetOnSpawn = false
				MapPredictUI4.IgnoreGuiInset = true
				MapPredictUI4.Parent = CoreGui
				local MainFrame6 = Instance.new("Frame", MapPredictUI4)
				MainFrame6.Name = "MainFrame"
				MainFrame6.Size = UDim2.new(0, 165, 0, 40)
				MainFrame6.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame6.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame6.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame6.BackgroundTransparency = 0.35
				MainFrame6.BorderSizePixel = 0
				local UICorner5 = Instance.new("UICorner", MainFrame6)
				UICorner5.CornerRadius = UDim.new(0, 10)
				local UIStroke12 = Instance.new("UIStroke", MainFrame6)
				UIStroke12.Color = Color3.fromRGB(50, 150, 255)
				UIStroke12.Thickness = 1.8
				UIStroke12.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName4 = Instance.new("TextLabel", MainFrame6)
				MapName4.Name = "MapName"
				MapName4.Size = UDim2.new(1, 0, 0, 16)
				MapName4.Position = UDim2.new(0, 0, 0, 4)
				MapName4.Text = "Map: Scanning..."
				MapName4.Font = Enum.Font.GothamBold
				MapName4.TextSize = 11
				MapName4.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName4.BackgroundTransparency = 1
				MapName4.TextXAlignment = Enum.TextXAlignment.Center
				MapName4.RichText = true
				local MapStatus4 = Instance.new("TextLabel", MainFrame6)
				MapStatus4.Name = "MapStatus"
				MapStatus4.Size = UDim2.new(1, 0, 0, 14)
				MapStatus4.Position = UDim2.new(0, 0, 0, 21)
				MapStatus4.Text = "Status: —"
				MapStatus4.Font = Enum.Font.Gotham
				MapStatus4.TextSize = 9.5
				MapStatus4.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus4.BackgroundTransparency = 1
				MapStatus4.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI4:FindFirstChild("MainFrame")
				MapPredictUI4.Enabled = false
				task.wait(0.5)
				MapPredictUI4:Destroy()
				local MapPredictUI5 = Instance.new("ScreenGui")
				MapPredictUI5.Name = "MapPredictUI"
				MapPredictUI5.ResetOnSpawn = false
				MapPredictUI5.IgnoreGuiInset = true
				MapPredictUI5.Parent = CoreGui
				local MainFrame7 = Instance.new("Frame", MapPredictUI5)
				MainFrame7.Name = "MainFrame"
				MainFrame7.Size = UDim2.new(0, 165, 0, 40)
				MainFrame7.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame7.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame7.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame7.BackgroundTransparency = 0.35
				MainFrame7.BorderSizePixel = 0
				local UICorner6 = Instance.new("UICorner", MainFrame7)
				UICorner6.CornerRadius = UDim.new(0, 10)
				local UIStroke13 = Instance.new("UIStroke", MainFrame7)
				UIStroke13.Color = Color3.fromRGB(50, 150, 255)
				UIStroke13.Thickness = 1.8
				UIStroke13.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName5 = Instance.new("TextLabel", MainFrame7)
				MapName5.Name = "MapName"
				MapName5.Size = UDim2.new(1, 0, 0, 16)
				MapName5.Position = UDim2.new(0, 0, 0, 4)
				MapName5.Text = "Map: Scanning..."
				MapName5.Font = Enum.Font.GothamBold
				MapName5.TextSize = 11
				MapName5.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName5.BackgroundTransparency = 1
				MapName5.TextXAlignment = Enum.TextXAlignment.Center
				MapName5.RichText = true
				local MapStatus5 = Instance.new("TextLabel", MainFrame7)
				MapStatus5.Name = "MapStatus"
				MapStatus5.Size = UDim2.new(1, 0, 0, 14)
				MapStatus5.Position = UDim2.new(0, 0, 0, 21)
				MapStatus5.Text = "Status: —"
				MapStatus5.Font = Enum.Font.Gotham
				MapStatus5.TextSize = 9.5
				MapStatus5.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus5.BackgroundTransparency = 1
				MapStatus5.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI5:FindFirstChild("MainFrame")
				MapPredictUI5.Enabled = false
				task.wait(0.5)
				MapPredictUI5:Destroy()
				local MapPredictUI6 = Instance.new("ScreenGui")
				MapPredictUI6.Name = "MapPredictUI"
				MapPredictUI6.ResetOnSpawn = false
				MapPredictUI6.IgnoreGuiInset = true
				MapPredictUI6.Parent = CoreGui
				local MainFrame8 = Instance.new("Frame", MapPredictUI6)
				MainFrame8.Name = "MainFrame"
				MainFrame8.Size = UDim2.new(0, 165, 0, 40)
				MainFrame8.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame8.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame8.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame8.BackgroundTransparency = 0.35
				MainFrame8.BorderSizePixel = 0
				local UICorner7 = Instance.new("UICorner", MainFrame8)
				UICorner7.CornerRadius = UDim.new(0, 10)
				local UIStroke14 = Instance.new("UIStroke", MainFrame8)
				UIStroke14.Color = Color3.fromRGB(50, 150, 255)
				UIStroke14.Thickness = 1.8
				UIStroke14.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName6 = Instance.new("TextLabel", MainFrame8)
				MapName6.Name = "MapName"
				MapName6.Size = UDim2.new(1, 0, 0, 16)
				MapName6.Position = UDim2.new(0, 0, 0, 4)
				MapName6.Text = "Map: Scanning..."
				MapName6.Font = Enum.Font.GothamBold
				MapName6.TextSize = 11
				MapName6.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName6.BackgroundTransparency = 1
				MapName6.TextXAlignment = Enum.TextXAlignment.Center
				MapName6.RichText = true
				local MapStatus6 = Instance.new("TextLabel", MainFrame8)
				MapStatus6.Name = "MapStatus"
				MapStatus6.Size = UDim2.new(1, 0, 0, 14)
				MapStatus6.Position = UDim2.new(0, 0, 0, 21)
				MapStatus6.Text = "Status: —"
				MapStatus6.Font = Enum.Font.Gotham
				MapStatus6.TextSize = 9.5
				MapStatus6.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus6.BackgroundTransparency = 1
				MapStatus6.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI6:FindFirstChild("MainFrame")
				MapPredictUI6.Enabled = false
				task.wait(0.5)
				MapPredictUI6:Destroy()
				local MapPredictUI7 = Instance.new("ScreenGui")
				MapPredictUI7.Name = "MapPredictUI"
				MapPredictUI7.ResetOnSpawn = false
				MapPredictUI7.IgnoreGuiInset = true
				MapPredictUI7.Parent = CoreGui
				local MainFrame9 = Instance.new("Frame", MapPredictUI7)
				MainFrame9.Name = "MainFrame"
				MainFrame9.Size = UDim2.new(0, 165, 0, 40)
				MainFrame9.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame9.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame9.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame9.BackgroundTransparency = 0.35
				MainFrame9.BorderSizePixel = 0
				local UICorner8 = Instance.new("UICorner", MainFrame9)
				UICorner8.CornerRadius = UDim.new(0, 10)
				local UIStroke15 = Instance.new("UIStroke", MainFrame9)
				UIStroke15.Color = Color3.fromRGB(50, 150, 255)
				UIStroke15.Thickness = 1.8
				UIStroke15.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName7 = Instance.new("TextLabel", MainFrame9)
				MapName7.Name = "MapName"
				MapName7.Size = UDim2.new(1, 0, 0, 16)
				MapName7.Position = UDim2.new(0, 0, 0, 4)
				MapName7.Text = "Map: Scanning..."
				MapName7.Font = Enum.Font.GothamBold
				MapName7.TextSize = 11
				MapName7.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName7.BackgroundTransparency = 1
				MapName7.TextXAlignment = Enum.TextXAlignment.Center
				MapName7.RichText = true
				local MapStatus7 = Instance.new("TextLabel", MainFrame9)
				MapStatus7.Name = "MapStatus"
				MapStatus7.Size = UDim2.new(1, 0, 0, 14)
				MapStatus7.Position = UDim2.new(0, 0, 0, 21)
				MapStatus7.Text = "Status: —"
				MapStatus7.Font = Enum.Font.Gotham
				MapStatus7.TextSize = 9.5
				MapStatus7.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus7.BackgroundTransparency = 1
				MapStatus7.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI7:FindFirstChild("MainFrame")
				MapPredictUI7.Enabled = false
				task.wait(0.5)
				MapPredictUI7:Destroy()
				local MapPredictUI8 = Instance.new("ScreenGui")
				MapPredictUI8.Name = "MapPredictUI"
				MapPredictUI8.ResetOnSpawn = false
				MapPredictUI8.IgnoreGuiInset = true
				MapPredictUI8.Parent = CoreGui
				local MainFrame10 = Instance.new("Frame", MapPredictUI8)
				MainFrame10.Name = "MainFrame"
				MainFrame10.Size = UDim2.new(0, 165, 0, 40)
				MainFrame10.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame10.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame10.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame10.BackgroundTransparency = 0.35
				MainFrame10.BorderSizePixel = 0
				local UICorner9 = Instance.new("UICorner", MainFrame10)
				UICorner9.CornerRadius = UDim.new(0, 10)
				local UIStroke16 = Instance.new("UIStroke", MainFrame10)
				UIStroke16.Color = Color3.fromRGB(50, 150, 255)
				UIStroke16.Thickness = 1.8
				UIStroke16.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName8 = Instance.new("TextLabel", MainFrame10)
				MapName8.Name = "MapName"
				MapName8.Size = UDim2.new(1, 0, 0, 16)
				MapName8.Position = UDim2.new(0, 0, 0, 4)
				MapName8.Text = "Map: Scanning..."
				MapName8.Font = Enum.Font.GothamBold
				MapName8.TextSize = 11
				MapName8.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName8.BackgroundTransparency = 1
				MapName8.TextXAlignment = Enum.TextXAlignment.Center
				MapName8.RichText = true
				local MapStatus8 = Instance.new("TextLabel", MainFrame10)
				MapStatus8.Name = "MapStatus"
				MapStatus8.Size = UDim2.new(1, 0, 0, 14)
				MapStatus8.Position = UDim2.new(0, 0, 0, 21)
				MapStatus8.Text = "Status: —"
				MapStatus8.Font = Enum.Font.Gotham
				MapStatus8.TextSize = 9.5
				MapStatus8.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus8.BackgroundTransparency = 1
				MapStatus8.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI8:FindFirstChild("MainFrame")
				MapPredictUI8.Enabled = false
				task.wait(0.5)
				MapPredictUI8:Destroy()
				local MapPredictUI9 = Instance.new("ScreenGui")
				MapPredictUI9.Name = "MapPredictUI"
				MapPredictUI9.ResetOnSpawn = false
				MapPredictUI9.IgnoreGuiInset = true
				MapPredictUI9.Parent = CoreGui
				local MainFrame11 = Instance.new("Frame", MapPredictUI9)
				MainFrame11.Name = "MainFrame"
				MainFrame11.Size = UDim2.new(0, 165, 0, 40)
				MainFrame11.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame11.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame11.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame11.BackgroundTransparency = 0.35
				MainFrame11.BorderSizePixel = 0
				local UICorner10 = Instance.new("UICorner", MainFrame11)
				UICorner10.CornerRadius = UDim.new(0, 10)
				local UIStroke17 = Instance.new("UIStroke", MainFrame11)
				UIStroke17.Color = Color3.fromRGB(50, 150, 255)
				UIStroke17.Thickness = 1.8
				UIStroke17.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName9 = Instance.new("TextLabel", MainFrame11)
				MapName9.Name = "MapName"
				MapName9.Size = UDim2.new(1, 0, 0, 16)
				MapName9.Position = UDim2.new(0, 0, 0, 4)
				MapName9.Text = "Map: Scanning..."
				MapName9.Font = Enum.Font.GothamBold
				MapName9.TextSize = 11
				MapName9.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName9.BackgroundTransparency = 1
				MapName9.TextXAlignment = Enum.TextXAlignment.Center
				MapName9.RichText = true
				local MapStatus9 = Instance.new("TextLabel", MainFrame11)
				MapStatus9.Name = "MapStatus"
				MapStatus9.Size = UDim2.new(1, 0, 0, 14)
				MapStatus9.Position = UDim2.new(0, 0, 0, 21)
				MapStatus9.Text = "Status: —"
				MapStatus9.Font = Enum.Font.Gotham
				MapStatus9.TextSize = 9.5
				MapStatus9.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus9.BackgroundTransparency = 1
				MapStatus9.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI9:FindFirstChild("MainFrame")
				MapPredictUI9.Enabled = false
				task.wait(0.5)
				MapPredictUI9:Destroy()
				local MapPredictUI10 = Instance.new("ScreenGui")
				MapPredictUI10.Name = "MapPredictUI"
				MapPredictUI10.ResetOnSpawn = false
				MapPredictUI10.IgnoreGuiInset = true
				MapPredictUI10.Parent = CoreGui
				local MainFrame12 = Instance.new("Frame", MapPredictUI10)
				MainFrame12.Name = "MainFrame"
				MainFrame12.Size = UDim2.new(0, 165, 0, 40)
				MainFrame12.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame12.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame12.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame12.BackgroundTransparency = 0.35
				MainFrame12.BorderSizePixel = 0
				local UICorner11 = Instance.new("UICorner", MainFrame12)
				UICorner11.CornerRadius = UDim.new(0, 10)
				local UIStroke18 = Instance.new("UIStroke", MainFrame12)
				UIStroke18.Color = Color3.fromRGB(50, 150, 255)
				UIStroke18.Thickness = 1.8
				UIStroke18.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName10 = Instance.new("TextLabel", MainFrame12)
				MapName10.Name = "MapName"
				MapName10.Size = UDim2.new(1, 0, 0, 16)
				MapName10.Position = UDim2.new(0, 0, 0, 4)
				MapName10.Text = "Map: Scanning..."
				MapName10.Font = Enum.Font.GothamBold
				MapName10.TextSize = 11
				MapName10.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName10.BackgroundTransparency = 1
				MapName10.TextXAlignment = Enum.TextXAlignment.Center
				MapName10.RichText = true
				local MapStatus10 = Instance.new("TextLabel", MainFrame12)
				MapStatus10.Name = "MapStatus"
				MapStatus10.Size = UDim2.new(1, 0, 0, 14)
				MapStatus10.Position = UDim2.new(0, 0, 0, 21)
				MapStatus10.Text = "Status: —"
				MapStatus10.Font = Enum.Font.Gotham
				MapStatus10.TextSize = 9.5
				MapStatus10.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus10.BackgroundTransparency = 1
				MapStatus10.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI10:FindFirstChild("MainFrame")
				MapPredictUI10.Enabled = false
				task.wait(0.5)
				MapPredictUI10:Destroy()
				local MapPredictUI11 = Instance.new("ScreenGui")
				MapPredictUI11.Name = "MapPredictUI"
				MapPredictUI11.ResetOnSpawn = false
				MapPredictUI11.IgnoreGuiInset = true
				MapPredictUI11.Parent = CoreGui
				local MainFrame13 = Instance.new("Frame", MapPredictUI11)
				MainFrame13.Name = "MainFrame"
				MainFrame13.Size = UDim2.new(0, 165, 0, 40)
				MainFrame13.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame13.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame13.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame13.BackgroundTransparency = 0.35
				MainFrame13.BorderSizePixel = 0
				local UICorner12 = Instance.new("UICorner", MainFrame13)
				UICorner12.CornerRadius = UDim.new(0, 10)
				local UIStroke19 = Instance.new("UIStroke", MainFrame13)
				UIStroke19.Color = Color3.fromRGB(50, 150, 255)
				UIStroke19.Thickness = 1.8
				UIStroke19.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName11 = Instance.new("TextLabel", MainFrame13)
				MapName11.Name = "MapName"
				MapName11.Size = UDim2.new(1, 0, 0, 16)
				MapName11.Position = UDim2.new(0, 0, 0, 4)
				MapName11.Text = "Map: Scanning..."
				MapName11.Font = Enum.Font.GothamBold
				MapName11.TextSize = 11
				MapName11.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName11.BackgroundTransparency = 1
				MapName11.TextXAlignment = Enum.TextXAlignment.Center
				MapName11.RichText = true
				local MapStatus11 = Instance.new("TextLabel", MainFrame13)
				MapStatus11.Name = "MapStatus"
				MapStatus11.Size = UDim2.new(1, 0, 0, 14)
				MapStatus11.Position = UDim2.new(0, 0, 0, 21)
				MapStatus11.Text = "Status: —"
				MapStatus11.Font = Enum.Font.Gotham
				MapStatus11.TextSize = 9.5
				MapStatus11.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus11.BackgroundTransparency = 1
				MapStatus11.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI11:FindFirstChild("MainFrame")
				MapPredictUI11.Enabled = false
				task.wait(0.5)
				MapPredictUI11:Destroy()
				local MapPredictUI12 = Instance.new("ScreenGui")
				MapPredictUI12.Name = "MapPredictUI"
				MapPredictUI12.ResetOnSpawn = false
				MapPredictUI12.IgnoreGuiInset = true
				MapPredictUI12.Parent = CoreGui
				local MainFrame14 = Instance.new("Frame", MapPredictUI12)
				MainFrame14.Name = "MainFrame"
				MainFrame14.Size = UDim2.new(0, 165, 0, 40)
				MainFrame14.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame14.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame14.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame14.BackgroundTransparency = 0.35
				MainFrame14.BorderSizePixel = 0
				local UICorner13 = Instance.new("UICorner", MainFrame14)
				UICorner13.CornerRadius = UDim.new(0, 10)
				local UIStroke20 = Instance.new("UIStroke", MainFrame14)
				UIStroke20.Color = Color3.fromRGB(50, 150, 255)
				UIStroke20.Thickness = 1.8
				UIStroke20.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName12 = Instance.new("TextLabel", MainFrame14)
				MapName12.Name = "MapName"
				MapName12.Size = UDim2.new(1, 0, 0, 16)
				MapName12.Position = UDim2.new(0, 0, 0, 4)
				MapName12.Text = "Map: Scanning..."
				MapName12.Font = Enum.Font.GothamBold
				MapName12.TextSize = 11
				MapName12.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName12.BackgroundTransparency = 1
				MapName12.TextXAlignment = Enum.TextXAlignment.Center
				MapName12.RichText = true
				local MapStatus12 = Instance.new("TextLabel", MainFrame14)
				MapStatus12.Name = "MapStatus"
				MapStatus12.Size = UDim2.new(1, 0, 0, 14)
				MapStatus12.Position = UDim2.new(0, 0, 0, 21)
				MapStatus12.Text = "Status: —"
				MapStatus12.Font = Enum.Font.Gotham
				MapStatus12.TextSize = 9.5
				MapStatus12.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus12.BackgroundTransparency = 1
				MapStatus12.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI12:FindFirstChild("MainFrame")
				MapPredictUI12.Enabled = false
				task.wait(0.5)
				MapPredictUI12:Destroy()
				local MapPredictUI13 = Instance.new("ScreenGui")
				MapPredictUI13.Name = "MapPredictUI"
				MapPredictUI13.ResetOnSpawn = false
				MapPredictUI13.IgnoreGuiInset = true
				MapPredictUI13.Parent = CoreGui
				local MainFrame15 = Instance.new("Frame", MapPredictUI13)
				MainFrame15.Name = "MainFrame"
				MainFrame15.Size = UDim2.new(0, 165, 0, 40)
				MainFrame15.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame15.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame15.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame15.BackgroundTransparency = 0.35
				MainFrame15.BorderSizePixel = 0
				local UICorner14 = Instance.new("UICorner", MainFrame15)
				UICorner14.CornerRadius = UDim.new(0, 10)
				local UIStroke21 = Instance.new("UIStroke", MainFrame15)
				UIStroke21.Color = Color3.fromRGB(50, 150, 255)
				UIStroke21.Thickness = 1.8
				UIStroke21.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName13 = Instance.new("TextLabel", MainFrame15)
				MapName13.Name = "MapName"
				MapName13.Size = UDim2.new(1, 0, 0, 16)
				MapName13.Position = UDim2.new(0, 0, 0, 4)
				MapName13.Text = "Map: Scanning..."
				MapName13.Font = Enum.Font.GothamBold
				MapName13.TextSize = 11
				MapName13.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName13.BackgroundTransparency = 1
				MapName13.TextXAlignment = Enum.TextXAlignment.Center
				MapName13.RichText = true
				local MapStatus13 = Instance.new("TextLabel", MainFrame15)
				MapStatus13.Name = "MapStatus"
				MapStatus13.Size = UDim2.new(1, 0, 0, 14)
				MapStatus13.Position = UDim2.new(0, 0, 0, 21)
				MapStatus13.Text = "Status: —"
				MapStatus13.Font = Enum.Font.Gotham
				MapStatus13.TextSize = 9.5
				MapStatus13.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus13.BackgroundTransparency = 1
				MapStatus13.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI13:FindFirstChild("MainFrame")
				MapPredictUI13.Enabled = false
				task.wait(0.5)
				MapPredictUI13:Destroy()
				local MapPredictUI14 = Instance.new("ScreenGui")
				MapPredictUI14.Name = "MapPredictUI"
				MapPredictUI14.ResetOnSpawn = false
				MapPredictUI14.IgnoreGuiInset = true
				MapPredictUI14.Parent = CoreGui
				local MainFrame16 = Instance.new("Frame", MapPredictUI14)
				MainFrame16.Name = "MainFrame"
				MainFrame16.Size = UDim2.new(0, 165, 0, 40)
				MainFrame16.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame16.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame16.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame16.BackgroundTransparency = 0.35
				MainFrame16.BorderSizePixel = 0
				local UICorner15 = Instance.new("UICorner", MainFrame16)
				UICorner15.CornerRadius = UDim.new(0, 10)
				local UIStroke22 = Instance.new("UIStroke", MainFrame16)
				UIStroke22.Color = Color3.fromRGB(50, 150, 255)
				UIStroke22.Thickness = 1.8
				UIStroke22.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName14 = Instance.new("TextLabel", MainFrame16)
				MapName14.Name = "MapName"
				MapName14.Size = UDim2.new(1, 0, 0, 16)
				MapName14.Position = UDim2.new(0, 0, 0, 4)
				MapName14.Text = "Map: Scanning..."
				MapName14.Font = Enum.Font.GothamBold
				MapName14.TextSize = 11
				MapName14.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName14.BackgroundTransparency = 1
				MapName14.TextXAlignment = Enum.TextXAlignment.Center
				MapName14.RichText = true
				local MapStatus14 = Instance.new("TextLabel", MainFrame16)
				MapStatus14.Name = "MapStatus"
				MapStatus14.Size = UDim2.new(1, 0, 0, 14)
				MapStatus14.Position = UDim2.new(0, 0, 0, 21)
				MapStatus14.Text = "Status: —"
				MapStatus14.Font = Enum.Font.Gotham
				MapStatus14.TextSize = 9.5
				MapStatus14.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus14.BackgroundTransparency = 1
				MapStatus14.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI14:FindFirstChild("MainFrame")
				MapPredictUI14.Enabled = false
				task.wait(0.5)
				MapPredictUI14:Destroy()
				local MapPredictUI15 = Instance.new("ScreenGui")
				MapPredictUI15.Name = "MapPredictUI"
				MapPredictUI15.ResetOnSpawn = false
				MapPredictUI15.IgnoreGuiInset = true
				MapPredictUI15.Parent = CoreGui
				local MainFrame17 = Instance.new("Frame", MapPredictUI15)
				MainFrame17.Name = "MainFrame"
				MainFrame17.Size = UDim2.new(0, 165, 0, 40)
				MainFrame17.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame17.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame17.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame17.BackgroundTransparency = 0.35
				MainFrame17.BorderSizePixel = 0
				local UICorner16 = Instance.new("UICorner", MainFrame17)
				UICorner16.CornerRadius = UDim.new(0, 10)
				local UIStroke23 = Instance.new("UIStroke", MainFrame17)
				UIStroke23.Color = Color3.fromRGB(50, 150, 255)
				UIStroke23.Thickness = 1.8
				UIStroke23.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName15 = Instance.new("TextLabel", MainFrame17)
				MapName15.Name = "MapName"
				MapName15.Size = UDim2.new(1, 0, 0, 16)
				MapName15.Position = UDim2.new(0, 0, 0, 4)
				MapName15.Text = "Map: Scanning..."
				MapName15.Font = Enum.Font.GothamBold
				MapName15.TextSize = 11
				MapName15.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName15.BackgroundTransparency = 1
				MapName15.TextXAlignment = Enum.TextXAlignment.Center
				MapName15.RichText = true
				local MapStatus15 = Instance.new("TextLabel", MainFrame17)
				MapStatus15.Name = "MapStatus"
				MapStatus15.Size = UDim2.new(1, 0, 0, 14)
				MapStatus15.Position = UDim2.new(0, 0, 0, 21)
				MapStatus15.Text = "Status: —"
				MapStatus15.Font = Enum.Font.Gotham
				MapStatus15.TextSize = 9.5
				MapStatus15.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus15.BackgroundTransparency = 1
				MapStatus15.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI15:FindFirstChild("MainFrame")
				MapPredictUI15.Enabled = false
				task.wait(0.5)
				MapPredictUI15:Destroy()
				local MapPredictUI16 = Instance.new("ScreenGui")
				MapPredictUI16.Name = "MapPredictUI"
				MapPredictUI16.ResetOnSpawn = false
				MapPredictUI16.IgnoreGuiInset = true
				MapPredictUI16.Parent = CoreGui
				local MainFrame18 = Instance.new("Frame", MapPredictUI16)
				MainFrame18.Name = "MainFrame"
				MainFrame18.Size = UDim2.new(0, 165, 0, 40)
				MainFrame18.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame18.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame18.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame18.BackgroundTransparency = 0.35
				MainFrame18.BorderSizePixel = 0
				local UICorner17 = Instance.new("UICorner", MainFrame18)
				UICorner17.CornerRadius = UDim.new(0, 10)
				local UIStroke24 = Instance.new("UIStroke", MainFrame18)
				UIStroke24.Color = Color3.fromRGB(50, 150, 255)
				UIStroke24.Thickness = 1.8
				UIStroke24.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName16 = Instance.new("TextLabel", MainFrame18)
				MapName16.Name = "MapName"
				MapName16.Size = UDim2.new(1, 0, 0, 16)
				MapName16.Position = UDim2.new(0, 0, 0, 4)
				MapName16.Text = "Map: Scanning..."
				MapName16.Font = Enum.Font.GothamBold
				MapName16.TextSize = 11
				MapName16.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName16.BackgroundTransparency = 1
				MapName16.TextXAlignment = Enum.TextXAlignment.Center
				MapName16.RichText = true
				local MapStatus16 = Instance.new("TextLabel", MainFrame18)
				MapStatus16.Name = "MapStatus"
				MapStatus16.Size = UDim2.new(1, 0, 0, 14)
				MapStatus16.Position = UDim2.new(0, 0, 0, 21)
				MapStatus16.Text = "Status: —"
				MapStatus16.Font = Enum.Font.Gotham
				MapStatus16.TextSize = 9.5
				MapStatus16.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus16.BackgroundTransparency = 1
				MapStatus16.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI16:FindFirstChild("MainFrame")
				MapPredictUI16.Enabled = false
				task.wait(0.5)
				MapPredictUI16:Destroy()
				local MapPredictUI17 = Instance.new("ScreenGui")
				MapPredictUI17.Name = "MapPredictUI"
				MapPredictUI17.ResetOnSpawn = false
				MapPredictUI17.IgnoreGuiInset = true
				MapPredictUI17.Parent = CoreGui
				local MainFrame19 = Instance.new("Frame", MapPredictUI17)
				MainFrame19.Name = "MainFrame"
				MainFrame19.Size = UDim2.new(0, 165, 0, 40)
				MainFrame19.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame19.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame19.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame19.BackgroundTransparency = 0.35
				MainFrame19.BorderSizePixel = 0
				local UICorner18 = Instance.new("UICorner", MainFrame19)
				UICorner18.CornerRadius = UDim.new(0, 10)
				local UIStroke25 = Instance.new("UIStroke", MainFrame19)
				UIStroke25.Color = Color3.fromRGB(50, 150, 255)
				UIStroke25.Thickness = 1.8
				UIStroke25.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName17 = Instance.new("TextLabel", MainFrame19)
				MapName17.Name = "MapName"
				MapName17.Size = UDim2.new(1, 0, 0, 16)
				MapName17.Position = UDim2.new(0, 0, 0, 4)
				MapName17.Text = "Map: Scanning..."
				MapName17.Font = Enum.Font.GothamBold
				MapName17.TextSize = 11
				MapName17.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName17.BackgroundTransparency = 1
				MapName17.TextXAlignment = Enum.TextXAlignment.Center
				MapName17.RichText = true
				local MapStatus17 = Instance.new("TextLabel", MainFrame19)
				MapStatus17.Name = "MapStatus"
				MapStatus17.Size = UDim2.new(1, 0, 0, 14)
				MapStatus17.Position = UDim2.new(0, 0, 0, 21)
				MapStatus17.Text = "Status: —"
				MapStatus17.Font = Enum.Font.Gotham
				MapStatus17.TextSize = 9.5
				MapStatus17.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus17.BackgroundTransparency = 1
				MapStatus17.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI17:FindFirstChild("MainFrame")
				MapPredictUI17.Enabled = false
				task.wait(0.5)
				MapPredictUI17:Destroy()
				local MapPredictUI18 = Instance.new("ScreenGui")
				MapPredictUI18.Name = "MapPredictUI"
				MapPredictUI18.ResetOnSpawn = false
				MapPredictUI18.IgnoreGuiInset = true
				MapPredictUI18.Parent = CoreGui
				local MainFrame20 = Instance.new("Frame", MapPredictUI18)
				MainFrame20.Name = "MainFrame"
				MainFrame20.Size = UDim2.new(0, 165, 0, 40)
				MainFrame20.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame20.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame20.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame20.BackgroundTransparency = 0.35
				MainFrame20.BorderSizePixel = 0
				local UICorner19 = Instance.new("UICorner", MainFrame20)
				UICorner19.CornerRadius = UDim.new(0, 10)
				local UIStroke26 = Instance.new("UIStroke", MainFrame20)
				UIStroke26.Color = Color3.fromRGB(50, 150, 255)
				UIStroke26.Thickness = 1.8
				UIStroke26.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName18 = Instance.new("TextLabel", MainFrame20)
				MapName18.Name = "MapName"
				MapName18.Size = UDim2.new(1, 0, 0, 16)
				MapName18.Position = UDim2.new(0, 0, 0, 4)
				MapName18.Text = "Map: Scanning..."
				MapName18.Font = Enum.Font.GothamBold
				MapName18.TextSize = 11
				MapName18.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName18.BackgroundTransparency = 1
				MapName18.TextXAlignment = Enum.TextXAlignment.Center
				MapName18.RichText = true
				local MapStatus18 = Instance.new("TextLabel", MainFrame20)
				MapStatus18.Name = "MapStatus"
				MapStatus18.Size = UDim2.new(1, 0, 0, 14)
				MapStatus18.Position = UDim2.new(0, 0, 0, 21)
				MapStatus18.Text = "Status: —"
				MapStatus18.Font = Enum.Font.Gotham
				MapStatus18.TextSize = 9.5
				MapStatus18.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus18.BackgroundTransparency = 1
				MapStatus18.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI18:FindFirstChild("MainFrame")
				MapPredictUI18.Enabled = false
				task.wait(0.5)
				MapPredictUI18:Destroy()
				local MapPredictUI19 = Instance.new("ScreenGui")
				MapPredictUI19.Name = "MapPredictUI"
				MapPredictUI19.ResetOnSpawn = false
				MapPredictUI19.IgnoreGuiInset = true
				MapPredictUI19.Parent = CoreGui
				local MainFrame21 = Instance.new("Frame", MapPredictUI19)
				MainFrame21.Name = "MainFrame"
				MainFrame21.Size = UDim2.new(0, 165, 0, 40)
				MainFrame21.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame21.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame21.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame21.BackgroundTransparency = 0.35
				MainFrame21.BorderSizePixel = 0
				local UICorner20 = Instance.new("UICorner", MainFrame21)
				UICorner20.CornerRadius = UDim.new(0, 10)
				local UIStroke27 = Instance.new("UIStroke", MainFrame21)
				UIStroke27.Color = Color3.fromRGB(50, 150, 255)
				UIStroke27.Thickness = 1.8
				UIStroke27.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName19 = Instance.new("TextLabel", MainFrame21)
				MapName19.Name = "MapName"
				MapName19.Size = UDim2.new(1, 0, 0, 16)
				MapName19.Position = UDim2.new(0, 0, 0, 4)
				MapName19.Text = "Map: Scanning..."
				MapName19.Font = Enum.Font.GothamBold
				MapName19.TextSize = 11
				MapName19.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName19.BackgroundTransparency = 1
				MapName19.TextXAlignment = Enum.TextXAlignment.Center
				MapName19.RichText = true
				local MapStatus19 = Instance.new("TextLabel", MainFrame21)
				MapStatus19.Name = "MapStatus"
				MapStatus19.Size = UDim2.new(1, 0, 0, 14)
				MapStatus19.Position = UDim2.new(0, 0, 0, 21)
				MapStatus19.Text = "Status: —"
				MapStatus19.Font = Enum.Font.Gotham
				MapStatus19.TextSize = 9.5
				MapStatus19.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus19.BackgroundTransparency = 1
				MapStatus19.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI19:FindFirstChild("MainFrame")
				MapPredictUI19.Enabled = false
				task.wait(0.5)
				MapPredictUI19:Destroy()
				local MapPredictUI20 = Instance.new("ScreenGui")
				MapPredictUI20.Name = "MapPredictUI"
				MapPredictUI20.ResetOnSpawn = false
				MapPredictUI20.IgnoreGuiInset = true
				MapPredictUI20.Parent = CoreGui
				local MainFrame22 = Instance.new("Frame", MapPredictUI20)
				MainFrame22.Name = "MainFrame"
				MainFrame22.Size = UDim2.new(0, 165, 0, 40)
				MainFrame22.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame22.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame22.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame22.BackgroundTransparency = 0.35
				MainFrame22.BorderSizePixel = 0
				local UICorner21 = Instance.new("UICorner", MainFrame22)
				UICorner21.CornerRadius = UDim.new(0, 10)
				local UIStroke28 = Instance.new("UIStroke", MainFrame22)
				UIStroke28.Color = Color3.fromRGB(50, 150, 255)
				UIStroke28.Thickness = 1.8
				UIStroke28.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName20 = Instance.new("TextLabel", MainFrame22)
				MapName20.Name = "MapName"
				MapName20.Size = UDim2.new(1, 0, 0, 16)
				MapName20.Position = UDim2.new(0, 0, 0, 4)
				MapName20.Text = "Map: Scanning..."
				MapName20.Font = Enum.Font.GothamBold
				MapName20.TextSize = 11
				MapName20.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName20.BackgroundTransparency = 1
				MapName20.TextXAlignment = Enum.TextXAlignment.Center
				MapName20.RichText = true
				local MapStatus20 = Instance.new("TextLabel", MainFrame22)
				MapStatus20.Name = "MapStatus"
				MapStatus20.Size = UDim2.new(1, 0, 0, 14)
				MapStatus20.Position = UDim2.new(0, 0, 0, 21)
				MapStatus20.Text = "Status: —"
				MapStatus20.Font = Enum.Font.Gotham
				MapStatus20.TextSize = 9.5
				MapStatus20.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus20.BackgroundTransparency = 1
				MapStatus20.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI20:FindFirstChild("MainFrame")
				MapPredictUI20.Enabled = false
				task.wait(0.5)
				MapPredictUI20:Destroy()
				local MapPredictUI21 = Instance.new("ScreenGui")
				MapPredictUI21.Name = "MapPredictUI"
				MapPredictUI21.ResetOnSpawn = false
				MapPredictUI21.IgnoreGuiInset = true
				MapPredictUI21.Parent = CoreGui
				local MainFrame23 = Instance.new("Frame", MapPredictUI21)
				MainFrame23.Name = "MainFrame"
				MainFrame23.Size = UDim2.new(0, 165, 0, 40)
				MainFrame23.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame23.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame23.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame23.BackgroundTransparency = 0.35
				MainFrame23.BorderSizePixel = 0
				local UICorner22 = Instance.new("UICorner", MainFrame23)
				UICorner22.CornerRadius = UDim.new(0, 10)
				local UIStroke29 = Instance.new("UIStroke", MainFrame23)
				UIStroke29.Color = Color3.fromRGB(50, 150, 255)
				UIStroke29.Thickness = 1.8
				UIStroke29.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName21 = Instance.new("TextLabel", MainFrame23)
				MapName21.Name = "MapName"
				MapName21.Size = UDim2.new(1, 0, 0, 16)
				MapName21.Position = UDim2.new(0, 0, 0, 4)
				MapName21.Text = "Map: Scanning..."
				MapName21.Font = Enum.Font.GothamBold
				MapName21.TextSize = 11
				MapName21.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName21.BackgroundTransparency = 1
				MapName21.TextXAlignment = Enum.TextXAlignment.Center
				MapName21.RichText = true
				local MapStatus21 = Instance.new("TextLabel", MainFrame23)
				MapStatus21.Name = "MapStatus"
				MapStatus21.Size = UDim2.new(1, 0, 0, 14)
				MapStatus21.Position = UDim2.new(0, 0, 0, 21)
				MapStatus21.Text = "Status: —"
				MapStatus21.Font = Enum.Font.Gotham
				MapStatus21.TextSize = 9.5
				MapStatus21.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus21.BackgroundTransparency = 1
				MapStatus21.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI21:FindFirstChild("MainFrame")
				MapPredictUI21.Enabled = false
				task.wait(0.5)
				MapPredictUI21:Destroy()
				local MapPredictUI22 = Instance.new("ScreenGui")
				MapPredictUI22.Name = "MapPredictUI"
				MapPredictUI22.ResetOnSpawn = false
				MapPredictUI22.IgnoreGuiInset = true
				MapPredictUI22.Parent = CoreGui
				local MainFrame24 = Instance.new("Frame", MapPredictUI22)
				MainFrame24.Name = "MainFrame"
				MainFrame24.Size = UDim2.new(0, 165, 0, 40)
				MainFrame24.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame24.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame24.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame24.BackgroundTransparency = 0.35
				MainFrame24.BorderSizePixel = 0
				local UICorner23 = Instance.new("UICorner", MainFrame24)
				UICorner23.CornerRadius = UDim.new(0, 10)
				local UIStroke30 = Instance.new("UIStroke", MainFrame24)
				UIStroke30.Color = Color3.fromRGB(50, 150, 255)
				UIStroke30.Thickness = 1.8
				UIStroke30.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName22 = Instance.new("TextLabel", MainFrame24)
				MapName22.Name = "MapName"
				MapName22.Size = UDim2.new(1, 0, 0, 16)
				MapName22.Position = UDim2.new(0, 0, 0, 4)
				MapName22.Text = "Map: Scanning..."
				MapName22.Font = Enum.Font.GothamBold
				MapName22.TextSize = 11
				MapName22.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName22.BackgroundTransparency = 1
				MapName22.TextXAlignment = Enum.TextXAlignment.Center
				MapName22.RichText = true
				local MapStatus22 = Instance.new("TextLabel", MainFrame24)
				MapStatus22.Name = "MapStatus"
				MapStatus22.Size = UDim2.new(1, 0, 0, 14)
				MapStatus22.Position = UDim2.new(0, 0, 0, 21)
				MapStatus22.Text = "Status: —"
				MapStatus22.Font = Enum.Font.Gotham
				MapStatus22.TextSize = 9.5
				MapStatus22.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus22.BackgroundTransparency = 1
				MapStatus22.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI22:FindFirstChild("MainFrame")
				MapPredictUI22.Enabled = false
				task.wait(0.5)
				MapPredictUI22:Destroy()
				local MapPredictUI23 = Instance.new("ScreenGui")
				MapPredictUI23.Name = "MapPredictUI"
				MapPredictUI23.ResetOnSpawn = false
				MapPredictUI23.IgnoreGuiInset = true
				MapPredictUI23.Parent = CoreGui
				local MainFrame25 = Instance.new("Frame", MapPredictUI23)
				MainFrame25.Name = "MainFrame"
				MainFrame25.Size = UDim2.new(0, 165, 0, 40)
				MainFrame25.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame25.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame25.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame25.BackgroundTransparency = 0.35
				MainFrame25.BorderSizePixel = 0
				local UICorner24 = Instance.new("UICorner", MainFrame25)
				UICorner24.CornerRadius = UDim.new(0, 10)
				local UIStroke31 = Instance.new("UIStroke", MainFrame25)
				UIStroke31.Color = Color3.fromRGB(50, 150, 255)
				UIStroke31.Thickness = 1.8
				UIStroke31.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName23 = Instance.new("TextLabel", MainFrame25)
				MapName23.Name = "MapName"
				MapName23.Size = UDim2.new(1, 0, 0, 16)
				MapName23.Position = UDim2.new(0, 0, 0, 4)
				MapName23.Text = "Map: Scanning..."
				MapName23.Font = Enum.Font.GothamBold
				MapName23.TextSize = 11
				MapName23.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName23.BackgroundTransparency = 1
				MapName23.TextXAlignment = Enum.TextXAlignment.Center
				MapName23.RichText = true
				local MapStatus23 = Instance.new("TextLabel", MainFrame25)
				MapStatus23.Name = "MapStatus"
				MapStatus23.Size = UDim2.new(1, 0, 0, 14)
				MapStatus23.Position = UDim2.new(0, 0, 0, 21)
				MapStatus23.Text = "Status: —"
				MapStatus23.Font = Enum.Font.Gotham
				MapStatus23.TextSize = 9.5
				MapStatus23.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus23.BackgroundTransparency = 1
				MapStatus23.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI23:FindFirstChild("MainFrame")
				MapPredictUI23.Enabled = false
				task.wait(0.5)
				MapPredictUI23:Destroy()
				local MapPredictUI24 = Instance.new("ScreenGui")
				MapPredictUI24.Name = "MapPredictUI"
				MapPredictUI24.ResetOnSpawn = false
				MapPredictUI24.IgnoreGuiInset = true
				MapPredictUI24.Parent = CoreGui
				local MainFrame26 = Instance.new("Frame", MapPredictUI24)
				MainFrame26.Name = "MainFrame"
				MainFrame26.Size = UDim2.new(0, 165, 0, 40)
				MainFrame26.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame26.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame26.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame26.BackgroundTransparency = 0.35
				MainFrame26.BorderSizePixel = 0
				local UICorner25 = Instance.new("UICorner", MainFrame26)
				UICorner25.CornerRadius = UDim.new(0, 10)
				local UIStroke32 = Instance.new("UIStroke", MainFrame26)
				UIStroke32.Color = Color3.fromRGB(50, 150, 255)
				UIStroke32.Thickness = 1.8
				UIStroke32.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName24 = Instance.new("TextLabel", MainFrame26)
				MapName24.Name = "MapName"
				MapName24.Size = UDim2.new(1, 0, 0, 16)
				MapName24.Position = UDim2.new(0, 0, 0, 4)
				MapName24.Text = "Map: Scanning..."
				MapName24.Font = Enum.Font.GothamBold
				MapName24.TextSize = 11
				MapName24.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName24.BackgroundTransparency = 1
				MapName24.TextXAlignment = Enum.TextXAlignment.Center
				MapName24.RichText = true
				local MapStatus24 = Instance.new("TextLabel", MainFrame26)
				MapStatus24.Name = "MapStatus"
				MapStatus24.Size = UDim2.new(1, 0, 0, 14)
				MapStatus24.Position = UDim2.new(0, 0, 0, 21)
				MapStatus24.Text = "Status: —"
				MapStatus24.Font = Enum.Font.Gotham
				MapStatus24.TextSize = 9.5
				MapStatus24.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus24.BackgroundTransparency = 1
				MapStatus24.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI24:FindFirstChild("MainFrame")
				MapPredictUI24.Enabled = false
				task.wait(0.5)
				MapPredictUI24:Destroy()
				local MapPredictUI25 = Instance.new("ScreenGui")
				MapPredictUI25.Name = "MapPredictUI"
				MapPredictUI25.ResetOnSpawn = false
				MapPredictUI25.IgnoreGuiInset = true
				MapPredictUI25.Parent = CoreGui
				local MainFrame27 = Instance.new("Frame", MapPredictUI25)
				MainFrame27.Name = "MainFrame"
				MainFrame27.Size = UDim2.new(0, 165, 0, 40)
				MainFrame27.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame27.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame27.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame27.BackgroundTransparency = 0.35
				MainFrame27.BorderSizePixel = 0
				local UICorner26 = Instance.new("UICorner", MainFrame27)
				UICorner26.CornerRadius = UDim.new(0, 10)
				local UIStroke33 = Instance.new("UIStroke", MainFrame27)
				UIStroke33.Color = Color3.fromRGB(50, 150, 255)
				UIStroke33.Thickness = 1.8
				UIStroke33.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName25 = Instance.new("TextLabel", MainFrame27)
				MapName25.Name = "MapName"
				MapName25.Size = UDim2.new(1, 0, 0, 16)
				MapName25.Position = UDim2.new(0, 0, 0, 4)
				MapName25.Text = "Map: Scanning..."
				MapName25.Font = Enum.Font.GothamBold
				MapName25.TextSize = 11
				MapName25.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName25.BackgroundTransparency = 1
				MapName25.TextXAlignment = Enum.TextXAlignment.Center
				MapName25.RichText = true
				local MapStatus25 = Instance.new("TextLabel", MainFrame27)
				MapStatus25.Name = "MapStatus"
				MapStatus25.Size = UDim2.new(1, 0, 0, 14)
				MapStatus25.Position = UDim2.new(0, 0, 0, 21)
				MapStatus25.Text = "Status: —"
				MapStatus25.Font = Enum.Font.Gotham
				MapStatus25.TextSize = 9.5
				MapStatus25.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus25.BackgroundTransparency = 1
				MapStatus25.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI25:FindFirstChild("MainFrame")
				MapPredictUI25.Enabled = false
				task.wait(0.5)
				MapPredictUI25:Destroy()
				local MapPredictUI26 = Instance.new("ScreenGui")
				MapPredictUI26.Name = "MapPredictUI"
				MapPredictUI26.ResetOnSpawn = false
				MapPredictUI26.IgnoreGuiInset = true
				MapPredictUI26.Parent = CoreGui
				local MainFrame28 = Instance.new("Frame", MapPredictUI26)
				MainFrame28.Name = "MainFrame"
				MainFrame28.Size = UDim2.new(0, 165, 0, 40)
				MainFrame28.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame28.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame28.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame28.BackgroundTransparency = 0.35
				MainFrame28.BorderSizePixel = 0
				local UICorner27 = Instance.new("UICorner", MainFrame28)
				UICorner27.CornerRadius = UDim.new(0, 10)
				local UIStroke34 = Instance.new("UIStroke", MainFrame28)
				UIStroke34.Color = Color3.fromRGB(50, 150, 255)
				UIStroke34.Thickness = 1.8
				UIStroke34.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName26 = Instance.new("TextLabel", MainFrame28)
				MapName26.Name = "MapName"
				MapName26.Size = UDim2.new(1, 0, 0, 16)
				MapName26.Position = UDim2.new(0, 0, 0, 4)
				MapName26.Text = "Map: Scanning..."
				MapName26.Font = Enum.Font.GothamBold
				MapName26.TextSize = 11
				MapName26.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName26.BackgroundTransparency = 1
				MapName26.TextXAlignment = Enum.TextXAlignment.Center
				MapName26.RichText = true
				local MapStatus26 = Instance.new("TextLabel", MainFrame28)
				MapStatus26.Name = "MapStatus"
				MapStatus26.Size = UDim2.new(1, 0, 0, 14)
				MapStatus26.Position = UDim2.new(0, 0, 0, 21)
				MapStatus26.Text = "Status: —"
				MapStatus26.Font = Enum.Font.Gotham
				MapStatus26.TextSize = 9.5
				MapStatus26.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus26.BackgroundTransparency = 1
				MapStatus26.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI26:FindFirstChild("MainFrame")
				MapPredictUI26.Enabled = false
				task.wait(0.5)
				MapPredictUI26:Destroy()
				local MapPredictUI27 = Instance.new("ScreenGui")
				MapPredictUI27.Name = "MapPredictUI"
				MapPredictUI27.ResetOnSpawn = false
				MapPredictUI27.IgnoreGuiInset = true
				MapPredictUI27.Parent = CoreGui
				local MainFrame29 = Instance.new("Frame", MapPredictUI27)
				MainFrame29.Name = "MainFrame"
				MainFrame29.Size = UDim2.new(0, 165, 0, 40)
				MainFrame29.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame29.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame29.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame29.BackgroundTransparency = 0.35
				MainFrame29.BorderSizePixel = 0
				local UICorner28 = Instance.new("UICorner", MainFrame29)
				UICorner28.CornerRadius = UDim.new(0, 10)
				local UIStroke35 = Instance.new("UIStroke", MainFrame29)
				UIStroke35.Color = Color3.fromRGB(50, 150, 255)
				UIStroke35.Thickness = 1.8
				UIStroke35.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName27 = Instance.new("TextLabel", MainFrame29)
				MapName27.Name = "MapName"
				MapName27.Size = UDim2.new(1, 0, 0, 16)
				MapName27.Position = UDim2.new(0, 0, 0, 4)
				MapName27.Text = "Map: Scanning..."
				MapName27.Font = Enum.Font.GothamBold
				MapName27.TextSize = 11
				MapName27.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName27.BackgroundTransparency = 1
				MapName27.TextXAlignment = Enum.TextXAlignment.Center
				MapName27.RichText = true
				local MapStatus27 = Instance.new("TextLabel", MainFrame29)
				MapStatus27.Name = "MapStatus"
				MapStatus27.Size = UDim2.new(1, 0, 0, 14)
				MapStatus27.Position = UDim2.new(0, 0, 0, 21)
				MapStatus27.Text = "Status: —"
				MapStatus27.Font = Enum.Font.Gotham
				MapStatus27.TextSize = 9.5
				MapStatus27.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus27.BackgroundTransparency = 1
				MapStatus27.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI27:FindFirstChild("MainFrame")
				MapPredictUI27.Enabled = false
				task.wait(0.5)
				MapPredictUI27:Destroy()
				local MapPredictUI28 = Instance.new("ScreenGui")
				MapPredictUI28.Name = "MapPredictUI"
				MapPredictUI28.ResetOnSpawn = false
				MapPredictUI28.IgnoreGuiInset = true
				MapPredictUI28.Parent = CoreGui
				local MainFrame30 = Instance.new("Frame", MapPredictUI28)
				MainFrame30.Name = "MainFrame"
				MainFrame30.Size = UDim2.new(0, 165, 0, 40)
				MainFrame30.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame30.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame30.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame30.BackgroundTransparency = 0.35
				MainFrame30.BorderSizePixel = 0
				local UICorner29 = Instance.new("UICorner", MainFrame30)
				UICorner29.CornerRadius = UDim.new(0, 10)
				local UIStroke36 = Instance.new("UIStroke", MainFrame30)
				UIStroke36.Color = Color3.fromRGB(50, 150, 255)
				UIStroke36.Thickness = 1.8
				UIStroke36.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName28 = Instance.new("TextLabel", MainFrame30)
				MapName28.Name = "MapName"
				MapName28.Size = UDim2.new(1, 0, 0, 16)
				MapName28.Position = UDim2.new(0, 0, 0, 4)
				MapName28.Text = "Map: Scanning..."
				MapName28.Font = Enum.Font.GothamBold
				MapName28.TextSize = 11
				MapName28.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName28.BackgroundTransparency = 1
				MapName28.TextXAlignment = Enum.TextXAlignment.Center
				MapName28.RichText = true
				local MapStatus28 = Instance.new("TextLabel", MainFrame30)
				MapStatus28.Name = "MapStatus"
				MapStatus28.Size = UDim2.new(1, 0, 0, 14)
				MapStatus28.Position = UDim2.new(0, 0, 0, 21)
				MapStatus28.Text = "Status: —"
				MapStatus28.Font = Enum.Font.Gotham
				MapStatus28.TextSize = 9.5
				MapStatus28.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus28.BackgroundTransparency = 1
				MapStatus28.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI28:FindFirstChild("MainFrame")
				MapPredictUI28.Enabled = false
				task.wait(0.5)
				MapPredictUI28:Destroy()
				local MapPredictUI29 = Instance.new("ScreenGui")
				MapPredictUI29.Name = "MapPredictUI"
				MapPredictUI29.ResetOnSpawn = false
				MapPredictUI29.IgnoreGuiInset = true
				MapPredictUI29.Parent = CoreGui
				local MainFrame31 = Instance.new("Frame", MapPredictUI29)
				MainFrame31.Name = "MainFrame"
				MainFrame31.Size = UDim2.new(0, 165, 0, 40)
				MainFrame31.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame31.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame31.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame31.BackgroundTransparency = 0.35
				MainFrame31.BorderSizePixel = 0
				local UICorner30 = Instance.new("UICorner", MainFrame31)
				UICorner30.CornerRadius = UDim.new(0, 10)
				local UIStroke37 = Instance.new("UIStroke", MainFrame31)
				UIStroke37.Color = Color3.fromRGB(50, 150, 255)
				UIStroke37.Thickness = 1.8
				UIStroke37.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName29 = Instance.new("TextLabel", MainFrame31)
				MapName29.Name = "MapName"
				MapName29.Size = UDim2.new(1, 0, 0, 16)
				MapName29.Position = UDim2.new(0, 0, 0, 4)
				MapName29.Text = "Map: Scanning..."
				MapName29.Font = Enum.Font.GothamBold
				MapName29.TextSize = 11
				MapName29.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName29.BackgroundTransparency = 1
				MapName29.TextXAlignment = Enum.TextXAlignment.Center
				MapName29.RichText = true
				local MapStatus29 = Instance.new("TextLabel", MainFrame31)
				MapStatus29.Name = "MapStatus"
				MapStatus29.Size = UDim2.new(1, 0, 0, 14)
				MapStatus29.Position = UDim2.new(0, 0, 0, 21)
				MapStatus29.Text = "Status: —"
				MapStatus29.Font = Enum.Font.Gotham
				MapStatus29.TextSize = 9.5
				MapStatus29.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus29.BackgroundTransparency = 1
				MapStatus29.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI29:FindFirstChild("MainFrame")
				MapPredictUI29.Enabled = false
				task.wait(0.5)
				MapPredictUI29:Destroy()
				local MapPredictUI30 = Instance.new("ScreenGui")
				MapPredictUI30.Name = "MapPredictUI"
				MapPredictUI30.ResetOnSpawn = false
				MapPredictUI30.IgnoreGuiInset = true
				MapPredictUI30.Parent = CoreGui
				local MainFrame32 = Instance.new("Frame", MapPredictUI30)
				MainFrame32.Name = "MainFrame"
				MainFrame32.Size = UDim2.new(0, 165, 0, 40)
				MainFrame32.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame32.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame32.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame32.BackgroundTransparency = 0.35
				MainFrame32.BorderSizePixel = 0
				local UICorner31 = Instance.new("UICorner", MainFrame32)
				UICorner31.CornerRadius = UDim.new(0, 10)
				local UIStroke38 = Instance.new("UIStroke", MainFrame32)
				UIStroke38.Color = Color3.fromRGB(50, 150, 255)
				UIStroke38.Thickness = 1.8
				UIStroke38.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName30 = Instance.new("TextLabel", MainFrame32)
				MapName30.Name = "MapName"
				MapName30.Size = UDim2.new(1, 0, 0, 16)
				MapName30.Position = UDim2.new(0, 0, 0, 4)
				MapName30.Text = "Map: Scanning..."
				MapName30.Font = Enum.Font.GothamBold
				MapName30.TextSize = 11
				MapName30.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName30.BackgroundTransparency = 1
				MapName30.TextXAlignment = Enum.TextXAlignment.Center
				MapName30.RichText = true
				local MapStatus30 = Instance.new("TextLabel", MainFrame32)
				MapStatus30.Name = "MapStatus"
				MapStatus30.Size = UDim2.new(1, 0, 0, 14)
				MapStatus30.Position = UDim2.new(0, 0, 0, 21)
				MapStatus30.Text = "Status: —"
				MapStatus30.Font = Enum.Font.Gotham
				MapStatus30.TextSize = 9.5
				MapStatus30.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus30.BackgroundTransparency = 1
				MapStatus30.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI30:FindFirstChild("MainFrame")
				MapPredictUI30.Enabled = false
				task.wait(0.5)
				MapPredictUI30:Destroy()
				local MapPredictUI31 = Instance.new("ScreenGui")
				MapPredictUI31.Name = "MapPredictUI"
				MapPredictUI31.ResetOnSpawn = false
				MapPredictUI31.IgnoreGuiInset = true
				MapPredictUI31.Parent = CoreGui
				local MainFrame33 = Instance.new("Frame", MapPredictUI31)
				MainFrame33.Name = "MainFrame"
				MainFrame33.Size = UDim2.new(0, 165, 0, 40)
				MainFrame33.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame33.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame33.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame33.BackgroundTransparency = 0.35
				MainFrame33.BorderSizePixel = 0
				local UICorner32 = Instance.new("UICorner", MainFrame33)
				UICorner32.CornerRadius = UDim.new(0, 10)
				local UIStroke39 = Instance.new("UIStroke", MainFrame33)
				UIStroke39.Color = Color3.fromRGB(50, 150, 255)
				UIStroke39.Thickness = 1.8
				UIStroke39.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName31 = Instance.new("TextLabel", MainFrame33)
				MapName31.Name = "MapName"
				MapName31.Size = UDim2.new(1, 0, 0, 16)
				MapName31.Position = UDim2.new(0, 0, 0, 4)
				MapName31.Text = "Map: Scanning..."
				MapName31.Font = Enum.Font.GothamBold
				MapName31.TextSize = 11
				MapName31.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName31.BackgroundTransparency = 1
				MapName31.TextXAlignment = Enum.TextXAlignment.Center
				MapName31.RichText = true
				local MapStatus31 = Instance.new("TextLabel", MainFrame33)
				MapStatus31.Name = "MapStatus"
				MapStatus31.Size = UDim2.new(1, 0, 0, 14)
				MapStatus31.Position = UDim2.new(0, 0, 0, 21)
				MapStatus31.Text = "Status: —"
				MapStatus31.Font = Enum.Font.Gotham
				MapStatus31.TextSize = 9.5
				MapStatus31.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus31.BackgroundTransparency = 1
				MapStatus31.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI31:FindFirstChild("MainFrame")
				MapPredictUI31.Enabled = false
				task.wait(0.5)
				MapPredictUI31:Destroy()
				local MapPredictUI32 = Instance.new("ScreenGui")
				MapPredictUI32.Name = "MapPredictUI"
				MapPredictUI32.ResetOnSpawn = false
				MapPredictUI32.IgnoreGuiInset = true
				MapPredictUI32.Parent = CoreGui
				local MainFrame34 = Instance.new("Frame", MapPredictUI32)
				MainFrame34.Name = "MainFrame"
				MainFrame34.Size = UDim2.new(0, 165, 0, 40)
				MainFrame34.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame34.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame34.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame34.BackgroundTransparency = 0.35
				MainFrame34.BorderSizePixel = 0
				local UICorner33 = Instance.new("UICorner", MainFrame34)
				UICorner33.CornerRadius = UDim.new(0, 10)
				local UIStroke40 = Instance.new("UIStroke", MainFrame34)
				UIStroke40.Color = Color3.fromRGB(50, 150, 255)
				UIStroke40.Thickness = 1.8
				UIStroke40.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName32 = Instance.new("TextLabel", MainFrame34)
				MapName32.Name = "MapName"
				MapName32.Size = UDim2.new(1, 0, 0, 16)
				MapName32.Position = UDim2.new(0, 0, 0, 4)
				MapName32.Text = "Map: Scanning..."
				MapName32.Font = Enum.Font.GothamBold
				MapName32.TextSize = 11
				MapName32.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName32.BackgroundTransparency = 1
				MapName32.TextXAlignment = Enum.TextXAlignment.Center
				MapName32.RichText = true
				local MapStatus32 = Instance.new("TextLabel", MainFrame34)
				MapStatus32.Name = "MapStatus"
				MapStatus32.Size = UDim2.new(1, 0, 0, 14)
				MapStatus32.Position = UDim2.new(0, 0, 0, 21)
				MapStatus32.Text = "Status: —"
				MapStatus32.Font = Enum.Font.Gotham
				MapStatus32.TextSize = 9.5
				MapStatus32.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus32.BackgroundTransparency = 1
				MapStatus32.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI32:FindFirstChild("MainFrame")
				MapPredictUI32.Enabled = false
				task.wait(0.5)
				MapPredictUI32:Destroy()
				local MapPredictUI33 = Instance.new("ScreenGui")
				MapPredictUI33.Name = "MapPredictUI"
				MapPredictUI33.ResetOnSpawn = false
				MapPredictUI33.IgnoreGuiInset = true
				MapPredictUI33.Parent = CoreGui
				local MainFrame35 = Instance.new("Frame", MapPredictUI33)
				MainFrame35.Name = "MainFrame"
				MainFrame35.Size = UDim2.new(0, 165, 0, 40)
				MainFrame35.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame35.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame35.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame35.BackgroundTransparency = 0.35
				MainFrame35.BorderSizePixel = 0
				local UICorner34 = Instance.new("UICorner", MainFrame35)
				UICorner34.CornerRadius = UDim.new(0, 10)
				local UIStroke41 = Instance.new("UIStroke", MainFrame35)
				UIStroke41.Color = Color3.fromRGB(50, 150, 255)
				UIStroke41.Thickness = 1.8
				UIStroke41.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName33 = Instance.new("TextLabel", MainFrame35)
				MapName33.Name = "MapName"
				MapName33.Size = UDim2.new(1, 0, 0, 16)
				MapName33.Position = UDim2.new(0, 0, 0, 4)
				MapName33.Text = "Map: Scanning..."
				MapName33.Font = Enum.Font.GothamBold
				MapName33.TextSize = 11
				MapName33.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName33.BackgroundTransparency = 1
				MapName33.TextXAlignment = Enum.TextXAlignment.Center
				MapName33.RichText = true
				local MapStatus33 = Instance.new("TextLabel", MainFrame35)
				MapStatus33.Name = "MapStatus"
				MapStatus33.Size = UDim2.new(1, 0, 0, 14)
				MapStatus33.Position = UDim2.new(0, 0, 0, 21)
				MapStatus33.Text = "Status: —"
				MapStatus33.Font = Enum.Font.Gotham
				MapStatus33.TextSize = 9.5
				MapStatus33.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus33.BackgroundTransparency = 1
				MapStatus33.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI33:FindFirstChild("MainFrame")
				MapPredictUI33.Enabled = false
				task.wait(0.5)
				MapPredictUI33:Destroy()
				local MapPredictUI34 = Instance.new("ScreenGui")
				MapPredictUI34.Name = "MapPredictUI"
				MapPredictUI34.ResetOnSpawn = false
				MapPredictUI34.IgnoreGuiInset = true
				MapPredictUI34.Parent = CoreGui
				local MainFrame36 = Instance.new("Frame", MapPredictUI34)
				MainFrame36.Name = "MainFrame"
				MainFrame36.Size = UDim2.new(0, 165, 0, 40)
				MainFrame36.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame36.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame36.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame36.BackgroundTransparency = 0.35
				MainFrame36.BorderSizePixel = 0
				local UICorner35 = Instance.new("UICorner", MainFrame36)
				UICorner35.CornerRadius = UDim.new(0, 10)
				local UIStroke42 = Instance.new("UIStroke", MainFrame36)
				UIStroke42.Color = Color3.fromRGB(50, 150, 255)
				UIStroke42.Thickness = 1.8
				UIStroke42.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName34 = Instance.new("TextLabel", MainFrame36)
				MapName34.Name = "MapName"
				MapName34.Size = UDim2.new(1, 0, 0, 16)
				MapName34.Position = UDim2.new(0, 0, 0, 4)
				MapName34.Text = "Map: Scanning..."
				MapName34.Font = Enum.Font.GothamBold
				MapName34.TextSize = 11
				MapName34.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName34.BackgroundTransparency = 1
				MapName34.TextXAlignment = Enum.TextXAlignment.Center
				MapName34.RichText = true
				local MapStatus34 = Instance.new("TextLabel", MainFrame36)
				MapStatus34.Name = "MapStatus"
				MapStatus34.Size = UDim2.new(1, 0, 0, 14)
				MapStatus34.Position = UDim2.new(0, 0, 0, 21)
				MapStatus34.Text = "Status: —"
				MapStatus34.Font = Enum.Font.Gotham
				MapStatus34.TextSize = 9.5
				MapStatus34.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus34.BackgroundTransparency = 1
				MapStatus34.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI34:FindFirstChild("MainFrame")
				MapPredictUI34.Enabled = false
				task.wait(0.5)
				MapPredictUI34:Destroy()
				local MapPredictUI35 = Instance.new("ScreenGui")
				MapPredictUI35.Name = "MapPredictUI"
				MapPredictUI35.ResetOnSpawn = false
				MapPredictUI35.IgnoreGuiInset = true
				MapPredictUI35.Parent = CoreGui
				local MainFrame37 = Instance.new("Frame", MapPredictUI35)
				MainFrame37.Name = "MainFrame"
				MainFrame37.Size = UDim2.new(0, 165, 0, 40)
				MainFrame37.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame37.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame37.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame37.BackgroundTransparency = 0.35
				MainFrame37.BorderSizePixel = 0
				local UICorner36 = Instance.new("UICorner", MainFrame37)
				UICorner36.CornerRadius = UDim.new(0, 10)
				local UIStroke43 = Instance.new("UIStroke", MainFrame37)
				UIStroke43.Color = Color3.fromRGB(50, 150, 255)
				UIStroke43.Thickness = 1.8
				UIStroke43.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName35 = Instance.new("TextLabel", MainFrame37)
				MapName35.Name = "MapName"
				MapName35.Size = UDim2.new(1, 0, 0, 16)
				MapName35.Position = UDim2.new(0, 0, 0, 4)
				MapName35.Text = "Map: Scanning..."
				MapName35.Font = Enum.Font.GothamBold
				MapName35.TextSize = 11
				MapName35.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName35.BackgroundTransparency = 1
				MapName35.TextXAlignment = Enum.TextXAlignment.Center
				MapName35.RichText = true
				local MapStatus35 = Instance.new("TextLabel", MainFrame37)
				MapStatus35.Name = "MapStatus"
				MapStatus35.Size = UDim2.new(1, 0, 0, 14)
				MapStatus35.Position = UDim2.new(0, 0, 0, 21)
				MapStatus35.Text = "Status: —"
				MapStatus35.Font = Enum.Font.Gotham
				MapStatus35.TextSize = 9.5
				MapStatus35.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus35.BackgroundTransparency = 1
				MapStatus35.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI35:FindFirstChild("MainFrame")
				MapPredictUI35.Enabled = false
				task.wait(0.5)
				MapPredictUI35:Destroy()
				local MapPredictUI36 = Instance.new("ScreenGui")
				MapPredictUI36.Name = "MapPredictUI"
				MapPredictUI36.ResetOnSpawn = false
				MapPredictUI36.IgnoreGuiInset = true
				MapPredictUI36.Parent = CoreGui
				local MainFrame38 = Instance.new("Frame", MapPredictUI36)
				MainFrame38.Name = "MainFrame"
				MainFrame38.Size = UDim2.new(0, 165, 0, 40)
				MainFrame38.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame38.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame38.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame38.BackgroundTransparency = 0.35
				MainFrame38.BorderSizePixel = 0
				local UICorner37 = Instance.new("UICorner", MainFrame38)
				UICorner37.CornerRadius = UDim.new(0, 10)
				local UIStroke44 = Instance.new("UIStroke", MainFrame38)
				UIStroke44.Color = Color3.fromRGB(50, 150, 255)
				UIStroke44.Thickness = 1.8
				UIStroke44.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName36 = Instance.new("TextLabel", MainFrame38)
				MapName36.Name = "MapName"
				MapName36.Size = UDim2.new(1, 0, 0, 16)
				MapName36.Position = UDim2.new(0, 0, 0, 4)
				MapName36.Text = "Map: Scanning..."
				MapName36.Font = Enum.Font.GothamBold
				MapName36.TextSize = 11
				MapName36.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName36.BackgroundTransparency = 1
				MapName36.TextXAlignment = Enum.TextXAlignment.Center
				MapName36.RichText = true
				local MapStatus36 = Instance.new("TextLabel", MainFrame38)
				MapStatus36.Name = "MapStatus"
				MapStatus36.Size = UDim2.new(1, 0, 0, 14)
				MapStatus36.Position = UDim2.new(0, 0, 0, 21)
				MapStatus36.Text = "Status: —"
				MapStatus36.Font = Enum.Font.Gotham
				MapStatus36.TextSize = 9.5
				MapStatus36.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus36.BackgroundTransparency = 1
				MapStatus36.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI36:FindFirstChild("MainFrame")
				MapPredictUI36.Enabled = false
				task.wait(0.5)
				MapPredictUI36:Destroy()
				local MapPredictUI37 = Instance.new("ScreenGui")
				MapPredictUI37.Name = "MapPredictUI"
				MapPredictUI37.ResetOnSpawn = false
				MapPredictUI37.IgnoreGuiInset = true
				MapPredictUI37.Parent = CoreGui
				local MainFrame39 = Instance.new("Frame", MapPredictUI37)
				MainFrame39.Name = "MainFrame"
				MainFrame39.Size = UDim2.new(0, 165, 0, 40)
				MainFrame39.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame39.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame39.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame39.BackgroundTransparency = 0.35
				MainFrame39.BorderSizePixel = 0
				local UICorner38 = Instance.new("UICorner", MainFrame39)
				UICorner38.CornerRadius = UDim.new(0, 10)
				local UIStroke45 = Instance.new("UIStroke", MainFrame39)
				UIStroke45.Color = Color3.fromRGB(50, 150, 255)
				UIStroke45.Thickness = 1.8
				UIStroke45.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName37 = Instance.new("TextLabel", MainFrame39)
				MapName37.Name = "MapName"
				MapName37.Size = UDim2.new(1, 0, 0, 16)
				MapName37.Position = UDim2.new(0, 0, 0, 4)
				MapName37.Text = "Map: Scanning..."
				MapName37.Font = Enum.Font.GothamBold
				MapName37.TextSize = 11
				MapName37.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName37.BackgroundTransparency = 1
				MapName37.TextXAlignment = Enum.TextXAlignment.Center
				MapName37.RichText = true
				local MapStatus37 = Instance.new("TextLabel", MainFrame39)
				MapStatus37.Name = "MapStatus"
				MapStatus37.Size = UDim2.new(1, 0, 0, 14)
				MapStatus37.Position = UDim2.new(0, 0, 0, 21)
				MapStatus37.Text = "Status: —"
				MapStatus37.Font = Enum.Font.Gotham
				MapStatus37.TextSize = 9.5
				MapStatus37.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus37.BackgroundTransparency = 1
				MapStatus37.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI37:FindFirstChild("MainFrame")
				MapPredictUI37.Enabled = false
				task.wait(0.5)
				MapPredictUI37:Destroy()
				local MapPredictUI38 = Instance.new("ScreenGui")
				MapPredictUI38.Name = "MapPredictUI"
				MapPredictUI38.ResetOnSpawn = false
				MapPredictUI38.IgnoreGuiInset = true
				MapPredictUI38.Parent = CoreGui
				local MainFrame40 = Instance.new("Frame", MapPredictUI38)
				MainFrame40.Name = "MainFrame"
				MainFrame40.Size = UDim2.new(0, 165, 0, 40)
				MainFrame40.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame40.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame40.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame40.BackgroundTransparency = 0.35
				MainFrame40.BorderSizePixel = 0
				local UICorner39 = Instance.new("UICorner", MainFrame40)
				UICorner39.CornerRadius = UDim.new(0, 10)
				local UIStroke46 = Instance.new("UIStroke", MainFrame40)
				UIStroke46.Color = Color3.fromRGB(50, 150, 255)
				UIStroke46.Thickness = 1.8
				UIStroke46.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName38 = Instance.new("TextLabel", MainFrame40)
				MapName38.Name = "MapName"
				MapName38.Size = UDim2.new(1, 0, 0, 16)
				MapName38.Position = UDim2.new(0, 0, 0, 4)
				MapName38.Text = "Map: Scanning..."
				MapName38.Font = Enum.Font.GothamBold
				MapName38.TextSize = 11
				MapName38.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName38.BackgroundTransparency = 1
				MapName38.TextXAlignment = Enum.TextXAlignment.Center
				MapName38.RichText = true
				local MapStatus38 = Instance.new("TextLabel", MainFrame40)
				MapStatus38.Name = "MapStatus"
				MapStatus38.Size = UDim2.new(1, 0, 0, 14)
				MapStatus38.Position = UDim2.new(0, 0, 0, 21)
				MapStatus38.Text = "Status: —"
				MapStatus38.Font = Enum.Font.Gotham
				MapStatus38.TextSize = 9.5
				MapStatus38.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus38.BackgroundTransparency = 1
				MapStatus38.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI38:FindFirstChild("MainFrame")
				MapPredictUI38.Enabled = false
				task.wait(0.5)
				MapPredictUI38:Destroy()
				local MapPredictUI39 = Instance.new("ScreenGui")
				MapPredictUI39.Name = "MapPredictUI"
				MapPredictUI39.ResetOnSpawn = false
				MapPredictUI39.IgnoreGuiInset = true
				MapPredictUI39.Parent = CoreGui
				local MainFrame41 = Instance.new("Frame", MapPredictUI39)
				MainFrame41.Name = "MainFrame"
				MainFrame41.Size = UDim2.new(0, 165, 0, 40)
				MainFrame41.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame41.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame41.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame41.BackgroundTransparency = 0.35
				MainFrame41.BorderSizePixel = 0
				local UICorner40 = Instance.new("UICorner", MainFrame41)
				UICorner40.CornerRadius = UDim.new(0, 10)
				local UIStroke47 = Instance.new("UIStroke", MainFrame41)
				UIStroke47.Color = Color3.fromRGB(50, 150, 255)
				UIStroke47.Thickness = 1.8
				UIStroke47.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName39 = Instance.new("TextLabel", MainFrame41)
				MapName39.Name = "MapName"
				MapName39.Size = UDim2.new(1, 0, 0, 16)
				MapName39.Position = UDim2.new(0, 0, 0, 4)
				MapName39.Text = "Map: Scanning..."
				MapName39.Font = Enum.Font.GothamBold
				MapName39.TextSize = 11
				MapName39.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName39.BackgroundTransparency = 1
				MapName39.TextXAlignment = Enum.TextXAlignment.Center
				MapName39.RichText = true
				local MapStatus39 = Instance.new("TextLabel", MainFrame41)
				MapStatus39.Name = "MapStatus"
				MapStatus39.Size = UDim2.new(1, 0, 0, 14)
				MapStatus39.Position = UDim2.new(0, 0, 0, 21)
				MapStatus39.Text = "Status: —"
				MapStatus39.Font = Enum.Font.Gotham
				MapStatus39.TextSize = 9.5
				MapStatus39.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus39.BackgroundTransparency = 1
				MapStatus39.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI39:FindFirstChild("MainFrame")
				MapPredictUI39.Enabled = false
				task.wait(0.5)
				MapPredictUI39:Destroy()
				local MapPredictUI40 = Instance.new("ScreenGui")
				MapPredictUI40.Name = "MapPredictUI"
				MapPredictUI40.ResetOnSpawn = false
				MapPredictUI40.IgnoreGuiInset = true
				MapPredictUI40.Parent = CoreGui
				local MainFrame42 = Instance.new("Frame", MapPredictUI40)
				MainFrame42.Name = "MainFrame"
				MainFrame42.Size = UDim2.new(0, 165, 0, 40)
				MainFrame42.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame42.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame42.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame42.BackgroundTransparency = 0.35
				MainFrame42.BorderSizePixel = 0
				local UICorner41 = Instance.new("UICorner", MainFrame42)
				UICorner41.CornerRadius = UDim.new(0, 10)
				local UIStroke48 = Instance.new("UIStroke", MainFrame42)
				UIStroke48.Color = Color3.fromRGB(50, 150, 255)
				UIStroke48.Thickness = 1.8
				UIStroke48.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName40 = Instance.new("TextLabel", MainFrame42)
				MapName40.Name = "MapName"
				MapName40.Size = UDim2.new(1, 0, 0, 16)
				MapName40.Position = UDim2.new(0, 0, 0, 4)
				MapName40.Text = "Map: Scanning..."
				MapName40.Font = Enum.Font.GothamBold
				MapName40.TextSize = 11
				MapName40.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName40.BackgroundTransparency = 1
				MapName40.TextXAlignment = Enum.TextXAlignment.Center
				MapName40.RichText = true
				local MapStatus40 = Instance.new("TextLabel", MainFrame42)
				MapStatus40.Name = "MapStatus"
				MapStatus40.Size = UDim2.new(1, 0, 0, 14)
				MapStatus40.Position = UDim2.new(0, 0, 0, 21)
				MapStatus40.Text = "Status: —"
				MapStatus40.Font = Enum.Font.Gotham
				MapStatus40.TextSize = 9.5
				MapStatus40.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus40.BackgroundTransparency = 1
				MapStatus40.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI40:FindFirstChild("MainFrame")
				MapPredictUI40.Enabled = false
				task.wait(0.5)
				MapPredictUI40:Destroy()
				local MapPredictUI41 = Instance.new("ScreenGui")
				MapPredictUI41.Name = "MapPredictUI"
				MapPredictUI41.ResetOnSpawn = false
				MapPredictUI41.IgnoreGuiInset = true
				MapPredictUI41.Parent = CoreGui
				local MainFrame43 = Instance.new("Frame", MapPredictUI41)
				MainFrame43.Name = "MainFrame"
				MainFrame43.Size = UDim2.new(0, 165, 0, 40)
				MainFrame43.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame43.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame43.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame43.BackgroundTransparency = 0.35
				MainFrame43.BorderSizePixel = 0
				local UICorner42 = Instance.new("UICorner", MainFrame43)
				UICorner42.CornerRadius = UDim.new(0, 10)
				local UIStroke49 = Instance.new("UIStroke", MainFrame43)
				UIStroke49.Color = Color3.fromRGB(50, 150, 255)
				UIStroke49.Thickness = 1.8
				UIStroke49.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName41 = Instance.new("TextLabel", MainFrame43)
				MapName41.Name = "MapName"
				MapName41.Size = UDim2.new(1, 0, 0, 16)
				MapName41.Position = UDim2.new(0, 0, 0, 4)
				MapName41.Text = "Map: Scanning..."
				MapName41.Font = Enum.Font.GothamBold
				MapName41.TextSize = 11
				MapName41.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName41.BackgroundTransparency = 1
				MapName41.TextXAlignment = Enum.TextXAlignment.Center
				MapName41.RichText = true
				local MapStatus41 = Instance.new("TextLabel", MainFrame43)
				MapStatus41.Name = "MapStatus"
				MapStatus41.Size = UDim2.new(1, 0, 0, 14)
				MapStatus41.Position = UDim2.new(0, 0, 0, 21)
				MapStatus41.Text = "Status: —"
				MapStatus41.Font = Enum.Font.Gotham
				MapStatus41.TextSize = 9.5
				MapStatus41.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus41.BackgroundTransparency = 1
				MapStatus41.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI41:FindFirstChild("MainFrame")
				MapPredictUI41.Enabled = false
				task.wait(0.5)
				MapPredictUI41:Destroy()
				local MapPredictUI42 = Instance.new("ScreenGui")
				MapPredictUI42.Name = "MapPredictUI"
				MapPredictUI42.ResetOnSpawn = false
				MapPredictUI42.IgnoreGuiInset = true
				MapPredictUI42.Parent = CoreGui
				local MainFrame44 = Instance.new("Frame", MapPredictUI42)
				MainFrame44.Name = "MainFrame"
				MainFrame44.Size = UDim2.new(0, 165, 0, 40)
				MainFrame44.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame44.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame44.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame44.BackgroundTransparency = 0.35
				MainFrame44.BorderSizePixel = 0
				local UICorner43 = Instance.new("UICorner", MainFrame44)
				UICorner43.CornerRadius = UDim.new(0, 10)
				local UIStroke50 = Instance.new("UIStroke", MainFrame44)
				UIStroke50.Color = Color3.fromRGB(50, 150, 255)
				UIStroke50.Thickness = 1.8
				UIStroke50.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName42 = Instance.new("TextLabel", MainFrame44)
				MapName42.Name = "MapName"
				MapName42.Size = UDim2.new(1, 0, 0, 16)
				MapName42.Position = UDim2.new(0, 0, 0, 4)
				MapName42.Text = "Map: Scanning..."
				MapName42.Font = Enum.Font.GothamBold
				MapName42.TextSize = 11
				MapName42.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName42.BackgroundTransparency = 1
				MapName42.TextXAlignment = Enum.TextXAlignment.Center
				MapName42.RichText = true
				local MapStatus42 = Instance.new("TextLabel", MainFrame44)
				MapStatus42.Name = "MapStatus"
				MapStatus42.Size = UDim2.new(1, 0, 0, 14)
				MapStatus42.Position = UDim2.new(0, 0, 0, 21)
				MapStatus42.Text = "Status: —"
				MapStatus42.Font = Enum.Font.Gotham
				MapStatus42.TextSize = 9.5
				MapStatus42.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus42.BackgroundTransparency = 1
				MapStatus42.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI42:FindFirstChild("MainFrame")
				MapPredictUI42.Enabled = false
				task.wait(0.5)
				MapPredictUI42:Destroy()
				local MapPredictUI43 = Instance.new("ScreenGui")
				MapPredictUI43.Name = "MapPredictUI"
				MapPredictUI43.ResetOnSpawn = false
				MapPredictUI43.IgnoreGuiInset = true
				MapPredictUI43.Parent = CoreGui
				local MainFrame45 = Instance.new("Frame", MapPredictUI43)
				MainFrame45.Name = "MainFrame"
				MainFrame45.Size = UDim2.new(0, 165, 0, 40)
				MainFrame45.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame45.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame45.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame45.BackgroundTransparency = 0.35
				MainFrame45.BorderSizePixel = 0
				local UICorner44 = Instance.new("UICorner", MainFrame45)
				UICorner44.CornerRadius = UDim.new(0, 10)
				local UIStroke51 = Instance.new("UIStroke", MainFrame45)
				UIStroke51.Color = Color3.fromRGB(50, 150, 255)
				UIStroke51.Thickness = 1.8
				UIStroke51.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName43 = Instance.new("TextLabel", MainFrame45)
				MapName43.Name = "MapName"
				MapName43.Size = UDim2.new(1, 0, 0, 16)
				MapName43.Position = UDim2.new(0, 0, 0, 4)
				MapName43.Text = "Map: Scanning..."
				MapName43.Font = Enum.Font.GothamBold
				MapName43.TextSize = 11
				MapName43.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName43.BackgroundTransparency = 1
				MapName43.TextXAlignment = Enum.TextXAlignment.Center
				MapName43.RichText = true
				local MapStatus43 = Instance.new("TextLabel", MainFrame45)
				MapStatus43.Name = "MapStatus"
				MapStatus43.Size = UDim2.new(1, 0, 0, 14)
				MapStatus43.Position = UDim2.new(0, 0, 0, 21)
				MapStatus43.Text = "Status: —"
				MapStatus43.Font = Enum.Font.Gotham
				MapStatus43.TextSize = 9.5
				MapStatus43.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus43.BackgroundTransparency = 1
				MapStatus43.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI43:FindFirstChild("MainFrame")
				MapPredictUI43.Enabled = false
				task.wait(0.5)
				MapPredictUI43:Destroy()
				local MapPredictUI44 = Instance.new("ScreenGui")
				MapPredictUI44.Name = "MapPredictUI"
				MapPredictUI44.ResetOnSpawn = false
				MapPredictUI44.IgnoreGuiInset = true
				MapPredictUI44.Parent = CoreGui
				local MainFrame46 = Instance.new("Frame", MapPredictUI44)
				MainFrame46.Name = "MainFrame"
				MainFrame46.Size = UDim2.new(0, 165, 0, 40)
				MainFrame46.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame46.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame46.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame46.BackgroundTransparency = 0.35
				MainFrame46.BorderSizePixel = 0
				local UICorner45 = Instance.new("UICorner", MainFrame46)
				UICorner45.CornerRadius = UDim.new(0, 10)
				local UIStroke52 = Instance.new("UIStroke", MainFrame46)
				UIStroke52.Color = Color3.fromRGB(50, 150, 255)
				UIStroke52.Thickness = 1.8
				UIStroke52.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName44 = Instance.new("TextLabel", MainFrame46)
				MapName44.Name = "MapName"
				MapName44.Size = UDim2.new(1, 0, 0, 16)
				MapName44.Position = UDim2.new(0, 0, 0, 4)
				MapName44.Text = "Map: Scanning..."
				MapName44.Font = Enum.Font.GothamBold
				MapName44.TextSize = 11
				MapName44.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName44.BackgroundTransparency = 1
				MapName44.TextXAlignment = Enum.TextXAlignment.Center
				MapName44.RichText = true
				local MapStatus44 = Instance.new("TextLabel", MainFrame46)
				MapStatus44.Name = "MapStatus"
				MapStatus44.Size = UDim2.new(1, 0, 0, 14)
				MapStatus44.Position = UDim2.new(0, 0, 0, 21)
				MapStatus44.Text = "Status: —"
				MapStatus44.Font = Enum.Font.Gotham
				MapStatus44.TextSize = 9.5
				MapStatus44.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus44.BackgroundTransparency = 1
				MapStatus44.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI44:FindFirstChild("MainFrame")
				MapPredictUI44.Enabled = false
				task.wait(0.5)
				MapPredictUI44:Destroy()
				local MapPredictUI45 = Instance.new("ScreenGui")
				MapPredictUI45.Name = "MapPredictUI"
				MapPredictUI45.ResetOnSpawn = false
				MapPredictUI45.IgnoreGuiInset = true
				MapPredictUI45.Parent = CoreGui
				local MainFrame47 = Instance.new("Frame", MapPredictUI45)
				MainFrame47.Name = "MainFrame"
				MainFrame47.Size = UDim2.new(0, 165, 0, 40)
				MainFrame47.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame47.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame47.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame47.BackgroundTransparency = 0.35
				MainFrame47.BorderSizePixel = 0
				local UICorner46 = Instance.new("UICorner", MainFrame47)
				UICorner46.CornerRadius = UDim.new(0, 10)
				local UIStroke53 = Instance.new("UIStroke", MainFrame47)
				UIStroke53.Color = Color3.fromRGB(50, 150, 255)
				UIStroke53.Thickness = 1.8
				UIStroke53.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName45 = Instance.new("TextLabel", MainFrame47)
				MapName45.Name = "MapName"
				MapName45.Size = UDim2.new(1, 0, 0, 16)
				MapName45.Position = UDim2.new(0, 0, 0, 4)
				MapName45.Text = "Map: Scanning..."
				MapName45.Font = Enum.Font.GothamBold
				MapName45.TextSize = 11
				MapName45.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName45.BackgroundTransparency = 1
				MapName45.TextXAlignment = Enum.TextXAlignment.Center
				MapName45.RichText = true
				local MapStatus45 = Instance.new("TextLabel", MainFrame47)
				MapStatus45.Name = "MapStatus"
				MapStatus45.Size = UDim2.new(1, 0, 0, 14)
				MapStatus45.Position = UDim2.new(0, 0, 0, 21)
				MapStatus45.Text = "Status: —"
				MapStatus45.Font = Enum.Font.Gotham
				MapStatus45.TextSize = 9.5
				MapStatus45.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus45.BackgroundTransparency = 1
				MapStatus45.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI45:FindFirstChild("MainFrame")
				MapPredictUI45.Enabled = false
				task.wait(0.5)
				MapPredictUI45:Destroy()
				local MapPredictUI46 = Instance.new("ScreenGui")
				MapPredictUI46.Name = "MapPredictUI"
				MapPredictUI46.ResetOnSpawn = false
				MapPredictUI46.IgnoreGuiInset = true
				MapPredictUI46.Parent = CoreGui
				local MainFrame48 = Instance.new("Frame", MapPredictUI46)
				MainFrame48.Name = "MainFrame"
				MainFrame48.Size = UDim2.new(0, 165, 0, 40)
				MainFrame48.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame48.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame48.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame48.BackgroundTransparency = 0.35
				MainFrame48.BorderSizePixel = 0
				local UICorner47 = Instance.new("UICorner", MainFrame48)
				UICorner47.CornerRadius = UDim.new(0, 10)
				local UIStroke54 = Instance.new("UIStroke", MainFrame48)
				UIStroke54.Color = Color3.fromRGB(50, 150, 255)
				UIStroke54.Thickness = 1.8
				UIStroke54.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName46 = Instance.new("TextLabel", MainFrame48)
				MapName46.Name = "MapName"
				MapName46.Size = UDim2.new(1, 0, 0, 16)
				MapName46.Position = UDim2.new(0, 0, 0, 4)
				MapName46.Text = "Map: Scanning..."
				MapName46.Font = Enum.Font.GothamBold
				MapName46.TextSize = 11
				MapName46.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName46.BackgroundTransparency = 1
				MapName46.TextXAlignment = Enum.TextXAlignment.Center
				MapName46.RichText = true
				local MapStatus46 = Instance.new("TextLabel", MainFrame48)
				MapStatus46.Name = "MapStatus"
				MapStatus46.Size = UDim2.new(1, 0, 0, 14)
				MapStatus46.Position = UDim2.new(0, 0, 0, 21)
				MapStatus46.Text = "Status: —"
				MapStatus46.Font = Enum.Font.Gotham
				MapStatus46.TextSize = 9.5
				MapStatus46.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus46.BackgroundTransparency = 1
				MapStatus46.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI46:FindFirstChild("MainFrame")
				MapPredictUI46.Enabled = false
				task.wait(0.5)
				MapPredictUI46:Destroy()
				local MapPredictUI47 = Instance.new("ScreenGui")
				MapPredictUI47.Name = "MapPredictUI"
				MapPredictUI47.ResetOnSpawn = false
				MapPredictUI47.IgnoreGuiInset = true
				MapPredictUI47.Parent = CoreGui
				local MainFrame49 = Instance.new("Frame", MapPredictUI47)
				MainFrame49.Name = "MainFrame"
				MainFrame49.Size = UDim2.new(0, 165, 0, 40)
				MainFrame49.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame49.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame49.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame49.BackgroundTransparency = 0.35
				MainFrame49.BorderSizePixel = 0
				local UICorner48 = Instance.new("UICorner", MainFrame49)
				UICorner48.CornerRadius = UDim.new(0, 10)
				local UIStroke55 = Instance.new("UIStroke", MainFrame49)
				UIStroke55.Color = Color3.fromRGB(50, 150, 255)
				UIStroke55.Thickness = 1.8
				UIStroke55.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName47 = Instance.new("TextLabel", MainFrame49)
				MapName47.Name = "MapName"
				MapName47.Size = UDim2.new(1, 0, 0, 16)
				MapName47.Position = UDim2.new(0, 0, 0, 4)
				MapName47.Text = "Map: Scanning..."
				MapName47.Font = Enum.Font.GothamBold
				MapName47.TextSize = 11
				MapName47.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName47.BackgroundTransparency = 1
				MapName47.TextXAlignment = Enum.TextXAlignment.Center
				MapName47.RichText = true
				local MapStatus47 = Instance.new("TextLabel", MainFrame49)
				MapStatus47.Name = "MapStatus"
				MapStatus47.Size = UDim2.new(1, 0, 0, 14)
				MapStatus47.Position = UDim2.new(0, 0, 0, 21)
				MapStatus47.Text = "Status: —"
				MapStatus47.Font = Enum.Font.Gotham
				MapStatus47.TextSize = 9.5
				MapStatus47.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus47.BackgroundTransparency = 1
				MapStatus47.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI47:FindFirstChild("MainFrame")
				MapPredictUI47.Enabled = false
				task.wait(0.5)
				MapPredictUI47:Destroy()
				local MapPredictUI48 = Instance.new("ScreenGui")
				MapPredictUI48.Name = "MapPredictUI"
				MapPredictUI48.ResetOnSpawn = false
				MapPredictUI48.IgnoreGuiInset = true
				MapPredictUI48.Parent = CoreGui
				local MainFrame50 = Instance.new("Frame", MapPredictUI48)
				MainFrame50.Name = "MainFrame"
				MainFrame50.Size = UDim2.new(0, 165, 0, 40)
				MainFrame50.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame50.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame50.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame50.BackgroundTransparency = 0.35
				MainFrame50.BorderSizePixel = 0
				local UICorner49 = Instance.new("UICorner", MainFrame50)
				UICorner49.CornerRadius = UDim.new(0, 10)
				local UIStroke56 = Instance.new("UIStroke", MainFrame50)
				UIStroke56.Color = Color3.fromRGB(50, 150, 255)
				UIStroke56.Thickness = 1.8
				UIStroke56.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName48 = Instance.new("TextLabel", MainFrame50)
				MapName48.Name = "MapName"
				MapName48.Size = UDim2.new(1, 0, 0, 16)
				MapName48.Position = UDim2.new(0, 0, 0, 4)
				MapName48.Text = "Map: Scanning..."
				MapName48.Font = Enum.Font.GothamBold
				MapName48.TextSize = 11
				MapName48.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName48.BackgroundTransparency = 1
				MapName48.TextXAlignment = Enum.TextXAlignment.Center
				MapName48.RichText = true
				local MapStatus48 = Instance.new("TextLabel", MainFrame50)
				MapStatus48.Name = "MapStatus"
				MapStatus48.Size = UDim2.new(1, 0, 0, 14)
				MapStatus48.Position = UDim2.new(0, 0, 0, 21)
				MapStatus48.Text = "Status: —"
				MapStatus48.Font = Enum.Font.Gotham
				MapStatus48.TextSize = 9.5
				MapStatus48.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus48.BackgroundTransparency = 1
				MapStatus48.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI48:FindFirstChild("MainFrame")
				MapPredictUI48.Enabled = false
				task.wait(0.5)
				MapPredictUI48:Destroy()
				local MapPredictUI49 = Instance.new("ScreenGui")
				MapPredictUI49.Name = "MapPredictUI"
				MapPredictUI49.ResetOnSpawn = false
				MapPredictUI49.IgnoreGuiInset = true
				MapPredictUI49.Parent = CoreGui
				local MainFrame51 = Instance.new("Frame", MapPredictUI49)
				MainFrame51.Name = "MainFrame"
				MainFrame51.Size = UDim2.new(0, 165, 0, 40)
				MainFrame51.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame51.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame51.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame51.BackgroundTransparency = 0.35
				MainFrame51.BorderSizePixel = 0
				local UICorner50 = Instance.new("UICorner", MainFrame51)
				UICorner50.CornerRadius = UDim.new(0, 10)
				local UIStroke57 = Instance.new("UIStroke", MainFrame51)
				UIStroke57.Color = Color3.fromRGB(50, 150, 255)
				UIStroke57.Thickness = 1.8
				UIStroke57.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName49 = Instance.new("TextLabel", MainFrame51)
				MapName49.Name = "MapName"
				MapName49.Size = UDim2.new(1, 0, 0, 16)
				MapName49.Position = UDim2.new(0, 0, 0, 4)
				MapName49.Text = "Map: Scanning..."
				MapName49.Font = Enum.Font.GothamBold
				MapName49.TextSize = 11
				MapName49.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName49.BackgroundTransparency = 1
				MapName49.TextXAlignment = Enum.TextXAlignment.Center
				MapName49.RichText = true
				local MapStatus49 = Instance.new("TextLabel", MainFrame51)
				MapStatus49.Name = "MapStatus"
				MapStatus49.Size = UDim2.new(1, 0, 0, 14)
				MapStatus49.Position = UDim2.new(0, 0, 0, 21)
				MapStatus49.Text = "Status: —"
				MapStatus49.Font = Enum.Font.Gotham
				MapStatus49.TextSize = 9.5
				MapStatus49.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus49.BackgroundTransparency = 1
				MapStatus49.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI49:FindFirstChild("MainFrame")
				MapPredictUI49.Enabled = false
				task.wait(0.5)
				MapPredictUI49:Destroy()
				local MapPredictUI50 = Instance.new("ScreenGui")
				MapPredictUI50.Name = "MapPredictUI"
				MapPredictUI50.ResetOnSpawn = false
				MapPredictUI50.IgnoreGuiInset = true
				MapPredictUI50.Parent = CoreGui
				local MainFrame52 = Instance.new("Frame", MapPredictUI50)
				MainFrame52.Name = "MainFrame"
				MainFrame52.Size = UDim2.new(0, 165, 0, 40)
				MainFrame52.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame52.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame52.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame52.BackgroundTransparency = 0.35
				MainFrame52.BorderSizePixel = 0
				local UICorner51 = Instance.new("UICorner", MainFrame52)
				UICorner51.CornerRadius = UDim.new(0, 10)
				local UIStroke58 = Instance.new("UIStroke", MainFrame52)
				UIStroke58.Color = Color3.fromRGB(50, 150, 255)
				UIStroke58.Thickness = 1.8
				UIStroke58.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName50 = Instance.new("TextLabel", MainFrame52)
				MapName50.Name = "MapName"
				MapName50.Size = UDim2.new(1, 0, 0, 16)
				MapName50.Position = UDim2.new(0, 0, 0, 4)
				MapName50.Text = "Map: Scanning..."
				MapName50.Font = Enum.Font.GothamBold
				MapName50.TextSize = 11
				MapName50.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName50.BackgroundTransparency = 1
				MapName50.TextXAlignment = Enum.TextXAlignment.Center
				MapName50.RichText = true
				local MapStatus50 = Instance.new("TextLabel", MainFrame52)
				MapStatus50.Name = "MapStatus"
				MapStatus50.Size = UDim2.new(1, 0, 0, 14)
				MapStatus50.Position = UDim2.new(0, 0, 0, 21)
				MapStatus50.Text = "Status: —"
				MapStatus50.Font = Enum.Font.Gotham
				MapStatus50.TextSize = 9.5
				MapStatus50.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus50.BackgroundTransparency = 1
				MapStatus50.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI50:FindFirstChild("MainFrame")
				MapPredictUI50.Enabled = false
				task.wait(0.5)
				MapPredictUI50:Destroy()
				local MapPredictUI51 = Instance.new("ScreenGui")
				MapPredictUI51.Name = "MapPredictUI"
				MapPredictUI51.ResetOnSpawn = false
				MapPredictUI51.IgnoreGuiInset = true
				MapPredictUI51.Parent = CoreGui
				local MainFrame53 = Instance.new("Frame", MapPredictUI51)
				MainFrame53.Name = "MainFrame"
				MainFrame53.Size = UDim2.new(0, 165, 0, 40)
				MainFrame53.Position = UDim2.new(0.5, 0, 0, 110)
				MainFrame53.AnchorPoint = Vector2.new(0.5, 0)
				MainFrame53.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
				MainFrame53.BackgroundTransparency = 0.35
				MainFrame53.BorderSizePixel = 0
				local UICorner52 = Instance.new("UICorner", MainFrame53)
				UICorner52.CornerRadius = UDim.new(0, 10)
				local UIStroke59 = Instance.new("UIStroke", MainFrame53)
				UIStroke59.Color = Color3.fromRGB(50, 150, 255)
				UIStroke59.Thickness = 1.8
				UIStroke59.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				local MapName51 = Instance.new("TextLabel", MainFrame53)
				MapName51.Name = "MapName"
				MapName51.Size = UDim2.new(1, 0, 0, 16)
				MapName51.Position = UDim2.new(0, 0, 0, 4)
				MapName51.Text = "Map: Scanning..."
				MapName51.Font = Enum.Font.GothamBold
				MapName51.TextSize = 11
				MapName51.TextColor3 = Color3.fromRGB(230, 230, 255)
				MapName51.BackgroundTransparency = 1
				MapName51.TextXAlignment = Enum.TextXAlignment.Center
				MapName51.RichText = true
				local MapStatus51 = Instance.new("TextLabel", MainFrame53)
				MapStatus51.Name = "MapStatus"
				MapStatus51.Size = UDim2.new(1, 0, 0, 14)
				MapStatus51.Position = UDim2.new(0, 0, 0, 21)
				MapStatus51.Text = "Status: —"
				MapStatus51.Font = Enum.Font.Gotham
				MapStatus51.TextSize = 9.5
				MapStatus51.TextColor3 = Color3.fromRGB(120, 180, 255)
				MapStatus51.BackgroundTransparency = 1
				MapStatus51.TextXAlignment = Enum.TextXAlignment.Center
				MapPredictUI51:FindFirstChild("MainFrame")
				MapPredictUI51.Enabled = false
				task.wait(0.5)
				-- [envlog] stopped after 50 waits
			end)
		else
			task.cancel(thread2)
			MapPredictUI51:Destroy()
		end
	end
})

Section3:AddToggle({
	Title = "Killer Perks Display",
	Default = false,
	Callback = function(state)
		if state then
			local KillerPerksUI = Instance.new("ScreenGui")
			KillerPerksUI.Name = "KillerPerksUI"
			KillerPerksUI.ResetOnSpawn = false
			KillerPerksUI.IgnoreGuiInset = true
			KillerPerksUI.Parent = CoreGui
			local MainBox = Instance.new("Frame")
			MainBox.Name = "MainBox"
			MainBox.AnchorPoint = Vector2.new(0.5, 0)
			MainBox.Position = UDim2.new(0.18, 0, 0.3, 0)
			MainBox.Size = UDim2.new(0, 160, 0, 100)
			MainBox.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
			MainBox.BackgroundTransparency = 0.1
			MainBox.BorderSizePixel = 0
			MainBox.Active = true
			MainBox.Parent = KillerPerksUI
			local UICorner53 = Instance.new("UICorner", MainBox)
			UICorner53.CornerRadius = UDim.new(0, 5)
			local Frame54 = Instance.new("Frame", MainBox)
			Frame54.Size = UDim2.new(1, 0, 0, 3)
			Frame54.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
			Frame54.BorderSizePixel = 0
			local UICorner54 = Instance.new("UICorner", Frame54)
			UICorner54.CornerRadius = UDim.new(0, 5)
			local Frame55 = Instance.new("Frame", Frame54)
			Frame55.Size = UDim2.new(1, 0, 0.5, 0)
			Frame55.Position = UDim2.new(0, 0, 0.5, 0)
			Frame55.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
			Frame55.BorderSizePixel = 0
			local Frame56 = Instance.new("Frame", MainBox)
			Frame56.Size = UDim2.new(1, 0, 0, 14)
			Frame56.Position = UDim2.new(0, 0, 0, 3)
			Frame56.BackgroundTransparency = 1
			Frame56.Active = true
			local TextLabel103 = Instance.new("TextLabel", Frame56)
			TextLabel103.Size = UDim2.new(1, -18, 1, 0)
			TextLabel103.BackgroundTransparency = 1
			TextLabel103.Font = Enum.Font.GothamBold
			TextLabel103.Text = "Killer Perks"
			TextLabel103.TextColor3 = Color3.fromRGB(230, 230, 230)
			TextLabel103.TextSize = 9
			TextLabel103.TextXAlignment = Enum.TextXAlignment.Center
			TextLabel103.Parent = Frame56
			local TextButton2 = Instance.new("TextButton", Frame56)
			TextButton2.Size = UDim2.new(0, 14, 0, 14)
			TextButton2.Position = UDim2.new(1, -15, 0, 0)
			TextButton2.BackgroundTransparency = 1
			TextButton2.Text = "−"
			TextButton2.TextColor3 = Color3.fromRGB(180, 180, 180)
			TextButton2.Font = Enum.Font.GothamBold
			TextButton2.TextSize = 11
			TextButton2.AutoButtonColor = false
			TextButton2.Parent = Frame56
			local Frame57 = Instance.new("Frame", MainBox)
			Frame57.Size = UDim2.new(1, -10, 0, 1)
			Frame57.Position = UDim2.new(0, 5, 0, 18)
			Frame57.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
			Frame57.BorderSizePixel = 0
			local TabBar = Instance.new("Frame", MainBox)
			TabBar.Name = "TabBar"
			TabBar.Size = UDim2.new(1, -10, 0, 16)
			TabBar.Position = UDim2.new(0, 5, 0, 21)
			TabBar.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
			TabBar.BorderSizePixel = 0
			local UICorner55 = Instance.new("UICorner", TabBar)
			UICorner55.CornerRadius = UDim.new(0, 3)
			local UIListLayout = Instance.new("UIListLayout", TabBar)
			UIListLayout.FillDirection = Enum.FillDirection.Horizontal
			UIListLayout.Padding = UDim.new(0, 2)
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
			local PageContainer = Instance.new("Frame", MainBox)
			PageContainer.Name = "PageContainer"
			PageContainer.Size = UDim2.new(1, -10, 1, -60)
			PageContainer.Position = UDim2.new(0, 5, 0, 40)
			PageContainer.BackgroundTransparency = 1
			PageContainer.ClipsDescendants = true
			local PagePerks = Instance.new("Frame", PageContainer)
			PagePerks.Name = "PagePerks"
			PagePerks.Size = UDim2.new(1, 0, 1, 0)
			PagePerks.BackgroundTransparency = 1
			local UIListLayout2 = Instance.new("UIListLayout", PagePerks)
			UIListLayout2.Padding = UDim.new(0, 2)
			UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
			local PageInfo = Instance.new("Frame", PageContainer)
			PageInfo.Name = "PageInfo"
			PageInfo.Size = UDim2.new(1, 0, 1, 0)
			PageInfo.BackgroundTransparency = 1
			PageInfo.Visible = false
			local UIListLayout3 = Instance.new("UIListLayout", PageInfo)
			UIListLayout3.Padding = UDim.new(0, 2)
			UIListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
			local TextLabel104 = Instance.new("TextLabel", PageInfo)
			TextLabel104.Size = UDim2.new(1, 0, 0, 12)
			TextLabel104.BackgroundTransparency = 1
			TextLabel104.Font = Enum.Font.GothamBold
			TextLabel104.Text = "Killer: ???"
			TextLabel104.TextColor3 = Color3.fromRGB(255, 100, 100)
			TextLabel104.TextSize = 9
			TextLabel104.TextXAlignment = Enum.TextXAlignment.Center
			TextLabel104.LayoutOrder = 1
			local TextLabel105 = Instance.new("TextLabel", PageInfo)
			TextLabel105.Size = UDim2.new(1, 0, 0, 11)
			TextLabel105.BackgroundTransparency = 1
			TextLabel105.Font = Enum.Font.Gotham
			TextLabel105.Text = "Perks: 0"
			TextLabel105.TextColor3 = Color3.fromRGB(200, 200, 210)
			TextLabel105.TextSize = 9
			TextLabel105.TextXAlignment = Enum.TextXAlignment.Center
			TextLabel105.LayoutOrder = 2
			local TextLabel106 = Instance.new("TextLabel", PageInfo)
			TextLabel106.Size = UDim2.new(1, 0, 0, 11)
			TextLabel106.BackgroundTransparency = 1
			TextLabel106.Font = Enum.Font.Gotham
			TextLabel106.Text = "Status: Scanning..."
			TextLabel106.TextColor3 = Color3.fromRGB(150, 150, 160)
			TextLabel106.TextSize = 9
			TextLabel106.TextXAlignment = Enum.TextXAlignment.Center
			TextLabel106.LayoutOrder = 3
			local TextButton3 = Instance.new("TextButton")
			TextButton3.Size = UDim2.new(0.5, -2, 1, -3)
			TextButton3.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			TextButton3.BorderSizePixel = 0
			TextButton3.Text = "Perks"
			TextButton3.TextColor3 = Color3.fromRGB(180, 180, 180)
			TextButton3.Font = Enum.Font.GothamBold
			TextButton3.TextSize = 8
			TextButton3.AutoButtonColor = false
			TextButton3.LayoutOrder = 1
			TextButton3.Parent = TabBar
			local UICorner56 = Instance.new("UICorner", TextButton3)
			UICorner56.CornerRadius = UDim.new(0, 2)
			local TextButton4 = Instance.new("TextButton")
			TextButton4.Size = UDim2.new(0.5, -2, 1, -3)
			TextButton4.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			TextButton4.BorderSizePixel = 0
			TextButton4.Text = "Info"
			TextButton4.TextColor3 = Color3.fromRGB(180, 180, 180)
			TextButton4.Font = Enum.Font.GothamBold
			TextButton4.TextSize = 8
			TextButton4.AutoButtonColor = false
			TextButton4.LayoutOrder = 2
			TextButton4.Parent = TabBar
			local UICorner57 = Instance.new("UICorner", TextButton4)
			UICorner57.CornerRadius = UDim.new(0, 2)

			TextButton3.MouseButton1Click:Connect(function()
				TextButton3.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
				TextButton3.TextColor3 = Color3.fromRGB(255, 255, 255)
				PagePerks.Visible = true
				TextButton4.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
				TextButton4.TextColor3 = Color3.fromRGB(180, 180, 180)
				PageInfo.Visible = false
			end)

			TextButton4.MouseButton1Click:Connect(function()
				TextButton3.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
				TextButton3.TextColor3 = Color3.fromRGB(180, 180, 180)
				PagePerks.Visible = false
				TextButton4.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
				TextButton4.TextColor3 = Color3.fromRGB(255, 255, 255)
				PageInfo.Visible = true
			end)

			TextButton3.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
			TextButton3.TextColor3 = Color3.fromRGB(255, 255, 255)
			PagePerks.Visible = true
			TextButton4.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			TextButton4.TextColor3 = Color3.fromRGB(180, 180, 180)
			PageInfo.Visible = false

			TextButton2.MouseButton1Click:Connect(function()
				MainBox.Size = UDim2.new(0, 160, 0, 20)
				Frame57.Visible = false
				TabBar.Visible = false
				PageContainer.Visible = false
				TextButton2.Text = "+"
			end)

			MainBox.InputBegan:Connect(function(input6, gameProcessed6)
			end)

			UserInputService.InputChanged:Connect(function(input7, gameProcessed7)
			end)

			UserInputService.InputEnded:Connect(function(input8, gameProcessed8)
			end)

			MainBox.Size = UDim2.new(0, 160, 0, 100)
			Frame57.Visible = true
			TabBar.Visible = true
			PageContainer.Visible = true
			TextButton2.Text = "−"

			task.spawn(function()
				local players5 = Players:GetPlayers()

				for i7, v12 in ipairs(players5) do
				end

				TextLabel104.Text = "Killer: Unknown"
				TextLabel105.Text = "Perks: 0"
				TextLabel106.Text = "Status: Scanning..."
				TextLabel106.TextColor3 = Color3.fromRGB(150, 150, 160)
				local TextLabel107 = Instance.new("TextLabel")
				TextLabel107.Size = UDim2.new(1, 0, 0, 11)
				TextLabel107.BackgroundTransparency = 1
				TextLabel107.Font = Enum.Font.GothamMedium
				TextLabel107.TextColor3 = Color3.fromRGB(140, 140, 150)
				TextLabel107.TextSize = 9
				TextLabel107.TextXAlignment = Enum.TextXAlignment.Left
				TextLabel107.Parent = PagePerks
				TextLabel107.Text = "Waiting for perks..."
				TextLabel107.Visible = true
				task.wait(1)
				local players6 = Players:GetPlayers()

				for i8, v13 in ipairs(players6) do
				end

				TextLabel104.Text = "Killer: Unknown"
				TextLabel105.Text = "Perks: 0"
				TextLabel106.Text = "Status: Scanning..."
				TextLabel106.TextColor3 = Color3.fromRGB(150, 150, 160)
				TextLabel107.Visible = false
				TextLabel107.Text = "Waiting for perks..."
				TextLabel107.Visible = true
				task.wait(1)
				-- [envlog] the statements above repeat forever (loop)
			end)
		else
			KillerPerksUI:Destroy()
		end
	end
})

Section3:AddToggle({
	Title = "Spectator Counter",
	Default = false,
	Callback = function(state)
		if state then
			local SpectatorCounter = Instance.new("ScreenGui")
			SpectatorCounter.Name = "SpectatorCounter"
			SpectatorCounter.ResetOnSpawn = false
			SpectatorCounter.IgnoreGuiInset = true
			SpectatorCounter.Parent = CoreGui
			local MainBox2 = Instance.new("Frame", SpectatorCounter)
			MainBox2.Name = "MainBox"
			MainBox2.AnchorPoint = Vector2.new(0.5, 0)
			MainBox2.Position = UDim2.new(0.61, 0, 0.01, 0)
			MainBox2.Size = UDim2.new(0, 145, 0, 52)
			MainBox2.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
			MainBox2.BackgroundTransparency = 0.1
			MainBox2.BorderSizePixel = 0
			MainBox2.Active = true
			local UICorner58 = Instance.new("UICorner", MainBox2)
			UICorner58.CornerRadius = UDim.new(0, 6)
			local TopBar = Instance.new("Frame", MainBox2)
			TopBar.Name = "TopBar"
			TopBar.Size = UDim2.new(1, 0, 0, 4)
			TopBar.Position = UDim2.new(0, 0, 0, 0)
			TopBar.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
			TopBar.BorderSizePixel = 0
			local UICorner59 = Instance.new("UICorner", TopBar)
			UICorner59.CornerRadius = UDim.new(0, 6)
			local Frame64 = Instance.new("Frame", TopBar)
			Frame64.Size = UDim2.new(1, 0, 0.5, 0)
			Frame64.Position = UDim2.new(0, 0, 0.5, 0)
			Frame64.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
			Frame64.BorderSizePixel = 0
			local Header = Instance.new("Frame", MainBox2)
			Header.Name = "Header"
			Header.Size = UDim2.new(1, 0, 0, 18)
			Header.Position = UDim2.new(0, 0, 0, 4)
			Header.BackgroundTransparency = 1
			Header.Active = true
			local Title2 = Instance.new("TextLabel", Header)
			Title2.Name = "Title"
			Title2.Size = UDim2.new(1, -20, 1, 0)
			Title2.Position = UDim2.new(0, 0, 0, 0)
			Title2.BackgroundTransparency = 1
			Title2.Font = Enum.Font.GothamBold
			Title2.Text = "Spectators"
			Title2.TextColor3 = Color3.fromRGB(230, 230, 230)
			Title2.TextSize = 10
			Title2.TextXAlignment = Enum.TextXAlignment.Center
			Title2.Parent = Header
			local MinimizeBtn = Instance.new("TextButton", Header)
			MinimizeBtn.Name = "MinimizeBtn"
			MinimizeBtn.Size = UDim2.new(0, 18, 0, 18)
			MinimizeBtn.Position = UDim2.new(1, -19, 0, 0)
			MinimizeBtn.BackgroundTransparency = 1
			MinimizeBtn.Text = "−"
			MinimizeBtn.TextColor3 = Color3.fromRGB(180, 180, 180)
			MinimizeBtn.Font = Enum.Font.GothamBold
			MinimizeBtn.TextSize = 13
			MinimizeBtn.AutoButtonColor = false
			MinimizeBtn.Parent = Header
			local Divider = Instance.new("Frame", MainBox2)
			Divider.Name = "Divider"
			Divider.Size = UDim2.new(1, -12, 0, 1)
			Divider.Position = UDim2.new(0, 6, 0, 23)
			Divider.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
			Divider.BorderSizePixel = 0
			local Body = Instance.new("Frame", MainBox2)
			Body.Name = "Body"
			Body.Size = UDim2.new(1, 0, 1, -25)
			Body.Position = UDim2.new(0, 0, 0, 25)
			Body.BackgroundTransparency = 1
			Body.ClipsDescendants = true
			local UIListLayout4 = Instance.new("UIListLayout", Body)
			UIListLayout4.FillDirection = Enum.FillDirection.Horizontal
			UIListLayout4.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout4.VerticalAlignment = Enum.VerticalAlignment.Center
			UIListLayout4.Padding = UDim.new(0, 5)
			local EyeIcon = Instance.new("ImageLabel", Body)
			EyeIcon.Name = "EyeIcon"
			EyeIcon.Size = UDim2.new(0, 13, 0, 13)
			EyeIcon.BackgroundTransparency = 1
			EyeIcon.Image = "rbxassetid://13321848320"
			EyeIcon.ImageColor3 = Color3.fromRGB(255, 255, 255)
			EyeIcon.LayoutOrder = 1
			local CountLabel = Instance.new("TextLabel", Body)
			CountLabel.Name = "CountLabel"
			CountLabel.BackgroundTransparency = 1
			CountLabel.Font = Enum.Font.GothamMedium
			CountLabel.Text = "No spectators"
			CountLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
			CountLabel.TextSize = 10
			CountLabel.AutomaticSize = Enum.AutomaticSize.X
			CountLabel.LayoutOrder = 2

			MinimizeBtn.MouseButton1Click:Connect(function()
				MainBox2.Size = UDim2.new(0, 145, 0, 22)
				Divider.Visible = false
				Body.Visible = false
				MinimizeBtn.Text = "+"
			end)

			MainBox2.Size = UDim2.new(0, 145, 0, 52)
			Divider.Visible = true
			Body.Visible = true
			MinimizeBtn.Text = "−"

			MainBox2.InputBegan:Connect(function(input9, gameProcessed9)
			end)

			UserInputService.InputChanged:Connect(function(input10, gameProcessed10)
			end)

			UserInputService.InputEnded:Connect(function(input11, gameProcessed11)
			end)

			local players7 = Players:GetPlayers()

			for i10, v15 in ipairs(players7) do
			end

			CountLabel.Text = "No spectators"
			CountLabel.TextColor3 = Color3.fromRGB(150, 150, 160)

			local thread3 = task.spawn(function()
				local players8 = Players:GetPlayers()

				for i11, v16 in ipairs(players8) do
				end

				CountLabel.Text = "No spectators"
				CountLabel.TextColor3 = Color3.fromRGB(150, 150, 160)
				task.wait(1.2)
				local players9 = Players:GetPlayers()

				for i12, v17 in ipairs(players9) do
				end

				CountLabel.Text = "No spectators"
				CountLabel.TextColor3 = Color3.fromRGB(150, 150, 160)
				task.wait(1.2)
				-- [envlog] the statements above repeat forever (loop)
			end)
		else
			task.cancel(thread3)
			SpectatorCounter:Destroy()
		end
	end
})

local Section4 = Tab2:AddSection("Otomatis Parry")

Section4:AddParagraph({
	Title = "PENTING!",
	Content = "Wajib dimatikan saat di loby dan dinyalakan lagi waktu awal ingame"
})

Section4:AddToggle({
	Title = "Otomatis Parry",
	Content = "Otomatis parry serangan killer",
	Default = false,
	Callback = function()
	end
})

Section4:AddToggle({
	Title = "Show Parry Circle",
	Content = "Tidak Tampilkan lingkaran parry (visual)",
	Default = true,
	Callback = function()
	end
})

local Section5 = Tab2:AddSection("Auto Parry")

task.spawn(function(...)
	local Remotes2 = ReplicatedStorage:WaitForChild("Remotes", 5)
	local Items2 = Remotes2:WaitForChild("Items", 5)
	local ParryingDagger2 = Items2:WaitForChild("Parrying Dagger", 5)
	local lastRemotes2 = ParryingDagger2:WaitForChild("parryResult", 5)

	lastRemotes2.OnClientEvent:Connect(function()
		task.cancel(thread19)

		task.delay(60, function()
		end)
	end)
end)

local players10 = Players:GetPlayers()

for k6, v19 in pairs(players10) do
	v19.CharacterAdded:Connect(function(character10)
	end)

	local changedSignal2 = v19:GetPropertyChangedSignal("Team")

	changedSignal2:Connect(function()
	end)
end

Players.PlayerAdded:Connect(function(player2)
	player2.CharacterAdded:Connect(function(character34)
	end)

	local changedSignal34 = player2:GetPropertyChangedSignal("Team")

	changedSignal34:Connect(function()
	end)
end)

task.spawn(function()
	task.wait(5)
	local players11 = Players:GetPlayers()

	for k7, v20 in pairs(players11) do
	end

	task.wait(5)
	-- [envlog] the statements above repeat forever (loop)
end)

RunService.Heartbeat:Connect(function(deltaTime4)
	Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
end)

task.spawn(function()
	task.wait(1.5)
	local AutoParryCustomGui = Instance.new("ScreenGui")
	AutoParryCustomGui.Name = "AutoParryCustomGui"
	AutoParryCustomGui.ResetOnSpawn = false
	AutoParryCustomGui.IgnoreGuiInset = true
	AutoParryCustomGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	AutoParryCustomGui.Parent = CoreGui
	AutoParryCustomGui.Enabled = false
	local Frame = Instance.new("Frame")
	Frame.Name = "Frame"
	Frame.Parent = AutoParryCustomGui
	Frame.Size = UDim2.fromOffset(110, 36)
	Frame.Position = UDim2.fromScale(0.85, 0.35)
	Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
	Frame.BackgroundTransparency = 0.1
	Frame.Active = true
	Frame.BorderSizePixel = 0
	local UICorner60 = Instance.new("UICorner", Frame)
	UICorner60.CornerRadius = UDim.new(0, 8)
	local UIStroke75 = Instance.new("UIStroke")
	UIStroke75.Name = "UIStroke"
	UIStroke75.Parent = Frame
	UIStroke75.Color = Color3.fromRGB(90, 90, 95)
	UIStroke75.Thickness = 1.5
	UIStroke75.Transparency = 0.2
	local ActionButton = Instance.new("TextButton")
	ActionButton.Name = "ActionButton"
	ActionButton.Size = UDim2.new(1, 0, 1, 0)
	ActionButton.Text = "PARRY [OFF]"
	ActionButton.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
	ActionButton.Font = Enum.Font.GothamBold
	ActionButton.TextSize = 12
	ActionButton.TextColor3 = Color3.fromRGB(200, 200, 200)
	ActionButton.BorderSizePixel = 0
	ActionButton.AutoButtonColor = false
	ActionButton.Parent = Frame
	local UICorner61 = Instance.new("UICorner", ActionButton)
	UICorner61.CornerRadius = UDim.new(0, 8)

	ActionButton.InputBegan:Connect(function(input12, gameProcessed12)
	end)

	ActionButton.InputEnded:Connect(function(input13, gameProcessed13)
	end)

	UserInputService.InputChanged:Connect(function(input14, gameProcessed14)
	end)

	RunService.Heartbeat:Connect(function(deltaTime5)
	end)
end)

Section5:AddParagraph({
	Title = "⚠️ PENTING",
	Content = "Wajib dimatikan saat di lobby dan dinyalakan lagi saat ingame, Jika tidak mengalami crash WAJIB MENYALAKAB SKIP ENDSCREEN."
})

Section5:AddToggle({
	Title = "Auto Parry",
	Content = "Parry saat killer menyerang",
	Default = false,
	Keybind = true,
	Callback = function()
	end
})

for _, item in ipairs({
	{ title = "Radius Parry", content = "Visual radius parry" },
	{ title = "Mode Agresif", content = "Parry tanpa peduli arah" },
	{ title = "Safety Parry", content = "Cegah parry saat sedang sibuk (vault, repair, dll)" },
}) do
	Section5:AddToggle({
		Title = item.title,
		Content = item.content,
		Default = false,
		Callback = function()
		end
	})
end

Section5:AddInput({
	Title = "Radius Parry (studs)",
	Default = "6",
	Placeholder = "Write ur input here...",
	Callback = function()
	end
})

Section5:AddInput({
	Title = "Sensivitas Arah Hadap Killer (studs)",
	Default = "10",
	Placeholder = "Write ur input here...",
	Callback = function()
	end
})

Section5:AddDropdown({
	Title = "Abaikan Skill",
	Default = "",
	Multi = true,
	Options = { "Hidden S1", "Abyssal S1" },
	Callback = function(arg71)
		for k9, v22 in pairs(arg71) do
		end
	end
})

UserInputService.InputBegan:Connect(function(input15, gameProcessed15)
end)

Section5:AddToggle({
	Title = "Enable Fake Parry",
	Content = "Pura-pura parry (animasi saja)",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			local FakeParryGui = Instance.new("ScreenGui")
			FakeParryGui.Name = "FakeParryGui"
			FakeParryGui.ResetOnSpawn = false
			FakeParryGui.IgnoreGuiInset = true
			FakeParryGui.Parent = CoreGui
			local FakeParryButton = Instance.new("TextButton")
			FakeParryButton.Name = "FakeParryButton"
			FakeParryButton.Size = UDim2.fromOffset(120, 40)
			FakeParryButton.Position = UDim2.new(0.9, 0, 0.28, 0)
			FakeParryButton.AnchorPoint = Vector2.new(0.5, 0.5)
			FakeParryButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			FakeParryButton.BorderSizePixel = 0
			FakeParryButton.Text = "FAKE PARRY"
			FakeParryButton.TextColor3 = Color3.fromRGB(230, 230, 230)
			FakeParryButton.Font = Enum.Font.GothamBold
			FakeParryButton.TextSize = 13
			FakeParryButton.AutoButtonColor = false
			FakeParryButton.Parent = FakeParryGui
			local UICorner62 = Instance.new("UICorner", FakeParryButton)
			UICorner62.CornerRadius = UDim.new(0, 10)
			local UIStroke61 = Instance.new("UIStroke", FakeParryButton)
			UIStroke61.Color = Color3.fromRGB(130, 130, 130)
			UIStroke61.Thickness = 1.5
			UIStroke61.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			local UIStroke62 = FakeParryButton:FindFirstChildOfClass("UIStroke")
			FakeParryButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			FakeParryButton.TextColor3 = Color3.fromRGB(80, 170, 255)
			UIStroke62.Color = Color3.fromRGB(50, 150, 255)
			UIStroke62.Thickness = 1.8

			FakeParryButton.InputBegan:Connect(function(input16, gameProcessed16)
			end)

			FakeParryButton.InputChanged:Connect(function(input17, gameProcessed17)
			end)

			FakeParryButton.InputEnded:Connect(function(input18, gameProcessed18)
			end)

			local FakeParryAnimGui = Instance.new("ScreenGui")
			FakeParryAnimGui.Name = "FakeParryAnimGui"
			FakeParryAnimGui.ResetOnSpawn = false
			FakeParryAnimGui.IgnoreGuiInset = true
			FakeParryAnimGui.Parent = CoreGui
			local MainBox3 = Instance.new("Frame")
			MainBox3.Name = "MainBox"
			MainBox3.AnchorPoint = Vector2.new(0.5, 0)
			MainBox3.Position = UDim2.new(0.5, 0, 0.28, 0)
			MainBox3.Size = UDim2.new(0, 145, 0, 128)
			MainBox3.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
			MainBox3.BackgroundTransparency = 0.1
			MainBox3.BorderSizePixel = 0
			MainBox3.Active = true
			MainBox3.Parent = FakeParryAnimGui
			local UICorner63 = Instance.new("UICorner", MainBox3)
			UICorner63.CornerRadius = UDim.new(0, 5)
			local Frame70 = Instance.new("Frame", MainBox3)
			Frame70.Size = UDim2.new(1, 0, 0, 3)
			Frame70.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
			Frame70.BorderSizePixel = 0
			local UICorner64 = Instance.new("UICorner", Frame70)
			UICorner64.CornerRadius = UDim.new(0, 5)
			local Frame71 = Instance.new("Frame", Frame70)
			Frame71.Size = UDim2.new(1, 0, 0.5, 0)
			Frame71.Position = UDim2.new(0, 0, 0.5, 0)
			Frame71.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
			Frame71.BorderSizePixel = 0
			local Frame72 = Instance.new("Frame", MainBox3)
			Frame72.Size = UDim2.new(1, 0, 0, 14)
			Frame72.Position = UDim2.new(0, 0, 0, 3)
			Frame72.BackgroundTransparency = 1
			Frame72.Active = true
			local TextLabel110 = Instance.new("TextLabel", Frame72)
			TextLabel110.Size = UDim2.new(1, -18, 1, 0)
			TextLabel110.BackgroundTransparency = 1
			TextLabel110.Font = Enum.Font.GothamBold
			TextLabel110.Text = "Fake Parry"
			TextLabel110.TextColor3 = Color3.fromRGB(230, 230, 230)
			TextLabel110.TextSize = 9
			TextLabel110.TextXAlignment = Enum.TextXAlignment.Center
			TextLabel110.Parent = Frame72
			local TextButton8 = Instance.new("TextButton", Frame72)
			TextButton8.Size = UDim2.new(0, 14, 0, 14)
			TextButton8.Position = UDim2.new(0, 90, 0, 0, 0, 0)
			TextButton8.BackgroundTransparency = 1
			TextButton8.Text = "−"
			TextButton8.TextColor3 = Color3.fromRGB(180, 180, 180)
			TextButton8.Font = Enum.Font.GothamBold
			TextButton8.TextSize = 11
			TextButton8.AutoButtonColor = false
			TextButton8.Parent = Frame72
			local Frame73 = Instance.new("Frame", MainBox3)
			Frame73.Size = UDim2.new(1, -10, 0, 1)
			Frame73.Position = UDim2.new(0, 5, 0, 18)
			Frame73.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
			Frame73.BorderSizePixel = 0
			local TabBar2 = Instance.new("Frame", MainBox3)
			TabBar2.Name = "TabBar"
			TabBar2.Size = UDim2.new(1, -10, 0, 16)
			TabBar2.Position = UDim2.new(0, 5, 0, 21)
			TabBar2.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
			TabBar2.BorderSizePixel = 0
			local UICorner65 = Instance.new("UICorner", TabBar2)
			UICorner65.CornerRadius = UDim.new(0, 3)
			local UIListLayout5 = Instance.new("UIListLayout", TabBar2)
			UIListLayout5.FillDirection = Enum.FillDirection.Horizontal
			UIListLayout5.Padding = UDim.new(0, 2)
			UIListLayout5.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout5.VerticalAlignment = Enum.VerticalAlignment.Center
			local PageContainer2 = Instance.new("Frame", MainBox3)
			PageContainer2.Name = "PageContainer"
			PageContainer2.Size = UDim2.new(1, -10, 1, -60)
			PageContainer2.Position = UDim2.new(0, 5, 0, 40)
			PageContainer2.BackgroundTransparency = 1
			PageContainer2.ClipsDescendants = true
			local PageAnim = Instance.new("Frame", PageContainer2)
			PageAnim.Name = "PageAnim"
			PageAnim.Size = UDim2.new(1, 0, 1, 0)
			PageAnim.BackgroundTransparency = 1
			local UIListLayout6 = Instance.new("UIListLayout", PageAnim)
			UIListLayout6.Padding = UDim.new(0, 2)
			UIListLayout6.SortOrder = Enum.SortOrder.LayoutOrder
			local Item_Enten = Instance.new("TextButton")
			Item_Enten.Name = "Item_Enten"
			Item_Enten:SetAttribute("AnimName", "Enten")
			Item_Enten.Size = UDim2.new(1, 0, 0, 16)
			Item_Enten.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			Item_Enten.BorderSizePixel = 0
			Item_Enten.Text = "Enten"
			Item_Enten.TextColor3 = Color3.fromRGB(200, 200, 200)
			Item_Enten.Font = Enum.Font.Gotham
			Item_Enten.TextSize = 9
			Item_Enten.AutoButtonColor = false
			Item_Enten.LayoutOrder = 1
			Item_Enten.Parent = PageAnim
			local UICorner66 = Instance.new("UICorner", Item_Enten)
			UICorner66.CornerRadius = UDim.new(0, 3)

			Item_Enten.MouseEnter:Connect(function()
			end)

			Item_Enten.MouseLeave:Connect(function()
			end)

			Item_Enten.MouseButton1Click:Connect(function()
				Item_Enten:GetAttribute("AnimName")
				Item_Enten.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
				Item_Enten.TextColor3 = Color3.fromRGB(200, 200, 200)
				Item_Enten.Font = Enum.Font.Gotham
				Item_Stopwatch:GetAttribute("AnimName")
				Item_Stopwatch.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
				Item_Stopwatch.TextColor3 = Color3.fromRGB(200, 200, 200)
				Item_Stopwatch.Font = Enum.Font.Gotham
				Item_Fih:GetAttribute("AnimName")
				Item_Fih.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
				Item_Fih.TextColor3 = Color3.fromRGB(200, 200, 200)
				Item_Fih.Font = Enum.Font.Gotham
				Item_BloodShield:GetAttribute("AnimName")
				Item_BloodShield.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
				Item_BloodShield.TextColor3 = Color3.fromRGB(200, 200, 200)
				Item_BloodShield.Font = Enum.Font.Gotham
				TextLabel111.Text = "Selected: Enten"
			end)

			local Item_Stopwatch = Instance.new("TextButton")
			Item_Stopwatch.Name = "Item_Stopwatch"
			Item_Stopwatch:SetAttribute("AnimName", "Stopwatch")
			Item_Stopwatch.Size = UDim2.new(1, 0, 0, 16)
			Item_Stopwatch.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			Item_Stopwatch.BorderSizePixel = 0
			Item_Stopwatch.Text = "Stopwatch"
			Item_Stopwatch.TextColor3 = Color3.fromRGB(200, 200, 200)
			Item_Stopwatch.Font = Enum.Font.Gotham
			Item_Stopwatch.TextSize = 9
			Item_Stopwatch.AutoButtonColor = false
			Item_Stopwatch.LayoutOrder = 2
			Item_Stopwatch.Parent = PageAnim
			local UICorner67 = Instance.new("UICorner", Item_Stopwatch)
			UICorner67.CornerRadius = UDim.new(0, 3)

			Item_Stopwatch.MouseEnter:Connect(function()
				Item_Stopwatch.BackgroundColor3 = Color3.fromRGB(50, 50, 55)
			end)

			Item_Stopwatch.MouseLeave:Connect(function()
				Item_Stopwatch.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			end)

			Item_Stopwatch.MouseButton1Click:Connect(function()
				Item_Enten:GetAttribute("AnimName")
				Item_Enten.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
				Item_Enten.TextColor3 = Color3.fromRGB(200, 200, 200)
				Item_Enten.Font = Enum.Font.Gotham
				Item_Stopwatch:GetAttribute("AnimName")
				Item_Stopwatch.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
				Item_Stopwatch.TextColor3 = Color3.fromRGB(200, 200, 200)
				Item_Stopwatch.Font = Enum.Font.Gotham
				Item_Fih:GetAttribute("AnimName")
				Item_Fih.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
				Item_Fih.TextColor3 = Color3.fromRGB(200, 200, 200)
				Item_Fih.Font = Enum.Font.Gotham
				Item_BloodShield:GetAttribute("AnimName")
				Item_BloodShield.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
				Item_BloodShield.TextColor3 = Color3.fromRGB(200, 200, 200)
				Item_BloodShield.Font = Enum.Font.Gotham
				TextLabel111.Text = "Selected: Stopwatch"
			end)

			local Item_Fih = Instance.new("TextButton")
			Item_Fih.Name = "Item_Fih"
			Item_Fih:SetAttribute("AnimName", "Fih")
			Item_Fih.Size = UDim2.new(1, 0, 0, 16)
			Item_Fih.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			Item_Fih.BorderSizePixel = 0
			Item_Fih.Text = "Fih"
			Item_Fih.TextColor3 = Color3.fromRGB(200, 200, 200)
			Item_Fih.Font = Enum.Font.Gotham
			Item_Fih.TextSize = 9
			Item_Fih.AutoButtonColor = false
			Item_Fih.LayoutOrder = 3
			Item_Fih.Parent = PageAnim
			local UICorner68 = Instance.new("UICorner", Item_Fih)
			UICorner68.CornerRadius = UDim.new(0, 3)

			Item_Fih.MouseEnter:Connect(function()
				Item_Fih.BackgroundColor3 = Color3.fromRGB(50, 50, 55)
			end)

			Item_Fih.MouseLeave:Connect(function()
				Item_Fih.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			end)

			Item_Fih.MouseButton1Click:Connect(function()
				Item_Enten:GetAttribute("AnimName")
				Item_Enten.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
				Item_Enten.TextColor3 = Color3.fromRGB(200, 200, 200)
				Item_Enten.Font = Enum.Font.Gotham
				Item_Stopwatch:GetAttribute("AnimName")
				Item_Stopwatch.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
				Item_Stopwatch.TextColor3 = Color3.fromRGB(200, 200, 200)
				Item_Stopwatch.Font = Enum.Font.Gotham
				Item_Fih:GetAttribute("AnimName")
				Item_Fih.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
				Item_Fih.TextColor3 = Color3.fromRGB(200, 200, 200)
				Item_Fih.Font = Enum.Font.Gotham
				Item_BloodShield:GetAttribute("AnimName")
				Item_BloodShield.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
				Item_BloodShield.TextColor3 = Color3.fromRGB(200, 200, 200)
				Item_BloodShield.Font = Enum.Font.Gotham
				TextLabel111.Text = "Selected: Fih"
			end)

			local Item_BloodShield = Instance.new("TextButton")
			Item_BloodShield.Name = "Item_BloodShield"
			Item_BloodShield:SetAttribute("AnimName", "BloodShield")
			Item_BloodShield.Size = UDim2.new(1, 0, 0, 16)
			Item_BloodShield.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			Item_BloodShield.BorderSizePixel = 0
			Item_BloodShield.Text = "BloodShield"
			Item_BloodShield.TextColor3 = Color3.fromRGB(200, 200, 200)
			Item_BloodShield.Font = Enum.Font.Gotham
			Item_BloodShield.TextSize = 9
			Item_BloodShield.AutoButtonColor = false
			Item_BloodShield.LayoutOrder = 4
			Item_BloodShield.Parent = PageAnim
			local UICorner69 = Instance.new("UICorner", Item_BloodShield)
			UICorner69.CornerRadius = UDim.new(0, 3)

			Item_BloodShield.MouseEnter:Connect(function()
				Item_BloodShield.BackgroundColor3 = Color3.fromRGB(50, 50, 55)
			end)

			Item_BloodShield.MouseLeave:Connect(function()
				Item_BloodShield.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			end)

			Item_BloodShield.MouseButton1Click:Connect(function()
				Item_Enten:GetAttribute("AnimName")
				Item_Enten.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
				Item_Enten.TextColor3 = Color3.fromRGB(200, 200, 200)
				Item_Enten.Font = Enum.Font.Gotham
				Item_Stopwatch:GetAttribute("AnimName")
				Item_Stopwatch.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
				Item_Stopwatch.TextColor3 = Color3.fromRGB(200, 200, 200)
				Item_Stopwatch.Font = Enum.Font.Gotham
				Item_Fih:GetAttribute("AnimName")
				Item_Fih.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
				Item_Fih.TextColor3 = Color3.fromRGB(200, 200, 200)
				Item_Fih.Font = Enum.Font.Gotham
				Item_BloodShield:GetAttribute("AnimName")
				Item_BloodShield.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
				Item_BloodShield.TextColor3 = Color3.fromRGB(200, 200, 200)
				Item_BloodShield.Font = Enum.Font.Gotham
				TextLabel111.Text = "Selected: BloodShield"
			end)

			Item_Enten:GetAttribute("AnimName")
			Item_Enten.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			Item_Enten.TextColor3 = Color3.fromRGB(200, 200, 200)
			Item_Enten.Font = Enum.Font.Gotham
			Item_Stopwatch:GetAttribute("AnimName")
			Item_Stopwatch.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			Item_Stopwatch.TextColor3 = Color3.fromRGB(200, 200, 200)
			Item_Stopwatch.Font = Enum.Font.Gotham
			Item_Fih:GetAttribute("AnimName")
			Item_Fih.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			Item_Fih.TextColor3 = Color3.fromRGB(200, 200, 200)
			Item_Fih.Font = Enum.Font.Gotham
			Item_BloodShield:GetAttribute("AnimName")
			Item_BloodShield.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			Item_BloodShield.TextColor3 = Color3.fromRGB(200, 200, 200)
			Item_BloodShield.Font = Enum.Font.Gotham
			local PageInfo2 = Instance.new("Frame", PageContainer2)
			PageInfo2.Name = "PageInfo"
			PageInfo2.Size = UDim2.new(1, 0, 1, 0)
			PageInfo2.BackgroundTransparency = 1
			PageInfo2.Visible = false
			local UIListLayout7 = Instance.new("UIListLayout", PageInfo2)
			UIListLayout7.Padding = UDim.new(0, 3)
			UIListLayout7.SortOrder = Enum.SortOrder.LayoutOrder
			local TextLabel111 = Instance.new("TextLabel", PageInfo2)
			TextLabel111.Size = UDim2.new(1, 0, 0, 12)
			TextLabel111.BackgroundTransparency = 1
			TextLabel111.Font = Enum.Font.GothamBold
			TextLabel111.Text = "Selected: Enten"
			TextLabel111.TextColor3 = Color3.fromRGB(120, 180, 255)
			TextLabel111.TextSize = 9
			TextLabel111.TextXAlignment = Enum.TextXAlignment.Center
			TextLabel111.LayoutOrder = 1
			local TextLabel112 = Instance.new("TextLabel", PageInfo2)
			TextLabel112.Size = UDim2.new(1, 0, 0, 11)
			TextLabel112.BackgroundTransparency = 1
			TextLabel112.Font = Enum.Font.Gotham
			TextLabel112.Text = "Keybind: G"
			TextLabel112.TextColor3 = Color3.fromRGB(200, 200, 210)
			TextLabel112.TextSize = 9
			TextLabel112.TextXAlignment = Enum.TextXAlignment.Center
			TextLabel112.LayoutOrder = 2
			local TextLabel113 = Instance.new("TextLabel", PageInfo2)
			TextLabel113.Size = UDim2.new(1, 0, 0, 11)
			TextLabel113.BackgroundTransparency = 1
			TextLabel113.Font = Enum.Font.Gotham
			TextLabel113.Text = "Status: OFF"
			TextLabel113.TextColor3 = Color3.fromRGB(150, 150, 160)
			TextLabel113.TextSize = 9
			TextLabel113.TextXAlignment = Enum.TextXAlignment.Center
			TextLabel113.LayoutOrder = 3

			task.spawn(function()
			end)

			local TextButton13 = Instance.new("TextButton")
			TextButton13.Size = UDim2.new(0.5, -2, 1, -3)
			TextButton13.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			TextButton13.BorderSizePixel = 0
			TextButton13.Text = "Anim"
			TextButton13.TextColor3 = Color3.fromRGB(180, 180, 180)
			TextButton13.Font = Enum.Font.GothamBold
			TextButton13.TextSize = 8
			TextButton13.AutoButtonColor = false
			TextButton13.LayoutOrder = 1
			TextButton13.Parent = TabBar2
			local UICorner70 = Instance.new("UICorner", TextButton13)
			UICorner70.CornerRadius = UDim.new(0, 2)
			local TextButton14 = Instance.new("TextButton")
			TextButton14.Size = UDim2.new(0.5, -2, 1, -3)
			TextButton14.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			TextButton14.BorderSizePixel = 0
			TextButton14.Text = "Info"
			TextButton14.TextColor3 = Color3.fromRGB(180, 180, 180)
			TextButton14.Font = Enum.Font.GothamBold
			TextButton14.TextSize = 8
			TextButton14.AutoButtonColor = false
			TextButton14.LayoutOrder = 2
			TextButton14.Parent = TabBar2
			local UICorner71 = Instance.new("UICorner", TextButton14)
			UICorner71.CornerRadius = UDim.new(0, 2)

			TextButton13.MouseButton1Click:Connect(function()
				TextButton13.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
				TextButton13.TextColor3 = Color3.fromRGB(255, 255, 255)
				PageAnim.Visible = true
				TextButton14.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
				TextButton14.TextColor3 = Color3.fromRGB(180, 180, 180)
				PageInfo2.Visible = false
			end)

			TextButton14.MouseButton1Click:Connect(function()
				TextButton13.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
				TextButton13.TextColor3 = Color3.fromRGB(180, 180, 180)
				PageAnim.Visible = false
				TextButton14.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
				TextButton14.TextColor3 = Color3.fromRGB(255, 255, 255)
				PageInfo2.Visible = true
			end)

			TextButton13.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
			TextButton13.TextColor3 = Color3.fromRGB(255, 255, 255)
			PageAnim.Visible = true
			TextButton14.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			TextButton14.TextColor3 = Color3.fromRGB(180, 180, 180)
			PageInfo2.Visible = false

			TextButton8.MouseButton1Click:Connect(function()
				MainBox3.Size = UDim2.new(0, 145, 0, 20)
				Frame73.Visible = false
				TabBar2.Visible = false
				PageContainer2.Visible = false
				TextButton8.Text = "+"
			end)

			MainBox3.InputBegan:Connect(function(input19, gameProcessed19)
			end)

			UserInputService.InputChanged:Connect(function(input20, gameProcessed20)
			end)

			UserInputService.InputEnded:Connect(function(input21, gameProcessed21)
			end)

			MainBox3.Size = UDim2.new(0, 145, 0, 128)
			Frame73.Visible = true
			TabBar2.Visible = true
			PageContainer2.Visible = true
			TextButton8.Text = "−"
		else
			FakeParryGui:Destroy()
			FakeParryAnimGui:Destroy()
		end
	end
})

Section5:AddInput({
	Title = "Fake Parry Keybind",
	Content = "Ketik tombol: G, F, X, Q, dll",
	Default = "G",
	Placeholder = "Contoh: G / F / X",
	Callback = function(state)
		if state then
			local result4 = tostring(state):gsub("%s+", "")
			local result5 = result4:upper()
			result5:sub(1, 1)
			local result6 = result4:lower()
			result6:sub(2)
		end
	end
})

local Section6 = Tab2:AddSection("Survivor Utility")
task.wait(0.5)

Players.LocalPlayer.CharacterAdded:Connect(function(character11)
	task.wait(0.5)
end)

Section6:AddToggle({
	Title = "Fake Quick Recovery",
	Content = "Speed boost 1.4x selama 3 detik setelah vault cepat",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			local attributeChangedSignal = Players.LocalPlayer.Character:GetAttributeChangedSignal("isvaulting")

			local connection10 = attributeChangedSignal:Connect(function()
				Players.LocalPlayer.Character:GetAttribute("isvaulting")
			end)
		else
			connection10:Disconnect()
		end
	end
})

Section6:AddToggle({
	Title = "Fake Perfect Landing",
	Content = "Speed boost 1.4x selama 3 detik setelah landing",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			local attributeChangedSignal2 = Players.LocalPlayer.Character:GetAttributeChangedSignal("speedboost")

			local connection11 = attributeChangedSignal2:Connect(function()
			end)
		else
			connection11:Disconnect()
		end
	end
})

Section6:AddToggle({
	Title = "Fake Flowstate",
	Content = "Flowstate unlimited dengan cooldown realistis",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			local Humanoid6 = Players.LocalPlayer.Character:WaitForChild("Humanoid", 3)
			local Animator = Humanoid6:WaitForChild("Animator", 3)

			local connection12 = Animator.AnimationPlayed:Connect(function()
			end)

			local attributeChangedSignal3 = Players.LocalPlayer.Character:GetAttributeChangedSignal("Flowstate")

			local connection13 = attributeChangedSignal3:Connect(function()
			end)

			task.wait(0.5)
			Players.LocalPlayer.Character:SetAttribute("Flowstate", true)
		else
			connection13:Disconnect()
			connection12:Disconnect()
			Players.LocalPlayer.Character:SetAttribute("Flowstate", false)
		end
	end
})

Section6:AddToggle({
	Title = "Adrenaline Rush",
	Content = "Speed boost 1.4x selama 5 detik saat HP <= 50",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			local Humanoid7 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

			local connection14 = Humanoid7.HealthChanged:Connect(function(health)
			end)

			notif("Adrenaline Rush: ON")
		else
			connection14:Disconnect()
			notif("Adrenaline Rush: OFF")
		end
	end
})

Section6:AddSlider({
	Title = "Perks Cooldown (detik)",
	Default = 10,
	Max = 180,
	Min = 0,
	Callback = function()
	end
})

local Remotes3 = ReplicatedStorage:WaitForChild("Remotes")
local Mechanics = Remotes3:WaitForChild("Mechanics")
Mechanics:WaitForChild("Fall")

Section6:AddSlider({
	Title = "FOV",
	Default = 70,
	Max = 140,
	Min = 40,
	Callback = function(state)
		if state then
			workspace.CurrentCamera.FieldOfView = state
		else
			workspace.CurrentCamera.FieldOfView = false
		end
	end
})

Section6:AddToggle({
	Title = "Lock FOV",
	Default = false,
	Callback = function(state)
		if state then
			workspace.CurrentCamera.FieldOfView = false
			local changedSignal3 = workspace.CurrentCamera:GetPropertyChangedSignal("FieldOfView")

			local connection15 = changedSignal3:Connect(function()
			end)
		else
			connection15:Disconnect()
			workspace.CurrentCamera.FieldOfView = 70
		end
	end
})

Section6:AddDivider()

Section6:AddToggle({
	Title = "No Fall Damage",
	Default = false,
	Callback = function()
	end
})

Section6:AddToggle({
	Title = "Force Kick Killer",
	Default = false,
	Callback = function(state)
		if state then
			forceKickConn:Disconnect()

			local connection16 = RunService.Heartbeat:Connect(function(deltaTime6)
				Players.LocalPlayer.Character:GetAttribute("IsCarried")
				local Humanoid10 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
				Humanoid10.Health = 0
			end)
		else
			connection16:Disconnect()
		end
	end
})

Section6:AddToggle({
	Title = "Flee Killer (Auto Menjauh)",
	Default = false,
	Callback = function(state)
		if state then
			local thread4 = task.spawn(function()
				Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local players12 = Players:GetPlayers()

				for k10, v23 in pairs(players12) do
					v23.Character:FindFirstChild("HumanoidRootPart")
				end

				task.wait(0.1)
				Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local players13 = Players:GetPlayers()

				for k11, v24 in pairs(players13) do
					v24.Character:FindFirstChild("HumanoidRootPart")
				end

				task.wait(0.1)
				-- [envlog] the statements above repeat forever (loop)
			end)
		else
			task.cancel(thread4)
		end
	end
})

Section6:AddInput({
	Title = "Flee Distance (studs)",
	Default = "40",
	Placeholder = "Write ur input here...",
	Callback = function()
	end
})

Section6:AddToggle({
	Title = "God Mode",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			notif("Godmode Aktif")

			local thread5 = task.spawn(function()
				local Humanoid8 = Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				-- condition: Humanoid8.Health < Humanoid8.MaxHealth  (assumed true)
				task.wait(0.1)
				local Humanoid9 = Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				-- condition: Humanoid9.Health < Humanoid9.MaxHealth  (assumed true)
				task.wait(0.1)
				-- [envlog] the statements above repeat forever (loop)
			end)
		else
			notif("Godmode Nonaktif")
			task.cancel(thread5)
		end
	end
})

task.spawn(function()
	task.wait(3)
	task.wait(3)
	-- [envlog] the statements above repeat forever (loop)
end)

Players.LocalPlayer.CharacterRemoving:Connect(function(character12)
end)

Players.LocalPlayer.CharacterAdded:Connect(function(character13)
	task.wait(5)
end)

_G.toggleHealthSystem = function()
	SelfHealToggle:Set(false)
end

Section6:AddToggle({
	Title = "Self Heal",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			local Humanoid11 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			local Animator2 = Humanoid11:FindFirstChildOfClass("Animator")

			local connection17 = Animator2.AnimationPlayed:Connect(function(arg118)
				arg118.Animation.AnimationId:find("95836365038528")
				arg118:Stop(0)
			end)

			SendNotif("self heal: enabled")
		else
			connection17:Disconnect()
			SendNotif("self heal: disabled")
		end
	end
})

Section6:AddToggle({
	Title = "Auto Vault",
	Default = false,
	Callback = function()
	end
})

task.spawn(function()
	task.wait(0.1)
	task.wait(0.1)
	-- [envlog] the statements above repeat forever (loop)
end)

task.spawn(function()
	local Survivormob = Players.LocalPlayer.PlayerGui:WaitForChild("Survivor-mob", 10)
	local Controls = Survivormob:WaitForChild("Controls", 5)
	local action = Controls:WaitForChild("action", 5)
	local children = action:GetChildren()

	for k13, v26 in pairs(children) do
		v26.Name:lower()
	end

	action.ChildAdded:Connect(function(child)
		task.wait()
		child.Name:lower()
	end)
end)

Players.LocalPlayer.CharacterAdded:Connect(function(character14)
	task.wait(3)
	local Survivormob8 = Players.LocalPlayer.PlayerGui:WaitForChild("Survivor-mob", 10)
	local Controls5 = Survivormob8:WaitForChild("Controls", 5)
	local action2 = Controls5:WaitForChild("action", 5)
	local children32 = action2:GetChildren()

	for k67, v100 in pairs(children32) do
		v100.Name:lower()
	end

	action2.ChildAdded:Connect(function(child12)
		task.wait()
		child12.Name:lower()
	end)
end)

Players.LocalPlayer.PlayerGui.ChildAdded:Connect(function(child2)
end)

Players.LocalPlayer.CharacterAdded:Connect(function(character15)
	task.wait(2)
end)

Section6:AddToggle({
	Title = "Anti Slow Vault",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			local tagged = CollectionService:GetTagged("SlowVault")

			for i14, v27 in ipairs(tagged) do
				CollectionService:RemoveTag(v27, "SlowVault")
			end

			local instanceAddedSignal = CollectionService:GetInstanceAddedSignal("SlowVault")

			local connection18 = instanceAddedSignal:Connect(function(arg123)
				CollectionService:RemoveTag(arg123, "SlowVault")
			end)

			task.spawn(function()
				local Modules = ReplicatedStorage:WaitForChild("Modules", 5)
				local Survivors = Modules:WaitForChild("Survivors", 5)
				local SurvivorAnimationsController = Survivors:WaitForChild("SurvivorAnimationsController", 5)
				require(SurvivorAnimationsController)
				task.wait(1)
				local Modules2 = ReplicatedStorage:WaitForChild("Modules", 5)
				local Survivors2 = Modules2:WaitForChild("Survivors", 5)
				local SurvivorAnimationsController2 = Survivors2:WaitForChild("SurvivorAnimationsController", 5)
				require(SurvivorAnimationsController2)
				task.wait(1)
				-- [envlog] the statements above repeat forever (loop)
			end)

			notif("Anti Slow Vault: ON")
		else
			connection18:Disconnect()
			notif("Anti Slow Vault: OFF")
		end
	end
})

_G.UnlimitedVaultConn = nil

Section6:AddToggle({
	Title = "Unlimited Vault",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			local tagged2 = CollectionService:GetTagged("Blocked")

			for i15, v28 in ipairs(tagged2) do
				CollectionService:RemoveTag(v28, "Blocked")
			end

			local instanceAddedSignal2 = CollectionService:GetInstanceAddedSignal("Blocked")

			local connection19 = instanceAddedSignal2:Connect(function(arg126)
				CollectionService:RemoveTag(arg126, "Blocked")
			end)

			_G.UnlimitedVaultConn = connection19
		else
			connection19:Disconnect()
		end
	end
})

local Section7 = Tab2:AddSection("Auto Generator")

Section7:AddToggle({
	Title = "Manual Generator (No TP)",
	Content = "Jika killer mendekat akan melepas Repair",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			notif("Manual Generator Aktif")

			local thread6 = task.spawn(function()
				Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local players14 = Players:GetPlayers()

				for k14, v29 in pairs(players14) do
				end

				local Map3 = workspace:FindFirstChild("Map")
				local descendants3 = Map3:GetDescendants()

				for k15, v30 in pairs(descendants3) do
					v30:GetAttributes()
					v30:GetAttribute("CorpseCreated0492")
					local HumanoidRootPart2 = v30:FindFirstChild("HumanoidRootPart")
				end

				HumanoidRootPart2:GetPivot()
				-- [envlog] error: Luraph Script:5815: Luraph Script:577: Script:3: attempt to compare userdata <= number
			end)
		else
			notif("Manual Generator Nonaktif")
			task.cancel(thread6)
		end
	end
})

Section7:AddToggle({
	Title = "Auto Generator (With TP)",
	Content = "Jika killer mendekat akan TP ke Gen lain",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			notif("Auto Generator Aktif")

			local thread7 = task.spawn(function()
				Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				HumanoidRootPart2:GetPivot()
				-- [envlog] error: Luraph Script:751: Luraph Script:577: Script:3: attempt to compare userdata <= number
			end)
		else
			notif("Auto Generator Nonaktif")
			_G.ActualRepairPoint = nil
			task.cancel(thread7)
		end
	end
})

Section7:AddInput({
	Title = "Killer Escape Distance",
	Default = "30",
	Placeholder = "Write ur input here...",
	Callback = function()
	end
})

local BypassGenUI = Instance.new("ScreenGui")
BypassGenUI.Name = "BypassGenUI"
BypassGenUI.ResetOnSpawn = false
BypassGenUI.IgnoreGuiInset = true
BypassGenUI.Parent = CoreGui
local BypassGenButton = Instance.new("ImageButton")
BypassGenButton.Name = "BypassGenButton"
BypassGenButton.Size = UDim2.new(0, 55, 0, 55)
BypassGenButton.Position = UDim2.new(0.88, 0, 0.55, 0)
BypassGenButton.AnchorPoint = Vector2.new(0.5, 0.5)
BypassGenButton.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
BypassGenButton.BackgroundTransparency = 0.15
BypassGenButton.AutoButtonColor = true
BypassGenButton.Visible = false
BypassGenButton.ZIndex = 10
BypassGenButton.Parent = BypassGenUI
local UICorner72 = Instance.new("UICorner")
UICorner72.CornerRadius = UDim.new(1, 0)
UICorner72.Parent = BypassGenButton
local UIStroke63 = Instance.new("UIStroke")
UIStroke63.Color = Color3.fromRGB(255, 255, 255)
UIStroke63.Thickness = 1.5
UIStroke63.Transparency = 0.4
UIStroke63.Parent = BypassGenButton
local TextLabel114 = Instance.new("TextLabel")
TextLabel114.Size = UDim2.new(1, 0, 1, 0)
TextLabel114.BackgroundTransparency = 1
TextLabel114.Text = "GEN"
TextLabel114.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel114.TextScaled = true
TextLabel114.Font = Enum.Font.GothamBold
TextLabel114.ZIndex = 11
TextLabel114.Parent = BypassGenButton

BypassGenButton.MouseButton1Click:Connect(function()
end)

hookmetamethod(game, "__namecall", function()
	-- [envlog] error: Script:3: attempt to call a nil value
end)

local Section8 = Tab2:AddSection("Bypass Generator")

Section8:AddParagraph({
	Title = "README!",
	Content = "Fitur ini akan menumpuk skillcheck jika anda tidak menggunakan mode yang Auto Repair.\nJika jaringan anda tidak bagus, sudah pasti akan meledak saat skillcheck jika menggunakan mode Manual Repair.\nJika menggunakan fitur ini dan mode manual repair, sangat disarankan untuk menggunakan Auto Skillcheck mode Instant!"
})

Section8:AddDropdown({
	Title = "Bypass Mode",
	Default = "Manual Repair",
	Options = { "Manual Repair", "Auto Repair" },
	Callback = function()
	end
})

Section8:AddToggle({
	Title = "Bypass Generator",
	Content = "Jika mobile, tekan tombol GEN terlebih dahulu",
	Default = false,
	Keybind = true,
	Callback = function(state)
		BypassGenButton.Visible = false

		if state then
			notif("Gen Booster: Aktif")
		else
			notif("Gen Booster: Nonaktif")
		end
	end
})

Connections.SkillHeartbeat = nil

task.spawn(function()
	local Remotes4 = ReplicatedStorage:WaitForChild("Remotes", 10)
	local KillerPerks = Remotes4:WaitForChild("KillerPerks", 5)
	local kingscourge = KillerPerks:WaitForChild("kingscourge", 5)
	local lastRemotes3 = kingscourge:WaitForChild("lastRemotes3", 5)

	lastRemotes3.OnClientEvent:Connect(function()
	end)
end)

local Section9 = Tab2:AddSection("Auto Skillcheck Perfect")

Section9:AddDropdown({
	Title = "Skill Check Mode",
	Default = "Legit",
	Options = { "Legit", "Instant", "Normal", "Random" },
	Callback = function(arg140)
		notif("Mode: " .. arg140)
	end
})

Section9:AddToggle({
	Title = "Auto Skill Check",
	Content = "Otomatis hit skill check",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			Connections.SkillHeartbeat:Disconnect()

			local connection20 = RunService.Heartbeat:Connect(function(deltaTime7)
			end)

			Connections.SkillHeartbeat = connection20
			notif("Auto Skill Check: ON")
		else
			connection20:Disconnect()
			Connections.SkillHeartbeat = nil
			notif("Auto Skill Check: OFF")
		end
	end
})

Players.LocalPlayer.CharacterAdded:Connect(function(character16)
	task.wait(1)
end)

Players.LocalPlayer.PlayerGui.ChildAdded:Connect(function(child3)
end)

local Section10 = Tab2:AddSection("Bypass Gate")

Section10:AddButton({
	Title = "Beat Game (Auto Escape)",
	Callback = function(state)
		Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

		if state then
			local Map4 = workspace:FindFirstChild("Map")
			local descendants4 = Map4:GetDescendants()

			for k16, v31 in pairs(descendants4) do
				v31:FindFirstChild("LeftGate")
				v31:FindFirstChild("RightGate")
				v31:GetPivot()
			end

			v31:FindFirstChild("LeftGate")
			v31.LeftGate.Transparency = 1
			v31.LeftGate.CanCollide = false
			v31:FindFirstChild("RightGate")
			v31.RightGate.Transparency = 1
			v31.RightGate.CanCollide = false
			v31:FindFirstChild("Box")
			v31.Box.CanCollide = false
			local pivot = v31:GetPivot()
			Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (pivot + Vector3.new(0, 3, 0))
			task.wait(0.3)
			local descendants5 = Map4:GetDescendants()

			for k17, v32 in pairs(descendants5) do
			end

			local descendants6 = Map4:GetDescendants()

			for k18, v33 in pairs(descendants6) do
			end
		else
			local Map5 = workspace:FindFirstChild("Map")
			local descendants7 = Map5:GetDescendants()

			for k19, v34 in pairs(descendants7) do
				v34:FindFirstChild("LeftGate")
				v34:FindFirstChild("RightGate")
				v34:GetPivot()
			end

			v34:FindFirstChild("LeftGate")
			v34.LeftGate.Transparency = 1
			v34.LeftGate.CanCollide = false
			v34:FindFirstChild("RightGate")
			v34.RightGate.Transparency = 1
			v34.RightGate.CanCollide = false
			v34:FindFirstChild("Box")
			v34.Box.CanCollide = false
			local pivot2 = v34:GetPivot()
			Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (pivot2 + Vector3.new(0, 3, 0))
			task.wait(0.3)
			local descendants8 = Map5:GetDescendants()

			for k20, v35 in pairs(descendants8) do
			end

			local descendants9 = Map5:GetDescendants()

			for k21, v36 in pairs(descendants9) do
			end
		end
	end
})

local Section11 = Tab3:AddSection("Bypass All Killer")

Section11:AddParagraph({
	Title = "‼️ PENJELASAN ‼️",
	Content = "Penjelasan tentang aim lock hidden, untuk atas itu di gunakan untuk lock target jadi ga bisa di geser layar nya, untuk mengatasi itu wajib menyalakan unlock juga."
})

Killer.BypassLeap = false

Section11:AddToggle({
	Title = "Bypass Cooldown (Hidden)",
	Default = false,
	Callback = function(state)
		if state then
			Killer.BypassLeap = state

			local thread8 = task.spawn(function()
				warn("Function tryActivate/playM2Animation tidak ditemukan.")
			end)

			Connections.LeapBypass = thread8
			Library:Notify({ Title = "Bypass Leap", Description = "Diaktifkan", Duration = 3 })
		else
			Killer.BypassLeap = false
			Library:Notify({ Title = "Bypass Leap", Description = "Dinonaktifkan", Duration = 3 })
		end
	end
})

UserInputService.InputBegan:Connect(function(input22, gameProcessed22)
end)

UserInputService.InputEnded:Connect(function(input23, gameProcessed23)
end)

local function helper2(v)
	local result7 = v.Name:lower()
	result7:find("attack", 1, true)
end

local function helper4(v)
	helper2(v)
	v:GetAttribute("W424_HoldAim")
end

task.spawn(function()
	local PlayerGui = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
	local children2 = PlayerGui:GetChildren()

	for i16, v37 in ipairs(children2) do
		local Controls2 = v37:FindFirstChild("Controls")
		local descendants10 = Controls2:GetDescendants()

		for i17, v38 in ipairs(descendants10) do
			helper4(v38)
		end
	end

	local connection21 = PlayerGui.ChildAdded:Connect(function(child4)
		task.wait(0.3)
		local children33 = PlayerGui:GetChildren()

		for i34, v101 in ipairs(children33) do
			local Controls6 = v101:FindFirstChild("Controls")
			local descendants23 = Controls6:GetDescendants()

			for i35, v102 in ipairs(descendants23) do
				helper4(v102)
			end
		end
	end)
end)

local function helper3(v)
	local result22 = v.Name:lower()
	result22:find("attack", 1, true)
end

local function helper5(v)
	helper3(v)
	v:GetAttribute("W424_HoldAim")
end

Players.LocalPlayer.CharacterAdded:Connect(function(character17)
	task.wait(2)
	connection21:Disconnect()

	task.spawn(function()
		local PlayerGui23 = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
		local children34 = PlayerGui23:GetChildren()

		for i36, v103 in ipairs(children34) do
			local Controls7 = v103:FindFirstChild("Controls")
			local descendants24 = Controls7:GetDescendants()

			for i37, v104 in ipairs(descendants24) do
				helper5(v104)
			end
		end

		PlayerGui23.ChildAdded:Connect(function(child13)
			task.wait(0.3)
			local children40 = PlayerGui23:GetChildren()

			for i42, v121 in ipairs(children40) do
				local Controls9 = v121:FindFirstChild("Controls")
				local descendants25 = Controls9:GetDescendants()

				for i43, v122 in ipairs(descendants25) do
					helper5(v122)
				end
			end
		end)
	end)
end)

Section11:AddToggle({
	Title = "Aim Lock Hidden (Hold)",
	Content = "Tahan M2 / tombol attack → lock kamera. Lepas → bebas.",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			local thread9 = task.spawn(function()
				task.wait()
				task.wait()
				-- [envlog] the statements above repeat forever (loop)
			end)

			notif("Aim Lock Hidden: ON")
		else
			task.cancel(thread9)
			notif("Aim Lock Hidden: OFF")
		end
	end
})

Section11:AddInput({
	Title = "Hold Keybind (Custom)",
	Content = "Ketik nama tombol: E, Q, F, X, LeftShift, LeftAlt, LeftCtrl, dll",
	Default = "E",
	Placeholder = "Contoh: Q / F / LeftShift",
	Callback = function(state)
		if state then
			local result8 = tostring(state):gsub("%s+", "")
			result8:lower()
			local result9 = result8:upper()
			result9:sub(1, 1)
			local result10 = result8:lower()
			result10:sub(2)
			notif("Hold key diubah ke: " .. Enum.KeyCode[2946].Name)
		end
	end
})

Killer.BypassCooldown = false

Section11:AddToggle({
	Title = "Bypass Cooldown (Abyss)",
	Default = false,
	Callback = function(state)
		if state then
			Killer.BypassCooldown = state
			warn("Fungsi corruptHandler tidak ditemukan di memori.")
			Library:Notify({ Title = "Bypass Cooldown", Description = "Diaktifkan", Duration = 3 })
		else
			Killer.BypassCooldown = false
			Connections.CooldownBypass:Disconnect()
			Connections.CooldownBypass = nil
			Library:Notify({ Title = "Bypass Cooldown", Description = "Dinonaktifkan", Duration = 3 })
		end
	end
})

Section11:AddToggle({
	Title = "Auto Stalk (myers)",
	Default = false,
	Callback = function(state)
		if not state then
			Connections.Stalk:Disconnect()
			Connections.Stalk = nil
		end
	end
})

Section11:AddToggle({
	Title = "Unlock Skills While Carrying",
	Default = false,
	Callback = function(state)
		if state then
			Library:Notify({ Title = "Bypass Carry", Description = "Diaktifkan", Duration = 3 })
		else
			Library:Notify({ Title = "Bypass Carry", Description = "Dinonaktifkan", Duration = 3 })
		end
	end
})

task.spawn(function()
	task.wait(0.5)
	task.wait(0.5)
	-- [envlog] the statements above repeat forever (loop)
end)

Players.LocalPlayer.CharacterAdded:Connect(function(character18)
	task.wait(0.8)
end)

getgenv().VD = {}

Section11:AddToggle({
	Title = "Counter Auto Parry",
	Default = false,
	Keybind = true,
	Callback = function()
	end
})

Section11:AddToggle({
	Title = "Infinite Lunge",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			Players.LocalPlayer.Character:SetAttribute("lungeboost", 999)
		else
			Players.LocalPlayer.Character:SetAttribute("lungeboost", 1)
		end
	end
})

Section11:AddToggle({
	Title = "Infinite Frenzy (Jeff)",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			local thread10 = task.spawn(function()
				Players.LocalPlayer.Character:GetAttribute("Frenzy")
				Players.LocalPlayer.Character:SetAttribute("Frenzy", true)
				task.wait(0.1)
				Players.LocalPlayer.Character:GetAttribute("Frenzy")
				Players.LocalPlayer.Character:SetAttribute("Frenzy", true)
				task.wait(0.1)
				-- [envlog] the statements above repeat forever (loop)
			end)

			getgenv().NEX_JeffCooldownBypassThread = thread10
		else
			Players.LocalPlayer.Character:GetAttribute("Frenzy")
		end
	end
})

Section11:AddToggle({
	Title = "Infinite Pursuit (Jason)",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			task.spawn(function()
				Players.LocalPlayer.Character:GetAttribute("Pursuit")
				Players.LocalPlayer.Character:SetAttribute("Pursuit", true)
				task.wait(0.1)
				Players.LocalPlayer.Character:GetAttribute("Pursuit")
				Players.LocalPlayer.Character:SetAttribute("Pursuit", true)
				task.wait(0.1)
				-- [envlog] the statements above repeat forever (loop)
			end)
		else
			Players.LocalPlayer.Character:GetAttribute("Pursuit")
		end
	end
})

local VD_VeilTarget = Instance.new("Highlight")
VD_VeilTarget.Name = "VD_VeilTarget"
VD_VeilTarget.FillColor = Color3.fromRGB(255, 0, 0)
VD_VeilTarget.OutlineColor = Color3.fromRGB(255, 255, 255)
VD_VeilTarget.FillTransparency = 0.5
VD_VeilTarget.OutlineTransparency = 0
CoreGui:FindFirstChild("VeilTrackerGui")
local VeilTrackerGui = CoreGui:FindFirstChild("VeilTrackerGui")
local Line = VeilTrackerGui:FindFirstChild("Line")
local FOVCircleGui_Standalone = CoreGui:FindFirstChild("FOVCircleGui_Standalone")
local VeilFOVFrame = FOVCircleGui_Standalone:FindFirstChild("VeilFOVFrame")

UserInputService.InputBegan:Connect(function(input24, gameProcessed24)
end)

UserInputService.InputEnded:Connect(function(input25, gameProcessed25)
end)

RunService.RenderStepped:Connect(function(deltaTime8)
	Players.LocalPlayer.Character:GetAttribute("spearmode")
	VeilFOVFrame.Visible = false
	VD_VeilTarget.Parent = nil
	Line.Visible = false
end)

local Section12 = Tab3:AddSection("Silent Aim (Veil Spear)")

for _, item in ipairs({
	{ title = "Silent Veil V1 (Hold)", content = "Tahan M1 → kunci target → lepas M1 → tembak", text = "Silent Veil V1: ON", text2 = "Silent Veil V1: OFF" },
	{ title = "Silent Veil V2 (Interceptor)", content = "Tap M1 → auto redirect ke target (tanpa double fire)", text = "Silent Veil V2: ON", text2 = "Silent Veil V2: OFF" },
}) do
	Section12:AddToggle({
		Title = item.title,
		Content = item.content,
		Default = false,
		Keybind = true,
		Callback = function(state)
			if state then
				notif(item.text)
			else
				notif(item.text2)
			end
		end
	})
end

Section12:AddToggle({
	Title = "Auto Predict (Smart)",
	Content = "Prediksi gerakan target + kompensasi gravitasi",
	Default = false,
	Callback = function(state)
		if state then
			notif("Smart Predict: ON")
		else
			notif("Smart Predict: OFF")
		end
	end
})

for _, item in ipairs({
	{ title = "Lead Multiplier", default = 1.4, max = 5, min = 0.5 },
	{ title = "Spear Speed", default = 165, max = 200, min = 50 },
	{ title = "Spear Gravity", default = 103, max = 200, min = 0 },
}) do
	Section12:AddSlider({
		Title = item.title,
		Default = item.default,
		Max = item.max,
		Min = item.min,
		Callback = function()
		end
	})
end

Section12:AddToggle({
	Title = "ESP Tracker Target",
	Content = "Garis dari layar ke target",
	Default = false,
	Callback = function(state)
		if not state then
			Line.Visible = false
		end
	end
})

Section12:AddToggle({
	Title = "Show Veil FOV",
	Default = true,
	Callback = function()
	end
})

Section12:AddSlider({
	Title = "Veil FOV Radius",
	Default = 150,
	Max = 500,
	Min = 50,
	Callback = function()
	end
})

local Section13 = Tab3:AddSection("Silent Aim Flask (Cure)")

Section13:AddToggle({
	Title = "Silent Aim Flask (Cure)",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			VD.KILLER_SilentAimFlask = state
			notif("Silent Aim Flask: AKTIF")
		else
			VD.KILLER_SilentAimFlask = false
			notif("Silent Aim Flask: NONAKTIF")
		end
	end
})

Section13:AddToggle({
	Title = "Enable Laser",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			VD.KILLER_FlaskLaser = state

			local connection22 = RunService.RenderStepped:Connect(function(deltaTime9)
			end)

			getgenv().NEX_CureFlaskLaserThread = connection22
			notif("Flask Laser: AKTIF - Laser merah")
		else
			VD.KILLER_FlaskLaser = false
			connection22:Disconnect()
			getgenv().NEX_CureFlaskLaserThread = nil
			notif("Flask Laser: NONAKTIF")
		end
	end
})

local Section14 = Tab3:AddSection("Auto Hook")

Section14:AddToggle({
	Title = "Enable Auto Hook",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			local connection23 = Players.LocalPlayer.CharacterAdded:Connect(function(character19)
			end)

			local thread11 = task.spawn(function()
				task.wait(1)
				task.wait(1)
				-- [envlog] the statements above repeat forever (loop)
			end)
		else
			task.cancel(thread11)
			connection23:Disconnect()
		end
	end
})

local Section15 = Tab3:AddSection("Kill All Instant (Riskan)")

Section15:AddToggle({
	Title = "Enable Kill All",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			task.spawn(function()
				local Remotes5 = ReplicatedStorage:WaitForChild("Remotes")
				local Attacks = Remotes5:WaitForChild("Attacks")
				Attacks:WaitForChild("BasicAttack")
				Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local players15 = Players:GetPlayers()

				for i18, v39 in ipairs(players15) do
					v39.Character:FindFirstChild("HumanoidRootPart")
					v39.Character:GetAttribute("Knocked")
				end

				task.wait(0.2)
				Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local players16 = Players:GetPlayers()

				for i19, v40 in ipairs(players16) do
					v40.Character:FindFirstChild("HumanoidRootPart")
					v40.Character:GetAttribute("Knocked")
				end

				task.wait(0.2)
				-- [envlog] the statements above repeat forever (loop)
			end)
		end
	end
})

local Section16 = Tab3:AddSection("Masked [BETA]")

Section16:AddDropdown({
	Title = "Select Mask",
	Default = "Alex",
	Options = { "Alex", "Brandon", "Cobra", "Rabbit", "Richter", "Tony" },
	Callback = function()
	end
})

Section16:AddButton({
	Title = "Activated Mask",
	Callback = function()
		ReplicatedStorage.Remotes.Killers.Masked.Activatepower:FireServer(false)
	end
})

Section16:AddButton({
	Title = "Deactivated Mask",
	Callback = function()
		ReplicatedStorage.Remotes.Killers.Masked.Deactivatepower:FireServer()
	end
})

local Section17 = Tab3:AddSection("Auto Attack")

Section17:AddToggle({
	Title = "Enable Auto Attack (No Animation)",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			task.spawn(function()
				local Remotes6 = ReplicatedStorage:WaitForChild("Remotes")
				local Attacks2 = Remotes6:WaitForChild("Attacks")
				Attacks2:WaitForChild("BasicAttack")
				Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local players17 = Players:GetPlayers()

				for i21, v42 in ipairs(players17) do
					v42.Character:FindFirstChild("HumanoidRootPart")
					v42.Character:FindFirstChildOfClass("Humanoid")
				end
				-- [envlog] error: Luraph Script:8053: Script:3: attempt to compare number < userdata
			end)
		end
	end
})

Section17:AddInput({
	Title = "Attack Range (studs)",
	Default = "12",
	Placeholder = "Write ur input here...",
	Callback = function()
	end
})

local Section18 = Tab3:AddSection("Killer Utility")

Section18:AddButton({
	Title = "Block All Vault",
	Callback = function(state)
		if state then
			local Map6 = workspace:FindFirstChild("Map")
			local descendants11 = Map6:GetDescendants()

			for i22, v43 in ipairs(descendants11) do
			end
		else
			local Map7 = workspace:FindFirstChild("Map")
			local descendants12 = Map7:GetDescendants()

			for i23, v44 in ipairs(descendants12) do
			end
		end

		game.StarterGui:SetCore("SendNotification", { Text = "Successfully Block 0 Vault!", Title = "Anti Looping", Duration = 5 })
	end
})

Section18:AddButton({
	Title = "Unblock All Vault",
	Callback = function(state)
		if state then
			local Map8 = workspace:FindFirstChild("Map")
			local descendants13 = Map8:GetDescendants()

			for i24, v45 in ipairs(descendants13) do
			end
		else
			local Map9 = workspace:FindFirstChild("Map")
			local descendants14 = Map9:GetDescendants()

			for i25, v46 in ipairs(descendants14) do
			end
		end

		game.StarterGui:SetCore("SendNotification", { Text = "Successfully Unblock 0 Vaults!", Title = "Anti Looping", Duration = 5 })
	end
})

Section18:AddToggle({
	Title = "No Flashlight (Anti Blind)",
	Default = false,
	Callback = function(state)
		if state then
			task.spawn(function()
				local PlayerGui2 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local descendants15 = PlayerGui2:GetDescendants()

				for k22, v47 in pairs(descendants15) do
				end

				task.wait(0.5)
				local PlayerGui3 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local descendants16 = PlayerGui3:GetDescendants()

				for k23, v48 in pairs(descendants16) do
				end

				task.wait(0.5)
				-- [envlog] the statements above repeat forever (loop)
			end)
		end
	end
})

Section18:AddToggle({
	Title = "Anti Break Pallet",
	Default = false,
	Callback = function(state)
		if state then
			local Stunover = ReplicatedStorage.Remotes.Pallet.Jason:WaitForChild("Stunover")
			local Stun = ReplicatedStorage.Remotes.Pallet.Jason:FindFirstChild("Stun")

			Stun.OnClientEvent:Connect(function()
				local Humanoid17 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
				local Animator3 = Humanoid17:FindFirstChildOfClass("Animator")
				task.wait(0.1)
				local tracks = Animator3:GetPlayingAnimationTracks()

				for i38, v105 in ipairs(tracks) do
				end
			end)

			RunService.Heartbeat:Connect(function(deltaTime10)
				local Humanoid14 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
				Players.LocalPlayer.Character:GetAttribute("IsStunned")
				Stunover:FireServer()
				Players.LocalPlayer.Character:SetAttribute("Immobile", false)
				Players.LocalPlayer.Character:SetAttribute("IsStunned", false)
				local attribute = Players.LocalPlayer.Character:GetAttribute("Speed")
				Humanoid14.WalkSpeed = attribute
			end)
		end
	end
})

_G.GenConnections = {}

local function setupV(v)
	v.CharacterAdded:Connect(function(character35)
		task.wait(2)
	end)

	v.CharacterRemoving:Connect(function(character36)
	end)

	local changedSignal35 = v:GetPropertyChangedSignal("Team")

	changedSignal35:Connect(function()
		task.wait(0.5)
	end)
end

local function getChildren()
	local Map17 = workspace:FindFirstChild("Map")
	local children35 = Map17:GetChildren()
	return Map17, children35
end

local function helper6(v)
	local result23 = v.Name:lower()
	result23:match("generator")
	v:GetAttribute("Completed")
	v:GetAttribute("RepairProgress")
end

local function setupV2(v)
	v.Name:lower()
	helper6(v)
end

Players.LocalPlayer.CharacterAdded:Connect(function(character20)
	connection29:Disconnect()
	connection30:Disconnect()
	connection31:Disconnect()
	Highlight2:Destroy()
	BillboardGui:Destroy()
	task.wait(2)
	connection24:Disconnect()
	connection25:Disconnect()
	connection26:Disconnect()
	connection27:Disconnect()
	connection28:Disconnect()
	local players25 = Players:GetPlayers()

	for k68, v106 in pairs(players25) do
		setupV(v106)
	end

	Players.PlayerAdded:Connect(function(player10)
		setupV(player10)
	end)

	Players.PlayerRemoving:Connect(function(player11)
	end)

	local Map17, children35 = getChildren()

	for k69, v107 in pairs(children35) do
	end

	local children36 = Map17:GetChildren()

	for k70, v108 in pairs(children36) do
		setupV2(v108)
	end
	-- [envlog] error: Luraph Script:9197: Luraph Script:8986: Luraph Script:8974: Luraph Script:8856: Luraph Script:8853: Script:3: attempt to compare number <= userdata
end)

local Section19 = Tab4:AddSection("Enable ESP")

Section19:AddToggle({
	Title = "Enable ESP",
	Default = false,
	Callback = function()
		local players18 = Players:GetPlayers()

		for k25, v50 in pairs(players18) do
			local connection24 = v50.CharacterAdded:Connect(function(character21)
				task.wait(2)
			end)

			local connection25 = v50.CharacterRemoving:Connect(function(character22)
			end)

			local changedSignal4 = v50:GetPropertyChangedSignal("Team")

			local connection26 = changedSignal4:Connect(function()
				task.wait(0.5)
			end)

			local Highlight2 = Instance.new("Highlight")
			Highlight2.Adornee = v50.Character
			Highlight2.FillColor = Color3.fromRGB(64, 224, 255)
			Highlight2.FillTransparency = 0.8
			Highlight2.OutlineColor = Color3.fromRGB(64, 224, 255)
			Highlight2.OutlineTransparency = 0.1
			Highlight2.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
			Highlight2.Enabled = true
			Highlight2.Parent = v50.Character
			local BillboardGui = Instance.new("BillboardGui")
			BillboardGui.Size = UDim2.new(0, 400, 0, 30)
			BillboardGui.Adornee = v50.Character
			BillboardGui.AlwaysOnTop = true
			BillboardGui.StudsOffsetWorldSpace = Vector3.new(0, 4, 0)
			BillboardGui.Parent = v50.Character
			local TextLabel115 = Instance.new("TextLabel", BillboardGui)
			TextLabel115.Size = UDim2.new(1, 0, 1, 0)
			TextLabel115.BackgroundTransparency = 1
			TextLabel115.Font = Enum.Font.GothamBold
			TextLabel115.TextSize = 13
			TextLabel115.TextColor3 = Color3.fromRGB(64, 224, 255)
			TextLabel115.TextStrokeTransparency = 0
			TextLabel115.TextXAlignment = Enum.TextXAlignment.Center
			TextLabel115.Text = v50.Name
			TextLabel115.Visible = false
		end

		local connection27 = Players.PlayerAdded:Connect(function(player3)
			setupV(player3)
		end)

		local connection28 = Players.PlayerRemoving:Connect(function(player4)
		end)

		local Map10, children3 = getChildren()

		for k26, v51 in pairs(children3) do
		end

		local children4 = Map10:GetChildren()

		for k27, v52 in pairs(children4) do
			setupV2(v52)
		end
		-- [envlog] error: Luraph Script:9233: Luraph Script:8986: Luraph Script:8974: Luraph Script:8856: Luraph Script:8853: Script:3: attempt to compare number <= userdata
	end
})

getgenv().KillerPredictEnabled = false

Section19:AddToggle({
	Title = "Enable Killer Prediction",
	Default = false,
	Callback = function(state)
		if state then
			local PlayerGui4 = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
			local KillerPredictUI = PlayerGui4:FindFirstChild("KillerPredictUI")
			KillerPredictUI:Destroy()
			getgenv().KillerPredictEnabled = state
			local PlayerGui5 = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
			local KillerPredictUI2 = PlayerGui5:FindFirstChild("KillerPredictUI")
			KillerPredictUI2:Destroy()
			local KillerPredictUI6 = Instance.new("ScreenGui")
			KillerPredictUI6.Name = "KillerPredictUI"
			KillerPredictUI6.ResetOnSpawn = false
			KillerPredictUI6.IgnoreGuiInset = true
			KillerPredictUI6.Parent = PlayerGui5
			local MainFrame54 = Instance.new("Frame")
			MainFrame54.Name = "MainFrame"
			MainFrame54.Size = UDim2.new(0, 160, 0, 45)
			MainFrame54.Position = UDim2.new(0.5, -80, 0, 55)
			MainFrame54.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
			MainFrame54.BackgroundTransparency = 0.35
			MainFrame54.BorderSizePixel = 0
			MainFrame54.Visible = false
			MainFrame54.Parent = KillerPredictUI6
			local UICorner73 = Instance.new("UICorner", MainFrame54)
			UICorner73.CornerRadius = UDim.new(0, 10)
			local UIStroke64 = Instance.new("UIStroke", MainFrame54)
			UIStroke64.Color = Color3.fromRGB(50, 150, 255)
			UIStroke64.Thickness = 1.8
			UIStroke64.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			local TextLabel116 = Instance.new("TextLabel")
			TextLabel116.Size = UDim2.new(1, 0, 0.45, 0)
			TextLabel116.Position = UDim2.new(0, 0, 0, 0)
			TextLabel116.BackgroundTransparency = 1
			TextLabel116.Text = "Predict Next Killer"
			TextLabel116.TextColor3 = Color3.fromRGB(255, 100, 100)
			TextLabel116.Font = Enum.Font.GothamBold
			TextLabel116.TextSize = 11
			TextLabel116.TextXAlignment = Enum.TextXAlignment.Center
			TextLabel116.Parent = MainFrame54
			local PredictName = Instance.new("TextLabel")
			PredictName.Name = "PredictName"
			PredictName.Size = UDim2.new(1, 0, 0.55, 0)
			PredictName.Position = UDim2.new(0, 0, 0.45, 0)
			PredictName.BackgroundTransparency = 1
			PredictName.Text = "Scanning..."
			PredictName.TextColor3 = Color3.fromRGB(255, 255, 255)
			PredictName.Font = Enum.Font.GothamBold
			PredictName.TextSize = 13
			PredictName.TextXAlignment = Enum.TextXAlignment.Center
			PredictName.Parent = MainFrame54

			task.spawn(function()
				local PlayerGui6 = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
				local KillerPredictUI3 = PlayerGui6:FindFirstChild("KillerPredictUI")
				local MainFrame = KillerPredictUI3:FindFirstChild("MainFrame")
				MainFrame:FindFirstChild("PredictName")
				MainFrame.Visible = false
				task.wait(1)
				local PlayerGui7 = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
				local KillerPredictUI4 = PlayerGui7:FindFirstChild("KillerPredictUI")
				local MainFrame2 = KillerPredictUI4:FindFirstChild("MainFrame")
				MainFrame2:FindFirstChild("PredictName")
				MainFrame2.Visible = false
				task.wait(1)
				-- [envlog] the statements above repeat forever (loop)
			end)
		else
			local PlayerGui8 = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
			local KillerPredictUI5 = PlayerGui8:FindFirstChild("KillerPredictUI")
			KillerPredictUI5:Destroy()
		end
	end
})

local Section20 = Tab4:AddSection("ESP Role")

Section20:AddToggle({
	Title = "ESP Survivor",
	Default = true,
	Callback = function()
	end
})

Section20:AddToggle({
	Title = "ESP Killer",
	Default = true,
	Callback = function()
	end
})

Section20:AddToggle({
	Title = "ESP Zombie Dummy",
	Default = true,
	Callback = function(state)
		if state then
			local children5 = workspace:GetChildren()

			for k28, v53 in pairs(children5) do
				local result12 = v53.Name:lower()
				result12:find("^scp")
				v53:FindFirstChildOfClass("Humanoid")
				v53:FindFirstChild("Head")
				local Highlight3 = Instance.new("Highlight")
				Highlight3.Adornee = v53
				Highlight3.FillColor = Color3.fromRGB(255, 200, 0)
				Highlight3.FillTransparency = 0.8
				Highlight3.OutlineColor = Color3.fromRGB(255, 200, 0)
				Highlight3.OutlineTransparency = 0.1
				Highlight3.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				Highlight3.Enabled = true
				Highlight3.Parent = v53
				local BillboardGui2 = Instance.new("BillboardGui")
				BillboardGui2.Size = UDim2.new(0, 400, 0, 30)
				BillboardGui2.Adornee = v53
				BillboardGui2.AlwaysOnTop = true
				BillboardGui2.StudsOffsetWorldSpace = Vector3.new(0, 4, 0)
				BillboardGui2.Parent = v53
				local TextLabel118 = Instance.new("TextLabel", BillboardGui2)
				TextLabel118.Size = UDim2.new(1, 0, 1, 0)
				TextLabel118.BackgroundTransparency = 1
				TextLabel118.Font = Enum.Font.GothamBold
				TextLabel118.TextSize = 13
				TextLabel118.TextColor3 = Color3.fromRGB(255, 200, 0)
				TextLabel118.TextStrokeTransparency = 0
				TextLabel118.TextXAlignment = Enum.TextXAlignment.Center
				TextLabel118.Text = v53.Name
				TextLabel118.Visible = false
			end

			local Map11 = workspace:FindFirstChild("Map")
			local descendants17 = Map11:GetDescendants()

			for k29, v54 in pairs(descendants17) do
				local result13 = v54.Name:lower()
				result13:find("^scp")
				v54:FindFirstChildOfClass("Humanoid")
				v54:FindFirstChild("Head")
				local Highlight4 = Instance.new("Highlight")
				Highlight4.Adornee = v54
				Highlight4.FillColor = Color3.fromRGB(255, 200, 0)
				Highlight4.FillTransparency = 0.8
				Highlight4.OutlineColor = Color3.fromRGB(255, 200, 0)
				Highlight4.OutlineTransparency = 0.1
				Highlight4.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				Highlight4.Enabled = true
				Highlight4.Parent = v54
				local BillboardGui3 = Instance.new("BillboardGui")
				BillboardGui3.Size = UDim2.new(0, 400, 0, 30)
				BillboardGui3.Adornee = v54
				BillboardGui3.AlwaysOnTop = true
				BillboardGui3.StudsOffsetWorldSpace = Vector3.new(0, 4, 0)
				BillboardGui3.Parent = v54
				local TextLabel119 = Instance.new("TextLabel", BillboardGui3)
				TextLabel119.Size = UDim2.new(1, 0, 1, 0)
				TextLabel119.BackgroundTransparency = 1
				TextLabel119.Font = Enum.Font.GothamBold
				TextLabel119.TextSize = 13
				TextLabel119.TextColor3 = Color3.fromRGB(255, 200, 0)
				TextLabel119.TextStrokeTransparency = 0
				TextLabel119.TextXAlignment = Enum.TextXAlignment.Center
				TextLabel119.Text = v54.Name
				TextLabel119.Visible = false
			end

			local connection29 = workspace.ChildAdded:Connect(function(child5)
				task.wait(0.1)
				local result24 = child5.Name:lower()
				result24:find("^scp")
				child5:FindFirstChildOfClass("Humanoid")
				child5:FindFirstChild("Head")
				local Highlight5 = Instance.new("Highlight")
				Highlight5.Adornee = child5
				Highlight5.FillColor = Color3.fromRGB(255, 200, 0)
				Highlight5.FillTransparency = 0.8
				Highlight5.OutlineColor = Color3.fromRGB(255, 200, 0)
				Highlight5.OutlineTransparency = 0.1
				Highlight5.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				Highlight5.Enabled = true
				Highlight5.Parent = child5
				local BillboardGui5 = Instance.new("BillboardGui")
				BillboardGui5.Size = UDim2.new(0, 400, 0, 30)
				BillboardGui5.Adornee = child5
				BillboardGui5.AlwaysOnTop = true
				BillboardGui5.StudsOffsetWorldSpace = Vector3.new(0, 4, 0)
				BillboardGui5.Parent = child5
				local TextLabel138 = Instance.new("TextLabel", BillboardGui5)
				TextLabel138.Size = UDim2.new(1, 0, 1, 0)
				TextLabel138.BackgroundTransparency = 1
				TextLabel138.Font = Enum.Font.GothamBold
				TextLabel138.TextSize = 13
				TextLabel138.TextColor3 = Color3.fromRGB(255, 200, 0)
				TextLabel138.TextStrokeTransparency = 0
				TextLabel138.TextXAlignment = Enum.TextXAlignment.Center
				TextLabel138.Text = child5.Name
				TextLabel138.Visible = false
			end)

			local connection30 = Map11.DescendantAdded:Connect(function(descendant7)
				task.wait(0.2)
				local result25 = descendant7.Name:lower()
				result25:find("^scp")
				descendant7:FindFirstChildOfClass("Humanoid")
				descendant7:FindFirstChild("Head")
				local Highlight6 = Instance.new("Highlight")
				Highlight6.Adornee = descendant7
				Highlight6.FillColor = Color3.fromRGB(255, 200, 0)
				Highlight6.FillTransparency = 0.8
				Highlight6.OutlineColor = Color3.fromRGB(255, 200, 0)
				Highlight6.OutlineTransparency = 0.1
				Highlight6.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				Highlight6.Enabled = true
				Highlight6.Parent = descendant7
				local BillboardGui6 = Instance.new("BillboardGui")
				BillboardGui6.Size = UDim2.new(0, 400, 0, 30)
				BillboardGui6.Adornee = descendant7
				BillboardGui6.AlwaysOnTop = true
				BillboardGui6.StudsOffsetWorldSpace = Vector3.new(0, 4, 0)
				BillboardGui6.Parent = descendant7
				local TextLabel139 = Instance.new("TextLabel", BillboardGui6)
				TextLabel139.Size = UDim2.new(1, 0, 1, 0)
				TextLabel139.BackgroundTransparency = 1
				TextLabel139.Font = Enum.Font.GothamBold
				TextLabel139.TextSize = 13
				TextLabel139.TextColor3 = Color3.fromRGB(255, 200, 0)
				TextLabel139.TextStrokeTransparency = 0
				TextLabel139.TextXAlignment = Enum.TextXAlignment.Center
				TextLabel139.Text = descendant7.Name
				TextLabel139.Visible = false
			end)

			local connection31 = workspace.DescendantRemoving:Connect(function(descendant8)
			end)
		else
			Highlight3:Destroy()
			BillboardGui2:Destroy()
			Highlight4:Destroy()
			BillboardGui3:Destroy()
		end
	end
})

local Section21 = Tab4:AddSection("ESP Object")

Section21:AddToggle({
	Title = "ESP Generator",
	Default = true,
	Callback = function()
		local Map12, children6 = getChildren()

		for k30, v55 in pairs(children6) do
		end

		local children7 = Map12:GetChildren()

		for k31, v56 in pairs(children7) do
			setupV2(v56)
		end
		-- [envlog] error: Luraph Script:9398: Luraph Script:8986: Luraph Script:8974: Luraph Script:8856: Luraph Script:8853: Script:3: attempt to compare number <= userdata
	end
})

Section21:AddToggle({
	Title = "ESP Gate",
	Default = false,
	Callback = function()
		local Map13, children8 = getChildren()

		for k32, v57 in pairs(children8) do
		end

		local children9 = Map13:GetChildren()

		for k33, v58 in pairs(children9) do
			setupV2(v58)
		end
		-- [envlog] error: Luraph Script:9399: Luraph Script:8986: Luraph Script:8974: Luraph Script:8856: Luraph Script:8853: Script:3: attempt to compare number <= userdata
	end
})

Section21:AddToggle({
	Title = "ESP Hook",
	Default = false,
	Callback = function()
		local Map14, children10 = getChildren()

		for k34, v59 in pairs(children10) do
		end

		local children11 = Map14:GetChildren()

		for k35, v60 in pairs(children11) do
			setupV2(v60)
		end
		-- [envlog] error: Luraph Script:9400: Luraph Script:8986: Luraph Script:8974: Luraph Script:8856: Luraph Script:8853: Script:3: attempt to compare number <= userdata
	end
})

Section21:AddToggle({
	Title = "ESP Pallet",
	Default = false,
	Callback = function()
		local Map15, children12 = getChildren()

		for k36, v61 in pairs(children12) do
		end

		local children13 = Map15:GetChildren()

		for k37, v62 in pairs(children13) do
			setupV2(v62)
		end
		-- [envlog] error: Luraph Script:9401: Luraph Script:8986: Luraph Script:8974: Luraph Script:8856: Luraph Script:8853: Script:3: attempt to compare number <= userdata
	end
})

Section21:AddToggle({
	Title = "ESP Vault",
	Default = true,
	Callback = function()
		local Map16, children14 = getChildren()

		for k38, v63 in pairs(children14) do
		end

		local children15 = Map16:GetChildren()

		for k39, v64 in pairs(children15) do
			setupV2(v64)
		end
		-- [envlog] error: Luraph Script:9411: Luraph Script:8986: Luraph Script:8974: Luraph Script:8856: Luraph Script:8853: Script:3: attempt to compare number <= userdata
	end
})

local Section22 = Tab4:AddSection("ESP Settings")

Section22:AddToggle({
	Title = "Show Name",
	Default = false,
	Callback = function(state)
		if state then
			local thread12 = task.spawn(function()
				Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				Highlight2.Enabled = true
				v50.Character:FindFirstChildOfClass("Humanoid")
				-- [envlog] error: Luraph Script:9066: Luraph Script:8644: Script:3: attempt to compare userdata <= number
			end)

			_G.MengHubThread = thread12
		else
			task.cancel(thread12)
			_G.MengHubThread = nil
			Highlight2.Enabled = true
			TextLabel115.Visible = false
		end
	end
})

Section22:AddToggle({
	Title = "Show Distance",
	Default = false,
	Callback = function(state)
		if state then
			local thread13 = task.spawn(function()
				Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				Highlight2.Enabled = true
				v50.Character:FindFirstChildOfClass("Humanoid")
				-- [envlog] error: Luraph Script:9066: Luraph Script:8644: Script:3: attempt to compare userdata <= number
			end)

			_G.MengHubThread = thread13
		else
			task.cancel(thread13)
			_G.MengHubThread = nil
			Highlight2.Enabled = true
			TextLabel115.Visible = false
		end
	end
})

Section22:AddToggle({
	Title = "Show Health",
	Default = false,
	Callback = function(state)
		if state then
			local thread14 = task.spawn(function()
				Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				Highlight2.Enabled = true
				v50.Character:FindFirstChildOfClass("Humanoid")
				-- [envlog] error: Luraph Script:9066: Luraph Script:8644: Script:3: attempt to compare userdata <= number
			end)

			_G.MengHubThread = thread14
		else
			task.cancel(thread14)
			_G.MengHubThread = nil
			Highlight2.Enabled = true
			TextLabel115.Visible = false
		end
	end
})

Section22:AddToggle({
	Title = "Show Item Image",
	Default = false,
	Callback = function(state)
		if state then
			local PlayerGui9 = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
			local ItemESPGui = PlayerGui9:FindFirstChild("ItemESPGui")

			local thread15 = task.spawn(function()
				local playerFromCharacter = Players:GetPlayerFromCharacter(v50.Character)
				v50.Character:FindFirstChild("HumanoidRootPart")
				local children16 = playerFromCharacter.Character:GetChildren()

				for k40, v65 in pairs(children16) do
					local children17 = v65:GetChildren()

					for k41, v66 in pairs(children17) do
					end
				end

				task.wait()
				local playerFromCharacter2 = Players:GetPlayerFromCharacter(v50.Character)
				v50.Character:FindFirstChild("HumanoidRootPart")
				local children18 = playerFromCharacter2.Character:GetChildren()

				for k42, v67 in pairs(children18) do
					local children19 = v67:GetChildren()

					for k43, v68 in pairs(children19) do
					end
				end

				task.wait()
				-- [envlog] the statements above repeat forever (loop)
			end)
		else
			task.cancel(thread15)
			ItemESPGui:Destroy()
		end
	end
})

Section22:AddToggle({
	Title = "Show Item Name",
	Default = false,
	Callback = function(state)
		if state then
			local PlayerGui10 = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
			local ItemESPGui2 = PlayerGui10:FindFirstChild("ItemESPGui")

			local thread16 = task.spawn(function()
				local playerFromCharacter3 = Players:GetPlayerFromCharacter(v50.Character)
				v50.Character:FindFirstChild("HumanoidRootPart")
				local children20 = playerFromCharacter3.Character:GetChildren()

				for k46, v71 in pairs(children20) do
					local children21 = v71:GetChildren()

					for k47, v72 in pairs(children21) do
					end
				end

				task.wait()
				local playerFromCharacter4 = Players:GetPlayerFromCharacter(v50.Character)
				v50.Character:FindFirstChild("HumanoidRootPart")
				local children22 = playerFromCharacter4.Character:GetChildren()

				for k48, v73 in pairs(children22) do
					local children23 = v73:GetChildren()

					for k49, v74 in pairs(children23) do
					end
				end

				task.wait()
				-- [envlog] the statements above repeat forever (loop)
			end)
		else
			task.cancel(thread16)
			ItemESPGui2:Destroy()
		end
	end
})

local Section23 = Tab4:AddSection("Custom ESP Colors")

for _, item in ipairs({
	{ title = "Survivor Color", default = "Default Survivor" },
	{ title = "Killer Color", default = "Default Killer" },
	{ title = "Zombie Dummy Color", default = "Default Zombie Dummy" },
	{ title = "Generator Color", default = "Default Generator" },
	{ title = "Gate Color", default = "Default Gate" },
	{ title = "Hook Color", default = "Default Hook" },
	{ title = "Pallet Color", default = "Default Pallet" },
}) do
	Section23:AddDropdown({
		Title = item.title,
		Default = item.default,
		Options = {
			"Hijau (Green)",
			"Kuning (Yellow)",
			"Ungu (Purple)",
			"Merah (Red)",
			"Default Gate",
			"Default Pallet",
			"Putih (White)",
			"Orange",
			"Default Hook",
			"Default Survivor",
			"Default Generator",
			"Pink",
			"Default Zombie Dummy",
			"Hitam (Black)",
			"Biru (Blue)",
			"Default Killer",
			"Cyan"
		},
		Callback = function()
		end
	})
end

Players.PlayerAdded:Connect(function(player5)
	player5.CharacterAdded:Connect(function(character39)
		task.wait(0.5)
	end)

	local changedSignal37 = player5:GetPropertyChangedSignal("Team")

	changedSignal37:Connect(function()
		task.wait(0.5)
	end)
end)

local players19 = Players:GetPlayers()

for i26, v77 in ipairs(players19) do
	v77.CharacterAdded:Connect(function(character23)
		task.wait(0.5)
	end)

	local changedSignal5 = v77:GetPropertyChangedSignal("Team")

	changedSignal5:Connect(function()
		task.wait(0.5)
	end)
end

Players.LocalPlayer.CharacterAdded:Connect(function(character24)
	task.wait(1.5)
end)

local Section24 = Tab4:AddSection("Stun Indicator")

Section24:AddToggle({
	Title = "Enable Stun Indicator",
	Content = "Tampilkan indikator ⚡ saat killer stunned",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			local players20 = Players:GetPlayers()

			for i27, v78 in ipairs(players20) do
			end

			notif("Stun Indicator: ON")
		else
			notif("Stun Indicator: OFF")
		end
	end
})

Section24:AddInput({
	Title = "Icon (Emoji / Text)",
	Content = "Contoh: ⚡ 💫 💥 🔥 ⭐ ☠️",
	Default = "⚡",
	Placeholder = "Ketik emoji",
	Callback = function(state)
		if state then
			notif("Icon diganti ke: " .. state)
		end
	end
})

for _, item in ipairs({
	{ title = "Icon Size", default = 30, max = 80, min = 15 },
	{ title = "Bar Width", default = 120, max = 200, min = 60 },
	{ title = "Y Offset (Tinggi)", default = 5, max = 15, min = 2 },
	{ title = "Stun Duration (detik)", default = 2.2, max = 5, min = 1 },
}) do
	Section24:AddSlider({
		Title = item.title,
		Default = item.default,
		Max = item.max,
		Min = item.min,
		Callback = function()
		end
	})
end

Players.LocalPlayer.Character:WaitForChild("Humanoid")
local children24 = ReplicatedStorage.Emotes:GetChildren()

for k52, v79 in pairs(children24) do
end

local Section25 = Tab5:AddSection("Emote Features")

Section25:AddDropdown({
	Title = "Select Emote",
	Default = v79.Name,
	Options = { v79.Name },
	Callback = function()
	end
})

Section25:AddToggle({
	Title = "Play Emote",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
		end
	end
})

Players.LocalPlayer.CharacterAdded:Connect(function(character25)
end)

local Section26 = Tab5:AddSection("Fake Avatar")

Section26:AddDropdown({
	Title = "Fake Avatar",
	Default = "Self Avatar",
	Options = {
		"Self Avatar",
		"Random 1",
		"Random 2",
		"Random 3",
		"Random 4",
		"Random 5",
		"Random 6",
		"Random 7",
		"WoozyNate",
		"Nicholas",
		"yvlyf",
		"traevp",
		"J0LLY",
		"LucashDev",
		"CEOofIsaac",
		"Stealthy",
		"Wildes",
		"Talon",
		"Relukt",
		"Sammy",
		"Diesel",
		"S4ans03",
		"Aura",
		"iJava",
		"White Guy",
		"Purple King",
		"Kachaaaa Gay",
		"Mpruyyy"
	},
	Callback = function()
	end
})

Section26:AddToggle({
	Title = "Fake Avatar",
	Default = false,
	Keybind = true,
	Callback = function()
	end
})

Section26:AddSubSection("Fake Avatar Via Username")

Section26:AddInput({
	Title = "Input Username (@username)",
	Placeholder = "Write ur input here",
	Callback = function(arg277)
		local result19 = arg277:gsub("^@", "")
	end
})

Section26:AddButton({
	Title = "Apply Fake Avatar",
	Callback = function(state)
		if state then
			local userIdFromNameAsync = Players:GetUserIdFromNameAsync(result19)
			local Humanoid12 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

			task.spawn(function()
				local characterAppearanceAsync = Players:GetCharacterAppearanceAsync(userIdFromNameAsync)
				local children25 = Players.LocalPlayer.Character:GetChildren()

				for k53, v80 in pairs(children25) do
					v80:Destroy()
				end

				local Head = Players.LocalPlayer.Character:FindFirstChild("Head")
				local children26 = Head:GetChildren()

				for k54, v81 in pairs(children26) do
					v81:Destroy()
				end

				local SpecialMesh = Instance.new("SpecialMesh", Head)
				SpecialMesh.MeshType = Enum.MeshType.Head
				SpecialMesh.Scale = Vector3.new(1, 1, 1)
				local BodyTypeScale = Humanoid12:FindFirstChild("BodyTypeScale")
				BodyTypeScale.Value = 0
				local BodyProportionScale = Humanoid12:FindFirstChild("BodyProportionScale")
				BodyProportionScale.Value = 0
				local HeadScale = Humanoid12:FindFirstChild("HeadScale")
				HeadScale.Value = 1
				local BodyWidthScale = Humanoid12:FindFirstChild("BodyWidthScale")
				BodyWidthScale.Value = 1
				local BodyDepthScale = Humanoid12:FindFirstChild("BodyDepthScale")
				BodyDepthScale.Value = 1
				local BodyHeightScale = Humanoid12:FindFirstChild("BodyHeightScale")
				BodyHeightScale.Value = 1
				task.wait(0.1)
				local children27 = characterAppearanceAsync:GetChildren()

				for k55, v82 in pairs(children27) do
					local children28 = v82:GetChildren()

					for k56, v83 in pairs(children28) do
						Players.LocalPlayer.Character:FindFirstChild(v83.Name)
						local clone = v83:Clone()
						clone.Parent = Players.LocalPlayer.Character
					end
				end

				for k57, v84 in pairs(children27) do
					local SpecialMesh2 = Head:FindFirstChildOfClass("SpecialMesh")
					SpecialMesh2.MeshType = Enum.MeshType.FileMesh
					SpecialMesh2.MeshId = v84.MeshId
					SpecialMesh2.TextureId = v84.TextureId
				end

				for k58, v85 in pairs(children27) do
					local clone2 = v85:Clone()
					local Handle = clone2:FindFirstChild("Handle")
					local Attachment = Handle:FindFirstChildOfClass("Attachment")
					local child = Players.LocalPlayer.Character:FindFirstChild(Attachment.Name, true)
					local Weld = Instance.new("Weld")
					Weld.Part0 = Handle
					Weld.Part1 = child.Parent
					Weld.C0 = Attachment.CFrame
					Weld.C1 = child.CFrame
					Weld.Parent = Handle
					Handle.CanCollide = false
					Handle.Massless = true
					clone2.Parent = Players.LocalPlayer.Character
				end

				local characterAppearanceInfoAsync = Players:GetCharacterAppearanceInfoAsync(userIdFromNameAsync)

				for k59, v86 in pairs(characterAppearanceInfoAsync.assets) do
				end
			end)
		else
			local userIdFromNameAsync2 = Players:GetUserIdFromNameAsync(result19)
			local Humanoid13 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

			task.spawn(function()
				local characterAppearanceAsync2 = Players:GetCharacterAppearanceAsync(userIdFromNameAsync2)
				Players.LocalPlayer.Character:GetChildren()
				clone:Destroy()
				clone2:Destroy()
				local Head2 = Players.LocalPlayer.Character:FindFirstChild("Head")
				local children29 = Head2:GetChildren()

				for k60, v87 in pairs(children29) do
					v87:Destroy()
				end

				local SpecialMesh3 = Instance.new("SpecialMesh", Head2)
				SpecialMesh3.MeshType = Enum.MeshType.Head
				SpecialMesh3.Scale = Vector3.new(1, 1, 1)
				local BodyTypeScale2 = Humanoid13:FindFirstChild("BodyTypeScale")
				BodyTypeScale2.Value = 0
				local BodyProportionScale2 = Humanoid13:FindFirstChild("BodyProportionScale")
				BodyProportionScale2.Value = 0
				local HeadScale2 = Humanoid13:FindFirstChild("HeadScale")
				HeadScale2.Value = 1
				local BodyWidthScale2 = Humanoid13:FindFirstChild("BodyWidthScale")
				BodyWidthScale2.Value = 1
				local BodyDepthScale2 = Humanoid13:FindFirstChild("BodyDepthScale")
				BodyDepthScale2.Value = 1
				local BodyHeightScale2 = Humanoid13:FindFirstChild("BodyHeightScale")
				BodyHeightScale2.Value = 1
				task.wait(0.1)
				local children30 = characterAppearanceAsync2:GetChildren()

				for k61, v88 in pairs(children30) do
					local children31 = v88:GetChildren()

					for k62, v89 in pairs(children31) do
						Players.LocalPlayer.Character:FindFirstChild(v89.Name)
						local clone3 = v89:Clone()
						clone3.Parent = Players.LocalPlayer.Character
					end
				end

				for k63, v90 in pairs(children30) do
					local SpecialMesh4 = Head2:FindFirstChildOfClass("SpecialMesh")
					SpecialMesh4.MeshType = Enum.MeshType.FileMesh
					SpecialMesh4.MeshId = v90.MeshId
					SpecialMesh4.TextureId = v90.TextureId
				end

				for k64, v91 in pairs(children30) do
					local clone4 = v91:Clone()
					local Handle2 = clone4:FindFirstChild("Handle")
					local Attachment2 = Handle2:FindFirstChildOfClass("Attachment")
					local child2 = Players.LocalPlayer.Character:FindFirstChild(Attachment2.Name, true)
					local Weld2 = Instance.new("Weld")
					Weld2.Part0 = Handle2
					Weld2.Part1 = child2.Parent
					Weld2.C0 = Attachment2.CFrame
					Weld2.C1 = child2.CFrame
					Weld2.Parent = Handle2
					Handle2.CanCollide = false
					Handle2.Massless = true
					clone4.Parent = Players.LocalPlayer.Character
				end

				local characterAppearanceInfoAsync2 = Players:GetCharacterAppearanceInfoAsync(userIdFromNameAsync2)

				for k65, v92 in pairs(characterAppearanceInfoAsync2.assets) do
				end
			end)
		end

		notif("Fake avatar diterapkan: @" .. result19)
	end
})

local Section27 = Tab5:AddSection("Fake Avatar V2")

local Toggle = Section27:AddToggle({
	Title = "Fake Ava",
	Content = "Buka / tutup panel Copy Avatar",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			-- isfolder("W424CopyAvatar") -> false
			makefolder("W424CopyAvatar")
			-- isfile("W424CopyAvatar/favorites.json") -> false
			CoreGui:FindFirstChild("W424_COPY_AVA")
			CoreGui.W424_COPY_AVA:Destroy()
			local W424_COPY_AVA = Instance.new("ScreenGui")
			W424_COPY_AVA.Name = "W424_COPY_AVA"
			W424_COPY_AVA.ResetOnSpawn = false
			W424_COPY_AVA.IgnoreGuiInset = true
			W424_COPY_AVA.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			W424_COPY_AVA.Parent = CoreGui
			local MainBox4 = Instance.new("Frame", W424_COPY_AVA)
			MainBox4.Name = "MainBox"
			MainBox4.AnchorPoint = Vector2.new(0.5, 0)
			MainBox4.Position = UDim2.new(0.5, 0, 0.5, -92.5)
			MainBox4.Size = UDim2.new(0, 175, 0, 185)
			MainBox4.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
			MainBox4.BackgroundTransparency = 0.1
			MainBox4.BorderSizePixel = 0
			MainBox4.Active = true
			local UICorner74 = Instance.new("UICorner", MainBox4)
			UICorner74.CornerRadius = UDim.new(0, 6)
			local UIStroke65 = Instance.new("UIStroke", MainBox4)
			UIStroke65.Color = Color3.fromRGB(45, 45, 55)
			UIStroke65.Thickness = 1
			MainBox4.ClipsDescendants = true
			local Body2 = Instance.new("Frame", MainBox4)
			Body2.Name = "Body"
			Body2.Position = UDim2.new(0, 0, 0, 24)
			Body2.Size = UDim2.new(1, 0, 0, 161)
			Body2.BackgroundTransparency = 1
			Body2.ClipsDescendants = true
			local Frame81 = Instance.new("Frame", MainBox4)
			Frame81.Size = UDim2.new(1, 0, 0, 4)
			Frame81.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
			Frame81.BorderSizePixel = 0
			local UICorner75 = Instance.new("UICorner", Frame81)
			UICorner75.CornerRadius = UDim.new(0, 6)
			local Frame82 = Instance.new("Frame", Frame81)
			Frame82.Size = UDim2.new(1, 0, 0.5, 0)
			Frame82.Position = UDim2.new(0, 0, 0.5, 0)
			Frame82.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
			Frame82.BorderSizePixel = 0
			local Frame83 = Instance.new("Frame", MainBox4)
			Frame83.Size = UDim2.new(1, 0, 0, 20)
			Frame83.Position = UDim2.new(0, 0, 0, 4)
			Frame83.BackgroundTransparency = 1
			Frame83.Active = true
			local TextLabel120 = Instance.new("TextLabel", Frame83)
			TextLabel120.Size = UDim2.new(1, -24, 1, 0)
			TextLabel120.BackgroundTransparency = 1
			TextLabel120.Font = Enum.Font.GothamBold
			TextLabel120.Text = "FEBZ HUB"
			TextLabel120.TextColor3 = Color3.fromRGB(230, 230, 230)
			TextLabel120.TextSize = 10
			TextLabel120.TextXAlignment = Enum.TextXAlignment.Center
			local TextButton15 = Instance.new("TextButton", Frame83)
			TextButton15.Size = UDim2.new(0, 18, 0, 18)
			TextButton15.Position = UDim2.new(1, -20, 0, 1)
			TextButton15.BackgroundTransparency = 1
			TextButton15.Text = "−"
			TextButton15.TextColor3 = Color3.fromRGB(180, 180, 180)
			TextButton15.Font = Enum.Font.GothamBold
			TextButton15.TextSize = 13
			TextButton15.AutoButtonColor = false
			local Frame84 = Instance.new("Frame", Body2)
			Frame84.Size = UDim2.new(1, -12, 0, 1)
			Frame84.Position = UDim2.new(0, 6, 0, 1)
			Frame84.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
			Frame84.BorderSizePixel = 0
			local Frame85 = Instance.new("Frame", Body2)
			Frame85.Size = UDim2.new(1, -12, 0, 18)
			Frame85.Position = UDim2.new(0, 6, 0, 5)
			Frame85.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
			Frame85.BorderSizePixel = 0
			local UICorner76 = Instance.new("UICorner", Frame85)
			UICorner76.CornerRadius = UDim.new(0, 3)
			local UIListLayout8 = Instance.new("UIListLayout", Frame85)
			UIListLayout8.FillDirection = Enum.FillDirection.Horizontal
			UIListLayout8.Padding = UDim.new(0, 3)
			UIListLayout8.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout8.VerticalAlignment = Enum.VerticalAlignment.Center
			local Frame86 = Instance.new("Frame", Body2)
			Frame86.Size = UDim2.new(1, -12, 0, 107)
			Frame86.Position = UDim2.new(0, 6, 0, 26)
			Frame86.BackgroundTransparency = 1
			Frame86.ClipsDescendants = true
			local ScrollingFrame = Instance.new("ScrollingFrame", Frame86)
			ScrollingFrame.Size = UDim2.new(1, 0, 1, 0)
			ScrollingFrame.BackgroundTransparency = 1
			ScrollingFrame.BorderSizePixel = 0
			ScrollingFrame.ScrollBarThickness = 3
			ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
			ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
			local UIListLayout9 = Instance.new("UIListLayout", ScrollingFrame)
			UIListLayout9.Padding = UDim.new(0, 5)
			UIListLayout9.SortOrder = Enum.SortOrder.LayoutOrder
			local Frame87 = Instance.new("Frame", Frame86)
			Frame87.Size = UDim2.new(1, 0, 1, 0)
			Frame87.BackgroundTransparency = 1
			Frame87.Visible = false
			local UIListLayout10 = Instance.new("UIListLayout", Frame87)
			UIListLayout10.Padding = UDim.new(0, 3)
			UIListLayout10.SortOrder = Enum.SortOrder.LayoutOrder
			local TextButton16 = Instance.new("TextButton")
			TextButton16.Size = UDim2.new(0.5, -2, 1, -3)
			TextButton16.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			TextButton16.BorderSizePixel = 0
			TextButton16.Text = "Main"
			TextButton16.TextColor3 = Color3.fromRGB(180, 180, 180)
			TextButton16.Font = Enum.Font.GothamBold
			TextButton16.TextSize = 8
			TextButton16.AutoButtonColor = false
			TextButton16.LayoutOrder = 1
			TextButton16.Parent = Frame85
			local UICorner77 = Instance.new("UICorner", TextButton16)
			UICorner77.CornerRadius = UDim.new(0, 2)
			local TextButton17 = Instance.new("TextButton")
			TextButton17.Size = UDim2.new(0.5, -2, 1, -3)
			TextButton17.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			TextButton17.BorderSizePixel = 0
			TextButton17.Text = "Fav"
			TextButton17.TextColor3 = Color3.fromRGB(180, 180, 180)
			TextButton17.Font = Enum.Font.GothamBold
			TextButton17.TextSize = 8
			TextButton17.AutoButtonColor = false
			TextButton17.LayoutOrder = 2
			TextButton17.Parent = Frame85
			local UICorner78 = Instance.new("UICorner", TextButton17)
			UICorner78.CornerRadius = UDim.new(0, 2)

			TextButton16.MouseButton1Click:Connect(function()
				TextButton16.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
				TextButton16.TextColor3 = Color3.fromRGB(255, 255, 255)
				ScrollingFrame.Visible = true
				TextButton17.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
				TextButton17.TextColor3 = Color3.fromRGB(180, 180, 180)
				Frame87.Visible = false
			end)

			TextButton17.MouseButton1Click:Connect(function()
				TextButton16.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
				TextButton16.TextColor3 = Color3.fromRGB(180, 180, 180)
				ScrollingFrame.Visible = false
				TextButton17.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
				TextButton17.TextColor3 = Color3.fromRGB(255, 255, 255)
				Frame87.Visible = true
			end)

			TextButton16.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
			TextButton16.TextColor3 = Color3.fromRGB(255, 255, 255)
			ScrollingFrame.Visible = true
			TextButton17.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			TextButton17.TextColor3 = Color3.fromRGB(180, 180, 180)
			Frame87.Visible = false
			local TextLabel121 = Instance.new("TextLabel")
			TextLabel121.Size = UDim2.new(1, 0, 0, 11)
			TextLabel121.BackgroundTransparency = 1
			TextLabel121.Font = Enum.Font.Gotham
			TextLabel121.Text = "Username / ID"
			TextLabel121.TextColor3 = Color3.fromRGB(160, 160, 170)
			TextLabel121.TextSize = 9
			TextLabel121.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel121.LayoutOrder = 1
			TextLabel121.Parent = ScrollingFrame
			local TextBox = Instance.new("TextBox")
			TextBox.Size = UDim2.new(1, 0, 0, 22)
			TextBox.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
			TextBox.BorderSizePixel = 0
			TextBox.Font = Enum.Font.Gotham
			TextBox.TextSize = 10
			TextBox.PlaceholderText = "Username atau UserID"
			TextBox.Text = ""
			TextBox.TextColor3 = Color3.fromRGB(230, 230, 230)
			TextBox.PlaceholderColor3 = Color3.fromRGB(120, 120, 120)
			TextBox.ClearTextOnFocus = false
			TextBox.LayoutOrder = 2
			TextBox.Parent = ScrollingFrame
			local UICorner79 = Instance.new("UICorner", TextBox)
			UICorner79.CornerRadius = UDim.new(0, 3)
			local UIStroke66 = Instance.new("UIStroke", TextBox)
			UIStroke66.Color = Color3.fromRGB(50, 50, 55)
			UIStroke66.Thickness = 1
			local TextLabel122 = Instance.new("TextLabel")
			TextLabel122.Size = UDim2.new(1, 0, 0, 11)
			TextLabel122.BackgroundTransparency = 1
			TextLabel122.Font = Enum.Font.Gotham
			TextLabel122.Text = "Player Online"
			TextLabel122.TextColor3 = Color3.fromRGB(160, 160, 170)
			TextLabel122.TextSize = 9
			TextLabel122.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel122.LayoutOrder = 3
			TextLabel122.Parent = ScrollingFrame
			local TextButton18 = Instance.new("TextButton")
			TextButton18.Size = UDim2.new(1, 0, 0, 22)
			TextButton18.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
			TextButton18.BorderSizePixel = 0
			TextButton18.Font = Enum.Font.Gotham
			TextButton18.TextSize = 10
			TextButton18.Text = "  Pilih Player..."
			TextButton18.TextColor3 = Color3.fromRGB(180, 180, 180)
			TextButton18.TextXAlignment = Enum.TextXAlignment.Left
			TextButton18.AutoButtonColor = false
			TextButton18.LayoutOrder = 4
			TextButton18.Parent = ScrollingFrame
			local UICorner80 = Instance.new("UICorner", TextButton18)
			UICorner80.CornerRadius = UDim.new(0, 3)
			local UIStroke67 = Instance.new("UIStroke", TextButton18)
			UIStroke67.Color = Color3.fromRGB(50, 50, 55)
			UIStroke67.Thickness = 1

			TextButton18.MouseButton1Down:Connect(function(x, y)
				TextButton18.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
			end)

			TextButton18.MouseButton1Up:Connect(function()
				TextButton18.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
			end)

			TextButton18.MouseLeave:Connect(function()
			end)

			local ScrollingFrame2 = Instance.new("ScrollingFrame")
			ScrollingFrame2.Size = UDim2.new(1, 0, 0, 65)
			ScrollingFrame2.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
			ScrollingFrame2.BorderSizePixel = 0
			ScrollingFrame2.ScrollBarThickness = 3
			ScrollingFrame2.Visible = false
			ScrollingFrame2.AutomaticCanvasSize = Enum.AutomaticSize.Y
			ScrollingFrame2.CanvasSize = UDim2.new(0, 0, 0, 0)
			ScrollingFrame2.LayoutOrder = 5
			ScrollingFrame2.Parent = ScrollingFrame
			local UICorner81 = Instance.new("UICorner", ScrollingFrame2)
			UICorner81.CornerRadius = UDim.new(0, 3)
			local UIListLayout11 = Instance.new("UIListLayout", ScrollingFrame2)
			UIListLayout11.Padding = UDim.new(0, 2)
			local Frame88 = Instance.new("Frame")
			Frame88.Size = UDim2.new(1, 0, 0, 24)
			Frame88.BackgroundTransparency = 1
			Frame88.LayoutOrder = 6
			Frame88.Parent = ScrollingFrame
			local UIListLayout12 = Instance.new("UIListLayout", Frame88)
			UIListLayout12.FillDirection = Enum.FillDirection.Horizontal
			UIListLayout12.Padding = UDim.new(0, 3)
			UIListLayout12.SortOrder = Enum.SortOrder.LayoutOrder
			local TextButton19 = Instance.new("TextButton")
			TextButton19.Size = UDim2.new(0.4, -2, 1, 0)
			TextButton19.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			TextButton19.BorderSizePixel = 0
			TextButton19.Text = "APPLY"
			TextButton19.TextColor3 = Color3.fromRGB(200, 200, 200)
			TextButton19.Font = Enum.Font.GothamBold
			TextButton19.TextSize = 9
			TextButton19.AutoButtonColor = false
			TextButton19.LayoutOrder = 1
			TextButton19.Parent = Frame88
			local UICorner82 = Instance.new("UICorner", TextButton19)
			UICorner82.CornerRadius = UDim.new(0, 3)

			TextButton19.MouseButton1Down:Connect(function(x2, y2)
				TextButton19.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
			end)

			TextButton19.MouseButton1Up:Connect(function()
				TextButton19.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			end)

			TextButton19.MouseLeave:Connect(function()
			end)

			local TextButton20 = Instance.new("TextButton")
			TextButton20.Size = UDim2.new(0.3, -2, 1, 0)
			TextButton20.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			TextButton20.BorderSizePixel = 0
			TextButton20.Text = "RANDOM"
			TextButton20.TextColor3 = Color3.fromRGB(200, 200, 200)
			TextButton20.Font = Enum.Font.GothamBold
			TextButton20.TextSize = 9
			TextButton20.AutoButtonColor = false
			TextButton20.LayoutOrder = 2
			TextButton20.Parent = Frame88
			local UICorner83 = Instance.new("UICorner", TextButton20)
			UICorner83.CornerRadius = UDim.new(0, 3)

			TextButton20.MouseButton1Down:Connect(function(x3, y3)
				TextButton20.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
			end)

			TextButton20.MouseButton1Up:Connect(function()
				TextButton20.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			end)

			TextButton20.MouseLeave:Connect(function()
			end)

			local TextButton21 = Instance.new("TextButton")
			TextButton21.Size = UDim2.new(0.3, -2, 1, 0)
			TextButton21.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			TextButton21.BorderSizePixel = 0
			TextButton21.Text = "RESET"
			TextButton21.TextColor3 = Color3.fromRGB(200, 200, 200)
			TextButton21.Font = Enum.Font.GothamBold
			TextButton21.TextSize = 9
			TextButton21.AutoButtonColor = false
			TextButton21.LayoutOrder = 3
			TextButton21.Parent = Frame88
			local UICorner84 = Instance.new("UICorner", TextButton21)
			UICorner84.CornerRadius = UDim.new(0, 3)

			TextButton21.MouseButton1Down:Connect(function(x4, y4)
				TextButton21.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
			end)

			TextButton21.MouseButton1Up:Connect(function()
				TextButton21.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			end)

			TextButton21.MouseLeave:Connect(function()
			end)

			local TextLabel123 = Instance.new("TextLabel")
			TextLabel123.Size = UDim2.new(1, 0, 0, 14)
			TextLabel123.BackgroundTransparency = 1
			TextLabel123.Font = Enum.Font.Gotham
			TextLabel123.Text = "Selected: -"
			TextLabel123.TextColor3 = Color3.fromRGB(120, 180, 255)
			TextLabel123.TextSize = 9
			TextLabel123.TextXAlignment = Enum.TextXAlignment.Center
			TextLabel123.LayoutOrder = 7
			TextLabel123.Parent = ScrollingFrame
			local ScrollingFrame3 = Instance.new("ScrollingFrame", Frame87)
			ScrollingFrame3.Size = UDim2.new(1, 0, 1, -28)
			ScrollingFrame3.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
			ScrollingFrame3.BorderSizePixel = 0
			ScrollingFrame3.ScrollBarThickness = 3
			ScrollingFrame3.AutomaticCanvasSize = Enum.AutomaticSize.Y
			ScrollingFrame3.CanvasSize = UDim2.new(0, 0, 0, 0)
			local UICorner85 = Instance.new("UICorner", ScrollingFrame3)
			UICorner85.CornerRadius = UDim.new(0, 3)
			local UIListLayout13 = Instance.new("UIListLayout", ScrollingFrame3)
			UIListLayout13.Padding = UDim.new(0, 2)
			local Frame89 = Instance.new("Frame", Frame87)
			Frame89.Size = UDim2.new(1, 0, 0, 22)
			Frame89.Position = UDim2.new(0, 0, 1, -22)
			Frame89.BackgroundTransparency = 1
			local UIListLayout14 = Instance.new("UIListLayout", Frame89)
			UIListLayout14.FillDirection = Enum.FillDirection.Horizontal
			UIListLayout14.Padding = UDim.new(0, 3)
			UIListLayout14.SortOrder = Enum.SortOrder.LayoutOrder
			local TextButton22 = Instance.new("TextButton")
			TextButton22.Size = UDim2.new(0.5, -2, 1, 0)
			TextButton22.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			TextButton22.BorderSizePixel = 0
			TextButton22.Text = "+ ADD"
			TextButton22.TextColor3 = Color3.fromRGB(200, 200, 200)
			TextButton22.Font = Enum.Font.GothamBold
			TextButton22.TextSize = 9
			TextButton22.AutoButtonColor = false
			TextButton22.LayoutOrder = 1
			TextButton22.Parent = Frame89
			local UICorner86 = Instance.new("UICorner", TextButton22)
			UICorner86.CornerRadius = UDim.new(0, 3)

			TextButton22.MouseButton1Down:Connect(function(x5, y5)
				TextButton22.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
			end)

			TextButton22.MouseButton1Up:Connect(function()
				TextButton22.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
			end)

			TextButton22.MouseLeave:Connect(function()
			end)

			local TextButton23 = Instance.new("TextButton")
			TextButton23.Size = UDim2.new(0.5, -2, 1, 0)
			TextButton23.BackgroundColor3 = Color3.fromRGB(120, 45, 45)
			TextButton23.BorderSizePixel = 0
			TextButton23.Text = "− DEL"
			TextButton23.TextColor3 = Color3.fromRGB(255, 200, 200)
			TextButton23.Font = Enum.Font.GothamBold
			TextButton23.TextSize = 9
			TextButton23.AutoButtonColor = false
			TextButton23.LayoutOrder = 2
			TextButton23.Parent = Frame89
			local UICorner87 = Instance.new("UICorner", TextButton23)
			UICorner87.CornerRadius = UDim.new(0, 3)

			TextButton23.MouseButton1Down:Connect(function(x6, y6)
				TextButton23.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
			end)

			TextButton23.MouseButton1Up:Connect(function()
				TextButton23.BackgroundColor3 = Color3.fromRGB(120, 45, 45)
			end)

			TextButton23.MouseLeave:Connect(function()
			end)

			local Frame90 = Instance.new("Frame", Body2)
			Frame90.Size = UDim2.new(1, -12, 0, 18)
			Frame90.Position = UDim2.new(0, 6, 0, 137)
			Frame90.BackgroundTransparency = 1
			local TextButton24 = Instance.new("TextButton", Frame90)
			TextButton24.Size = UDim2.new(1, 0, 1, 0)
			TextButton24.BackgroundColor3 = Color3.fromRGB(120, 45, 45)
			TextButton24.BorderSizePixel = 0
			TextButton24.Text = "✕  CLOSE"
			TextButton24.TextColor3 = Color3.fromRGB(255, 200, 200)
			TextButton24.Font = Enum.Font.GothamBold
			TextButton24.TextSize = 9
			TextButton24.AutoButtonColor = false
			local UICorner88 = Instance.new("UICorner", TextButton24)
			UICorner88.CornerRadius = UDim.new(0, 3)

			TextButton24.MouseButton1Down:Connect(function(x7, y7)
				TextButton24.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
			end)

			TextButton24.MouseButton1Up:Connect(function()
				TextButton24.BackgroundColor3 = Color3.fromRGB(120, 45, 45)
			end)

			TextButton24.MouseLeave:Connect(function()
			end)

			TextButton24.MouseButton1Click:Connect(function()
				W424_COPY_AVA:Destroy()
				Toggle:Set(false)
				print("[W424 CopyAva] GUI closed")
			end)

			TextButton15.MouseButton1Click:Connect(function()
				local tween35 = TweenService:Create(MainBox4, TweenInfo.new(0.28, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.new(0, 175, 0, 24) })
				tween35:Play()
				local tween36 = TweenService:Create(Body2, TweenInfo.new(0.28, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = UDim2.new(0, 0, 0, -167) })
				tween36:Play()
				TextButton15.Text = "+"
			end)

			Frame83.InputBegan:Connect(function(input26, gameProcessed26)
			end)

			UserInputService.InputChanged:Connect(function(input27, gameProcessed27)
			end)

			UserInputService.InputEnded:Connect(function(input28, gameProcessed28)
			end)

			ScrollingFrame2:GetChildren()
			local players21 = Players:GetPlayers()

			for i28, v93 in ipairs(players21) do
				local TextButton25 = Instance.new("TextButton", ScrollingFrame2)
				TextButton25.Size = UDim2.new(1, -4, 0, 20)
				TextButton25.Text = "  " .. v93.DisplayName
				TextButton25.Font = Enum.Font.Gotham
				TextButton25.TextSize = 10
				TextButton25.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
				TextButton25.TextColor3 = Color3.fromRGB(220, 220, 220)
				TextButton25.TextXAlignment = Enum.TextXAlignment.Left
				TextButton25.BorderSizePixel = 0
				TextButton25.AutoButtonColor = false
				local UICorner89 = Instance.new("UICorner", TextButton25)
				UICorner89.CornerRadius = UDim.new(0, 3)

				TextButton25.MouseButton1Down:Connect(function(x8, y8)
					TextButton25.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
				end)

				TextButton25.MouseButton1Up:Connect(function()
					TextButton25.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
				end)

				TextButton25.MouseLeave:Connect(function()
				end)

				TextButton25.MouseEnter:Connect(function()
					TextButton25.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
				end)

				TextButton25.MouseLeave:Connect(function()
					TextButton25.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
				end)

				TextButton25.MouseButton1Click:Connect(function()
					TextButton18.Text = "  " .. v93.Name
					TextButton18.TextColor3 = Color3.fromRGB(230, 230, 230)
					TextLabel123.Text = "Selected: " .. v93.Name
					ScrollingFrame2.Visible = false
				end)
			end

			Players.PlayerAdded:Connect(function(player6)
				task.wait(0.1)
				ScrollingFrame2:GetChildren()
				local players26 = Players:GetPlayers()

				for i39, v109 in ipairs(players26) do
					local TextButton41 = Instance.new("TextButton", ScrollingFrame2)
					TextButton41.Size = UDim2.new(1, -4, 0, 20)
					TextButton41.Text = "  " .. v109.DisplayName
					TextButton41.Font = Enum.Font.Gotham
					TextButton41.TextSize = 10
					TextButton41.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
					TextButton41.TextColor3 = Color3.fromRGB(220, 220, 220)
					TextButton41.TextXAlignment = Enum.TextXAlignment.Left
					TextButton41.BorderSizePixel = 0
					TextButton41.AutoButtonColor = false
					local UICorner109 = Instance.new("UICorner", TextButton41)
					UICorner109.CornerRadius = UDim.new(0, 3)

					TextButton41.MouseButton1Down:Connect(function(x9, y9)
						TextButton41.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
					end)

					TextButton41.MouseButton1Up:Connect(function()
						TextButton41.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
					end)

					TextButton41.MouseLeave:Connect(function()
					end)

					TextButton41.MouseEnter:Connect(function()
						TextButton41.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
					end)

					TextButton41.MouseLeave:Connect(function()
						TextButton41.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
					end)

					TextButton41.MouseButton1Click:Connect(function()
						TextButton18.Text = "  " .. v109.Name
						TextButton18.TextColor3 = Color3.fromRGB(230, 230, 230)
						TextLabel123.Text = "Selected: " .. v109.Name
						ScrollingFrame2.Visible = false
					end)
				end
			end)

			Players.PlayerRemoving:Connect(function(player7)
				task.wait(0.1)
				ScrollingFrame2:GetChildren()
				TextButton41:Destroy()
				local players27 = Players:GetPlayers()

				for i40, v110 in ipairs(players27) do
					local TextButton42 = Instance.new("TextButton", ScrollingFrame2)
					TextButton42.Size = UDim2.new(1, -4, 0, 20)
					TextButton42.Text = "  " .. v110.DisplayName
					TextButton42.Font = Enum.Font.Gotham
					TextButton42.TextSize = 10
					TextButton42.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
					TextButton42.TextColor3 = Color3.fromRGB(220, 220, 220)
					TextButton42.TextXAlignment = Enum.TextXAlignment.Left
					TextButton42.BorderSizePixel = 0
					TextButton42.AutoButtonColor = false
					local UICorner110 = Instance.new("UICorner", TextButton42)
					UICorner110.CornerRadius = UDim.new(0, 3)

					TextButton42.MouseButton1Down:Connect(function(x10, y10)
						TextButton42.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
					end)

					TextButton42.MouseButton1Up:Connect(function()
						TextButton42.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
					end)

					TextButton42.MouseLeave:Connect(function()
					end)

					TextButton42.MouseEnter:Connect(function()
						TextButton42.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
					end)

					TextButton42.MouseLeave:Connect(function()
						TextButton42.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
					end)

					TextButton42.MouseButton1Click:Connect(function()
						TextButton18.Text = "  " .. v110.Name
						TextButton18.TextColor3 = Color3.fromRGB(230, 230, 230)
						TextLabel123.Text = "Selected: " .. v110.Name
						ScrollingFrame2.Visible = false
					end)
				end
			end)

			TextButton18.MouseButton1Click:Connect(function()
				ScrollingFrame2.Visible = true
				ScrollingFrame2:GetChildren()
				TextButton42:Destroy()
				local players28 = Players:GetPlayers()

				for i41, v111 in ipairs(players28) do
					local TextButton43 = Instance.new("TextButton", ScrollingFrame2)
					TextButton43.Size = UDim2.new(1, -4, 0, 20)
					TextButton43.Text = "  " .. v111.DisplayName
					TextButton43.Font = Enum.Font.Gotham
					TextButton43.TextSize = 10
					TextButton43.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
					TextButton43.TextColor3 = Color3.fromRGB(220, 220, 220)
					TextButton43.TextXAlignment = Enum.TextXAlignment.Left
					TextButton43.BorderSizePixel = 0
					TextButton43.AutoButtonColor = false
					local UICorner111 = Instance.new("UICorner", TextButton43)
					UICorner111.CornerRadius = UDim.new(0, 3)

					TextButton43.MouseButton1Down:Connect(function(x11, y11)
						TextButton43.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
					end)

					TextButton43.MouseButton1Up:Connect(function()
						TextButton43.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
					end)

					TextButton43.MouseLeave:Connect(function()
					end)

					TextButton43.MouseEnter:Connect(function()
						TextButton43.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
					end)

					TextButton43.MouseLeave:Connect(function()
						TextButton43.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
					end)

					TextButton43.MouseButton1Click:Connect(function()
						TextButton18.Text = "  " .. v111.Name
						TextButton18.TextColor3 = Color3.fromRGB(230, 230, 230)
						TextLabel123.Text = "Selected: " .. v111.Name
						ScrollingFrame2.Visible = false
					end)
				end
			end)

			ScrollingFrame3:GetChildren()

			TextButton19.MouseButton1Click:Connect(function()
				task.spawn(function(...)
					local result26 = tostring(v93.UserId):gsub("%s+", "")
					local result27 = result26:gsub("^@", "")
					local nameFromUserIdAsync = Players:GetNameFromUserIdAsync(tonumber(result27))
					local Humanoid18 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
					local characterAppearanceAsync3 = Players:GetCharacterAppearanceAsync(tonumber(result27))
					Players.LocalPlayer.Character:GetChildren()
					clone:Destroy()
					clone2:Destroy()
					clone3:Destroy()
					clone4:Destroy()
					local Head3 = Players.LocalPlayer.Character:FindFirstChild("Head")
					local SpecialMesh5 = Head3:FindFirstChildOfClass("SpecialMesh")
					SpecialMesh5:Destroy()
					local face2 = Head3:FindFirstChild("face")
					face2:Destroy()
					local characterAppearanceInfoAsync3 = Players:GetCharacterAppearanceInfoAsync(tonumber(result27))

					for k71, v112 in pairs(characterAppearanceInfoAsync3.scales) do
						local child15 = Humanoid18:FindFirstChild(k71)
						child15.Value = v112
					end

					task.wait(0.2)
					local children37 = characterAppearanceAsync3:GetChildren()

					for k72, v113 in pairs(children37) do
					end

					local clone5 = v113:Clone()
					clone5.Parent = Players.LocalPlayer.Character
					local SpecialMesh6 = Head3:FindFirstChildOfClass("SpecialMesh")
					SpecialMesh6:Destroy()
					local clone6 = v113:Clone()
					clone6.Parent = Head3

					task.spawn(function()
						for k73, v114 in pairs(characterAppearanceInfoAsync3.assets) do
						end
					end)

					characterAppearanceAsync3:Destroy()

					local connection68 = Players.LocalPlayer.CharacterAdded:Connect(function(character40)
						task.wait(1)
					end)

					notif(tostring("Berhasil copy " .. nameFromUserIdAsync), 2)
					print("[FEBZ CopyAva]", "Berhasil copy " .. nameFromUserIdAsync)
				end)
			end)

			TextButton20.MouseButton1Click:Connect(function()
				task.spawn(function(...)
					local nameFromUserIdAsync2 = Players:GetNameFromUserIdAsync(5261700291)
					connection68:Disconnect()
					local Humanoid19 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
					local characterAppearanceAsync4 = Players:GetCharacterAppearanceAsync(5261700291)
					Players.LocalPlayer.Character:GetChildren()
					clone:Destroy()
					clone2:Destroy()
					clone3:Destroy()
					clone4:Destroy()
					clone5:Destroy()
					local Head4 = Players.LocalPlayer.Character:FindFirstChild("Head")
					local SpecialMesh7 = Head4:FindFirstChildOfClass("SpecialMesh")
					SpecialMesh7:Destroy()
					local face3 = Head4:FindFirstChild("face")
					face3:Destroy()
					local characterAppearanceInfoAsync4 = Players:GetCharacterAppearanceInfoAsync(5261700291)

					for k74, v115 in pairs(characterAppearanceInfoAsync4.scales) do
						local child16 = Humanoid19:FindFirstChild(k74)
						child16.Value = v115
					end

					task.wait(0.2)
					local children38 = characterAppearanceAsync4:GetChildren()

					for k75, v116 in pairs(children38) do
					end

					local clone7 = v116:Clone()
					clone7.Parent = Players.LocalPlayer.Character
					local SpecialMesh8 = Head4:FindFirstChildOfClass("SpecialMesh")
					SpecialMesh8:Destroy()
					local clone8 = v116:Clone()
					clone8.Parent = Head4

					task.spawn(function()
						for k76, v117 in pairs(characterAppearanceInfoAsync4.assets) do
						end
					end)

					characterAppearanceAsync4:Destroy()

					local connection69 = Players.LocalPlayer.CharacterAdded:Connect(function(character41)
						task.wait(1)
					end)

					notif(tostring("Berhasil copy " .. nameFromUserIdAsync2), 2)
					print("[FEBZ CopyAva]", "Berhasil copy " .. nameFromUserIdAsync2)
				end)
			end)

			TextButton21.MouseButton1Click:Connect(function()
				connection69:Disconnect()

				task.spawn(function(...)
					local Humanoid20 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
					local characterAppearanceAsync5 = Players:GetCharacterAppearanceAsync(0)
					Players.LocalPlayer.Character:GetChildren()
					clone:Destroy()
					clone2:Destroy()
					clone3:Destroy()
					clone4:Destroy()
					clone5:Destroy()
					clone7:Destroy()
					local Head5 = Players.LocalPlayer.Character:FindFirstChild("Head")
					local SpecialMesh9 = Head5:FindFirstChildOfClass("SpecialMesh")
					SpecialMesh9:Destroy()
					local face4 = Head5:FindFirstChild("face")
					face4:Destroy()
					local characterAppearanceInfoAsync5 = Players:GetCharacterAppearanceInfoAsync(0)

					for k77, v118 in pairs(characterAppearanceInfoAsync5.scales) do
						local child17 = Humanoid20:FindFirstChild(k77)
						child17.Value = v118
					end

					task.wait(0.2)
					local children39 = characterAppearanceAsync5:GetChildren()

					for k78, v119 in pairs(children39) do
					end

					local clone9 = v119:Clone()
					clone9.Parent = Players.LocalPlayer.Character
					local SpecialMesh10 = Head5:FindFirstChildOfClass("SpecialMesh")
					SpecialMesh10:Destroy()
					local clone10 = v119:Clone()
					clone10.Parent = Head5

					task.spawn(function()
						for k79, v120 in pairs(characterAppearanceInfoAsync5.assets) do
						end
					end)

					characterAppearanceAsync5:Destroy()
					notif("Avatar direset", 2)
					print("[FEBZ CopyAva]", "Avatar direset")
				end)
			end)

			TextButton22.MouseButton1Click:Connect(function()
				notif("Tidak ada avatar", 2)
				print("[FEBZ CopyAva]", "Tidak ada avatar")
			end)

			TextButton23.MouseButton1Click:Connect(function()
				notif("Pilih favorite dulu", 2)
				print("[FEBZ CopyAva]", "Pilih favorite dulu")
			end)

			notif("FEBZ HUB Copy Ava loaded", 2)
			print("[FEBZ CopyAva]", "FEBZ HUB Copy Ava loaded")
			print("✅ FEBZ HUB COPY AVA ready with close button")
		else
			CoreGui:FindFirstChild("W424_COPY_AVA")
			W424_COPY_AVA:Destroy()
		end
	end
})

Players.LocalPlayer.CharacterAdded:Connect(function(character26)
end)

local Section28 = Tab5:AddSection("Fake Karloss")

Section28:AddToggle({
	Title = "Korless Morph",
	Default = false,
	Callback = function(state)
		if state then
			task.wait()
			game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			game.Players.LocalPlayer.Character:FindFirstChild("Right Leg")
			task.wait(0.1)
			game.Players.LocalPlayer.Character.Head.Transparency = 1
			local face = game.Players.LocalPlayer.Character.Head:FindFirstChild("face")
			face:Destroy()
			game.Players.LocalPlayer.Character["Right Leg"].Transparency = 1
			local KorlessHead2 = Instance.new("MeshPart")
			KorlessHead2.Name = "KorlessHead"
			KorlessHead2.Size = Vector3.new(1.5, 1.5, 1.5)
			KorlessHead2.CanCollide = false
			KorlessHead2.MeshId = "rbxassetid://902942096"
			KorlessHead2.TextureID = "rbxassetid://902843398"
			KorlessHead2.CFrame = (game.Players.LocalPlayer.Character["Right Leg"].CFrame * CFrame.new(0, 0.5, 0))
			KorlessHead2.Parent = game.Players.LocalPlayer.Character
			local WeldConstraint = Instance.new("WeldConstraint")
			WeldConstraint.Part0 = game.Players.LocalPlayer.Character["Right Leg"]
			WeldConstraint.Part1 = KorlessHead2
			WeldConstraint.Parent = KorlessHead2

			local connection32 = game.Players.LocalPlayer.CharacterAdded:Connect(function(character27)
				task.wait(1)
				task.wait()
				game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				game.Players.LocalPlayer.Character:FindFirstChild("Right Leg")
				task.wait(0.1)
				game.Players.LocalPlayer.Character.Head.Transparency = 1
				local face5 = game.Players.LocalPlayer.Character.Head:FindFirstChild("face")
				face5:Destroy()
				game.Players.LocalPlayer.Character["Right Leg"].Transparency = 1
				local KorlessHead3 = Instance.new("MeshPart")
				KorlessHead3.Name = "KorlessHead"
				KorlessHead3.Size = Vector3.new(1.5, 1.5, 1.5)
				KorlessHead3.CanCollide = false
				KorlessHead3.MeshId = "rbxassetid://902942096"
				KorlessHead3.TextureID = "rbxassetid://902843398"
				KorlessHead3.CFrame = (game.Players.LocalPlayer.Character["Right Leg"].CFrame * CFrame.new(0, 0.5, 0))
				KorlessHead3.Parent = game.Players.LocalPlayer.Character
				local WeldConstraint2 = Instance.new("WeldConstraint")
				WeldConstraint2.Part0 = game.Players.LocalPlayer.Character["Right Leg"]
				WeldConstraint2.Part1 = KorlessHead3
				WeldConstraint2.Parent = KorlessHead3
			end)

			Library:Notify({ Title = "Korless Morph", Description = "Diaktifkan", Duration = 3 })
		else
			local KorlessHead = Players.LocalPlayer.Character:FindFirstChild("KorlessHead")
			KorlessHead:Destroy()
			Players.LocalPlayer.Character:FindFirstChild("Head")
			Players.LocalPlayer.Character.Head.Transparency = 0
			Players.LocalPlayer.Character:FindFirstChild("Right Leg")
			Players.LocalPlayer.Character["Right Leg"].Transparency = 0
			connection32:Disconnect()
			Library:Notify({ Title = "Korless Morph", Description = "Dinonaktifkan", Duration = 3 })
		end
	end
})

local Section29 = Tab5:AddSection("Jerk Tools")

Section29:AddButton({
	Title = "Tools Jerk",
	Callback = function(state)
		if state then
			local response6 = game:HttpGet("https://pastefy.app/wa3v2Vgm/raw")
			loadstring(response6)()
		else
			local response7 = game:HttpGet("https://pastefy.app/wa3v2Vgm/raw")
			loadstring(response7)()
		end

		notif("Tools Jerk berhasil dimuat!", 3)
	end
})

UserInputService.InputBegan:Connect(function(input29, gameProcessed29)
end)

UserInputService.InputEnded:Connect(function(input30, gameProcessed30)
end)

-- isfile("Meng Hub_Violence/MengCrosshairConfig.json") -> false
local Section30 = Tab6:AddSection("Aimbot Features")

Section30:AddToggle({
	Title = "Enable Aimbot",
	Default = false,
	Callback = function(state)
		if state then
			local thread17 = task.spawn(function()
				Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local players22 = Players:GetPlayers()

				for k66, v94 in pairs(players22) do
					v94.Character:FindFirstChild("HumanoidRootPart")
					v94.Character:FindFirstChildOfClass("Humanoid")
				end
				-- [envlog] error: Luraph Script:11244: Luraph Script:11220: Script:3: attempt to compare number < userdata
			end)
		else
			task.cancel(thread17)
		end
	end
})

Section30:AddToggle({
	Title = "Hold RMB / Touch to Aim",
	Default = false,
	Callback = function()
	end
})

Section30:AddToggle({
	Title = "Enable Crosshair",
	Default = false,
	Callback = function(state)
		if state then
			local CustomCrosshair_ViolenceDistrict = CoreGui:FindFirstChild("CustomCrosshair_ViolenceDistrict")
			CustomCrosshair_ViolenceDistrict:Destroy()
			local UIStroke68 = Instance.new("UIStroke")
			UIStroke68.Thickness = 1
			UIStroke68.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke68.Color = Color3.fromRGB(0, 0, 0)
			local Left = Instance.new("Frame")
			Left.AnchorPoint = Vector2.new(1, 0.5)
			Left.Name = "Left"
			Left.Position = UDim2.new(0, -1, 0, 0)
			Left.BackgroundColor3 = Color3.fromRGB(255, 75, 75)
			Left.BorderSizePixel = 0
			Left.Size = UDim2.new(0, 6, 0, 3)
			UIStroke68.Parent = Left
			local UIStroke69 = Instance.new("UIStroke")
			UIStroke69.Thickness = 1
			UIStroke69.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke69.Color = Color3.fromRGB(0, 0, 0)
			local Right = Instance.new("Frame")
			Right.AnchorPoint = Vector2.new(0, 0.5)
			Right.Name = "Right"
			Right.Position = UDim2.new(0, 1, 0, 0)
			Right.BackgroundColor3 = Color3.fromRGB(255, 75, 75)
			Right.BorderSizePixel = 0
			Right.Size = UDim2.new(0, 6, 0, 3)
			UIStroke69.Parent = Right
			local UIStroke70 = Instance.new("UIStroke")
			UIStroke70.Thickness = 1
			UIStroke70.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke70.Color = Color3.fromRGB(0, 0, 0)
			local Top = Instance.new("Frame")
			Top.AnchorPoint = Vector2.new(0.5, 1)
			Top.Name = "Top"
			Top.Position = UDim2.new(0, 0, 0, -1)
			Top.BackgroundColor3 = Color3.fromRGB(255, 75, 75)
			Top.BorderSizePixel = 0
			Top.Size = UDim2.new(0, 3, 0, 6)
			UIStroke70.Parent = Top
			local UIStroke71 = Instance.new("UIStroke")
			UIStroke71.Thickness = 1
			UIStroke71.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke71.Color = Color3.fromRGB(0, 0, 0)
			local Bottom = Instance.new("Frame")
			Bottom.AnchorPoint = Vector2.new(0.5, 0)
			Bottom.Name = "Bottom"
			Bottom.Position = UDim2.new(0, 0, 0, 1)
			Bottom.BackgroundColor3 = Color3.fromRGB(255, 75, 75)
			Bottom.BorderSizePixel = 0
			Bottom.Size = UDim2.new(0, 3, 0, 6)
			UIStroke71.Parent = Bottom
			local Center = Instance.new("Frame")
			Center.AnchorPoint = Vector2.new(0.5, 0.5)
			Center.Name = "Center"
			Center.Position = UDim2.new(0.5, 0, 0.5, 0)
			Center.BackgroundTransparency = 1
			Center.Size = UDim2.new(0, 0, 0, 0)
			Left.Parent = Center
			Right.Parent = Center
			Top.Parent = Center
			Bottom.Parent = Center
			local CustomCrosshair_ViolenceDistrict2 = Instance.new("ScreenGui")
			CustomCrosshair_ViolenceDistrict2.ResetOnSpawn = false
			CustomCrosshair_ViolenceDistrict2.Parent = CoreGui
			CustomCrosshair_ViolenceDistrict2.Name = "CustomCrosshair_ViolenceDistrict"
			CustomCrosshair_ViolenceDistrict2.DisplayOrder = 999999
			Center.Parent = CustomCrosshair_ViolenceDistrict2
		else
			CoreGui:FindFirstChild("CustomCrosshair_ViolenceDistrict")
			CustomCrosshair_ViolenceDistrict2:Destroy()
		end
	end
})

Section30:AddButton({
	Title = "Open Crosshair Settings",
	Callback = function(state)
		if state then
			local UICorner90 = Instance.new("UICorner")
			UICorner90.CornerRadius = UDim.new(0, 4)
			local UIPadding = Instance.new("UIPadding")
			UIPadding.PaddingBottom = UDim.new(0, 10)
			UIPadding.PaddingTop = UDim.new(0, 10)
			UIPadding.PaddingLeft = UDim.new(0, 10)
			UIPadding.PaddingRight = UDim.new(0, 10)
			local TextLabel124 = Instance.new("TextLabel")
			TextLabel124.Font = Enum.Font.Gotham
			TextLabel124.BackgroundTransparency = 1
			TextLabel124.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel124.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel124.Text = "Settings"
			TextLabel124.TextSize = 11
			TextLabel124.Size = UDim2.new(1, 0, 0, 16)
			local Frame96 = Instance.new("Frame")
			Frame96.LayoutOrder = 1
			Frame96.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
			Frame96.BorderSizePixel = 0
			Frame96.Size = UDim2.new(1, 0, 0, 1)
			local UIListLayout15 = Instance.new("UIListLayout")
			UIListLayout15.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout15.Padding = UDim.new(0, 8)
			local TextBox2 = Instance.new("TextBox")
			TextBox2.ClearTextOnFocus = false
			TextBox2.Font = Enum.Font.Gotham
			TextBox2.BackgroundTransparency = 1
			TextBox2.Position = UDim2.new(0.325, 0, 0, 0)
			TextBox2.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextBox2.Text = "0"
			TextBox2.TextSize = 11
			TextBox2.Size = UDim2.new(0.35, 0, 1, 0)
			local UICorner91 = Instance.new("UICorner")
			UICorner91.CornerRadius = UDim.new(0, 3)
			local TextButton26 = Instance.new("TextButton")
			TextButton26.BorderSizePixel = 0
			TextButton26.Font = Enum.Font.Gotham
			TextButton26.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
			TextButton26.Position = UDim2.new(0, 0, 0, 0)
			TextButton26.TextColor3 = Color3.fromRGB(180, 180, 180)
			TextButton26.Text = "-"
			TextButton26.TextSize = 13
			TextButton26.Size = UDim2.new(0.3, 0, 1, 0)
			UICorner91.Parent = TextButton26
			local UICorner92 = Instance.new("UICorner")
			UICorner92.CornerRadius = UDim.new(0, 3)
			local TextButton27 = Instance.new("TextButton")
			TextButton27.BorderSizePixel = 0
			TextButton27.Font = Enum.Font.Gotham
			TextButton27.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
			TextButton27.Position = UDim2.new(0.7, 0, 0, 0)
			TextButton27.TextColor3 = Color3.fromRGB(180, 180, 180)
			TextButton27.Text = "+"
			TextButton27.TextSize = 13
			TextButton27.Size = UDim2.new(0.3, 0, 1, 0)
			UICorner92.Parent = TextButton27

			TextButton26.MouseButton1Click:Connect(function()
				TextBox2.Text = "-5"
			end)

			TextButton27.MouseButton1Click:Connect(function()
				TextBox2.Text = "0"
			end)

			TextBox2.FocusLost:Connect(function(enterPressed, inputObject)
				TextBox2.Text = "0"
			end)

			local TextLabel125 = Instance.new("TextLabel")
			TextLabel125.Font = Enum.Font.Gotham
			TextLabel125.BackgroundTransparency = 1
			TextLabel125.TextColor3 = Color3.fromRGB(120, 120, 120)
			TextLabel125.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel125.Text = "Offset X"
			TextLabel125.TextSize = 11
			TextLabel125.Size = UDim2.new(0.5, 0, 1, 0)
			local Frame97 = Instance.new("Frame")
			Frame97.Position = UDim2.new(0.5, 0, 0, 0)
			Frame97.BackgroundTransparency = 1
			Frame97.Size = UDim2.new(0.5, 0, 1, 0)
			TextBox2.Parent = Frame97
			TextButton26.Parent = Frame97
			TextButton27.Parent = Frame97
			local Frame98 = Instance.new("Frame")
			Frame98.BackgroundTransparency = 1
			Frame98.Size = UDim2.new(1, 0, 0, 26)
			TextLabel125.Parent = Frame98
			Frame97.Parent = Frame98
			local TextBox3 = Instance.new("TextBox")
			TextBox3.ClearTextOnFocus = false
			TextBox3.Font = Enum.Font.Gotham
			TextBox3.BackgroundTransparency = 1
			TextBox3.Position = UDim2.new(0.325, 0, 0, 0)
			TextBox3.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextBox3.Text = "0"
			TextBox3.TextSize = 11
			TextBox3.Size = UDim2.new(0.35, 0, 1, 0)
			local UICorner93 = Instance.new("UICorner")
			UICorner93.CornerRadius = UDim.new(0, 3)
			local TextButton28 = Instance.new("TextButton")
			TextButton28.BorderSizePixel = 0
			TextButton28.Font = Enum.Font.Gotham
			TextButton28.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
			TextButton28.Position = UDim2.new(0, 0, 0, 0)
			TextButton28.TextColor3 = Color3.fromRGB(180, 180, 180)
			TextButton28.Text = "-"
			TextButton28.TextSize = 13
			TextButton28.Size = UDim2.new(0.3, 0, 1, 0)
			UICorner93.Parent = TextButton28
			local UICorner94 = Instance.new("UICorner")
			UICorner94.CornerRadius = UDim.new(0, 3)
			local TextButton29 = Instance.new("TextButton")
			TextButton29.BorderSizePixel = 0
			TextButton29.Font = Enum.Font.Gotham
			TextButton29.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
			TextButton29.Position = UDim2.new(0.7, 0, 0, 0)
			TextButton29.TextColor3 = Color3.fromRGB(180, 180, 180)
			TextButton29.Text = "+"
			TextButton29.TextSize = 13
			TextButton29.Size = UDim2.new(0.3, 0, 1, 0)
			UICorner94.Parent = TextButton29

			TextButton28.MouseButton1Click:Connect(function()
				TextBox3.Text = "-5"
			end)

			TextButton29.MouseButton1Click:Connect(function()
				TextBox3.Text = "0"
			end)

			TextBox3.FocusLost:Connect(function(enterPressed2, inputObject2)
				TextBox3.Text = "0"
			end)

			local TextLabel126 = Instance.new("TextLabel")
			TextLabel126.Font = Enum.Font.Gotham
			TextLabel126.BackgroundTransparency = 1
			TextLabel126.TextColor3 = Color3.fromRGB(120, 120, 120)
			TextLabel126.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel126.Text = "Offset Y"
			TextLabel126.TextSize = 11
			TextLabel126.Size = UDim2.new(0.5, 0, 1, 0)
			local Frame99 = Instance.new("Frame")
			Frame99.Position = UDim2.new(0.5, 0, 0, 0)
			Frame99.BackgroundTransparency = 1
			Frame99.Size = UDim2.new(0.5, 0, 1, 0)
			TextBox3.Parent = Frame99
			TextButton28.Parent = Frame99
			TextButton29.Parent = Frame99
			local Frame100 = Instance.new("Frame")
			Frame100.BackgroundTransparency = 1
			Frame100.Size = UDim2.new(1, 0, 0, 26)
			TextLabel126.Parent = Frame100
			Frame99.Parent = Frame100
			local TextBox4 = Instance.new("TextBox")
			TextBox4.ClearTextOnFocus = false
			TextBox4.Font = Enum.Font.Gotham
			TextBox4.BackgroundTransparency = 1
			TextBox4.Position = UDim2.new(0.325, 0, 0, 0)
			TextBox4.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextBox4.Text = "12"
			TextBox4.TextSize = 11
			TextBox4.Size = UDim2.new(0.35, 0, 1, 0)
			local UICorner95 = Instance.new("UICorner")
			UICorner95.CornerRadius = UDim.new(0, 3)
			local TextButton30 = Instance.new("TextButton")
			TextButton30.BorderSizePixel = 0
			TextButton30.Font = Enum.Font.Gotham
			TextButton30.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
			TextButton30.Position = UDim2.new(0, 0, 0, 0)
			TextButton30.TextColor3 = Color3.fromRGB(180, 180, 180)
			TextButton30.Text = "-"
			TextButton30.TextSize = 13
			TextButton30.Size = UDim2.new(0.3, 0, 1, 0)
			UICorner95.Parent = TextButton30
			local UICorner96 = Instance.new("UICorner")
			UICorner96.CornerRadius = UDim.new(0, 3)
			local TextButton31 = Instance.new("TextButton")
			TextButton31.BorderSizePixel = 0
			TextButton31.Font = Enum.Font.Gotham
			TextButton31.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
			TextButton31.Position = UDim2.new(0.7, 0, 0, 0)
			TextButton31.TextColor3 = Color3.fromRGB(180, 180, 180)
			TextButton31.Text = "+"
			TextButton31.TextSize = 13
			TextButton31.Size = UDim2.new(0.3, 0, 1, 0)
			UICorner96.Parent = TextButton31

			TextButton30.MouseButton1Click:Connect(function()
				TextBox4.Text = "10"
			end)

			TextButton31.MouseButton1Click:Connect(function()
				TextBox4.Text = "12"
			end)

			TextBox4.FocusLost:Connect(function(enterPressed3, inputObject3)
				TextBox4.Text = "12"
			end)

			local TextLabel127 = Instance.new("TextLabel")
			TextLabel127.Font = Enum.Font.Gotham
			TextLabel127.BackgroundTransparency = 1
			TextLabel127.TextColor3 = Color3.fromRGB(120, 120, 120)
			TextLabel127.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel127.Text = "Size"
			TextLabel127.TextSize = 11
			TextLabel127.Size = UDim2.new(0.5, 0, 1, 0)
			local Frame101 = Instance.new("Frame")
			Frame101.Position = UDim2.new(0.5, 0, 0, 0)
			Frame101.BackgroundTransparency = 1
			Frame101.Size = UDim2.new(0.5, 0, 1, 0)
			TextBox4.Parent = Frame101
			TextButton30.Parent = Frame101
			TextButton31.Parent = Frame101
			local Frame102 = Instance.new("Frame")
			Frame102.BackgroundTransparency = 1
			Frame102.Size = UDim2.new(1, 0, 0, 26)
			TextLabel127.Parent = Frame102
			Frame101.Parent = Frame102
			local MainPanel = Instance.new("Frame")
			MainPanel.Draggable = true
			MainPanel.Name = "MainPanel"
			MainPanel.Position = UDim2.new(0.5, -100, 0.5, -85)
			MainPanel.Active = true
			MainPanel.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
			MainPanel.BorderSizePixel = 0
			MainPanel.Size = UDim2.new(0, 200, 0, 170)
			UICorner90.Parent = MainPanel
			UIPadding.Parent = MainPanel
			TextLabel124.Parent = MainPanel
			Frame96.Parent = MainPanel
			UIListLayout15.Parent = MainPanel
			Frame98.Parent = MainPanel
			Frame100.Parent = MainPanel
			Frame102.Parent = MainPanel
			local UICorner97 = Instance.new("UICorner")
			UICorner97.CornerRadius = UDim.new(0, 3)
			local TextButton32 = Instance.new("TextButton")
			TextButton32.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
			TextButton32.Font = Enum.Font.Gotham
			TextButton32.BorderSizePixel = 0
			TextButton32.TextColor3 = Color3.fromRGB(180, 180, 180)
			TextButton32.Parent = MainPanel
			TextButton32.Text = "Save and Close"
			TextButton32.TextSize = 11
			TextButton32.Size = UDim2.new(1, 0, 0, 24)
			UICorner97.Parent = TextButton32
			local CrosshairSettings = Instance.new("ScreenGui")
			CrosshairSettings.ResetOnSpawn = false
			CrosshairSettings.Parent = CoreGui
			CrosshairSettings.Name = "CrosshairSettings"
			CrosshairSettings.DisplayOrder = 999998
			MainPanel.Parent = CrosshairSettings

			TextButton32.MouseButton1Click:Connect(function()
				local json = HttpService:JSONEncode({ OffsetX = 0, OffsetY = 0, Size = 12 })
				writefile("Meng Hub_Violence/MengCrosshairConfig.json", json)
				-- [envlog] error: Luraph Script:11501: Script:3: attempt to index nil with 'Destroy'
			end)
		else
			CrosshairSettings:Destroy()
		end
	end
})

_G.FirstCursor = true
local Section31 = Tab7:AddSection("Cursor Features")

Section31:AddToggle({
	Title = "Enable/Disable Cursor",
	Keybind = true,
	Value = false,
	Callback = function(state)
		if state then
			UserInputService.MouseIconEnabled = state
			UserInputService.MouseBehavior = Enum.MouseBehavior.Default
		else
			UserInputService.MouseIconEnabled = false
			UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
		end
	end
})

local Section32 = Tab6:AddSection("Aim Flashlight Features")

UserInputService.InputBegan:Connect(function(input31, gameProcessed31)
end)

UserInputService.InputEnded:Connect(function(input32, gameProcessed32)
end)

task.spawn(function()
	local PlayerGui11 = Players.LocalPlayer:FindFirstChild("PlayerGui")
	local Survivormob2 = PlayerGui11:FindFirstChild("Survivor-mob")
	local Controls3 = Survivormob2:FindFirstChild("Controls")
	local descendants18 = Controls3:GetDescendants()

	for i29, v95 in ipairs(descendants18) do
		local result20 = v95.Name:lower()
		result20:find("gui-mob", 1, true)

		v95.InputBegan:Connect(function(input33, gameProcessed33)
		end)

		v95.InputEnded:Connect(function(input34, gameProcessed34)
		end)
	end
end)

Players.LocalPlayer.CharacterAdded:Connect(function(character28)
	task.wait(2)

	task.spawn(function()
		local PlayerGui11 = Players.LocalPlayer:FindFirstChild("PlayerGui")
		local Survivormob2 = PlayerGui11:FindFirstChild("Survivor-mob")
		local Controls3 = Survivormob2:FindFirstChild("Controls")
		local descendants18 = Controls3:GetDescendants()

		for i29, v95 in ipairs(descendants18) do
			local result20 = v95.Name:lower()
			result20:find("gui-mob", 1, true)

			v95.InputBegan:Connect(function(input33, gameProcessed33)
			end)

			v95.InputEnded:Connect(function(input34, gameProcessed34)
			end)
		end
	end)
end)

Section32:AddToggle({
	Title = "Aim Flashlight",
	Content = "Laser + Lock camera ke killer",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			local connection33 = RunService.RenderStepped:Connect(function(deltaTime11)
			end)

			notif("Aim Flashlight: ON")
		else
			connection33:Disconnect()
			notif("Aim Flashlight: OFF")
		end
	end
})

for _, item in ipairs({
	{ title = "Hold Mode", content = "PC: tahan M2 / Mobile: tahan tombol attack", default = true, text = "Hold Mode: ON", text2 = "Hold Mode: OFF" },
	{ title = "Predict", content = "Laser nempel ke killer walau dia lari", default = false, text = "Predict: ON", text2 = "Predict: OFF" },
}) do
	Section32:AddToggle({
		Title = item.title,
		Content = item.content,
		Default = item.default,
		Callback = function(state)
			if state then
				notif(item.text)
			else
				notif(item.text2)
			end
		end
	})
end

Section32:AddSlider({
	Title = "Lock Distance",
	Default = 40,
	Max = 150,
	Min = 10,
	Rounding = 0,
	Callback = function()
	end
})

Section32:AddSlider({
	Title = "Lock Speed",
	Content = "Kecepatan kamera ngunci ke killer (0.1 = lambat, 1.0 = instan)",
	Default = 0.3,
	Max = 1,
	Min = 0.1,
	Rounding = 2,
	Callback = function()
	end
})

for _, item in ipairs({
	{ title = "Predict Speed", default = 500, max = 1500, min = 100, rounding = 0 },
	{ title = "Predict Multiplier", default = 1, max = 2.5, min = 0.1, rounding = 2 },
	{ title = "Y-Offset", default = 2, max = 10, min = 0, rounding = 1 },
}) do
	Section32:AddSlider({
		Title = item.title,
		Default = item.default,
		Max = item.max,
		Min = item.min,
		Rounding = item.rounding,
		Callback = function()
		end
	})
end

UserInputService.InputBegan:Connect(function(input35, gameProcessed35)
end)

UserInputService.InputEnded:Connect(function(input36, gameProcessed36)
end)

task.wait(0.5)

local function onInputBegan()
	local PlayerGui12 = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
	local Survivormob3 = PlayerGui12:FindFirstChild("Survivor-mob")
	local Controls4 = Survivormob3:FindFirstChild("Controls")
	local Guimob = Controls4:FindFirstChild("Gui-mob")

	Guimob.InputBegan:Connect(function(input37, gameProcessed37)
	end)

	Guimob.InputEnded:Connect(function(input38, gameProcessed38)
	end)
end

onInputBegan()

Players.LocalPlayer.CharacterAdded:Connect(function(character29)
	task.wait(1)
	onInputBegan()
end)

Players.LocalPlayer.PlayerGui.ChildRemoved:Connect(function(child6)
end)

getgenv().W424_ToFBlockHooked = true
local Section33 = Tab6:AddSection("Silent Aim Features")

Section33:AddToggle({
	Title = "Silent Aim V1 (Hold)",
	Content = "Tahan RMB → kunci target, lepas RMB → tembak",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			local ToFTargetSelector = CoreGui:FindFirstChild("ToFTargetSelector")
			ToFTargetSelector:Destroy()
			local ToFTargetSelector3 = Instance.new("ScreenGui")
			ToFTargetSelector3.Name = "ToFTargetSelector"
			ToFTargetSelector3.ResetOnSpawn = false
			ToFTargetSelector3.IgnoreGuiInset = true
			ToFTargetSelector3.Parent = CoreGui
			local Main = Instance.new("Frame")
			Main.Name = "Main"
			Main.Size = UDim2.new(0, 240, 0, 58)
			Main.Position = UDim2.new(0.5, -120, 0, 110)
			Main.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
			Main.BorderSizePixel = 0
			Main.Active = true
			Main.Parent = ToFTargetSelector3
			local UICorner98 = Instance.new("UICorner", Main)
			UICorner98.CornerRadius = UDim.new(0, 10)
			local UIStroke72 = Instance.new("UIStroke", Main)
			UIStroke72.Color = Color3.fromRGB(55, 55, 55)
			UIStroke72.Thickness = 0.8
			local Frame105 = Instance.new("Frame")
			Frame105.Size = UDim2.new(1, 0, 0, 22)
			Frame105.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			Frame105.BorderSizePixel = 0
			Frame105.Parent = Main
			local UICorner99 = Instance.new("UICorner", Frame105)
			UICorner99.CornerRadius = UDim.new(0, 10)
			local Frame106 = Instance.new("Frame")
			Frame106.Size = UDim2.new(1, 0, 0, 10)
			Frame106.Position = UDim2.new(0, 0, 1, -10)
			Frame106.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			Frame106.BorderSizePixel = 0
			Frame106.Parent = Frame105
			local Frame107 = Instance.new("Frame")
			Frame107.Size = UDim2.new(1, 0, 0, 1)
			Frame107.Position = UDim2.new(0, 0, 1, -1)
			Frame107.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			Frame107.BorderSizePixel = 0
			Frame107.Parent = Frame105
			local Frame108 = Instance.new("Frame")
			Frame108.Size = UDim2.new(1, -30, 1, 0)
			Frame108.BackgroundTransparency = 1
			Frame108.Parent = Frame105
			local TextButton33 = Instance.new("TextButton")
			TextButton33.Size = UDim2.new(0, 24, 1, 0)
			TextButton33.Position = UDim2.new(1, -26, 0, 0)
			TextButton33.BackgroundTransparency = 1
			TextButton33.Text = "−"
			TextButton33.TextColor3 = Color3.fromRGB(120, 120, 120)
			TextButton33.Font = Enum.Font.GothamBold
			TextButton33.TextSize = 14
			TextButton33.Parent = Frame105
			local TextLabel128 = Instance.new("TextLabel")
			TextLabel128.Size = UDim2.new(1, -30, 1, 0)
			TextLabel128.Position = UDim2.new(0, 0, 0, 0)
			TextLabel128.BackgroundTransparency = 1
			TextLabel128.Text = "TARGET MODE TWIST OF FATE"
			TextLabel128.TextColor3 = Color3.fromRGB(120, 120, 120)
			TextLabel128.Font = Enum.Font.GothamBold
			TextLabel128.TextSize = 9
			TextLabel128.TextXAlignment = Enum.TextXAlignment.Center
			TextLabel128.Parent = Frame105
			local Frame109 = Instance.new("Frame")
			Frame109.Size = UDim2.new(1, -16, 0, 26)
			Frame109.Position = UDim2.new(0, 8, 0, 26)
			Frame109.BackgroundTransparency = 1
			Frame109.Parent = Main
			local UIListLayout16 = Instance.new("UIListLayout", Frame109)
			UIListLayout16.FillDirection = Enum.FillDirection.Horizontal
			UIListLayout16.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout16.Padding = UDim.new(0, 5)

			TextButton33.MouseButton1Click:Connect(function()
				TextButton33.Text = "+"
				Frame109.Visible = false
				Main.Size = UDim2.new(0, 240, 0, 22)
			end)

			local TextButton34 = Instance.new("TextButton")
			TextButton34.Size = UDim2.new(0, 70, 1, 0)
			TextButton34.BorderSizePixel = 0
			TextButton34.Font = Enum.Font.GothamBold
			TextButton34.TextSize = 11
			TextButton34.Text = "Killer (K)"
			TextButton34.LayoutOrder = 1
			TextButton34.Parent = Frame109
			local UICorner100 = Instance.new("UICorner", TextButton34)
			UICorner100.CornerRadius = UDim.new(0, 6)

			TextButton34.MouseButton1Click:Connect(function()
				TextButton34.BackgroundColor3 = Color3.fromRGB(180, 45, 45)
				TextButton34.TextColor3 = Color3.fromRGB(255, 180, 180)
				TextButton35.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
				TextButton35.TextColor3 = Color3.fromRGB(130, 130, 130)
				TextButton36.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
				TextButton36.TextColor3 = Color3.fromRGB(130, 130, 130)
			end)

			TextButton34.InputEnded:Connect(function(input39, gameProcessed39)
			end)

			local TextButton35 = Instance.new("TextButton")
			TextButton35.Size = UDim2.new(0, 70, 1, 0)
			TextButton35.BorderSizePixel = 0
			TextButton35.Font = Enum.Font.GothamBold
			TextButton35.TextSize = 11
			TextButton35.Text = "Survivors (J)"
			TextButton35.LayoutOrder = 2
			TextButton35.Parent = Frame109
			local UICorner101 = Instance.new("UICorner", TextButton35)
			UICorner101.CornerRadius = UDim.new(0, 6)

			TextButton35.MouseButton1Click:Connect(function()
				TextButton34.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
				TextButton34.TextColor3 = Color3.fromRGB(130, 130, 130)
				TextButton35.BackgroundColor3 = Color3.fromRGB(25, 80, 150)
				TextButton35.TextColor3 = Color3.fromRGB(160, 210, 255)
				TextButton36.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
				TextButton36.TextColor3 = Color3.fromRGB(130, 130, 130)
			end)

			TextButton35.InputEnded:Connect(function(input40, gameProcessed40)
			end)

			local TextButton36 = Instance.new("TextButton")
			TextButton36.Size = UDim2.new(0, 70, 1, 0)
			TextButton36.BorderSizePixel = 0
			TextButton36.Font = Enum.Font.GothamBold
			TextButton36.TextSize = 11
			TextButton36.Text = "Zombie (L)"
			TextButton36.LayoutOrder = 3
			TextButton36.Parent = Frame109
			local UICorner102 = Instance.new("UICorner", TextButton36)
			UICorner102.CornerRadius = UDim.new(0, 6)

			TextButton36.MouseButton1Click:Connect(function()
				TextButton34.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
				TextButton34.TextColor3 = Color3.fromRGB(130, 130, 130)
				TextButton35.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
				TextButton35.TextColor3 = Color3.fromRGB(130, 130, 130)
				TextButton36.BackgroundColor3 = Color3.fromRGB(120, 80, 10)
				TextButton36.TextColor3 = Color3.fromRGB(255, 210, 100)
			end)

			TextButton36.InputEnded:Connect(function(input41, gameProcessed41)
			end)

			TextButton34.BackgroundColor3 = Color3.fromRGB(180, 45, 45)
			TextButton34.TextColor3 = Color3.fromRGB(255, 180, 180)
			TextButton35.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
			TextButton35.TextColor3 = Color3.fromRGB(130, 130, 130)
			TextButton36.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
			TextButton36.TextColor3 = Color3.fromRGB(130, 130, 130)

			Frame108.InputBegan:Connect(function(input42, gameProcessed42)
			end)

			Frame108.InputEnded:Connect(function(input43, gameProcessed43)
			end)

			UserInputService.InputChanged:Connect(function(input44, gameProcessed44)
			end)

			local connection34 = UserInputService.InputBegan:Connect(function(input45, gameProcessed45)
			end)

			local connection35 = RunService.Heartbeat:Connect(function(deltaTime12)
			end)

			notif("Silent Aim V1: ON")
		else
			connection34:Disconnect()
			ToFTargetSelector3:Destroy()
			connection35:Disconnect()
			notif("Silent Aim V1: OFF")
		end
	end
})

Section33:AddToggle({
	Title = "Silent Aim V2 (Tap)",
	Content = "Tap LMB / tombol attack → langsung tembak",
	Default = false,
	Keybind = true,
	Callback = function(state)
		if state then
			local ToFTargetSelector2 = CoreGui:FindFirstChild("ToFTargetSelector")
			ToFTargetSelector2:Destroy()
			local ToFTargetSelector4 = Instance.new("ScreenGui")
			ToFTargetSelector4.Name = "ToFTargetSelector"
			ToFTargetSelector4.ResetOnSpawn = false
			ToFTargetSelector4.IgnoreGuiInset = true
			ToFTargetSelector4.Parent = CoreGui
			local Main2 = Instance.new("Frame")
			Main2.Name = "Main"
			Main2.Size = UDim2.new(0, 240, 0, 58)
			Main2.Position = UDim2.new(0.5, -120, 0, 110)
			Main2.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
			Main2.BorderSizePixel = 0
			Main2.Active = true
			Main2.Parent = ToFTargetSelector4
			local UICorner103 = Instance.new("UICorner", Main2)
			UICorner103.CornerRadius = UDim.new(0, 10)
			local UIStroke73 = Instance.new("UIStroke", Main2)
			UIStroke73.Color = Color3.fromRGB(55, 55, 55)
			UIStroke73.Thickness = 0.8
			local Frame111 = Instance.new("Frame")
			Frame111.Size = UDim2.new(1, 0, 0, 22)
			Frame111.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			Frame111.BorderSizePixel = 0
			Frame111.Parent = Main2
			local UICorner104 = Instance.new("UICorner", Frame111)
			UICorner104.CornerRadius = UDim.new(0, 10)
			local Frame112 = Instance.new("Frame")
			Frame112.Size = UDim2.new(1, 0, 0, 10)
			Frame112.Position = UDim2.new(0, 0, 1, -10)
			Frame112.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			Frame112.BorderSizePixel = 0
			Frame112.Parent = Frame111
			local Frame113 = Instance.new("Frame")
			Frame113.Size = UDim2.new(1, 0, 0, 1)
			Frame113.Position = UDim2.new(0, 0, 1, -1)
			Frame113.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			Frame113.BorderSizePixel = 0
			Frame113.Parent = Frame111
			local Frame114 = Instance.new("Frame")
			Frame114.Size = UDim2.new(1, -30, 1, 0)
			Frame114.BackgroundTransparency = 1
			Frame114.Parent = Frame111
			local TextButton37 = Instance.new("TextButton")
			TextButton37.Size = UDim2.new(0, 24, 1, 0)
			TextButton37.Position = UDim2.new(1, -26, 0, 0)
			TextButton37.BackgroundTransparency = 1
			TextButton37.Text = "−"
			TextButton37.TextColor3 = Color3.fromRGB(120, 120, 120)
			TextButton37.Font = Enum.Font.GothamBold
			TextButton37.TextSize = 14
			TextButton37.Parent = Frame111
			local TextLabel129 = Instance.new("TextLabel")
			TextLabel129.Size = UDim2.new(1, -30, 1, 0)
			TextLabel129.Position = UDim2.new(0, 0, 0, 0)
			TextLabel129.BackgroundTransparency = 1
			TextLabel129.Text = "TARGET MODE TWIST OF FATE"
			TextLabel129.TextColor3 = Color3.fromRGB(120, 120, 120)
			TextLabel129.Font = Enum.Font.GothamBold
			TextLabel129.TextSize = 9
			TextLabel129.TextXAlignment = Enum.TextXAlignment.Center
			TextLabel129.Parent = Frame111
			local Frame115 = Instance.new("Frame")
			Frame115.Size = UDim2.new(1, -16, 0, 26)
			Frame115.Position = UDim2.new(0, 8, 0, 26)
			Frame115.BackgroundTransparency = 1
			Frame115.Parent = Main2
			local UIListLayout17 = Instance.new("UIListLayout", Frame115)
			UIListLayout17.FillDirection = Enum.FillDirection.Horizontal
			UIListLayout17.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout17.Padding = UDim.new(0, 5)

			TextButton37.MouseButton1Click:Connect(function()
				TextButton37.Text = "+"
				Frame115.Visible = false
				Main2.Size = UDim2.new(0, 240, 0, 22)
			end)

			local TextButton38 = Instance.new("TextButton")
			TextButton38.Size = UDim2.new(0, 70, 1, 0)
			TextButton38.BorderSizePixel = 0
			TextButton38.Font = Enum.Font.GothamBold
			TextButton38.TextSize = 11
			TextButton38.Text = "Killer (K)"
			TextButton38.LayoutOrder = 1
			TextButton38.Parent = Frame115
			local UICorner105 = Instance.new("UICorner", TextButton38)
			UICorner105.CornerRadius = UDim.new(0, 6)

			TextButton38.MouseButton1Click:Connect(function()
				TextButton38.BackgroundColor3 = Color3.fromRGB(180, 45, 45)
				TextButton38.TextColor3 = Color3.fromRGB(255, 180, 180)
				TextButton39.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
				TextButton39.TextColor3 = Color3.fromRGB(130, 130, 130)
				TextButton40.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
				TextButton40.TextColor3 = Color3.fromRGB(130, 130, 130)
			end)

			TextButton38.InputEnded:Connect(function(input46, gameProcessed46)
			end)

			local TextButton39 = Instance.new("TextButton")
			TextButton39.Size = UDim2.new(0, 70, 1, 0)
			TextButton39.BorderSizePixel = 0
			TextButton39.Font = Enum.Font.GothamBold
			TextButton39.TextSize = 11
			TextButton39.Text = "Survivors (J)"
			TextButton39.LayoutOrder = 2
			TextButton39.Parent = Frame115
			local UICorner106 = Instance.new("UICorner", TextButton39)
			UICorner106.CornerRadius = UDim.new(0, 6)

			TextButton39.MouseButton1Click:Connect(function()
				TextButton38.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
				TextButton38.TextColor3 = Color3.fromRGB(130, 130, 130)
				TextButton39.BackgroundColor3 = Color3.fromRGB(25, 80, 150)
				TextButton39.TextColor3 = Color3.fromRGB(160, 210, 255)
				TextButton40.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
				TextButton40.TextColor3 = Color3.fromRGB(130, 130, 130)
			end)

			TextButton39.InputEnded:Connect(function(input47, gameProcessed47)
			end)

			local TextButton40 = Instance.new("TextButton")
			TextButton40.Size = UDim2.new(0, 70, 1, 0)
			TextButton40.BorderSizePixel = 0
			TextButton40.Font = Enum.Font.GothamBold
			TextButton40.TextSize = 11
			TextButton40.Text = "Zombie (L)"
			TextButton40.LayoutOrder = 3
			TextButton40.Parent = Frame115
			local UICorner107 = Instance.new("UICorner", TextButton40)
			UICorner107.CornerRadius = UDim.new(0, 6)

			TextButton40.MouseButton1Click:Connect(function()
				TextButton38.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
				TextButton38.TextColor3 = Color3.fromRGB(130, 130, 130)
				TextButton39.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
				TextButton39.TextColor3 = Color3.fromRGB(130, 130, 130)
				TextButton40.BackgroundColor3 = Color3.fromRGB(120, 80, 10)
				TextButton40.TextColor3 = Color3.fromRGB(255, 210, 100)
			end)

			TextButton40.InputEnded:Connect(function(input48, gameProcessed48)
			end)

			TextButton38.BackgroundColor3 = Color3.fromRGB(180, 45, 45)
			TextButton38.TextColor3 = Color3.fromRGB(255, 180, 180)
			TextButton39.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
			TextButton39.TextColor3 = Color3.fromRGB(130, 130, 130)
			TextButton40.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
			TextButton40.TextColor3 = Color3.fromRGB(130, 130, 130)

			Frame114.InputBegan:Connect(function(input49, gameProcessed49)
			end)

			Frame114.InputEnded:Connect(function(input50, gameProcessed50)
			end)

			UserInputService.InputChanged:Connect(function(input51, gameProcessed51)
			end)

			local connection36 = UserInputService.InputBegan:Connect(function(input52, gameProcessed52)
			end)

			local connection37 = RunService.Heartbeat:Connect(function(deltaTime13)
			end)

			notif("Silent Aim V2: ON")
		else
			connection36:Disconnect()
			ToFTargetSelector4:Destroy()
			connection37:Disconnect()
			notif("Silent Aim V2: OFF")
		end
	end
})

for _, item in ipairs({
	{ title = "Block Aim Knocked", content = "Gak bisa aim saat knocked / hooked", default = false, text = "Block Knocked: ON", text2 = "Block Knocked: OFF" },
	{ title = "Predict Aim", content = "Prediksi gerakan target (lebih akurat untuk target bergerak)", default = false, text = "Predict Aim: ON", text2 = "Predict Aim: OFF" },
	{ title = "Wallcheck", content = "Skip target yang ketutup tembok", default = false, text = "Wallcheck: ON", text2 = "Wallcheck: OFF" },
	{ title = "Laser Effect", content = "Garis laser ke target saat aim", default = true, text = "Laser Effect: ON", text2 = "Laser Effect: OFF" },
	{ title = "Block Fire (No Bullet)", content = "Blokir peluru keluar (untuk test / anti-detection)", default = false, text = "Block Fire: ON", text2 = "Block Fire: OFF" },
}) do
	Section33:AddToggle({
		Title = item.title,
		Content = item.content,
		Default = item.default,
		Callback = function(state)
			if state then
				notif(item.text)
			else
				notif(item.text2)
			end
		end
	})
end

local Section34 = Tab7:AddSection("Booster FPS")
local Terrain = workspace:FindFirstChildOfClass("Terrain")
local SoundService = game:GetService("SoundService")

Section34:AddToggle({
	Title = "Reduce Map (Potato Mode)",
	Default = false,
	Callback = function(state)
		if state then
			Terrain.WaterWaveSize = 0
			Terrain.WaterWaveSpeed = 0
			Terrain.WaterReflectance = 0
			Terrain.WaterTransparency = 1
			Terrain.Decoration = false
			local Clouds = Terrain:FindFirstChildOfClass("Clouds")
			Clouds:Destroy()
			Lighting.GlobalShadows = false
			Lighting.FogEnd = 9000000000
			Lighting.Brightness = 0
			Lighting.OutdoorAmbient = Color3.new(1, 1, 1)
			Lighting.Ambient = Color3.new(1, 1, 1)
			Lighting.Technology = Enum.Technology.Legacy
			Lighting.EnvironmentDiffuseScale = 0
			Lighting.EnvironmentSpecularScale = 0
			Lighting.ShadowSoftness = 0
			Lighting:GetChildren()
			SoundService.AmbientReverb = Enum.ReverbType.NoReverb
			SoundService:SetListener(Enum.ListenerType.Camera)
			settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
			settings().Rendering.MeshPartDetailLevel = Enum.MeshPartDetailLevel.Level01
			settings().Rendering.EditQualityLevel = Enum.QualityLevel.Level01
			local UserGameSettings = UserSettings():GetService("UserGameSettings")
			UserGameSettings.SavedQualityLevel = Enum.SavedQualitySetting.QualityLevel1
			workspace.CurrentCamera.FieldOfView = 70
			StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu, false)

			task.spawn(function(...)
				local descendants19 = workspace:GetDescendants()
				descendants19[1].Material = Enum.Material.SmoothPlastic
				descendants19[1].CastShadow = false
				descendants19[1].Reflectance = 0
				descendants19[1].TopSurface = Enum.SurfaceType.SmoothNoOutlines
				descendants19[1].BottomSurface = Enum.SurfaceType.SmoothNoOutlines
				descendants19[1].LeftSurface = Enum.SurfaceType.SmoothNoOutlines
				descendants19[1].RightSurface = Enum.SurfaceType.SmoothNoOutlines
				descendants19[1].FrontSurface = Enum.SurfaceType.SmoothNoOutlines
				descendants19[1].BackSurface = Enum.SurfaceType.SmoothNoOutlines
				task.wait()
				local players23 = Players:GetPlayers()

				for i30, v96 in ipairs(players23) do
					task.defer(function()
						local descendants22 = v96.Character:GetDescendants()
						descendants22[1].Material = Enum.Material.SmoothPlastic
						descendants22[1].CastShadow = false
						descendants22[1].Reflectance = 0
						descendants22[1].CanCollide = false
						descendants22[1].TopSurface = Enum.SurfaceType.SmoothNoOutlines
						descendants22[1].BottomSurface = Enum.SurfaceType.SmoothNoOutlines
						descendants22[1].LeftSurface = Enum.SurfaceType.SmoothNoOutlines
						descendants22[1].RightSurface = Enum.SurfaceType.SmoothNoOutlines
						descendants22[1].FrontSurface = Enum.SurfaceType.SmoothNoOutlines
						descendants22[1].BackSurface = Enum.SurfaceType.SmoothNoOutlines
					end, v96.Character)
				end

				task.wait(1)
				task.wait(1)
				-- [envlog] the statements above repeat forever (loop)
			end)

			local connection38 = Players.PlayerAdded:Connect(function(player8)
				player8.CharacterAdded:Connect(function(character42)
				end)

				task.defer(function()
				end, player8.Character)
			end)

			local connection39 = Players.LocalPlayer.CharacterAdded:Connect(function(character30)
			end)

			local connection40 = workspace.DescendantAdded:Connect(function(descendant9)
			end)
		else
			connection38:Disconnect()
			connection39:Disconnect()
			connection40:Disconnect()
			Terrain.WaterReflectance = Terrain.WaterReflectance
			Terrain.WaterWaveSize = Terrain.WaterWaveSize
			Terrain.WaterWaveSpeed = Terrain.WaterWaveSpeed
			Terrain.WaterTransparency = Terrain.WaterTransparency
			Terrain.Decoration = true
			Lighting.GlobalShadows = true
			Lighting.Brightness = 0.8
			Lighting.Technology = Lighting.Technology
			workspace.CurrentCamera.FieldOfView = 70
			settings().Rendering.QualityLevel = Enum.QualityLevel.Automatic
			settings().Rendering.MeshPartDetailLevel = Enum.MeshPartDetailLevel.DistanceBased
			UserGameSettings.SavedQualityLevel = Enum.SavedQualitySetting.Automatic
			StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)
			StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu, true)
		end
	end
})

Section34:AddToggle({
	Title = "Low Graphics Mode",
	Content = "Activate this before match",
	Default = false,
	Callback = function(state)
		if state then
			Players.LocalPlayer:SetAttribute("lowGraphics", state)
		else
			Players.LocalPlayer:SetAttribute("lowGraphics", false)
		end
	end
})

Section34:AddToggle({
	Title = "Remove Dynamic Shadow",
	Default = false,
	Callback = function(state)
		if state then
			Lighting.GlobalShadows = false
		else
			Lighting.GlobalShadows = true
		end
	end
})

Section34:AddToggle({
	Title = "Max FPS",
	Default = true,
	Callback = function(state)
		if state then
			setfpscap(9999)
		end
	end
})

Section34:AddDivider()
Lighting:FindFirstChildOfClass("Atmosphere")
local Atmosphere3 = Lighting:FindFirstChildOfClass("Atmosphere")

Section34:AddToggle({
	Title = "Full Bright",
	Default = false,
	Callback = function(state)
		if state then
			Lighting.Ambient = Color3.fromRGB(255, 255, 255)
			Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
			Lighting.Brightness = 3
			Lighting.ClockTime = 14

			local connection41 = Lighting.Changed:Connect(function(value)
			end)
		else
			connection41:Disconnect()
			Lighting.Ambient = Color3.new(1, 1, 1)
			Lighting.OutdoorAmbient = Color3.new(1, 1, 1)
			Lighting.Brightness = 0.8
			Lighting.ClockTime = 0
		end
	end
})

Section34:AddToggle({
	Title = "No Fog",
	Default = false,
	Callback = function(state)
		if state then
			Lighting.FogStart = 999999
			Lighting.FogEnd = 999999
			local Atmosphere4 = Lighting:FindFirstChildOfClass("Atmosphere")
			Atmosphere4.Density = 0

			local connection42 = Lighting.Changed:Connect(function(value2)
			end)

			local Atmosphere5 = Lighting:FindFirstChildOfClass("Atmosphere")
			Atmosphere5.Density = 0
			local changedSignal6 = Atmosphere5:GetPropertyChangedSignal("Density")

			changedSignal6:Connect(function()
			end)
		else
			connection42:Disconnect()
			Lighting.FogStart = 0
			Lighting.FogEnd = 9000000000
			local Atmosphere6 = Lighting:FindFirstChildOfClass("Atmosphere")
			Atmosphere6.Density = Atmosphere3.Density
		end
	end
})

Lighting.ChildAdded:Connect(function(child7)
end)

local Section35 = Tab7:AddSection("Player Utility")
_G.HiddenNameConnections = {}

Section35:AddSlider({
	Title = "Speed Value",
	Default = 20,
	Max = 50,
	Min = 16,
	Callback = function()
	end
})

Section35:AddToggle({
	Title = "Enable Run Speed",
	Default = false,
	Callback = function()
		Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
		-- [envlog] error: Luraph Script:13312: Luraph Script:13240: Script:3: attempt to compare number < userdata
	end
})

Section35:AddDivider()
_G.StaffConnectionVD = nil

Section35:AddToggle({
	Title = "Anti Staff",
	Content = "Automatically kick if any staff/dev join",
	Default = true,
	Callback = function(state)
		if state then
			_G.AntiStaffVD = state
			local players24 = Players:GetPlayers()

			for i31, v97 in ipairs(players24) do
				task.spawn(function()
					v97:GetRankInGroup(8818124)
				end, v97)
			end

			local connection43 = Players.PlayerAdded:Connect(function(player9)
				task.wait(1)
			end)

			_G.StaffConnectionVD = connection43
		else
			_G.AntiStaffVD = false
			connection43:Disconnect()
		end
	end
})

Section35:AddToggle({
	Title = "Skip Endscreen",
	Content = "Mobile disarankan mengaktifkan ini untuk menghindari crash after match",
	Default = false,
	Callback = function()
	end
})

task.spawn(function()
	task.wait(1)
	task.wait(1)
	-- [envlog] the statements above repeat forever (loop)
end)

Section35:AddToggle({
	Title = "Ping & FPS Counter",
	Default = false,
	Callback = function(state)
		if state then
			_G.ShowPingFPS = state
			local Stats = game:GetService("Stats")
			CoreGui:FindFirstChild("SimpleStatsUI")
			CoreGui.SimpleStatsUI:Destroy()
			local SimpleStatsUI = Instance.new("ScreenGui")
			local Container = Instance.new("Frame")
			local StatLabel = Instance.new("TextLabel")
			SimpleStatsUI.Name = "SimpleStatsUI"
			SimpleStatsUI.Parent = CoreGui
			SimpleStatsUI.ResetOnSpawn = false
			Container.Name = "Container"
			Container.Parent = SimpleStatsUI
			Container.AnchorPoint = Vector2.new(0.5, 0)
			Container.Position = UDim2.new(0.5, 0, 0.015, 0)
			Container.Size = UDim2.new(0, 120, 0, 26)
			Container.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
			Container.BackgroundTransparency = 0.15
			Container.BorderSizePixel = 0
			Container.Active = true
			local UICorner108 = Instance.new("UICorner")
			UICorner108.CornerRadius = UDim.new(0, 6)
			UICorner108.Parent = Container
			local UIPadding2 = Instance.new("UIPadding")
			UIPadding2.PaddingLeft = UDim.new(0, 10)
			UIPadding2.PaddingRight = UDim.new(0, 10)
			UIPadding2.Parent = Container
			StatLabel.Name = "StatLabel"
			StatLabel.Parent = Container
			StatLabel.Size = UDim2.new(1, 0, 1, 0)
			StatLabel.BackgroundTransparency = 1
			StatLabel.Font = Enum.Font.GothamBold
			StatLabel.TextSize = 11
			StatLabel.RichText = true
			StatLabel.TextYAlignment = Enum.TextYAlignment.Center
			StatLabel.TextXAlignment = Enum.TextXAlignment.Center
			local UIStroke74 = Instance.new("UIStroke")
			UIStroke74.Thickness = 1
			UIStroke74.Color = Color3.fromRGB(0, 0, 0)
			UIStroke74.Transparency = 0.5
			UIStroke74.Parent = StatLabel
			StatLabel.Text = "<font color='#7DFF7D'>-- FPS</font> <font color='#555555'>|</font> <font color='#7DFF7D'>-- ms</font>"

			Container.InputBegan:Connect(function(input53, gameProcessed53)
			end)

			Container.InputChanged:Connect(function(input54, gameProcessed54)
			end)

			Container.InputEnded:Connect(function(input55, gameProcessed55)
			end)

			local connection44 = RunService.RenderStepped:Connect(function(deltaTime14)
				connection44:Disconnect()
				SimpleStatsUI:Destroy()
			end)

			task.spawn(function()
				Stats:FindFirstChild("Network")
				local ServerStatsItem = Stats.Network:FindFirstChild("ServerStatsItem")
				local DataPing = ServerStatsItem:FindFirstChild("Data Ping")
				DataPing:GetValue()
				-- [envlog] error: Luraph Script:13550: Script:3: attempt to compare userdata <= number
			end)
		else
			_G.ShowPingFPS = false
			CoreGui:FindFirstChild("SimpleStatsUI")
			CoreGui.SimpleStatsUI:Destroy()
		end
	end
})

_G.HideIconConnections = {}

Section35:AddToggle({
	Title = "Protect Name",
	Default = false,
	Callback = function(state)
		if state then
			_G.HiddenNameEnabled = state
			_G.HiddenNameConnections = {}
			startEspLoop()
			local PlayerGui13 = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
			local attribute2 = Players.LocalPlayer:GetAttribute("SelectedKiller")
			local Survivor = PlayerGui13:FindFirstChild("Survivor")
			local Frame117 = Survivor:FindFirstChild("Frame")
			local child3 = PlayerGui13:FindFirstChild(attribute2)
			child3:FindFirstChild("Frame")
			local Survivor1 = Frame117:FindFirstChild("Survivor1")
			local Survivor2 = Frame117:FindFirstChild("Survivor2")
			local Survivor3 = Frame117:FindFirstChild("Survivor3")
			local Survivor4 = Frame117:FindFirstChild("Survivor4")
			local Survivor5 = Frame117:FindFirstChild("Survivor5")
			local TextLabel131 = Survivor1:FindFirstChildOfClass("TextLabel")
			TextLabel131.Text = "FEBZ"
			local changedSignal7 = TextLabel131:GetPropertyChangedSignal("Text")

			local connection45 = changedSignal7:Connect(function()
			end)

			local TextLabel132 = Survivor2:FindFirstChildOfClass("TextLabel")
			TextLabel132.Text = "FEBZ"
			local changedSignal8 = TextLabel132:GetPropertyChangedSignal("Text")

			local connection46 = changedSignal8:Connect(function()
			end)

			local TextLabel133 = Survivor3:FindFirstChildOfClass("TextLabel")
			TextLabel133.Text = "FEBZ"
			local changedSignal9 = TextLabel133:GetPropertyChangedSignal("Text")

			local connection47 = changedSignal9:Connect(function()
			end)

			local TextLabel134 = Survivor4:FindFirstChildOfClass("TextLabel")
			TextLabel134.Text = "FEBZ"
			local changedSignal10 = TextLabel134:GetPropertyChangedSignal("Text")

			local connection48 = changedSignal10:Connect(function()
			end)

			local TextLabel135 = Survivor5:FindFirstChildOfClass("TextLabel")
			TextLabel135.Text = "FEBZ"
			local changedSignal11 = TextLabel135:GetPropertyChangedSignal("Text")

			local connection49 = changedSignal11:Connect(function()
			end)

			task.spawn(function()
				local PlayerGui14 = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
				local descendants20 = PlayerGui14:GetDescendants()

				for i32, v98 in ipairs(descendants20) do
				end

				local connection50 = PlayerGui14.DescendantAdded:Connect(function(descendant10)
				end)
			end)

			local PlayerGui15 = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
			local attribute3 = Players.LocalPlayer:GetAttribute("SelectedKiller")
			local Survivor2 = PlayerGui15:FindFirstChild("Survivor")
			local changedSignal12 = Survivor2:GetPropertyChangedSignal("Enabled")

			local connection51 = changedSignal12:Connect(function()
			end)

			local Survivormob4 = PlayerGui15:FindFirstChild("Survivor-mob")
			local changedSignal13 = Survivormob4:GetPropertyChangedSignal("Enabled")

			local connection52 = changedSignal13:Connect(function()
			end)

			local child4 = PlayerGui15:FindFirstChild(attribute3)
			local changedSignal14 = child4:GetPropertyChangedSignal("Enabled")

			local connection53 = changedSignal14:Connect(function()
			end)

			local child5 = PlayerGui15:FindFirstChild(attribute3 .. "-mob")
			local changedSignal15 = child5:GetPropertyChangedSignal("Enabled")

			local connection54 = changedSignal15:Connect(function()
			end)

			local connection55 = PlayerGui15.ChildAdded:Connect(function(child8)
			end)
		else
			_G.HiddenNameEnabled = false
			connection45:Disconnect()
			connection46:Disconnect()
			connection47:Disconnect()
			connection48:Disconnect()
			connection49:Disconnect()
			connection50:Disconnect()
			connection51:Disconnect()
			connection52:Disconnect()
			connection53:Disconnect()
			connection54:Disconnect()
			connection55:Disconnect()
			_G.HiddenNameConnections = {}
			startEspLoop()
			local PlayerGui16 = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
			local attribute4 = Players.LocalPlayer:GetAttribute("SelectedKiller")
			local Survivor3 = PlayerGui16:FindFirstChild("Survivor")
			local Frame118 = Survivor3:FindFirstChild("Frame")
			local child6 = PlayerGui16:FindFirstChild(attribute4)
			child6:FindFirstChild("Frame")
			local Survivor12 = Frame118:FindFirstChild("Survivor1")
			local Survivor22 = Frame118:FindFirstChild("Survivor2")
			local Survivor32 = Frame118:FindFirstChild("Survivor3")
			local Survivor42 = Frame118:FindFirstChild("Survivor4")
			local Survivor52 = Frame118:FindFirstChild("Survivor5")
			Survivor12:FindFirstChildOfClass("TextLabel")
			Survivor22:FindFirstChildOfClass("TextLabel")
			Survivor32:FindFirstChildOfClass("TextLabel")
			Survivor42:FindFirstChildOfClass("TextLabel")
			Survivor52:FindFirstChildOfClass("TextLabel")

			task.spawn(function()
				local PlayerGui17 = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
				local descendants21 = PlayerGui17:GetDescendants()

				for i33, v99 in ipairs(descendants21) do
				end

				PlayerGui17.DescendantAdded:Connect(function(descendant11)
				end)
			end)

			local PlayerGui18 = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
			local attribute5 = Players.LocalPlayer:GetAttribute("SelectedKiller")
			local Survivor4 = PlayerGui18:FindFirstChild("Survivor")
			local changedSignal16 = Survivor4:GetPropertyChangedSignal("Enabled")

			changedSignal16:Connect(function()
			end)

			local Survivormob5 = PlayerGui18:FindFirstChild("Survivor-mob")
			local changedSignal17 = Survivormob5:GetPropertyChangedSignal("Enabled")

			changedSignal17:Connect(function()
			end)

			local child7 = PlayerGui18:FindFirstChild(attribute5)
			local changedSignal18 = child7:GetPropertyChangedSignal("Enabled")

			changedSignal18:Connect(function()
			end)

			local child8 = PlayerGui18:FindFirstChild(attribute5 .. "-mob")
			local changedSignal19 = child8:GetPropertyChangedSignal("Enabled")

			changedSignal19:Connect(function()
			end)

			PlayerGui18.ChildAdded:Connect(function(child9)
			end)
		end
	end
})

Section35:AddToggle({
	Title = "Hide Player Icon",
	Default = false,
	Callback = function(state)
		if state then
			_G.HideIconEnabled = state
			_G.HideIconConnections = {}
			local PlayerGui19 = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
			local attribute6 = Players.LocalPlayer:GetAttribute("SelectedKiller")
			local Survivor5 = PlayerGui19:FindFirstChild("Survivor")
			local Frame119 = Survivor5:FindFirstChild("Frame")
			local child9 = PlayerGui19:FindFirstChild(attribute6)
			child9:FindFirstChild("Frame")
			local Survivor13 = Frame119:FindFirstChild("Survivor1")
			local Survivor23 = Frame119:FindFirstChild("Survivor2")
			local Survivor33 = Frame119:FindFirstChild("Survivor3")
			local Survivor43 = Frame119:FindFirstChild("Survivor4")
			local Survivor53 = Frame119:FindFirstChild("Survivor5")
			local ImageLabel2 = Survivor13:FindFirstChildOfClass("ImageLabel")
			ImageLabel2.Image = "rbxassetid://82799775499788"
			local changedSignal20 = ImageLabel2:GetPropertyChangedSignal("Image")

			local connection56 = changedSignal20:Connect(function()
			end)

			local ImageLabel3 = Survivor23:FindFirstChildOfClass("ImageLabel")
			ImageLabel3.Image = "rbxassetid://82799775499788"
			local changedSignal21 = ImageLabel3:GetPropertyChangedSignal("Image")

			local connection57 = changedSignal21:Connect(function()
			end)

			local ImageLabel4 = Survivor33:FindFirstChildOfClass("ImageLabel")
			ImageLabel4.Image = "rbxassetid://82799775499788"
			local changedSignal22 = ImageLabel4:GetPropertyChangedSignal("Image")

			local connection58 = changedSignal22:Connect(function()
			end)

			local ImageLabel5 = Survivor43:FindFirstChildOfClass("ImageLabel")
			ImageLabel5.Image = "rbxassetid://82799775499788"
			local changedSignal23 = ImageLabel5:GetPropertyChangedSignal("Image")

			local connection59 = changedSignal23:Connect(function()
			end)

			local ImageLabel6 = Survivor53:FindFirstChildOfClass("ImageLabel")
			ImageLabel6.Image = "rbxassetid://82799775499788"
			local changedSignal24 = ImageLabel6:GetPropertyChangedSignal("Image")

			local connection60 = changedSignal24:Connect(function()
			end)

			local PlayerGui20 = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
			local attribute7 = Players.LocalPlayer:GetAttribute("SelectedKiller")
			local Survivor6 = PlayerGui20:FindFirstChild("Survivor")
			local changedSignal25 = Survivor6:GetPropertyChangedSignal("Enabled")

			local connection61 = changedSignal25:Connect(function()
			end)

			local Survivormob6 = PlayerGui20:FindFirstChild("Survivor-mob")
			local changedSignal26 = Survivormob6:GetPropertyChangedSignal("Enabled")

			local connection62 = changedSignal26:Connect(function()
			end)

			local child10 = PlayerGui20:FindFirstChild(attribute7)
			local changedSignal27 = child10:GetPropertyChangedSignal("Enabled")

			local connection63 = changedSignal27:Connect(function()
			end)

			local child11 = PlayerGui20:FindFirstChild(attribute7 .. "-mob")
			local changedSignal28 = child11:GetPropertyChangedSignal("Enabled")

			local connection64 = changedSignal28:Connect(function()
			end)

			local connection65 = PlayerGui20.ChildAdded:Connect(function(child10)
			end)
		else
			_G.HideIconEnabled = false
			connection56:Disconnect()
			connection57:Disconnect()
			connection58:Disconnect()
			connection59:Disconnect()
			connection60:Disconnect()
			connection61:Disconnect()
			connection62:Disconnect()
			connection63:Disconnect()
			connection64:Disconnect()
			connection65:Disconnect()
			_G.HideIconConnections = {}
			local PlayerGui21 = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
			local attribute8 = Players.LocalPlayer:GetAttribute("SelectedKiller")
			local Survivor7 = PlayerGui21:FindFirstChild("Survivor")
			local Frame120 = Survivor7:FindFirstChild("Frame")
			local child12 = PlayerGui21:FindFirstChild(attribute8)
			child12:FindFirstChild("Frame")
			local Survivor14 = Frame120:FindFirstChild("Survivor1")
			local Survivor24 = Frame120:FindFirstChild("Survivor2")
			local Survivor34 = Frame120:FindFirstChild("Survivor3")
			local Survivor44 = Frame120:FindFirstChild("Survivor4")
			local Survivor54 = Frame120:FindFirstChild("Survivor5")
			Survivor14:FindFirstChildOfClass("ImageLabel")
			Survivor24:FindFirstChildOfClass("ImageLabel")
			Survivor34:FindFirstChildOfClass("ImageLabel")
			Survivor44:FindFirstChildOfClass("ImageLabel")
			Survivor54:FindFirstChildOfClass("ImageLabel")
			local PlayerGui22 = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
			local attribute9 = Players.LocalPlayer:GetAttribute("SelectedKiller")
			local Survivor8 = PlayerGui22:FindFirstChild("Survivor")
			local changedSignal29 = Survivor8:GetPropertyChangedSignal("Enabled")

			changedSignal29:Connect(function()
			end)

			local Survivormob7 = PlayerGui22:FindFirstChild("Survivor-mob")
			local changedSignal30 = Survivormob7:GetPropertyChangedSignal("Enabled")

			changedSignal30:Connect(function()
			end)

			local child13 = PlayerGui22:FindFirstChild(attribute9)
			local changedSignal31 = child13:GetPropertyChangedSignal("Enabled")

			changedSignal31:Connect(function()
			end)

			local child14 = PlayerGui22:FindFirstChild(attribute9 .. "-mob")
			local changedSignal32 = child14:GetPropertyChangedSignal("Enabled")

			changedSignal32:Connect(function()
			end)

			PlayerGui22.ChildAdded:Connect(function(child11)
			end)
		end
	end
})

Section35:AddToggle({
	Title = "Camera Follow Body Movement",
	Default = false,
	Callback = function(state)
		if state then
			local Humanoid15 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			Humanoid15.AutoRotate = false

			local thread18 = task.spawn(function()
				local HumanoidRootPart3 = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
				HumanoidRootPart3.CFrame = (CFrame.new(HumanoidRootPart3.Position) * CFrame.Angles(0, -3.1415926535897931, 0))
				task.wait()
				local HumanoidRootPart4 = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
				HumanoidRootPart4.CFrame = (CFrame.new(HumanoidRootPart4.Position) * CFrame.Angles(0, -3.1415926535897931, 0))
				task.wait()
				-- [envlog] the statements above repeat forever (loop)
			end)
		else
			task.cancel(thread18)
			local Humanoid16 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			Humanoid16.AutoRotate = true
		end
	end
})

Section35:AddToggle({
	Title = "Max Zoom 1000",
	Content = "Increase max camera distance",
	Default = false,
	Callback = function(state)
		if state then
			Players.LocalPlayer.CameraMaxZoomDistance = 1000
			Players.LocalPlayer.CameraMinZoomDistance = 0.5

			local connection66 = Players.LocalPlayer.CharacterAdded:Connect(function(character31)
				task.wait(0.3)
				Players.LocalPlayer.CameraMaxZoomDistance = 1000
				Players.LocalPlayer.CameraMinZoomDistance = 0.5
			end)
		else
			connection66:Disconnect()
			Players.LocalPlayer.CameraMaxZoomDistance = 128
			Players.LocalPlayer.CameraMinZoomDistance = 0.5
		end
	end
})

local Section36 = Tab7:AddSection("Header Title")
_G.InputHeader = false

Section36:AddInput({
	Title = "Input Header Name",
	Default = "FEBZ",
	Placeholder = "Write ur input here...",
	Callback = function(state)
		if state then
			_G.InputHeader = state
		end
	end
})

Section36:AddToggle({
	Title = "Enable Header Name",
	Default = false,
	Callback = function(state)
		if state then
			Players.LocalPlayer.Character:FindFirstChild("Head")
			local CustomHeaderBillboard = Instance.new("BillboardGui")
			CustomHeaderBillboard.Name = "CustomHeaderBillboard"
			CustomHeaderBillboard.Adornee = Players.LocalPlayer.Character.Head
			CustomHeaderBillboard.Size = UDim2.new(0, 140, 0, 32)
			CustomHeaderBillboard.StudsOffset = Vector3.new(0, 1.5, 0)
			CustomHeaderBillboard.AlwaysOnTop = true
			CustomHeaderBillboard.LightInfluence = 0
			CustomHeaderBillboard.Parent = Players.LocalPlayer.Character
			local BaseText = Instance.new("TextLabel")
			BaseText.Name = "BaseText"
			BaseText.Size = UDim2.new(1, 0, 1, 0)
			BaseText.BackgroundTransparency = 1
			BaseText.TextScaled = true
			BaseText.Font = Enum.Font.GothamBold
			BaseText.TextStrokeTransparency = 0.5
			BaseText.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
			BaseText.TextColor3 = Color3.fromRGB(40, 130, 220)
			BaseText.ZIndex = 1
			BaseText.Parent = CustomHeaderBillboard
			local ShineText = Instance.new("TextLabel")
			ShineText.Name = "ShineText"
			ShineText.Size = UDim2.new(1, 0, 1, 0)
			ShineText.BackgroundTransparency = 1
			ShineText.TextScaled = true
			ShineText.Font = Enum.Font.GothamBold
			ShineText.TextStrokeTransparency = 1
			ShineText.Text = BaseText.Text
			ShineText.TextColor3 = Color3.fromRGB(255, 255, 255)
			ShineText.ZIndex = 2
			ShineText.Parent = CustomHeaderBillboard
			local ShineGradient = Instance.new("UIGradient")
			ShineGradient.Name = "ShineGradient"
			ShineGradient.Rotation = 20
			ShineGradient.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.3, 1), NumberSequenceKeypoint.new(0.42, 0), NumberSequenceKeypoint.new(0.58, 0), NumberSequenceKeypoint.new(0.7, 1), NumberSequenceKeypoint.new(1, 1) })
			ShineGradient.Offset = Vector2.new(-1, 0)
			ShineGradient.Parent = ShineText

			local connection67 = RunService.RenderStepped:Connect(function(deltaTime15)
				-- [envlog] error: Luraph Script:13974: Script:3: attempt to index nil with 'Disconnect'
			end)

			task.spawn(function()
				ShineGradient.Offset = Vector2.new(-1, 0)
				local tween9 = TweenService:Create(ShineGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Offset = Vector2.new(1, 0) })
				tween9:Play()
				tween9.Completed:Wait()
				task.wait(2)
				ShineGradient.Offset = Vector2.new(-1, 0)
				local tween10 = TweenService:Create(ShineGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Offset = Vector2.new(1, 0) })
				tween10:Play()
				tween10.Completed:Wait()
				task.wait(2)
				ShineGradient.Offset = Vector2.new(-1, 0)
				local tween11 = TweenService:Create(ShineGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Offset = Vector2.new(1, 0) })
				tween11:Play()
				tween11.Completed:Wait()
				task.wait(2)
				ShineGradient.Offset = Vector2.new(-1, 0)
				local tween12 = TweenService:Create(ShineGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Offset = Vector2.new(1, 0) })
				tween12:Play()
				tween12.Completed:Wait()
				task.wait(2)
				ShineGradient.Offset = Vector2.new(-1, 0)
				local tween13 = TweenService:Create(ShineGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Offset = Vector2.new(1, 0) })
				tween13:Play()
				tween13.Completed:Wait()
				task.wait(2)
				ShineGradient.Offset = Vector2.new(-1, 0)
				local tween14 = TweenService:Create(ShineGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Offset = Vector2.new(1, 0) })
				tween14:Play()
				tween14.Completed:Wait()
				task.wait(2)
				ShineGradient.Offset = Vector2.new(-1, 0)
				local tween15 = TweenService:Create(ShineGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Offset = Vector2.new(1, 0) })
				tween15:Play()
				tween15.Completed:Wait()
				task.wait(2)
				ShineGradient.Offset = Vector2.new(-1, 0)
				local tween16 = TweenService:Create(ShineGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Offset = Vector2.new(1, 0) })
				tween16:Play()
				tween16.Completed:Wait()
				task.wait(2)
				ShineGradient.Offset = Vector2.new(-1, 0)
				local tween17 = TweenService:Create(ShineGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Offset = Vector2.new(1, 0) })
				tween17:Play()
				tween17.Completed:Wait()
				task.wait(2)
				ShineGradient.Offset = Vector2.new(-1, 0)
				local tween18 = TweenService:Create(ShineGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Offset = Vector2.new(1, 0) })
				tween18:Play()
				tween18.Completed:Wait()
				task.wait(2)
				ShineGradient.Offset = Vector2.new(-1, 0)
				local tween19 = TweenService:Create(ShineGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Offset = Vector2.new(1, 0) })
				tween19:Play()
				tween19.Completed:Wait()
				task.wait(2)
				ShineGradient.Offset = Vector2.new(-1, 0)
				local tween20 = TweenService:Create(ShineGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Offset = Vector2.new(1, 0) })
				tween20:Play()
				tween20.Completed:Wait()
				task.wait(2)
				ShineGradient.Offset = Vector2.new(-1, 0)
				local tween21 = TweenService:Create(ShineGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Offset = Vector2.new(1, 0) })
				tween21:Play()
				tween21.Completed:Wait()
				task.wait(2)
				ShineGradient.Offset = Vector2.new(-1, 0)
				local tween22 = TweenService:Create(ShineGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Offset = Vector2.new(1, 0) })
				tween22:Play()
				tween22.Completed:Wait()
				task.wait(2)
				ShineGradient.Offset = Vector2.new(-1, 0)
				local tween23 = TweenService:Create(ShineGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Offset = Vector2.new(1, 0) })
				tween23:Play()
				tween23.Completed:Wait()
				task.wait(2)
				ShineGradient.Offset = Vector2.new(-1, 0)
				local tween24 = TweenService:Create(ShineGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Offset = Vector2.new(1, 0) })
				tween24:Play()
				tween24.Completed:Wait()
				task.wait(2)
				ShineGradient.Offset = Vector2.new(-1, 0)
				local tween25 = TweenService:Create(ShineGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Offset = Vector2.new(1, 0) })
				tween25:Play()
				tween25.Completed:Wait()
				task.wait(2)
				ShineGradient.Offset = Vector2.new(-1, 0)
				local tween26 = TweenService:Create(ShineGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Offset = Vector2.new(1, 0) })
				tween26:Play()
				tween26.Completed:Wait()
				task.wait(2)
				ShineGradient.Offset = Vector2.new(-1, 0)
				local tween27 = TweenService:Create(ShineGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Offset = Vector2.new(1, 0) })
				tween27:Play()
				tween27.Completed:Wait()
				task.wait(2)
				ShineGradient.Offset = Vector2.new(-1, 0)
				local tween28 = TweenService:Create(ShineGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Offset = Vector2.new(1, 0) })
				tween28:Play()
				tween28.Completed:Wait()
				task.wait(2)
				ShineGradient.Offset = Vector2.new(-1, 0)
				local tween29 = TweenService:Create(ShineGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Offset = Vector2.new(1, 0) })
				tween29:Play()
				tween29.Completed:Wait()
				task.wait(2)
				ShineGradient.Offset = Vector2.new(-1, 0)
				local tween30 = TweenService:Create(ShineGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Offset = Vector2.new(1, 0) })
				tween30:Play()
				tween30.Completed:Wait()
				task.wait(2)
				ShineGradient.Offset = Vector2.new(-1, 0)
				local tween31 = TweenService:Create(ShineGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Offset = Vector2.new(1, 0) })
				tween31:Play()
				tween31.Completed:Wait()
				task.wait(2)
				ShineGradient.Offset = Vector2.new(-1, 0)
				local tween32 = TweenService:Create(ShineGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Offset = Vector2.new(1, 0) })
				tween32:Play()
				tween32.Completed:Wait()
				task.wait(2)
				ShineGradient.Offset = Vector2.new(-1, 0)
				local tween33 = TweenService:Create(ShineGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Offset = Vector2.new(1, 0) })
				tween33:Play()
				tween33.Completed:Wait()
				task.wait(2)
				ShineGradient.Offset = Vector2.new(-1, 0)
				local tween34 = TweenService:Create(ShineGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Offset = Vector2.new(1, 0) })
				tween34:Play()
				tween34.Completed:Wait()
				-- [envlog] stopped after 50 waits
			end)

			BaseText.Text = "FEBZ"
			ShineText.Text = "FEBZ"
		else
			connection67:Disconnect()
			CustomHeaderBillboard:Destroy()
		end
	end
})

Players.LocalPlayer.CharacterAdded:Connect(function(character32)
	task.wait(1)
	-- [envlog] error: Luraph Script:14053: Script:3: attempt to index nil with 'F_HeaderName'
end)

-- isfolder("W424_Violence") -> false
makefolder("W424_Violence")
-- isfolder("W424_Violence/Config/") -> false
makefolder("W424_Violence/Config/")
-- isfile("W424_Violence/Config/Autoload.txt") -> false
local Section37 = Tab8:AddSection("Configuration", true)
local Paragraph = Section37:AddParagraph({ Title = "Config Manager", Content = "Current: None | Autoload: None", Icon = "settings" })

task.spawn(function()
	task.wait(1.5)
end)

Section37:AddInput({
	Title = "Config Name",
	Content = "Enter the name for u config",
	Placeholder = "Write ur input here",
	Callback = function()
	end
})

-- isfolder("W424_Violence/Config/") -> false
local Dropdown = Section37:AddDropdown({
	Title = "Select Config",
	Content = "Choose from exists configs",
	Options = {},
	Callback = function()
	end
})

Section37:AddButton({
	Title = "Save Config",
	SubTitle = "Load Config",
	Callback = function()
	end,
	SubCallback = function()
		LoadConfigFromFile(false)
		-- [envlog] error: Luraph Script:14139: Luraph Script:14090: Script:3: attempt to index boolean with 'match'
	end
})

Section37:AddButton({
	Title = "Delete Config",
	SubTitle = "Set Autoload",
	Callback = function()
		-- [envlog] error: Luraph Script:14150: Script:3: attempt to concatenate boolean with string
	end,
	SubCallback = function()
		writefile("W424_Violence/Config/Autoload.txt", false)
		-- [envlog] error: Luraph Script:14161: Luraph Script:14090: Script:3: attempt to index boolean with 'match'
	end
})

Section37:AddButton({
	Title = "Refresh List",
	SubTitle = "Clear Autoload",
	Callback = function()
		-- isfolder("W424_Violence/Config/") -> false
		Dropdown:SetValues({})
	end,
	SubCallback = function()
		-- isfile("W424_Violence/Config/Autoload.txt") -> false
		-- [envlog] error: Luraph Script:14177: Luraph Script:14090: Script:3: attempt to index boolean with 'match'
	end
})

Section37:AddButton({
	Title = "Reset All Elements to Default",
	Callback = function()
		LoadConfigElements()
		Paragraph:SetContent("Current: None | Autoload: None")
		task.wait(0.5)
	end
})

Section37:AddSubSection("Load From External")

Section37:AddInput({
	Title = "External Config JSON",
	Content = "Paste ur raw JSON config here",
	Callback = function()
	end
})

Section37:AddButton({
	Title = "Load External JSON",
	Callback = function()
		HttpService:JSONDecode(false)
		LoadConfigElements()
		task.wait(0.5)
		notif("External JSON berhasil di-load!")
	end
})

Section37:AddButton({
	Title = "Copy Config to Clipboard",
	Callback = function()
		-- [envlog] error: Luraph Script:14246: Script:3: attempt to concatenate boolean with string
	end
})
