if getgenv().GUILOADING then
	print("Already loaded")
end

-- Gui to Lua
-- Version: 3.2

-- Instances:

local agfdhgdfhfg = Instance.new("ScreenGui")

if getgenv().GUILOADING == true then
agfdhgdfhfg:Destroy()
end
local Main = Instance.new("Frame")
local Time = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local Home = Instance.new("ImageButton")
local UICorner_2 = Instance.new("UICorner")
local Scripts = Instance.new("ImageButton")
local UICorner_3 = Instance.new("UICorner")
local Player = Instance.new("ImageButton")
local UICorner_4 = Instance.new("UICorner")
local Notification = Instance.new("Frame")
local confirmScriptLoad = Instance.new("Frame")
local Yes = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local No = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local UICorner_7 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local playerOptions = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local MainHomeFrame = Instance.new("Frame")
local HomeFrame = Instance.new("Frame")
local UICorner_9 = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local Welcomer = Instance.new("TextLabel")
local PlayerImage = Instance.new("ImageLabel")
local UICorner_10 = Instance.new("UICorner")
local currentGame = Instance.new("TextLabel")
local currentDate = Instance.new("TextLabel")
local Nami = Instance.new("Frame")
local UICorner_11 = Instance.new("UICorner")
local UIGradient_2 = Instance.new("UIGradient")
local playerName = Instance.new("TextLabel")
local Discord = Instance.new("Frame")
local UICorner_12 = Instance.new("UICorner")
local UIGradient_3 = Instance.new("UIGradient")
local ImageLabel = Instance.new("ImageLabel")
local JoinTheDsc = Instance.new("TextButton")

--Properties:

agfdhgdfhfg.Name = "agfdhgdfhfg"
agfdhgdfhfg.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
agfdhgdfhfg.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = agfdhgdfhfg
Main.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
Main.Position = UDim2.new(0.36146605, 0, 0.930282652, 0)
Main.Size = UDim2.new(0.276299119, 0, 0.0611222684, 0)

Time.Name = "Time"
Time.Parent = Main
Time.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Time.BackgroundTransparency = 1.000
Time.Position = UDim2.new(0, 0, 0.310876667, 0)
Time.Size = UDim2.new(0.213302746, 0, 0.368421048, 0)
Time.Font = Enum.Font.FredokaOne
Time.Text = "17:19"
Time.TextColor3 = Color3.fromRGB(255, 255, 255)
Time.TextScaled = true
Time.TextSize = 14.000
Time.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = Main

Home.Name = "Home"
Home.Parent = Main
Home.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
Home.Position = UDim2.new(0.213302746, 0, 0.116160296, 0)
Home.Size = UDim2.new(0.0825688094, 0, 0.725764453, 0)
Home.Image = "rbxassetid://3926305904"
Home.ImageRectOffset = Vector2.new(964, 204)
Home.ImageRectSize = Vector2.new(36, 36)

UICorner_2.CornerRadius = UDim.new(0, 15)
UICorner_2.Parent = Home

Scripts.Name = "Scripts"
Scripts.Parent = Main
Scripts.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
Scripts.Position = UDim2.new(0.811926603, 0, 0.135919541, 0)
Scripts.Size = UDim2.new(0.0829999968, 0, 0.726000011, 0)
Scripts.Image = "rbxassetid://3926305904"
Scripts.ImageRectOffset = Vector2.new(204, 524)
Scripts.ImageRectSize = Vector2.new(36, 36)

UICorner_3.CornerRadius = UDim.new(0, 15)
UICorner_3.Parent = Scripts

Player.Name = "Player"
Player.Parent = Main
Player.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
Player.LayoutOrder = 4
Player.Position = UDim2.new(0.327981651, 0, 0.124574617, 0)
Player.Size = UDim2.new(0.0829999968, 0, 0.726000011, 0)
Player.ZIndex = 2
Player.Image = "rbxassetid://3926305904"
Player.ImageRectOffset = Vector2.new(764, 244)
Player.ImageRectSize = Vector2.new(36, 36)

UICorner_4.CornerRadius = UDim.new(0, 15)
UICorner_4.Parent = Player

