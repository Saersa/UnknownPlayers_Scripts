-- Gui to Lua
-- Version: 3.2

-- Instances:

local agfdhgdfhfg = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Time = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local Home = Instance.new("ImageButton")
local UICorner_2 = Instance.new("UICorner")
local Scripts = Instance.new("ImageButton")
local UICorner_3 = Instance.new("UICorner")
local HomeFrame = Instance.new("Frame")
local Discord = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local ImageLabel = Instance.new("ImageLabel")
local JoinTheDsc = Instance.new("TextButton")
local Executor = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local UIGradient_2 = Instance.new("UIGradient")
local Name = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local UIGradient_3 = Instance.new("UIGradient")
local UICorner_7 = Instance.new("UICorner")
local UIGradient_4 = Instance.new("UIGradient")
local Welcomer = Instance.new("TextLabel")
local PlayerImage = Instance.new("ImageLabel")
local UICorner_8 = Instance.new("UICorner")
local currentGame = Instance.new("TextLabel")
local currentDate = Instance.new("TextLabel")
local Notification = Instance.new("Frame")

--Properties:

agfdhgdfhfg.Name = "agfdhgdfhfg"
agfdhgdfhfg.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
agfdhgdfhfg.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = agfdhgdfhfg
Main.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
Main.Position = UDim2.new(0.35956493, 0, 0.931490362, 0)
Main.Size = UDim2.new(0.276299119, 0, 0.0876923054, 0)

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
Home.Position = UDim2.new(0.213302732, 0, 0.175438643, 0)
Home.Size = UDim2.new(0.0825688094, 0, 0.631578922, 0)
Home.Image = "rbxassetid://3926305904"
Home.ImageRectOffset = Vector2.new(964, 204)
Home.ImageRectSize = Vector2.new(36, 36)

UICorner_2.CornerRadius = UDim.new(0, 15)
UICorner_2.Parent = Home

Scripts.Name = "Scripts"
Scripts.Parent = Main
Scripts.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
Scripts.Position = UDim2.new(0.87155962, 0, 0.175438598, 0)
Scripts.Size = UDim2.new(0.0825688094, 0, 0.631578922, 0)
Scripts.Image = "rbxassetid://3926305904"
Scripts.ImageRectOffset = Vector2.new(204, 524)
Scripts.ImageRectSize = Vector2.new(36, 36)

UICorner_3.CornerRadius = UDim.new(0, 15)
UICorner_3.Parent = Scripts

HomeFrame.Name = "HomeFrame"
HomeFrame.Parent = agfdhgdfhfg
HomeFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HomeFrame.Position = UDim2.new(0.0940499008, 0, 0.0595885292, 0)
HomeFrame.Size = UDim2.new(0.209125474, 0, 0.400000006, 0)

Discord.Name = "Discord"
Discord.Parent = HomeFrame
Discord.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Discord.Position = UDim2.new(-0.375757575, 0, 1.97692323, 0)
Discord.Size = UDim2.new(1.0242424, 0, 0.292307705, 0)

