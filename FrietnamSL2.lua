-- If you have any bugs with the script dm france#0001 or vietnam#0001

if game.PlaceId == 4779613061 then 

	game["RunService"].Stepped:Connect(function()
		game.Players.LocalPlayer.Character:FindFirstChild("lolxd555"):Destroy()
	end)

	game["RunService"].Stepped:Connect(function()
		game.Players.LocalPlayer.Character:FindFirstChild("lolxd6"):Destroy()
	end)

	game["RunService"].Stepped:Connect(function()
		game.Players.LocalPlayer.Character:FindFirstChild("Script"):Destroy()
	end)

	local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
	local Window = Library.CreateLib("Frietnam (South London 2)", "BloodTheme")

	local Main = Window:NewTab("Home")
	local MainSection = Main:NewSection("Home")

	MainSection:NewKeybind("Toggle UI", "Toggle UI", Enum.KeyCode.RightControl, function()
		Library:ToggleUI()
	end)

	MainSection:NewButton("Skip Loading Screen", "Skips Loading Screen", function()
		local LP = game:GetService("Players").LocalPlayer
		LP:WaitForChild("PlayerGui").Menu:Destroy()
		LP.PlayerGui.Agreement:Destroy()

		LP.PlayerGui.Stats.Enabled = true
		LP.PlayerGui.twitter.Enabled = true

		workspace.CurrentCamera.CameraType = "Custom"
		local char = LP.Character or LP.CharacterAdded:Wait()
		workspace.CurrentCamera.CameraSubject = char:WaitForChild("Humanoid")
	end)

	MainSection:NewButton("Mod Detector", "Lets you know if theres any mods ingame", function()
		game.StarterGui:SetCore("SendNotification", {
			Title = "Mod Detector";
			Text = "It is enabled! Go to 'Others' and press SL2 Killer to start";
			Icon = "https://www.roblox.com/library/3971489730/Money-icon?Category=Decals&SortType=Relevance&SortAggregation=AllTime&SearchKeyword=money+icon&CreatorId=0&Page=1&Position=6&SearchId=312fffd7-bfc2-4f93-90d3-9c87a6154f2d";
			Duration = "7";
			Button1 = "Got it";
			Button2 = "Not right now";
		})


	end)



	local Player = Window:NewTab("Player")
	local PlayerSection = Player:NewSection("Player Exploits")

	PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
	end)

	PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
	end)

	PlayerSection:NewButton("Fly [Y To Toggle]", "[Y To Toggle]", function()
		loadstring(game:HttpGet('https://pastebin.com/raw/ppJT4Txq'))()
	end)

	PlayerSection:NewToggle("Noclip", "lets you go through walls", function()
		nam = game.Players.LocalPlayer.Name

		game:GetService('RunService').Stepped:connect(function()
			for a, b in pairs(game.Workspace:GetChildren()) do
				if b.Name == nam then
					for i, v in pairs(game.Workspace[nam]:GetChildren()) do
						if v:IsA("BasePart") then
							v.CanCollide = false

						end
					end
				end
			end
		end)

		Workspace[nam].Head.Changed:connect(function()
			for a, b in pairs(game.Workspace:GetChildren()) do
				if b.Name == nam then
					for i, v in pairs(game.Workspace[nam]:GetChildren()) do
						if v:IsA("BasePart") then
							v.CanCollide = false

						end
					end
				end
			end
		end)

		TextButton_2.Parent = Frame
		TextButton_2.BackgroundColor3 = Color3.new(1, 1, 1)
		TextButton_2.Position = UDim2.new(0.261265785, 0, 0.615844727, 0)
		TextButton_2.Size = UDim2.new(0, 200, 0, 50)
		TextButton_2.Font = Enum.Font.SourceSans
		TextButton_2.Text = "Noclip R6"
		TextButton_2.TextColor3 = Color3.new(0, 0, 0)
		TextButton_2.TextSize = 14
		TextButton_2.MouseButton1Down:connect(function()
			game.Players.LocalPlayer.Character.Humanoid.MaxHealth = math.huge
			game.Players.LocalPlayer.Character.Humanoid.Health = math.huge
			while true do
				game:GetService("RunService").Stepped:wait()
				game.Players.LocalPlayer.Character.Head.CanCollide = false
				game.Players.LocalPlayer.Character.Torso.CanCollide = false
			end
		end)

		TextLabel.Parent = Frame
		TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
		TextLabel.Position = UDim2.new(0.104106054, 0, 0.111652002, 0)
		TextLabel.Size = UDim2.new(0, 299, 0, 50)
		TextLabel.Font = Enum.Font.SourceSans
		TextLabel.Text = "hack noclip (work all game)"
		TextLabel.TextColor3 = Color3.new(0, 0, 0)
		TextLabel.TextSize = 14
		TextLabel.TextWrapped = true
		-- Scripts:
		function SCRIPT_GBXM85_FAKESCRIPT() -- Drag.LocalScript 
			local script = Instance.new('LocalScript')
			script.Parent = Drag
			wanttobemoved=script.Parent.Parent
			X=wanttobemoved.Position.X.Offset
			Y=wanttobemoved.Position.Y.Offset
			XS=wanttobemoved.Position.X.Scale
			YS=wanttobemoved.Position.Y.Scale
			function down(posX,posY)--the positions of the mouse
				drag=true--activate the drag function
				X=wanttobemoved.Position.X.Offset--redefines the value "X"
				Y=wanttobemoved.Position.Y.Offset--redefines the value "Y"
				XS=wanttobemoved.Position.X.Scale
				YS=wanttobemoved.Position.Y.Scale
				DposX=posX-X--the mouse's X position offset by the frame's X position.
				DposY=posY-Y--the mouse's Y position offset by the frame's Y position.
				print(""..DposX..","..DposY.."")--remembers the values DposX and DposY in the output toolbar.
			end
			function up()
				drag=false--deactivate the drag
			end
			function move(posX,posY)--again, the positions of the mouse
				if drag then--if held down then
					wanttobemoved.Position=UDim2.new(XS,posX - DposX,YS,posY - DposY)
				end
			end
			script.Parent.MouseButton1Down:connect(down)
			script.Parent.MouseButton1Up:connect(up)
			script.Parent.MouseLeave:connect(up)
			script.Parent.MouseMoved:connect(move)

		end
		coroutine.resume(coroutine.create(SCRIPT_GBXM85_FAKESCRIPT))
	end)


	local StatsSection = Player:NewSection("Valuestats")

	StatsSection:NewButton("Infinite Stamina", "Infinite Stamina", function()
		while true do 
			wait(0)
			game.Players.LocalPlayer.Valuestats.Stamina.Value = 100
		end
	end)

	StatsSection:NewButton("Infinite Hunger", "Infinite Hunger", function()
		while true do 
			wait(0)
			game.Players.LocalPlayer.Valuestats.Hunger.Value = 100
		end
	end)

	StatsSection:NewButton("Infinite Karma", "Infinite Karma", function()
		while true do
			wait(1)
			game.Players.LocalPlayer.Valuestats.Karma.Value = 999999
		end
	end)

	StatsSection:NewButton("Infinite Skittles", "Infinite Skittles", function()
		while wait() do
			game:GetService("Players").LocalPlayer.PlayerGui.Run.Value.Value = true
			game.Players.LocalPlayer.Character.Resistance.Value = true
			game:GetService("Workspace").LocalPlayer.Resistance = true
		end
	end)

	StatsSection:NewButton("Ticket Remover", "Ticket Remover", function()
		while wait() do
			game.Players.LocalPlayer.PlayerGui.Ticket:Destroy()
		end
	end)

	local OtherPlayer = Player:NewSection("Other Player Exploits")

	OtherPlayer:NewButton("Bald", "Makes you bald.", function()
		for i,v in next, game:GetService('Players').LocalPlayer.Character:GetChildren() do
			if v:IsA('Accessory') then
				v:Destroy()
			end
		end
	end)

	OtherPlayer:NewButton("Infinite Jump", "lets you jump infinite but you have to put jumppower to 50", function()
		local InfiniteJumpEnabled = true
		game:GetService("UserInputService").JumpRequest:connect(function()
			if InfiniteJumpEnabled then
				game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
			end
		end)
	end)


	OtherPlayer:NewButton("Btools", "btools", function()
		local player = game.Players.LocalPlayer
		local mouse = player:GetMouse()

		-- Objects

		local ScreenGui = Instance.new("ScreenGui")
		local TextButton = Instance.new("TextButton")
		local On = Instance.new("StringValue")

		-- Properties

		ScreenGui.Parent = player.PlayerGui

		TextButton.Parent = ScreenGui
		TextButton.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
		TextButton.BorderSizePixel = 0
		TextButton.Position = UDim2.new(0, 0, 0.455743879, 0)
		TextButton.Size = UDim2.new(0, 186, 0, 35)
		TextButton.Font = Enum.Font.SourceSans
		TextButton.Text = "Btools (Off)"
		TextButton.TextColor3 = Color3.new(0.27451, 0.27451, 0.27451)
		TextButton.TextScaled = true
		TextButton.TextSize = 14
		TextButton.TextWrapped = true


		On.Parent = TextButton
		On.Value = "Off"

		-- Scripts 

		TextButton.MouseButton1Up:Connect(function()
			if On.Value == "Off" then
				On.Value = "On"
				TextButton.Text = "Btools (On)"
			else
				On.Value = "Off"
				TextButton.Text = "Btools (Off)"
			end
		end)

		mouse.Button1Up:Connect(function()
			if On.Value == "Off" then
				print('btools off')
			else
				if mouse.Target.Locked == true then
					mouse.Target:Destroy()
				else
					mouse.Target:Destroy()
				end
			end
		end)
	end)

	OtherPlayer:NewButton("Click TP", "tp anywhere", function()
		mouse = game.Players.LocalPlayer:GetMouse()
		tool = Instance.new("Tool")
		tool.RequiresHandle = false
		tool.Name = "Click Teleport"
		tool.Activated:connect(function()
			local pos = mouse.Hit+Vector3.new(0,2.5,0)
			pos = CFrame.new(pos.X,pos.Y,pos.Z)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
		end)
		tool.Parent = game.Players.LocalPlayer.Backpack
	end)


	OtherPlayer:NewButton("No Jump Cooldown", "adds no cooldown for jump", function()
		while true do
			wait(1)
			game.Players.LocalPlayer.PlayerGui.JumpCooldown:Destroy()
		end
	end)

	OtherPlayer:NewButton("Anti Blur", "removes blur effect", function()
		game.StarterGui:SetCore("SendNotification", {
			Title = "Anti-Blur";
			Text = "IN DEVELOPMENT";
			Icon = "https://www.roblox.com/library/3971489730/Money-icon?Category=Decals&SortType=Relevance&SortAggregation=AllTime&SearchKeyword=money+icon&CreatorId=0&Page=1&Position=6&SearchId=312fffd7-bfc2-4f93-90d3-9c87a6154f2d";
			Duration = "7";
			Button1 = "Got it";
			Button2 = "Not right now";
		})


	end)

	OtherPlayer:NewButton("Remove Damage Blood", "removes the annoying blood gui", function()
		while true do
			wait(1)
			game.Players.LocalPlayer.PlayerGui.Dmg:Destroy()
		end
	end)

	OtherPlayer:NewButton("Anti Camera-Bob", "removes the annoying camera bob", function()
		while true do
			wait(1)
			game.StarterGui.Camera_Bob:Destroy()
		end
	end)

	OtherPlayer:NewButton("Anti Lag", "Turns down graphics", function()
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
		for i,v in pairs(g:GetDescendants()) do
			if v:IsA("Part") or v:IsA("Union") or v:IsA("MeshPart") then
				v.Material = "Plastic"
				v.Reflectance = 0
			elseif v:IsA("Decal") and decalsyeeted then 
				v.Transparency = 1
			elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then 
				v.Lifetime = NumberRange.new(0)
			end
		end
	end)

	local Teleport = Window:NewTab("Teleports")
	local TeleportSection = Teleport:NewSection("Apartments")

	TeleportSection:NewButton("Apartment 1", "Teleports you to Apartment 1", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-103.460747, 4.15790749, -114.597099, 0.104216076, 3.2755576e-08, 0.994554698, -1.53543951e-08, 1, -3.13259818e-08, -0.994554698, -1.20061152e-08, 0.104216076)
	end)

	TeleportSection:NewButton("Apartment 2", "Teleports you to Apartment 2", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-206.795532, 4.40000772, -44.2902832, 0.99929148, -1.00512432e-09, 0.0376375355, 2.05968553e-09, 1, -2.79800982e-08, -0.0376375355, 2.80377943e-08, 0.99929148)
	end)

	TeleportSection:NewButton("Apartment 3", "Teleports you to Apartment 3", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(31.9999828, 4.45790768, -214, 1, 2.73326872e-08, 2.51173119e-14, -2.73326872e-08, 1, 3.21529203e-09, -2.50294289e-14, -3.21529203e-09, 1)
	end)

	local ShopSection = Teleport:NewSection("Shops")

	ShopSection:NewButton("Sports Shop", "Teleports you to Sport Shop", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-21.0000076, 4.45790768, -81, 1, -7.07574159e-08, -2.52919176e-14, 7.07574159e-08, 1, -8.32337221e-09, 2.58808579e-14, 8.32337221e-09, 1)
	end)

	ShopSection:NewButton("Tescos", "Teleports you to Tesco", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-97, 4.40000963, 64, 1, -6.12738447e-08, 1.64740571e-15, 6.12738447e-08, 1, -7.2081674e-09, -1.20573361e-15, 7.2081674e-09, 1)
	end)

	ShopSection:NewButton("Urbans", "Teleports you to Urban", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(282, 4.45790863, -157, 1, 6.64652404e-08, -1.07617515e-13, -6.64652404e-08, 1, 7.81934428e-09, 1.08137234e-13, -7.81934428e-09, 1)
	end)

	ShopSection:NewButton("Bandos", "Teleports you to Bandos", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-20, 4.4000082, -24, 1, 9.46803347e-09, -1.61477362e-14, -9.46803347e-09, 1, -1.32429419e-08, 1.60223516e-14, 1.32429419e-08, 1)
	end)

	ShopSection:NewButton("Barbers", "Teleports you to Barbers", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-21, 4.40000916, 102, 1, -3.14583648e-09, -1.63019792e-14, 3.14583648e-09, 1, 4.40034809e-09, 1.62881369e-14, -4.40034809e-09, 1)
	end)

	ShopSection:NewButton("Hair Salon", "Teleports you to Hair Salon", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-21.0000038, 4.40000916, 120.000015, 1, 3.68644564e-08, -1.16391732e-13, -3.68644564e-08, 1, -5.15691454e-08, 1.14490665e-13, 5.15691454e-08, 1)
	end)

	ShopSection:NewButton("Muruna Restaurant", "Teleports you to Muruna Restaurant", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-21, 4.40000916, 209, 1, 3.79887801e-08, -2.18802942e-14, -3.79887801e-08, 1, -5.31432249e-08, 1.98614488e-14, 5.31432249e-08, 1)
	end)

	ShopSection:NewButton("Quiz Clothing", "Teleports you to Quiz Clothing", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-20, 4.45790815, -52.0000076, 1, -2.40221443e-09, -2.3818412e-13, 2.40221443e-09, 1, 3.36058181e-09, 2.38176042e-13, -3.36058181e-09, 1)
	end)

	ShopSection:NewButton("Car Dealership", "Teleports you to Car Dealership", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-93.9999847, 4.15790749, 542, 1, -1.20612453e-08, -2.38422726e-13, 1.20612453e-08, 1, 1.68743792e-08, 2.38219221e-13, -1.68743792e-08, 1)
	end)

	ShopSection:NewButton("Petrol Station", "Teleports you to Petrol Station", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-391, 4.27190638, 326.000061, 1, -4.65898431e-08, -3.57836346e-13, 4.65898431e-08, 1, 6.51843592e-08, 3.54799415e-13, -6.51843592e-08, 1)
	end)

	ShopSection:NewButton("MET Station", "Teleports you to MET Station", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-207, 6, -211, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	end)

	ShopSection:NewButton("Banks Boxing", "Teleports you to Banks Boxing", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-190, 4.40000916, 168, 1, -9.0672172e-09, 2.15987354e-14, 9.0672172e-09, 1, -5.94992215e-08, -2.10592431e-14, 5.94992215e-08, 1)
	end)

	ShopSection:NewButton("Night Club", "Teleports you to Night Club", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-21, 4.40000916, 182, 1, -5.01537478e-08, -6.47372331e-15, 5.01537478e-08, 1, -5.58382318e-09, 6.75377316e-15, 5.58382318e-09, 1)
	end)

	ShopSection:NewButton("Ultimate Drip", "Teleports you to Ultimate Drip", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-322, 4.45790768, 123, 1, 7.38429193e-08, 1.61001058e-14, -7.38429193e-08, 1, 8.2219076e-09, -1.54929746e-14, -8.2219076e-09, 1)
	end)

	ShopSection:NewButton("School", "Teleports you to School", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-351, 5.93800926, -39, 1, 8.71055903e-08, 5.51441827e-14, -8.71055903e-08, 1, 9.69893588e-09, -5.4299352e-14, -9.69893588e-09, 1)
	end)

	ShopSection:NewButton("New London", "Teleports you to New London", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-83, 4.40000772, 4, 1, -1.83915034e-08, 1.28780865e-14, 1.83915034e-08, 1, -2.04795136e-09, -1.28404215e-14, 2.04795136e-09, 1)
	end)

	ShopSection:NewButton("Face Lift", "Teleports you to Face Lift", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(281, 4.45790815, -188, 1, -6.91100155e-09, 2.24737441e-14, 6.91100155e-09, 1, -7.69573294e-10, -2.24684248e-14, 7.69573294e-10, 1)
	end)

	local DealerSection = Teleport:NewSection("Dealers")

	DealerSection:NewButton("Mask Dealer", "Teleports you to Mask Dealer", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-177.292038, -0.199988782, 146.78566, -0.183644637, 8.82647129e-08, -0.982992709, 2.8343921e-08, 1, 8.44965626e-08, 0.982992709, -1.23445263e-08, -0.183644637)
	end)

	DealerSection:NewButton("Gun Dealer", "Teleports you to Gun Dealer", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(55, 4.47900772, -126, 1, 6.77545131e-08, 1.25309122e-14, -6.77545131e-08, 1, 9.47568246e-09, -1.18888918e-14, -9.47568246e-09, 1)
	end)

	DealerSection:NewButton("Ammo Dealer", "Teleports you to Ammo Dealer", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-381, 4.53488255, -14, 1, -4.66693315e-08, 2.00275299e-14, 4.66693315e-08, 1, -6.52700471e-09, -1.97229199e-14, 6.52700471e-09, 1)
	end)

	local BlockSection = Teleport:NewSection("Blocks")

	BlockSection:NewButton("OO Block", "Teleports you to OO Block", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-359, 4.53488302, -185, 1, -1.25941853e-08, 1.20608318e-14, 1.25941853e-08, 1, -1.76135628e-09, -1.20386489e-14, 1.76135628e-09, 1)
	end)

	BlockSection:NewButton("K33 Block", "Teleports you to K33 Block", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-78, 7.00918674, 163, 1, 6.13948075e-08, 1.15661519e-14, -6.13948075e-08, 1, 8.58640181e-09, -1.10389908e-14, -8.58640181e-09, 1)
	end)

	local Combat = Window:NewTab("Combat")
	local CombatSection = Combat:NewSection("Combat")

	CombatSection:NewToggle("Loopbring All", "brings all players", function()
        --[[
        bad skid
        --]]

		local L_1_ = true;
		local L_2_ = game.Players.LocalPlayer.Character.HumanoidRootPart;
		local L_3_ = L_2_.Position - Vector3.new(5, 0, 0)

		game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(L_4_arg1)
			if L_4_arg1 == 'f' then
				L_1_ = not L_1_
			end;
			if L_4_arg1 == 'r' then
				L_2_ = game.Players.LocalPlayer.Character.HumanoidRootPart;
				L_3_ = L_2_.Position - Vector3.new(5, 0, 0)
			end
		end)

		for L_5_forvar1, L_6_forvar2 in pairs(game.Players:GetPlayers()) do
			if L_6_forvar2 == game.Players.LocalPlayer then
			else
				local L_7_ = coroutine.create(function()
					game:GetService('RunService').RenderStepped:Connect(function()
						local L_8_, L_9_ = pcall(function()
							local L_10_ = L_6_forvar2.Character;
							if L_10_ then
								if L_10_:FindFirstChild("HumanoidRootPart") then
									if L_1_ then
										L_6_forvar2.Backpack:ClearAllChildren()
										for L_11_forvar1, L_12_forvar2 in pairs(L_10_:GetChildren()) do
											if L_12_forvar2:IsA("Tool") then
												L_12_forvar2:Destroy()
											end
										end;
										L_10_.HumanoidRootPart.CFrame = CFrame.new(L_3_)
									end
								end
							end
						end)
						if L_8_ then
						else
							warn("Unnormal error: "..L_9_)
						end
					end)
				end)
				coroutine.resume(L_7_)
			end
		end;

		game.Players.PlayerAdded:Connect(function(L_13_arg1)   
			if L_13_arg1 == game.Players.LocalPlayer then
			else
				local L_14_ = coroutine.create(function()
					game:GetService('RunService').RenderStepped:Connect(function()
						local L_15_, L_16_ = pcall(function()
							local L_17_ = L_13_arg1.Character;
							if L_17_ then
								if L_17_:FindFirstChild("HumanoidRootPart") then
									if L_1_ then
										L_13_arg1.Backpack:ClearAllChildren()
										for L_18_forvar1, L_19_forvar2 in pairs(L_17_:GetChildren()) do
											if L_19_forvar2:IsA("Tool") then
												L_19_forvar2:Destroy()
											end
										end;
										L_17_.HumanoidRootPart.CFrame = CFrame.new(L_3_)
									end
								end
							end
						end)
						if L_15_ then
						else
							warn("Unnormal error: "..L_16_)
						end
					end)
				end)
				coroutine.resume(L_14_)
			end           
		end)
	end)

	local AutoFarm = Window:NewTab("Auto Farm")
	local AutoSection = AutoFarm:NewSection("Auto Farm")

	AutoSection:NewButton("Join Smallest Server", "Joins the smallest server available.", function()
		local module = loadstring(game:HttpGet"https://pastebin.com/raw/0aaT5YD2")()
		module:Teleport(game.PlaceId)
	end)

	AutoSection:NewButton("Auto Farm", "in dev...", function()
		--scripthere
	end)

	AutoSection:NewButton("XP Farm", "Gets you higher level faster.", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(666.902832, -431.744995, 931.35498, -0.921566784, 3.96595894e-08, 0.388219863, 1.05669837e-08, 1, -7.70733593e-08, -0.388219863, -6.6925935e-08, -0.921566784)
		game.StarterGui:SetCore("SendNotification", {
			Title = "XP Farm";
			Text = "/respawn to stop";
			Icon = "https://www.roblox.com/library/3971489730/Money-icon?Category=Decals&SortType=Relevance&SortAggregation=AllTime&SearchKeyword=money+icon&CreatorId=0&Page=1&Position=6&SearchId=312fffd7-bfc2-4f93-90d3-9c87a6154f2d";
			Duration = "7";
			Button1 = "Got it";
			Button2 = "Not right now";
		})


	end)

	local Misc = Window:NewTab("Misc")
	local MiscSection = Misc:NewSection("Misc")

	MiscSection:NewButton("Fast Loot [O to Toggle]", "Fast Looting", function(state)
		if state then
			a = a
			if a == "o" then
				for fe, fg in pairs(game:GetService("Players"):GetPlayers()) do
					if fg.Character.Humanoid.Health <= 20 then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = fg.Character.HumanoidRootPart.CFrame
						game:GetService("ReplicatedStorage").gorillaservice:FireServer(unpack({
							[1] = "loot",
							[2] = game:GetService("Players")["" .. fg.Name]
						}))
					end
				end
			end
		else
			print("no")
		end
	end)

	CombatSection:NewButton("Hitbox Extender", "makes the players hitbox extend.", function()
		while true do
			wait(1)
			_G.HeadSize = 6
			_G.Disabled = true

			if _G.Disabled then
				for i,v in next, game:GetService('Players'):GetPlayers() do
					if v.Name ~= game:GetService('Players').LocalPlayer.Name then
						pcall(function()
							v.Character.HumanoidRootPart.Name = "xC6M3Vuz7QpsY5nv"
							v.Character.xC6M3Vuz7QpsY5nv.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
							v.Character.xC6M3Vuz7QpsY5nv.Transparency = 0.5
							v.Character.xC6M3Vuz7QpsY5nv.CanCollide = false
						end)
					end
				end
			end
		end
	end)

	CombatSection:NewButton("Use Weapons when dead", "lets you use weapons in critical state.", function()
		game.StarterGui:SetCore("SendNotification", {
			Title = "Use Weapons when dead";
			Text = "It has enabled! Go to 'Others' and press SL2 Utility > Semi God Mode";
			Icon = "https://www.roblox.com/library/3971489730/Money-icon?Category=Decals&SortType=Relevance&SortAggregation=AllTime&SearchKeyword=money+icon&CreatorId=0&Page=1&Position=6&SearchId=312fffd7-bfc2-4f93-90d3-9c87a6154f2d";
			Duration = "7";
			Button1 = "Got it";
			Button2 = "Not right now";
		})


	end)


	CombatSection:NewButton("ESP", "shows you all the players", function()
		local custom_theme = {} --soon

		local function CreateInstance(cls,props)
			local inst = Instance.new(cls)
			for i,v in pairs(props) do
				inst[i] = v
			end
			return inst
		end

		local age1 = CreateInstance('ScreenGui',{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name='age1', Parent=game.CoreGui})
		local p_visuals = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=2,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 50, 0, 60),Rotation=0,Selectable=false,Size=UDim2.new(0, 200, 0, 254),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'p_visuals',Parent = age1})
		local UIListLayout = CreateInstance('UIListLayout', {Padding = UDim.new(0, 1), FillDirection = Enum.FillDirection.Vertical, HorizontalAlignment = Enum.HorizontalAlignment.Left, SortOrder = Enum.SortOrder.LayoutOrder, VerticalAlignment = Enum.VerticalAlignment.Top, Name = 'UIListLayout', Parent = p_visuals })
		local title1 = CreateInstance('TextLabel',{Font=Enum.Font.GothamBlack,FontSize=Enum.FontSize.Size18,Text='harlemhub esp',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, 0, 0, 24),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='title1',Parent = p_visuals})
		local b_b = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Bounding box',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_b',Parent = p_visuals})
		local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_b})
		local b_f = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Fill alpha',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_f',Parent = p_visuals})
		local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_f})
		local b_rt = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Render team',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_rt',Parent = p_visuals})
		local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_rt})
		local b_tc = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Use TeamColor',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_tc',Parent = p_visuals})
		local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_tc})
		local b_sn = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Show name',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_sn',Parent = p_visuals})
		local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_sn})
		local b_sd = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Show distance',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_sd',Parent = p_visuals})
		local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_sd})
		local b_sh = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Show health',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_sh',Parent = p_visuals})
		local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_sh})
		local b_ht = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Health type',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_ht',Parent = p_visuals})
		local v = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Text',TextColor3=Color3.new(0, 1, 1),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_ht})
		local b_f_t = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Fill transparency',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_f_t',Parent = p_visuals})
		local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='1',TextColor3=Color3.new(0, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_f_t})
		local title1_2 = CreateInstance('TextLabel',{Font=Enum.Font.SourceSansBold,FontSize=Enum.FontSize.Size18,Text='ESP',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, 0, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='title1_2',Parent = p_visuals})
		local b_ct = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Team color',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_ct',Parent = p_visuals})
		local ct_b = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(0, 0, 1), PlaceholderText='', PlaceholderColor3=Color3.new(0, 0, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -2, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 27, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ct_b',Parent = b_ct})
		local ct_g = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(0, 1, 0), PlaceholderText='', PlaceholderColor3=Color3.new(0, 1, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -29, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 27, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ct_g',Parent = b_ct})
		local ct_r = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(1, 0, 0), PlaceholderText='', PlaceholderColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -56, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 27, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ct_r',Parent = b_ct})
		local b_ce = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Enemy color',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_ce',Parent = p_visuals})
		local ce_b = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(0, 0, 1), PlaceholderText='', PlaceholderColor3=Color3.new(0, 0, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -2, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 27, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ce_b',Parent = b_ce})
		local ce_g = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(0, 1, 0), PlaceholderText='', PlaceholderColor3=Color3.new(0, 1, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -29, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 27, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ce_g',Parent = b_ce})
		local ce_r = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(1, 0, 0), PlaceholderText='', PlaceholderColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -56, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 27, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ce_r',Parent = b_ce})
		local watermark = CreateInstance('TextLabel',{Font=Enum.Font.Code,FontSize=Enum.FontSize.Size14,Text='lamehaxx v0.01',TextColor3=Color3.new(0, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 2, 0, -34),Rotation=0,Selectable=false,Size=UDim2.new(0, 200, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=20,Name='watermark',Parent = age1})
		local watermark1 = CreateInstance('TextLabel',{Font=Enum.Font.Code,FontSize=Enum.FontSize.Size14,Text='lamehaxx v0.01',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=0,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, -2, 0, -2),Rotation=0,Selectable=false,Size=UDim2.new(0, 200, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=20,Name='watermark1',Parent = watermark})
		p_visuals.Draggable = true

		title1.LayoutOrder = 0 title1_2.LayoutOrder = 1
		b_b.LayoutOrder = 1 b_f.LayoutOrder = 2 b_f_t.LayoutOrder = 3 b_sd.LayoutOrder = 4 b_sn.LayoutOrder = 5 b_sh.LayoutOrder = 6 b_ht.LayoutOrder = 7 b_rt.LayoutOrder = 8 b_tc.LayoutOrder = 9 b_ct.LayoutOrder = 10 b_ce.LayoutOrder = 11

		local localplayer = game:GetService"Players".LocalPlayer
		local uis = game:GetService"UserInputService"

		local cheats = {
			b_b = false;
			b_f = false;
			b_f_t = 1;
			b_sd = false;
			b_sn = false;
			b_sh = false;
			b_ht = "Text";
			b_rt = false;
			b_tc = false;
		}

		local cheatsf = Instance.new("Folder", game.CoreGui) cheatsf.Name = "cheats"
		local espf = Instance.new("Folder", cheatsf) espf.Name = "esp"

		function addEsp(player)
			local bbg = Instance.new("BillboardGui", espf)
			bbg.Name = player.Name
			bbg.AlwaysOnTop = true
			bbg.Size = UDim2.new(4,0,5.4,0)
			bbg.ClipsDescendants = false

			local outlines = Instance.new("Frame", bbg)
			outlines.Size = UDim2.new(1,0,1,0)
			outlines.BorderSizePixel = 0
			outlines.BackgroundTransparency = 1
			local left = Instance.new("Frame", outlines)
			left.BorderSizePixel = 0
			left.Size = UDim2.new(0,1,1,0)
			local right = left:Clone()
			right.Parent = outlines
			right.Size = UDim2.new(0,-1,1,0)
			right.Position = UDim2.new(1,0,0,0)
			local up = left:Clone()
			up.Parent = outlines
			up.Size = UDim2.new(1,0,0,1)
			local down = left:Clone()
			down.Parent = outlines
			down.Size = UDim2.new(1,0,0,-1)
			down.Position = UDim2.new(0,0,1,0)

			local info = Instance.new("BillboardGui", bbg)
			info.Name = "info"
			info.Size = UDim2.new(3,0,0,54)
			info.StudsOffset = Vector3.new(3.6,-3,0)
			info.AlwaysOnTop = true
			info.ClipsDescendants = false
			local namelabel = Instance.new("TextLabel", info)
			namelabel.Name = "namelabel"
			namelabel.BackgroundTransparency = 1
			namelabel.TextStrokeTransparency = 0
			namelabel.TextXAlignment = Enum.TextXAlignment.Left
			namelabel.Size = UDim2.new(0,100,0,18)
			namelabel.Position = UDim2.new(0,0,0,0)
			namelabel.Text = player.Name
			local distancel = Instance.new("TextLabel", info)
			distancel.Name = "distancelabel"
			distancel.BackgroundTransparency = 1
			distancel.TextStrokeTransparency = 0
			distancel.TextXAlignment = Enum.TextXAlignment.Left
			distancel.Size = UDim2.new(0,100,0,18)
			distancel.Position = UDim2.new(0,0,0,18)
			local healthl = Instance.new("TextLabel", info)
			healthl.Name = "healthlabel"
			healthl.BackgroundTransparency = 1
			healthl.TextStrokeTransparency = 0
			healthl.TextXAlignment = Enum.TextXAlignment.Left
			healthl.Size = UDim2.new(0,100,0,18)
			healthl.Position = UDim2.new(0,0,0,36)

			local uill = Instance.new("UIListLayout", info)

			local forhealth = Instance.new("BillboardGui", bbg)
			forhealth.Name = "forhealth"
			forhealth.Size = UDim2.new(5,0,6,0)
			forhealth.AlwaysOnTop = true
			forhealth.ClipsDescendants = false

			local healthbar = Instance.new("Frame", forhealth)
			healthbar.Name = "healthbar"
			healthbar.BackgroundColor3 = Color3.fromRGB(40,40,40)
			healthbar.BorderColor3 = Color3.fromRGB(0,0,0)
			healthbar.Size = UDim2.new(0.04,0,0.9,0)
			healthbar.Position = UDim2.new(0,0,0.05,0)
			local bar = Instance.new("Frame", healthbar)
			bar.Name = "bar"
			bar.BorderSizePixel = 0
			bar.BackgroundColor3 = Color3.fromRGB(94,255,69)
			bar.AnchorPoint = Vector2.new(0,1)
			bar.Position = UDim2.new(0,0,1,0)
			bar.Size = UDim2.new(1,0,1,0)

			local co = coroutine.create(function()
				while wait(0.1) do
					if (player.Character and player.Character:FindFirstChild"HumanoidRootPart") then
						bbg.Adornee = player.Character.HumanoidRootPart
						info.Adornee = player.Character.HumanoidRootPart
						forhealth.Adornee = player.Character.HumanoidRootPart

						if (player.Team ~= localplayer.Team) then
							bbg.Enabled = true
							info.Enabled = true
							forhealth.Enabled = true
						end
						if player.Character:FindFirstChild("ForceField") then
							outlines.BackgroundTransparency = 0.4
							left.BackgroundTransparency = 0.4
							right.BackgroundTransparency = 0.4
							up.BackgroundTransparency = 0.4
							down.BackgroundTransparency = 0.4
							healthl.TextTransparency = 0.4
							healthl.TextStrokeTransparency = 0.8
							distancel.TextTransparency = 0.4
							distancel.TextStrokeTransparency = 0.8
							namelabel.TextTransparency = 0.4
							namelabel.TextStrokeTransparency = 0.8
							bar.BackgroundTransparency = 0.4
							healthbar.BackgroundTransparency = 0.8
						else
							outlines.BackgroundTransparency = 0
							left.BackgroundTransparency = 0
							right.BackgroundTransparency = 0
							up.BackgroundTransparency = 0
							down.BackgroundTransparency = 0
							healthl.TextTransparency = 0
							healthl.TextStrokeTransparency = 0
							distancel.TextTransparency = 0
							distancel.TextStrokeTransparency = 0
							namelabel.TextTransparency = 0
							namelabel.TextStrokeTransparency = 0
							bar.BackgroundTransparency = 0
							healthbar.BackgroundTransparency = 0
						end
						if cheats.b_b == true then
							outlines.Visible = true
						else
							outlines.Visible = false
						end
						if cheats.b_f == true then
							if player.Character:FindFirstChild("ForceField") then
								outlines.BackgroundTransparency = 0.9
							else
								outlines.BackgroundTransparency = cheats.b_f_t
							end
						else
							outlines.BackgroundTransparency = 1
						end
						if cheats.b_sh == true then
							if (player.Character:FindFirstChild"Humanoid") then
								healthl.Text = "Health: "..math.floor(player.Character:FindFirstChild"Humanoid".Health)
								healthbar.bar.Size = UDim2.new(1,0,player.Character:FindFirstChild"Humanoid".Health/player.Character:FindFirstChild"Humanoid".MaxHealth,0)
							end
							if cheats.b_ht == "Text" then
								healthbar.Visible = false
								healthl.Visible = true
							end
							if cheats.b_ht == "Bar" then
								healthl.Visible = false
								healthbar.Visible = true
							end
							if cheats.b_ht == "Both" then
								healthl.Visible = true
								healthbar.Visible = true
							end
						else
							healthl.Visible = false
							healthbar.Visible = false
						end
						if cheats.b_sn then
							namelabel.Visible = true
						else
							namelabel.Visible = false
						end
						if cheats.b_sd == true then
							distancel.Visible = true
							if (localplayer.Character and localplayer.Character:FindFirstChild"HumanoidRootPart") then
								distancel.Text = "Distance: "..math.floor(0.5+(localplayer.Character:FindFirstChild"HumanoidRootPart".Position - player.Character:FindFirstChild"HumanoidRootPart".Position).magnitude)
							end
						else
							distancel.Visible = false
						end
						if cheats.b_rt == true then
							if (player.Team == localplayer.Team) then
								bbg.Enabled = true
								info.Enabled = true
								forhealth.Enabled = true
							end
						else
							if (player.Team == localplayer.Team) then
								bbg.Enabled = false
								info.Enabled = false
								forhealth.Enabled = false
							end
						end
						if cheats.b_tc == true then
							outlines.BackgroundColor3 = player.TeamColor.Color
							left.BackgroundColor3 = player.TeamColor.Color
							right.BackgroundColor3 = player.TeamColor.Color
							up.BackgroundColor3 = player.TeamColor.Color
							down.BackgroundColor3 = player.TeamColor.Color
							healthl.TextColor3 = player.TeamColor.Color
							distancel.TextColor3 = player.TeamColor.Color
							namelabel.TextColor3 = player.TeamColor.Color
						else
							if (player.Team == localplayer.Team) then
								outlines.BackgroundColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
								left.BackgroundColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
								right.BackgroundColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
								up.BackgroundColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
								down.BackgroundColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
								healthl.TextColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
								distancel.TextColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
								namelabel.TextColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
							else
								outlines.BackgroundColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
								left.BackgroundColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
								right.BackgroundColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
								up.BackgroundColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
								down.BackgroundColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
								healthl.TextColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
								distancel.TextColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
								namelabel.TextColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
							end
						end
					end
					if not (game:GetService"Players":FindFirstChild(player.Name)) then
						print(player.Name.." has left. Clearing esp.")
						espf:FindFirstChild(player.Name):Destroy()
						coroutine.yield()
					end
				end
			end)
			coroutine.resume(co)
		end

		--main
		do
			wait(2)
			--menu buttons
			for _,button in pairs(age1:GetDescendants()) do
				if button:IsA"TextButton" then
					button.MouseButton1Click:connect(function()
						if button.Name == "b_f_t" then
							if cheats.b_f_t >= 0 then
								cheats.b_f_t = cheats.b_f_t+0.1
								if cheats.b_f_t > 1 then
									cheats.b_f_t = 0
								end
							end
							button.v.Text = cheats.b_f_t
						elseif button.Name == "b_ht" then
							if cheats.b_ht == "Text" then
								cheats.b_ht = "Bar"
							elseif cheats.b_ht == "Bar" then
								cheats.b_ht = "Both"
							else
								cheats.b_ht = "Text"
							end
							button.v.Text = cheats.b_ht
						else
							if cheats[button.Name] == true then
								cheats[button.Name] = false
								button.v.Text = "OFF"
								button.v.TextColor3 = Color3.fromRGB(255,0,0)
							else
								cheats[button.Name] = true
								button.v.Text = "ON"
								button.v.TextColor3 = Color3.fromRGB(0,255,0)
							end
						end	
					end)
				end
			end

			--initial player addition
			for _,v in pairs(game:GetService("Players"):GetChildren()) do
				if not (v.Name == localplayer.Name) then
					if not (espf:FindFirstChild(v.Name)) then
						addEsp(v)
					end
				end
			end

			--open/close gui
			game:GetService("UserInputService").InputBegan:connect(function(input, gameProcessed)
				if input.KeyCode == Enum.KeyCode.KeypadOne then
					if not gameProcessed then
						age1.Enabled = not age1.Enabled
					end
				end
			end)

			--auto-update
			while wait(10) do
				for _,v in pairs(game:GetService("Players"):GetChildren()) do
					if not (v.Name == localplayer.Name) then
						if not (espf:FindFirstChild(v.Name)) then
							addEsp(v)
						end
					end
				end
			end
		end
	end)

	CombatSection:NewButton("Aimbot", "locks onto a player", function()
		loadstring(game:HttpGet("https://pastebin.com/raw/3A0cM2ux"))();
	end)

	CombatSection:NewButton("Silent Aim [ BETA ]", "this might break your gun", function()
		for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Idle:Destroy()
			end
		end
	end)

	CombatSection:NewButton("Infinite Ammo", "Infinite Ammo", function()
		for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Bullet1:Destroy()
				v.Bullet:Destroy()
				v.E1:Destroy()
				v.E2:Destroy()
				v.Empty:Destroy()
				v.Glass:Destroy()
				v.H:Destroy()
				v.Shell:Destroy()
				v.Shot:Destroy()
				v.ClipSize.Value = "1e+18"
				v.MaxAmmo.Value = "1e+18"
				v.Damage.Value = "999"
			end
		end
	end)

	CombatSection:NewButton("1 Shot", "Lets you one tap players [ development ]", function()
		for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Damage.Value = "100"
			end
		end
	end)

	CombatSection:NewButton("Anti Recoil", "stops your gun recoil but might break your gun, so store it and equip again", function()
		for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then -- programming before pussy
				v.Recoil:Destroy()
			end
		end
	end)

	CombatSection:NewButton("Anti Gun Jam", "stops your gun from jamming", function()         
		--scripthere
	end)

	MiscSection:NewButton("Auto Pick-Up", "Auto Pick-Ups tools", function(state)
		_G.farm = true
		local g = game.Workspace.tools
		while _G.farm == true do
			wait()
			for fk, fl in pairs((g:GetChildren())) do
				if fl:IsA("Tool") then
					game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(fl)
				end
			end
		end
	end)

	MiscSection:NewButton("Pickup Fist", "picks up any available fists", function(state)
		_G.farm = true
		local g = game.Workspace.tools
		while _G.farm == true do
			wait()
			for fk, fl in pairs((g:GetChildren())) do
				if fl:IsA("Tool") then
					game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(fl)
				end
			end
		end
	end)

	MiscSection:NewButton("Auto Collect Money", "picks up any available cash", function(state)
		_G.farm = true
		local g = game.Workspace.tools
		while _G.farm == true do
			wait()
			for fk, fl in pairs((g:GetChildren())) do
				if fl:IsA("Tool") then
					game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(fl)
				end
			end
		end
	end)

	MiscSection:NewButton("Safe-Zone", "press to take you somewhere to regen", function(state)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(666.902832, -431.744995, 931.35498, -0.921566784, 3.96595894e-08, 0.388219863, 1.05669837e-08, 1, -7.70733593e-08, -0.388219863, -6.6925935e-08, -0.921566784)
		game.StarterGui:SetCore("SendNotification", {
			Title = "Safe-Zone";
			Text = "It has enabled! Regen until health is full";
			Icon = "https://www.roblox.com/library/3971489730/Money-icon?Category=Decals&SortType=Relevance&SortAggregation=AllTime&SearchKeyword=money+icon&CreatorId=0&Page=1&Position=6&SearchId=312fffd7-bfc2-4f93-90d3-9c87a6154f2d";
			Duration = "7";
			Button1 = "Got it";
			Button2 = "Not right now";
		})


	end)


	MiscSection:NewButton("Chat Spy", "lets you see the chat", function()
		--This script reveals ALL hidden messages in the default chat

		enabled = true --chat "/spy" to toggle!
		spyOnMyself = true --if true will check your messages too
		public = false --if true will chat the logs publicly (fun, risky)
		publicItalics = true --if true will use /me to stand out
		privateProperties = { --customize private logs
			Color = Color3.fromRGB(0,255,255); 
			Font = Enum.Font.SourceSansBold;
			TextSize = 18;
		}


		local StarterGui = game:GetService("StarterGui")
		local Players = game:GetService("Players")
		local player = Players.LocalPlayer or Players:GetPropertyChangedSignal("LocalPlayer"):Wait() or Players.LocalPlayer
		local saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
		local getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
		local instance = (_G.chatSpyInstance or 0) + 1
		_G.chatSpyInstance = instance

		local function onChatted(p,msg)
			if _G.chatSpyInstance == instance then
				if p==player and msg:lower():sub(1,4)=="/spy" then
					enabled = not enabled
					wait(0.3)
					privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
					StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
				elseif enabled and (spyOnMyself==true or p~=player) then
					msg = msg:gsub("[\n\r]",''):gsub("\t",' '):gsub("[ ]+",' ')
					local hidden = true
					local conn = getmsg.OnClientEvent:Connect(function(packet,channel)
						if packet.SpeakerUserId==p.UserId and packet.Message==msg:sub(#msg-#packet.Message+1) and (channel=="All" or (channel=="Team" and public==false and Players[packet.FromSpeaker].Team==player.Team)) then
							hidden = false
						end
					end)
					wait(1)
					conn:Disconnect()
					if hidden and enabled then
						if public then
							saymsg:FireServer((publicItalics and "/me " or '').."{SPY} [".. p.Name .."]: "..msg,"All")
						else
							privateProperties.Text = "{SPY} [".. p.Name .."]: "..msg
							StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
						end
					end
				end
			end
		end

		for _,p in ipairs(Players:GetPlayers()) do
			p.Chatted:Connect(function(msg) onChatted(p,msg) end)
		end
		Players.PlayerAdded:Connect(function(p)
			p.Chatted:Connect(function(msg) onChatted(p,msg) end)
		end)
		privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
		StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
		if not player.PlayerGui:FindFirstChild("Chat") then wait(3) end
		local chatFrame = player.PlayerGui.Chat.Frame
		chatFrame.ChatChannelParentFrame.Visible = true
		chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)
	end)

	MiscSection:NewButton("Snipe-Apt", "lets you buy an apt without going to apt", function()
		--scripthere
	end)

	MiscSection:NewButton("Anti Gun Dealer", "lets you buy guns at gun dealer without gamepass", function()
		loadstring(game:HttpGet('https://pastebin.com/raw/vaZSapXT'))()
	end)

	MiscSection:NewButton("Anti Cuff", "met cant cuff you", function()
		game.StarterGui:SetCore("SendNotification", {
			Title = "Anti Cuff";
			Text = "It has enabled! Go to 'Others' and press Wulphset";
			Icon = "https://www.roblox.com/library/3971489730/Money-icon?Category=Decals&SortType=Relevance&SortAggregation=AllTime&SearchKeyword=money+icon&CreatorId=0&Page=1&Position=6&SearchId=312fffd7-bfc2-4f93-90d3-9c87a6154f2d";
			Duration = "7";
			Button1 = "Got it";
			Button2 = "Not right now";
		})


	end)

	MiscSection:NewButton("MET Radio", "lets you get access to met radio", function()
		game.StarterGui:SetCore("SendNotification", {
			Title = "MET Radio";
			Text = ":copytools ( met user )";
			Icon = "https://www.roblox.com/library/3971489730/Money-icon?Category=Decals&SortType=Relevance&SortAggregation=AllTime&SearchKeyword=money+icon&CreatorId=0&Page=1&Position=6&SearchId=312fffd7-bfc2-4f93-90d3-9c87a6154f2d";
			Duration = "7";
			Button1 = "Got it";
			Button2 = "Not right now";
		})


	end)

	MiscSection:NewButton("Remove City Traffic Noise", "removes annoying sound", function()
		while true do
			wait(1)
			game.SoundService["Traffic City Noises"]:Destroy()
		end
	end)

	MiscSection:NewButton("Removes Karma Alert", "removes annoying ass karma alert", function()
		while true do
			wait(1)
			game.ReplicatedStorage.KarmaAlert:Destroy()
		end
	end)

	local Fun = Window:NewTab("Fun Scripts")
	local FunScripts = Fun:NewSection("Fun Scripts")

	FunScripts:NewButton("Play Custom Music", "Plays music for the local player", function()
		_G.boomboxb = game:GetObjects('rbxassetid://740618400')[1]
		_G.boomboxb.Parent = game:GetService'Players'.LocalPlayer.Backpack
		loadstring(_G.boomboxb.Client.Source)() 
		loadstring(_G.boomboxb.Server.Source)()
	end)

	FunScripts:NewButton("No Legs", "type :no legs", function()
		wait(4)

		game.StarterGui:SetCore("SendNotification", {
			Title = "NoLegs";
			Text = "type :no legs";
			Icon = "https://www.roblox.com/library/3971489730/Money-icon?Category=Decals&SortType=Relevance&SortAggregation=AllTime&SearchKeyword=money+icon&CreatorId=0&Page=1&Position=6&SearchId=312fffd7-bfc2-4f93-90d3-9c87a6154f2d";
			Duration = "7";
			Button1 = "Got it";
			Button2 = "Not right now";
		})
	end)

	FunScripts:NewButton("Headless", "type :headless", function()
		wait(4)

		game.StarterGui:SetCore("SendNotification", {
			Title = "Headless";
			Text = "type :headless";
			Icon = "https://www.roblox.com/library/3971489730/Money-icon?Category=Decals&SortType=Relevance&SortAggregation=AllTime&SearchKeyword=money+icon&CreatorId=0&Page=1&Position=6&SearchId=312fffd7-bfc2-4f93-90d3-9c87a6154f2d";
			Duration = "7";
			Button1 = "Got it";
			Button2 = "Not right now";
		})
	end)

	FunScripts:NewButton("Korblox", "type :korblox, if it dont work lmk", function()
		wait(4)

		game.StarterGui:SetCore("SendNotification", {
			Title = "Korblox";
			Text = "type :korblox";
			Icon = "https://www.roblox.com/library/3971489730/Money-icon?Category=Decals&SortType=Relevance&SortAggregation=AllTime&SearchKeyword=money+icon&CreatorId=0&Page=1&Position=6&SearchId=312fffd7-bfc2-4f93-90d3-9c87a6154f2d";
			Duration = "7";
			Button1 = "Got it";
			Button2 = "Not right now";
		})
	end)

	FunScripts:NewButton("No Arms", "type :nolimbs", function()
		wait(4)

		game.StarterGui:SetCore("SendNotification", {
			Title = "No Arms";
			Text = "type :nolimbs";
			Icon = "https://www.roblox.com/library/3971489730/Money-icon?Category=Decals&SortType=Relevance&SortAggregation=AllTime&SearchKeyword=money+icon&CreatorId=0&Page=1&Position=6&SearchId=312fffd7-bfc2-4f93-90d3-9c87a6154f2d";
			Duration = "7";
			Button1 = "Got it";
			Button2 = "Not right now";
		})
	end)

	FunScripts:NewButton("No Feet", "type :nofeet, if it dont work lmk", function()
		wait(4)

		game.StarterGui:SetCore("SendNotification", {
			Title = "No Feet";
			Text = "type :nofeet";
			Icon = "https://www.roblox.com/library/3971489730/Money-icon?Category=Decals&SortType=Relevance&SortAggregation=AllTime&SearchKeyword=money+icon&CreatorId=0&Page=1&Position=6&SearchId=312fffd7-bfc2-4f93-90d3-9c87a6154f2d";
			Duration = "7";
			Button1 = "Got it";
			Button2 = "Not right now";
		})
	end)

	local Others = Window:NewTab("Others")
	local OthersSection = Others:NewSection("Other Scripts")

	OthersSection:NewButton("Inf Yield", "Infinite Yield", function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()





		local UserInputService = game:GetService("UserInputService")
		local ReplicatedStorage = game:GetService("ReplicatedStorage")
		local VirtualInputManager = game:GetService("VirtualInputManager")
		local RunService = game:GetService("RunService")
		local Players = game:GetService("Players")

		local player = Players.LocalPlayer
		local character = player.Character
		local humanoid = character.Humanoid
		local camera = workspace.CurrentCamera
		local tool = character:FindFirstChildWhichIsA("Tool")

		local sayMessageRemote = ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest
		local doorService = ReplicatedStorage.DoorService

		local game_mt = getrawmetatable(game)
		local game_nc = game_mt.__namecall
		local game_ix = game_mt.__index

		local Apartments = {
			"Premium Apartments",
			"Exclusive Apartments",
			"Apartments",
		}

		local Blocks = {
			"OO Block",
			"060 House"
		}

		local Dealers = {
			"Car Dealer",
		}

		--Code is bad cuz i wanted to throw this together quick and ruin these skids

		local door = function(place)
			doorService:FireServer(place)
		end

		local click = function(position)
			VirtualInputManager:SendMouseButtonEvent(position.X + position.X / 2, position.Y + 50, 0, true, game, 1)
			VirtualInputManager:SendMouseButtonEvent(position.X + position.X / 2, position.Y + 50, 0, false, game, 1)
		end

		local saymessage = function(message)
			sayMessageRemote:FireServer(message, "All")
		end

		local partremove = function(partType)
			if partType == "Arms" then
			elseif partType == "Legs" then
			elseif partType == "Face" then
			elseif partType == "" then
			end
		end

		local skiploading = function()
			local menu = player.PlayerGui:FindFirstChild("Menu")

			if menu then 
				menu:Destroy()
				wait(0.1)

				camera.CameraType = Enum.CameraType.Custom
				player.PlayerGui.Agreement.Enabled = false
				player.PlayerGui.Stats.Enabled = true
				camera.AGREEMENT.Enabled = false
			end
		end

		local hookremote = function(methodName, name)
			game_mt.__namecall = function(self, ...)
				local method = getnamecallmethod()
				local args = {...}

				if method == methodName and tostring(self) == name then
					return
				end
				return game_nc(self, table.unpack(args))
			end 
		end

		local hookindex = function(location, name, value)
			game_mt.__index = function(t, k)
				if t == location and k == name then
					return value
				end
				return game_ix(t, k)
			end
		end


		local antijam = function()
			if not tool then return print("Equip The Tool To Apply Mods") end

			local script = tool:FindFirstChild("Pistol")

			if script then
				local senv = getsenv(script)

				debug.setconstant(senv.OnFire, 15, -1)
			end
		end

		local infstamina = function()
			player.Valuestats.Stamina.Value = 100
		end

		local infhunger = function()
			player.Valuestats.Hunger.Value = 100
		end

		local infammo = function()
			local instance = character:FindFirstChildWhichIsA("Tool") do
				if not instance then return end
			end

			local script = instance:FindFirstChild("Pistol") do
				if not script then return end
			end

			setreadonly(game_mt, false)

			hookremote("FireServer", "Shot")
			hookremote("FireServer", "Bullet1")

			script.Parent.Damage.Value = tonumber("9999")
			script.Parent.Damage.Value = tonumber("9999")

			setreadonly(game_mt, true)
		end

		local removeragdoll = function()
			local hurtSystem = character:FindFirstChild("HurtSystem")
			local ragdoll = character:FindFirstChild("Ragdoller")

			if hurtSystem then hurtSystem:Destroy() end
			if ragdoll then ragdoll:Destroy() end

			workspace.ChildAdded:Connect(function(child)
				if child.ClassName == "Model" and Players:FindFirstChild(child.Name) then
					local hurtSystem = character:FindFirstChild("HurtSystem")
					local ragdoll = character:FindFirstChild("Ragdoller")

					if hurtSystem then hurtSystem:Destroy() end
					if ragdoll then ragdoll:Destroy() end
				end
			end)
		end

		local infkarma = function()
			local ticket = player.PlayerGui:FindFirstChild("Ticket")

			if ticket then ticket:Destroy() end

			player.PlayerGui.ChildAdded:Connect(function(child)
				if child.Name == "Ticket" then
					child:Destroy()
				end
			end)
		end

		local scream = function()
			for i = 1, 5, 1 do
				saymessage("CRACKED BY HARLEM")
				task.wait(.5)
			end
		end

		local firerate = function(number)
			if not tool then return print("Equip The Tool To Apply Mods!") end

			local script = tool:FindFirstChild("Pistol")

			if script then
				local senv = getsenv(script)

				debug.setconstant(senv.OnFire, 250, number)
			end
		end

		local removeblur = function()
			for _, v in pairs(camera:GetChildren()) do
				if v.ClassName == "BlurEffect" then
					v.Enabled = false

					v:GetPropertyChangedSignal("Enabled"):Connect(function()
						v.Enabled = false
					end)
				end
			end

			camera.ChildAdded:Connect(function(child)
				if child.ClassName == "BlurEffect" then
					child.Enabled = false
				end
			end)
		end

		local bighead = function()
			for _, v in pairs(workspace:GetChildren()) do
				if v.ClassName == "Model" and Players:FindFirstChild(tostring(v)) and v ~= player.Character then
					v.Head.Transparency = 0.5
					v.Head.CanCollide = false
					v.Head.Size = Vector3.new(3, 3, 3)
				end
			end
		end

		local autofarm = function(bool)
			if _G.data.autofarm.enabled and bool then return print("Autofarm Already Running...") end

			if _G.data.autofarm.enabled and not bool then
				_G.data.autofarm.enabled = false
			elseif not _G.data.autofarm.enabled and bool then
				teleport("Outside", "Urban")
				task.wait(.2)
				door("Urban")
				task.wait(1)

				_G.data.autofarm.enabled = true
			end
		end

		local removename = function()
			local ui = character.Head:FindFirstChild("Gui")

			if ui then
				ui:Destroy()
			end
		end

		teleport = function(...)
			local args = {...}

			if not table.find(ttype, string.lower(args[1])) then return end

			if string.lower(args[1]) == "player" then
				local findplayer = Players:FindFirstChild(args[2])

				if findplayer then
					character.HumanoidRootPart.CFrame = findplayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0)
				end
			elseif string.lower(args[1]) == "outside" then
				local teleports = workspace.TeleportsBack
				local findlocation = teleports:FindFirstChild(args[2])

				if findlocation then
					character.HumanoidRootPart.CFrame = findlocation.CFrame
				end
			elseif string.lower(args[1]) == "inside" then
				local teleports = workspace.Teleports
				local location = teleports:FindFirstChild(args[2])

				if location then
					local getBool = location:FindFirstChild("register")

					if getBool then
						character.HumanoidRootPart.CFrame = location.CFrame
					else
						local create = Instance.new("BoolValue")
						create.Name = "register"
						create.Value = true
						create.Parent = location

						teleport("Outside", args[2])
						door(args[2])
					end
				end
			elseif string.lower(args[1]) == "autofarm" then
				character.HumanoidRootPart.CFrame = workspace.UrbanWorker.Head.CFrame * CFrame.new(0, 0, -5)
			end
		end
--[[
_G.data.autofarm.ran = 0
while true do
    teleport("Autofarm")
    VirtualInputManager:SendKeyEvent(true, "E", false, game)
    task.wait(1)
    local urbanGui = player.PlayerGui:FindFirstChild("UrbanGui")
    if urbanGui then
        local container = urbanGui.Frame
        local hiredAbsPosition = container.Hired.AbsolutePosition
		task.wait(4)
		click(hiredAbsPosition)
		task.wait(3)
		character.HumanoidRootPart.CFrame = workspace.CrateZone.Part.CFrame * CFrame.new(0, 3, 0)
		task.wait(3)
		humanoid:EquipTool(player.Backpack.Crate)
		task.wait(2)
		character.Crate.Script.RemoteEvent:FireServer()
        task.wait(1.5)
    end
end--]]

		local lib = library.new("CRACKED BY HARLEM | syv#1458")

		local HomePage = lib:addPage("Home") do
			local section = HomePage:addSection("Welcome, " .. player.Name .. "!") 

			local button = section:addButton("Skip Loading Screen", function()
				skiploading()
			end)

			local keybind = section:addKeybind("Window Open/Close", Enum.KeyCode.C, function()
				lib:toggle()
			end)
		end

		local PlayerPage = lib:addPage("Player") do
			local exploits = PlayerPage:addSection("Player Exploits") do
				local wsSlider = exploits:addSlider("WalkSpeed - Type If Slider Dont Work", 16, 16, 300, function(value)
					humanoid.WalkSpeed = value
				end)

				local jpSlider = exploits:addSlider("JumpPower - Type If Slider Dont Work", 50, 50, 300, function(value)
					humanoid.JumpPower = value
				end)
			end

			local stats = PlayerPage:addSection("Stats") do
				local stamina =  stats:addButton("Infinite Stamina", function()
					setreadonly(game_mt, false)

					hookindex(player.Valuestats.Stamina, "Value", 100)

					setreadonly(game_mt, true)
				end)
				local karma =  stats:addButton("Infinite Karma", function()
					infkarma()
				end)
			end

			local others = PlayerPage:addSection("Other Player Exploits") do
				local skittles =  others:addButton("Infinite Skittles", function()
					character.Resistance.Value = true
					player.PlayerGui.Run.Value.Value = true
				end)

				local name = others:addButton("Hide Name", function()
					removename()
				end)

				local face = others:addButton("Hide Face", function()
					local face = character.Head:FindFirstChildWhichIsA("Decal")

					if face then 
						face:Destroy()	
					end
				end)



				local btool = others:addButton("Btools", function()
					local hammer = Instance.new("HopperBin")
					hammer.BinType = Enum.BinType.Hammer
					hammer.Parent = player.Backpack
				end)

				local jump = others:addButton("Infinite Jump", function()
					UserInputService.JumpRequest:connect(function()
						humanoid:ChangeState("Jumping")
					end)
				end)
			end
		end

		local CombatPage = lib:addPage("Combat") do
			local others = CombatPage:addSection("Combat")

			local jam = others:addButton("Anti Gun Jam", function()
				antijam()
			end)

			local amoo = others:addButton("Infinite Ammo", function()
				infammo()
			end)

			local firerate = others:addButton("Low FireRate", function()
				firerate(0)
			end)
		end

		local TeleportsPage = lib:addPage("Teleports") do
			local ApartmentsPage = TeleportsPage:addSection("Apartments")
			local OthersPage = TeleportsPage:addSection("Others")
			local BlocksPage = TeleportsPage:addSection("Blocks")	
			local DealersPage = TeleportsPage:addSection("Dealers")	

			for _, v in pairs(workspace.TeleportsBack:GetChildren()) do
				if table.find(Apartments, v.Name) then
					local button = ApartmentsPage:addButton(v.Name, function()
						character.HumanoidRootPart.CFrame = v.CFrame
					end)
				elseif table.find(Blocks, v.Name) then
					local button = BlocksPage:addButton(v.Name, function()
						character.HumanoidRootPart.CFrame = v.CFrame
					end)
				elseif table.find(Dealers, v.Name) then
					local button = DealersPage:addButton(v.Name, function()
						character.HumanoidRootPart.CFrame = v.CFrame
					end)
				else
					local button = OthersPage:addButton(v.Name, function()
						character.HumanoidRootPart.CFrame = v.CFrame
					end)
				end 
			end
		end
		local OthersPage = lib:addPage("Others") do
			local others = OthersPage:addSection("Known Hubs")

			local infyield = others:addButton("Infinite Yield", function()
				loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
			end)
		end

		local CreditsPage = lib:addPage("Credits") do
			local section = CreditsPage:addSection("Credits - Click And Check Output For Info")
			local info = CreditsPage:addSection("fast")
			local info2 = CreditsPage:addSection("hi")

			local me = section:addButton("france#0001 vietnam#0001 - Creator", function()
				print("lmfao")
			end)
		end

		--infstamina()
		--infhunger()
		--removename()
		--skiploading()
		--teleport("Player", "bao545yy")
		--antikarma()
		--removeragdoll()
		--scream()
		--saymessage("freaking females")   
		--character.Resistance.Value = true
		--bighead()
		--infammo()
		--antijam()
		--firerate(0.000003)
		--removeblur()
		--autofarm(true)
	end)

	local Dupe = Window:NewTab("Dupe")
	local DupeSection = Dupe:NewSection("Frietnam Dupe")

	DupeSection:NewButton("Frietnam Dupe", "Dupe", function()
		local Dupe = Instance.new("ScreenGui")
		local Main = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local Dupe_2 = Instance.new("TextButton")
		local UICorner_2 = Instance.new("UICorner")
		local Ignore = Instance.new("TextLabel")
		local UICorner_3 = Instance.new("UICorner")

		--Properties:

		Dupe.Name = "Dupe"
		Dupe.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
		Dupe.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

		Main.Name = "Main"
		Main.Parent = Dupe
		Main.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
		Main.Position = UDim2.new(0.319620252, 0, 0.291032135, 0)
		Main.Size = UDim2.new(0, 308, 0, 295)

		UICorner.Parent = Main

		Dupe_2.Name = "Dupe"
		Dupe_2.Parent = Main
		Dupe_2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
		Dupe_2.BackgroundTransparency = 0.500
		Dupe_2.Position = UDim2.new(0.175324678, 0, 0.701694906, 0)
		Dupe_2.Size = UDim2.new(0, 200, 0, 50)
		Dupe_2.Font = Enum.Font.SourceSansBold
		Dupe_2.Text = "Dupe!"
		Dupe_2.TextColor3 = Color3.fromRGB(255, 255, 255)
		Dupe_2.TextScaled = true
		Dupe_2.TextSize = 14.000
		Dupe_2.TextWrapped = true
		Dupe_2.MouseButton1Click:Connect(function()
			while true do end

		end)

		UICorner_2.Parent = Dupe_2

		Ignore.Name = "Ignore"
		Ignore.Parent = Main
		Ignore.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
		Ignore.BackgroundTransparency = 0.500
		Ignore.Position = UDim2.new(0.0909090936, 0, 0.0406779647, 0)
		Ignore.Size = UDim2.new(0, 248, 0, 168)
		Ignore.Font = Enum.Font.SourceSansBold
		Ignore.Text = "FRIETNAM DUPE: Firstly take your items you want to dupe out of your safe and either drop or pass to a friend/alt. You the want to press 'Dupe!' and join another server. Wait a few seconds then join back that previous server and collect your items."
		Ignore.TextColor3 = Color3.fromRGB(255, 0, 0)
		Ignore.TextScaled = true
		Ignore.TextSize = 14.000
		Ignore.TextWrapped = true

		UICorner_3.Parent = Ignore

		-- Scripts:

		local function MNYGKAP_fake_script() -- Main.Smooth GUI Dragging 
			local script = Instance.new('LocalScript', Main)

			local UserInputService = game:GetService("UserInputService")
			local runService = (game:GetService("RunService"));

			local gui = script.Parent

			local dragging
			local dragInput
			local dragStart
			local startPos

			function Lerp(a, b, m)
				return a + (b - a) * m
			end;

			local lastMousePos
			local lastGoalPos
			local DRAG_SPEED = (8); -- // The speed of the UI darg.
			function Update(dt)
				if not (startPos) then return end;
				if not (dragging) and (lastGoalPos) then
					gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
					return 
				end;

				local delta = (lastMousePos - UserInputService:GetMouseLocation())
				local xGoal = (startPos.X.Offset - delta.X);
				local yGoal = (startPos.Y.Offset - delta.Y);
				lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
				gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
			end;

			gui.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					dragging = true
					dragStart = input.Position
					startPos = gui.Position
					lastMousePos = UserInputService:GetMouseLocation()

					input.Changed:Connect(function()
						if input.UserInputState == Enum.UserInputState.End then
							dragging = false
						end
					end)
				end
			end)

			gui.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
					dragInput = input
				end
			end)

			runService.Heartbeat:Connect(Update)
		end
		coroutine.wrap(MNYGKAP_fake_script)()
	end)
end