Notification.Name = "Notification"
Notification.Parent = agfdhgdfhfg
Notification.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Notification.Position = UDim2.new(0.936020494, 0, 0.894972086, 0)
Notification.Size = UDim2.new(0.0633713529, 0, 0.15384616, 0)
Notification.Visible = false

confirmScriptLoad.Name = "confirmScriptLoad"
confirmScriptLoad.Parent = agfdhgdfhfg
confirmScriptLoad.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
confirmScriptLoad.BorderColor3 = Color3.fromRGB(0, 0, 0)
confirmScriptLoad.BorderSizePixel = 0
confirmScriptLoad.Position = UDim2.new(0.380861849, 0, 0.615384638, 0)
confirmScriptLoad.Size = UDim2.new(0.232572883, 0, 0.247584537, 0)
confirmScriptLoad.Visible = false

Yes.Name = "Yes"
Yes.Parent = confirmScriptLoad
Yes.BackgroundColor3 = Color3.fromRGB(73, 255, 7)
Yes.BorderColor3 = Color3.fromRGB(0, 0, 0)
Yes.BorderSizePixel = 0
Yes.Position = UDim2.new(0.054495912, 0, 0.6195122, 0)
Yes.Size = UDim2.new(0.326975465, 0, 0.29756099, 0)
Yes.Font = Enum.Font.Unknown
Yes.Text = "Yes"
Yes.TextColor3 = Color3.fromRGB(0, 0, 0)
Yes.TextScaled = true
Yes.TextSize = 14.000
Yes.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 15)
UICorner_5.Parent = Yes

No.Name = "No"
No.Parent = confirmScriptLoad
No.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
No.BorderColor3 = Color3.fromRGB(0, 0, 0)
No.BorderSizePixel = 0
No.Position = UDim2.new(0.591280639, 0, 0.6195122, 0)
No.Size = UDim2.new(0.326999992, 0, 0.298000008, 0)
No.Font = Enum.Font.Unknown
No.Text = "No"
No.TextColor3 = Color3.fromRGB(0, 0, 0)
No.TextScaled = true
No.TextSize = 14.000
No.TextWrapped = true

UICorner_6.CornerRadius = UDim.new(0, 15)
UICorner_6.Parent = No

UICorner_7.CornerRadius = UDim.new(0, 15)
UICorner_7.Parent = confirmScriptLoad

TextLabel.Parent = confirmScriptLoad
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(1.00544953, 0, 0.409756094, 0)
TextLabel.Font = Enum.Font.Antique
TextLabel.Text = "Are you sure you wanna do this"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

playerOptions.Name = "playerOptions"
playerOptions.Parent = agfdhgdfhfg
playerOptions.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
playerOptions.BorderColor3 = Color3.fromRGB(0, 0, 0)
playerOptions.BorderSizePixel = 0
playerOptions.Position = UDim2.new(0.416999996, 0, 0.949000001, 0)
playerOptions.Size = UDim2.new(0, 261, 0, 100)
playerOptions.Visible = false

UICorner_8.CornerRadius = UDim.new(0, 12)
UICorner_8.Parent = playerOptions

MainHomeFrame.Name = "MainHomeFrame"
MainHomeFrame.Parent = agfdhgdfhfg
MainHomeFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainHomeFrame.BackgroundTransparency = 1.000
MainHomeFrame.Size = UDim2.new(1, 0, 1, 0)
MainHomeFrame.Visible = false

HomeFrame.Name = "HomeFrame"
HomeFrame.Parent = MainHomeFrame
HomeFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HomeFrame.Position = UDim2.new(0.103555597, 0, -0.181477964, 0)
HomeFrame.Size = UDim2.new(0.232572883, 0, 0.399999976, 0)
HomeFrame.Visible = false

UICorner_9.CornerRadius = UDim.new(0, 12)
UICorner_9.Parent = HomeFrame

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(18, 241, 7)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient.Parent = HomeFrame