UICorner_4.CornerRadius = UDim.new(0, 12)
UICorner_4.Parent = Discord

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 85, 255)), ColorSequenceKeypoint.new(0.59, Color3.fromRGB(0, 13, 38)), ColorSequenceKeypoint.new(0.76, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient.Parent = Discord

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

Executor.Name = "Executor"
Executor.Parent = HomeFrame
Executor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Executor.Position = UDim2.new(-0.25757575, 0, 1.55769253, 0)
Executor.Size = UDim2.new(1.0242424, 0, 0.284615397, 0)

UICorner_5.CornerRadius = UDim.new(0, 12)
UICorner_5.Parent = Executor

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(109, 0, 2)), ColorSequenceKeypoint.new(0.62, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient_2.Parent = Executor

Name.Name = "Name"
Name.Parent = HomeFrame
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.Position = UDim2.new(-0.130303025, 0, 1.19615412, 0)
Name.Size = UDim2.new(1.0242424, 0, 0.284615397, 0)

UICorner_6.CornerRadius = UDim.new(0, 12)
UICorner_6.Parent = Name

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(23, 152, 133)), ColorSequenceKeypoint.new(0.72, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient_3.Parent = Name

UICorner_7.CornerRadius = UDim.new(0, 12)
UICorner_7.Parent = HomeFrame

UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(18, 241, 7)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient_4.Parent = HomeFrame

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
PlayerImage.Position = UDim2.new(0.324242413, 0, 0, 0)
PlayerImage.Size = UDim2.new(0.303030312, 0, 0.384615391, 0)
PlayerImage.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

UICorner_8.CornerRadius = UDim.new(0, 85)
UICorner_8.Parent = PlayerImage

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

Notification.Name = "Notification"
Notification.Parent = agfdhgdfhfg
Notification.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Notification.Position = UDim2.new(0.936020494, 0, 0.894972086, 0)
Notification.Size = UDim2.new(0.0633713529, 0, 0.15384616, 0)
Notification.Visible = false

-- Scripts:

local function UBKQ_fake_script() -- Time.LocalScript 
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
coroutine.wrap(UBKQ_fake_script)()
local function DADRVOZ_fake_script() -- Home.LocalScript 
	local script = Instance.new('LocalScript', Home)

	script.Parent.MouseButton1Click:Connect(function()
		if script.Parent.Parent.Parent.HomeFrame.Visible == true then
			script.Parent.Parent.Parent.HomeFrame.Visible = false
			for i = 50,70 do
				wait(0.03)
				game.Workspace.Camera.FieldOfView =i
			end
	
	
		else
			script.Parent.Parent.Parent.HomeFrame.Visible = true
			for i = 70, 50, -1 do
				wait(0.03)
				game.Workspace.Camera.FieldOfView = i
			end
	
	
		end
	end)
	
	script.Parent.MouseButton1Click:Connect(function()
		if script.Parent.Parent.Parent.HomeFrame.Visible == true then
	
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
coroutine.wrap(DADRVOZ_fake_script)()
local function KGTLX_fake_script() -- Main.LocalScript 
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
coroutine.wrap(KGTLX_fake_script)()
local function TZOHM_fake_script() -- Scripts.LocalScript 
	local script = Instance.new('LocalScript', Scripts)

	script.Parent.MouseButton1Click:Connect(function()
		if script.Parent.Parent.Parent.HomeFrame.Visible == true then
			script.Parent.Parent.Parent.HomeFrame.Visible = false
			for i = 50,70 do
				wait(0.03)
				game.Workspace.Camera.FieldOfView =i
			end
	
	
		else
			script.Parent.Parent.Parent.HomeFrame.Visible = true
			for i = 70, 50, -1 do
				wait(0.03)
				game.Workspace.Camera.FieldOfView = i
			end
	
	
		end
	end)
	
	script.Parent.MouseButton1Click:Connect(function()
		if script.Parent.Parent.Parent.HomeFrame.Visible == true then
	
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
coroutine.wrap(TZOHM_fake_script)()
local function KYPK_fake_script() -- JoinTheDsc.LocalScript 
	local script = Instance.new('LocalScript', JoinTheDsc)

	-- LocalScript (Client)
	
	local openPastebinButton = script.Parent
	
	local function openPastebin()
		setclipboard("https://discord.gg/BNhK4kcSN9")
	end
	
	openPastebinButton.MouseButton1Click:Connect(openPastebin)
	
end
coroutine.wrap(KYPK_fake_script)()
local function THQZL_fake_script() -- HomeFrame.HomeScript 
	local script = Instance.new('LocalScript', HomeFrame)

	local Welcomer = script.Parent.Welcomer
	local PlayerImage = script.Parent.PlayerImage
	local currentGame = script.Parent.currentGame
	local currentDate = script.Parent.currentDate
	
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
coroutine.wrap(THQZL_fake_script)()