Welcomer.Name = "Welcomer"
Welcomer.Parent = HomeFrame
Welcomer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Welcomer.BackgroundTransparency = 1.000
Welcomer.BorderColor3 = Color3.fromRGB(0, 0, 0)
Welcomer.BorderSizePixel = 0
Welcomer.Position = UDim2.new(0.172727272, 0, 0.384615391, 0)
Welcomer.Size = UDim2.new(0.606060624, 0, 0.192307696, 0)
Welcomer.Font = Enum.Font.SourceSans
Welcomer.Text = "Welcome {playername}"
Welcomer.TextColor3 = Color3.fromRGB(0, 0, 0)
Welcomer.TextScaled = true
Welcomer.TextSize = 14.000
Welcomer.TextWrapped = true

PlayerImage.Name = "PlayerImage"
PlayerImage.Parent = HomeFrame
PlayerImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
PlayerImage.BorderSizePixel = 0
PlayerImage.Position = UDim2.new(0.324242443, 0, 0, 0)
PlayerImage.Size = UDim2.new(0.303030312, 0, 0.34234485, 0)
PlayerImage.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

UICorner_10.CornerRadius = UDim.new(0, 85)
UICorner_10.Parent = PlayerImage

currentGame.Name = "currentGame"
currentGame.Parent = HomeFrame
currentGame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
currentGame.BackgroundTransparency = 1.000
currentGame.BorderColor3 = Color3.fromRGB(0, 0, 0)
currentGame.BorderSizePixel = 0
currentGame.Position = UDim2.new(0.196969703, 0, 0.576923072, 0)
currentGame.Size = UDim2.new(0.606060624, 0, 0.138461545, 0)
currentGame.Font = Enum.Font.SourceSans
currentGame.Text = "{gameName}"
currentGame.TextColor3 = Color3.fromRGB(0, 0, 0)
currentGame.TextScaled = true
currentGame.TextSize = 14.000
currentGame.TextWrapped = true

currentDate.Name = "currentDate"
currentDate.Parent = HomeFrame
currentDate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
currentDate.BackgroundTransparency = 1.000
currentDate.BorderColor3 = Color3.fromRGB(0, 0, 0)
currentDate.BorderSizePixel = 0
currentDate.Position = UDim2.new(0, 0, 0.86153847, 0)
currentDate.Size = UDim2.new(0.466666669, 0, 0.138461545, 0)
currentDate.Font = Enum.Font.SourceSans
currentDate.Text = "{date}"
currentDate.TextColor3 = Color3.fromRGB(0, 0, 0)
currentDate.TextScaled = true
currentDate.TextSize = 14.000
currentDate.TextWrapped = true

Nami.Name = "Nami"
Nami.Parent = MainHomeFrame
Nami.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Nami.Position = UDim2.new(0.0564005859, 0, 0.258454114, 0)
Nami.Size = UDim2.new(0.232016951, 0, 0.0937941521, 0)
Nami.Visible = false

UICorner_11.CornerRadius = UDim.new(0, 12)
UICorner_11.Parent = Nami

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(23, 152, 133)), ColorSequenceKeypoint.new(0.72, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient_2.Parent = Nami

playerName.Name = "playerName"
playerName.Parent = Nami
playerName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
playerName.BackgroundTransparency = 1.000
playerName.BorderColor3 = Color3.fromRGB(0, 0, 0)
playerName.BorderSizePixel = 0
playerName.Position = UDim2.new(-0.00155541359, 0, 0.174307063, 0)
playerName.Size = UDim2.new(0, 344, 0, 50)
playerName.Font = Enum.Font.SourceSans
playerName.Text = "{PLAYERNAME}"
playerName.TextColor3 = Color3.fromRGB(255, 255, 255)
playerName.TextScaled = true
playerName.TextSize = 14.000
playerName.TextWrapped = true

Discord.Name = "Discord"
Discord.Parent = MainHomeFrame
Discord.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Discord.Position = UDim2.new(0.0158428382, 0, 0.394927472, 0)
Discord.Size = UDim2.new(0.236139417, 0, 0.0940000042, 0)
Discord.Visible = false

UICorner_12.CornerRadius = UDim.new(0, 12)
UICorner_12.Parent = Discord

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 85, 255)), ColorSequenceKeypoint.new(0.59, Color3.fromRGB(0, 13, 38)), ColorSequenceKeypoint.new(0.76, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient_3.Parent = Discord

ImageLabel.Parent = Discord
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.0118343197, 0, 0.0526315793, 0)
ImageLabel.Size = UDim2.new(0.227810651, 0, 0.947368443, 0)
ImageLabel.Image = "http://www.roblox.com/asset/?id=8248378208"

JoinTheDsc.Name = "JoinTheDsc"
JoinTheDsc.Parent = Discord
JoinTheDsc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
JoinTheDsc.BackgroundTransparency = 1.000
JoinTheDsc.BorderColor3 = Color3.fromRGB(0, 0, 0)
JoinTheDsc.BorderSizePixel = 0
JoinTheDsc.Position = UDim2.new(0.319526613, 0, 0.171052635, 0)
JoinTheDsc.Size = UDim2.new(0.591715991, 0, 0.657894731, 0)
JoinTheDsc.Font = Enum.Font.SourceSans
JoinTheDsc.Text = "Join The Discord!"
JoinTheDsc.TextColor3 = Color3.fromRGB(255, 255, 255)
JoinTheDsc.TextScaled = true
JoinTheDsc.TextSize = 14.000
JoinTheDsc.TextWrapped = true

-- Scripts:

local function DZDWHTQ_fake_script() -- Time.LocalScript 
	local script = Instance.new('LocalScript', Time)

	local TIME_ZONE = 1
	
	local date = os.date("!*t")
	local hour = (date.hour + TIME_ZONE) % 24
	local ampm = hour < 12 and "AM" or "PM"
	
	-- Check if the current locale uses the 12-hour clock
	local is12HourClock = os.date("%p", os.time{year=2000, month=1, day=1, hour=13}) ~= "PM"
	
	-- Format the timestamp accordingly
	local timestamp
	if is12HourClock then
		timestamp = string.format("%02i:%02i %s", ((hour - 1) % 12) + 1, date.min, ampm)
	else
		timestamp = string.format("%02i:%02i", hour, date.min)
	end
	
	script.Parent.Text = timestamp
	
	while wait(3) do
		script.Parent.Text = timestamp
	end
	
end
coroutine.wrap(DZDWHTQ_fake_script)()
local function UYGTUX_fake_script() -- Home.LocalScript 
	local script = Instance.new('LocalScript', Home)

	local showGUI = false
	
	
	local Frame1 = script.Parent.Parent.Parent.MainHomeFrame.HomeFrame
	local Frame2 = script.Parent.Parent.Parent.MainHomeFrame.Nami
	local Frame3 = script.Parent.Parent.Parent.MainHomeFrame.Discord
	
	local butotn = script.Parent
	local TweenService = game.TweenService
	
	local targetPosition3 = UDim2.new(0.381, 0,0.342, 0)
	local targetPosition4 = UDim2.new(0.381, 0,0.342, 0)
	local targetPosition5 = UDim2.new(0.381, 0,0.342, 0)
	--[[]]
	
	butotn.MouseButton1Click:Connect(function()
		--UDim2.new( 0.055, 0,0.629, 0)
	
		local tweenInfo1 = TweenInfo.new(2)
		local tweeeen = TweenInfo.new(2)
		local tweenInfo3 = TweenInfo.new(2)
		local tweenInfo4 = TweenInfo.new(2)
		local tweenInfo5 = TweenInfo.new(2)
		local tweenInfo6 = TweenInfo.new(2)
	
		local tween = TweenService:Create(Frame1, tweenInfo1, {Position = UDim2.new(0.102, 0,0.189, 0)})
		local tweenen = TweenService:Create(Frame2, tweeeen, {Position = UDim2.new( 0.055, 0,0.629, 0)})
		local tween2 = TweenService:Create(Frame3, tweenInfo3, {Position = UDim2.new(0.015, 0,0.766, 0)})
	
		local tween3 = TweenService:Create(Frame1, tweenInfo4, {Position = UDim2.new(0.104, 0,-0.181, 0)})
		local tween4 = TweenService:Create(Frame2, tweenInfo5, {Position = UDim2.new(0.056, 0,0.258, 0)})
		local tween5 = TweenService:Create(Frame3, tweenInfo6, {Position = UDim2.new(0.016, 0,0.395, 0)})
	
	
		if script.Parent.Parent.Parent.MainHomeFrame.Visible == false then
			showGUI = true
			script.Parent.Parent.Parent.MainHomeFrame.Visible = true
			Frame1.Visible = true
			tween:Play()
			task.wait(1)
			Frame2.Visible = true
			tweenen:Play()
			task.wait(1)
			Frame3.Visible = true
			tween2:Play()
		else
			showGUI = false
			tween5:Play()
			task.wait(1)
			Frame3.Visible = false
			tween4:Play()
			task.wait(1)
			Frame2.Visible = false
			tween3:Play()
			task.wait(1)
			Frame1.Visible = false
			script.Parent.Parent.Parent.MainHomeFrame.Visible = false
	
	
		end
	end)
	
	
	
	
	
	script.Parent.MouseButton1Click:Connect(function()
		if showGUI == true then
			wait(2)
			for i = 50,70 do
				wait(0.03)
				game.Workspace.Camera.FieldOfView =i
			end
	
	
		else
			for i = 70, 50, -1 do
				wait(0.03)
				game.Workspace.Camera.FieldOfView = i
			end
		end
	end)
	
	script.Parent.MouseButton1Click:Connect(function()
		if showGUI == true then
			wait(2)
			for i= 24,0,-1 do
				wait(0.03)
				game.Lighting.Blur.Size = i
			end
			game.Lighting.Blur.Enabled = false
		else
			game.Lighting.Blur.Enabled = true
			for i= 0,24 do
				wait(0.03)
				game.Lighting.Blur.Size = i
			end
	
		end
	end)
	
	
	script.Parent.TouchTap:Connect(function()
		wait(2)
		if showGUI == true then
			for i = 50,70 do
				wait(0.03)
				game.Workspace.Camera.FieldOfView =i
			end
	
	
		else
			for i = 70, 50, -1 do
				wait(0.03)
				game.Workspace.Camera.FieldOfView = i
			end
	
	
		end
	end)
	
	script.Parent.TouchTap:Connect(function()
		wait(2)
		if showGUI == true then
	
			for i= 24,0,-1 do
				wait(0.03)
				game.Lighting.Blur.Size = i
			end
			game.Lighting.Blur.Enabled = false
		else
			game.Lighting.Blur.Enabled = true
			for i= 0,24 do
				wait(0.03)
				game.Lighting.Blur.Size = i
			end
	
		end
	end)
	
	
	
	
end
coroutine.wrap(UYGTUX_fake_script)()
local function ZBNECQK_fake_script() -- Main.LocalScript 
	local script = Instance.new('LocalScript', Main)

	local frame = script.Parent.Parent.Main
	
	function onKeyPress(inputObject, gameProcessedEvent)
		if inputObject.KeyCode == Enum.KeyCode.RightShift then
			if frame.Visible == false then
				
				
				frame.Visible = true
			else
				frame.Visible = false
			end
		end
	end
	
	game:GetService("UserInputService").InputBegan:connect(onKeyPress)
end
coroutine.wrap(ZBNECQK_fake_script)()
local function RNRY_fake_script() -- Scripts.LocalScript 
	local script = Instance.new('LocalScript', Scripts)

	local confirm = script.Parent.Parent.Parent.confirmScriptLoad
	local butotn = script.Parent
	local TweenService = game.TweenService
	
	local targetPosition = UDim2.new(0.381, 0,0.342, 0)
	
	
	butotn.MouseButton1Click:Connect(function()
	
	
		local tweenInfo = TweenInfo.new(2)
		local tween = TweenService:Create(confirm, tweenInfo, {Position = targetPosition})
		
		confirm.Visible = true
		tween:Play()
		
	end)
end
coroutine.wrap(RNRY_fake_script)()
local function YDSQTB_fake_script() -- Player.LocalScript 
	local script = Instance.new('LocalScript', Player)

	
	local Player = script.Parent.Parent.Parent.playerOptions 
	local butotn = script.Parent
	local TweenService = game.TweenService
	
	
	
	--{0.42, 0},{0.861, 0} return
	butotn.MouseButton1Click:Connect(function()
		
		if Player.Visible == true then
			local targetPosition = UDim2.new(0.417, 0,0.949, 0)
			local tweenInfo = TweenInfo.new(2)
			local tween = TweenService:Create(Player, tweenInfo, {Position = targetPosition})
	
			
			tween:Play()
			task.wait(1.5)
			Player.Visible = false
		else
			local targetPosition = UDim2.new(0.42, 0,0.792, 0)
			local tweenInfo = TweenInfo.new(2)
			local tween = TweenService:Create(Player, tweenInfo, {Position = targetPosition})
	
			Player.Visible = true
			tween:Play()
		end
	
		
	end)
	
	
	
	
	script.Parent.TouchTap:Connect(function()
	
	end)
end
coroutine.wrap(YDSQTB_fake_script)()
local function BKRONP_fake_script() -- Yes.LocalScript 
	local script = Instance.new('LocalScript', Yes)

	
	local confirm = script.Parent.Parent.Parent.confirmScriptLoad
	local butotn = script.Parent
	local TweenService = game.TweenService
	
	
	local tweenInfo = TweenInfo.new(2)
	local tween = TweenService:Create(confirm, tweenInfo, {Position = UDim2.new(0.381, 0,0.615, 0)})
	
	
	script.Parent.MouseButton1Click:Connect(function()
		tween:Play()
		task.wait(1.5)
		confirm.Visible = false
		
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/Doran342545345/Dorans-Test-SCripts/main/LoadString.lua'),true))()
		
	end)
	
	script.Parent.TouchTap:Connect(function()
		tween:Play()
		task.wait(1.5)
		confirm.Visible = false
	
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/Doran342545345/Dorans-Test-SCripts/main/LoadString.lua'),true))()
	end)
end
coroutine.wrap(BKRONP_fake_script)()
local function HPEN_fake_script() -- No.LocalScript 
	local script = Instance.new('LocalScript', No)

	local confirm = script.Parent.Parent.Parent.confirmScriptLoad
	local butotn = script.Parent
	local TweenService = game.TweenService
	
	local targetPosition = UDim2.new(0.381, 0,0.615, 0)
	
	
	butotn.MouseButton1Click:Connect(function()
	
	
		local tweenInfo = TweenInfo.new(2)
		local tween = TweenService:Create(confirm, tweenInfo, {Position = targetPosition})
	
		tween:Play()
		task.wait(1.5)
		confirm.Visible = false
	
	end)
end
coroutine.wrap(HPEN_fake_script)()
local function AJLGJST_fake_script() -- playerName.LocalScript 
	local script = Instance.new('LocalScript', playerName)

	script.Parent.Text = game.Players.LocalPlayer.DisplayName.."(@"..game.Players.LocalPlayer.Name..")"
	
	
end
coroutine.wrap(AJLGJST_fake_script)()
local function HCJYZQO_fake_script() -- MainHomeFrame.HomeScript 
	local script = Instance.new('LocalScript', MainHomeFrame)

	local Welcomer = script.Parent.HomeFrame.Welcomer
	local PlayerImage = script.Parent.HomeFrame.PlayerImage
	local currentGame = script.Parent.HomeFrame.currentGame
	local currentDate = script.Parent.HomeFrame.currentDate
	
	local userId = game.Players.LocalPlayer.UserId
	local thumbType = Enum.ThumbnailType.AvatarBust
	local thumbSize = Enum.ThumbnailSize.Size420x420
	local content, isReady = game.Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
	
	Welcomer.Text = "Welcome "..game.Players.LocalPlayer.Name
	currentGame.Text = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
	PlayerImage.Image = content
	
	-- Get current date and format it as DD/MM/YYYY
	local currentDateValue = os.date("%d/%m/%Y")
	currentDate.Text = currentDateValue
	
end
coroutine.wrap(HCJYZQO_fake_script)()
local function LUKYQB_fake_script() -- JoinTheDsc.LocalScript 
	local script = Instance.new('LocalScript', JoinTheDsc)

	-- LocalScript (Client)
	
	local openPastebinButton = script.Parent
	
	local function openPastebin()
		setclipboard("https://discord.gg/BNhK4kcSN9")
		script.Parent.Text = "Copied to Clipboard"
		wait(2)
		script.Parent.Text = "Join The Discord"
	end
	
	openPastebinButton.MouseButton1Click:Connect(openPastebin)
	
end
coroutine.wrap(LUKYQB_fake_script)()




getgenv().GUILOADING = true

