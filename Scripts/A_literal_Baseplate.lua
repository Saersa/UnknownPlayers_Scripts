
-----------//  LOGIC  \\-----------



local updatePlayercount = false

local gamename = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

local playeramount = 0

local function updatePlayers()
    local playeramount = 0
    for i,v in pairs(game.Players:GetChildren()) do
        playeramount =- v
        print(v.Name.." is player "..playeramount)
    end
end



game.Players.PlayerAdded:Connect(function(plr)
    local userId = plr.UserId
    local thumbType = Enum.ThumbnailType.AvatarBust
    local thumbSize = Enum.ThumbnailSize.Size420x420
    local content, isReady = game.Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)

    for i,v in pairs(game.Players:GetChildren()) do
        playeramount += v
        print(v.Name.." is player "..playeramount)
    end
    if isReady then
    game.StarterGui:SetCore("SendNotification", {
        Title = "Player Joined",
        Text = plr.Name,
        Image = content,
        Duration = 3,
            })
    end
    
end)

game.Players.PlayerRemoving:Connect(function(plr)

    local userId = plr.UserId
    local thumbType = Enum.ThumbnailType.AvatarBust
    local thumbSize = Enum.ThumbnailSize.Size420x420
    local content, isReady = game.Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)

    for i,v in pairs(game.Players:GetChildren()) do
        playeramount =- v
        print(v.Name.." is player "..playeramount)
    end
    if isReady then
    game.StarterGui:SetCore("SendNotification", {
        Title = "Player Left",
        Text = plr.Name,
        Image = content,
        Duration = 3,
            })
     end
     
end)

-----------//  GUI  \\-----------

local ArrayField = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/ArrayField/main/Source.lua'))()
local Window = ArrayField:CreateWindow({
    Name = gamename, -- The ScriptName
    LoadingTitle = gamename, -- The loading title for the name. Keep it gamename
    LoadingSubtitle = "Universal Script by Doran",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = "Dorans ScriptHub", -- Create a custom folder for your hub/game
       FileName = gamename
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Doran's ScriptHub",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key", -- It is recommended to use something unique as other scripts using ArrayField may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like ArrayField to get the key from
       Actions = {
             [1] = {
                 Text = 'Click here to copy the key link <--',
                 OnPress = function()
                     print('Pressed')
                 end,
                 }
             },
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })


 local Main = Window:CreateTab("Main", 7539983780) -- Title, Image
 local Visuals = Window:CreateTab("Visuals", 16313704996) 
 local PlayerOptions = Window:CreateTab("Player", 16313704996) 
 local BadPC = Window:CreateTab("Bad Device", 16313704996) 

-----------//  Main  \\-----------

local Section = Main:CreateSection("Player Information",true) -- The 2nd argument is to tell if its only a Title and doesnt contain element
 local Label = Main:CreateLabel("Name: "..game.Players.LocalPlayer.name)
 local Label = Main:CreateLabel("DisplayName: "..game.Players.LocalPlayer.DisplayName)
 local Label = Main:CreateLabel("UserID: "..game.Players.LocalPlayer.UserId)
 local Label = Main:CreateLabel("Country Code: "..game.LocalizationService:GetCountryRegionForPlayerAsync(game.Players.LocalPlayer))

 local Section = Main:CreateSection("Server Information",true) -- The 2nd argument is to tell if its only a Title and doesnt contain element
 


local plrAmount = Main:CreateLabel("Amount of Players: "..playeramount)
local ServerID = Main:CreateLabel("GameID "..game.GameId)
local JobID = Main:CreateLabel("JobID "..game.JobId)

local Button = Main:CreateButton({
    Name = "Update PlayerCount",
    Interact = 'Click',
    Callback = function()
        if not updatePlayercount then
        playeramount = 0
        updatePlayercount = true
        updatePlayers()
        wait(2)
        updatePlayercount = false
    else
        ArrayField:Notify({
            Title = "Please wait a bit ",
            Content = "By spamming this, you will lag very bad",
            Duration = 6.5,
            Image = 4483362458,
            Actions = { -- Notification Buttons
               Ignore = {
                  Name = "Okay!",
                  Callback = function()
                  print("The user tapped Okay!")
               end
            },
          },
         })
    end
        plrAmount:Set("Amount of Players: "..playeramount)
    end,
 })


-----------//  Visuals  \\-----------

getgenv().toggleESP = false
getgenv().colorESP = Color3.fromRGB(255, 0, 0)

local function updateESP()
    while getgenv().toggleESP do
        for _, player in pairs(game.Players:GetPlayers()) do
            for _, object in pairs(workspace:GetChildren()) do
                if player.Name == object.Name then
                    local Outline = object:FindFirstChild("Highlight")
                    local nameLabel = object:FindFirstChild("NameLabel")

                    if not Outline then
                        Outline = Instance.new("Highlight")
                        Outline.Parent = object
                    end

                    if not nameLabel then
                        nameLabel = Instance.new("TextLabel")
                        nameLabel.Parent = object
                        nameLabel.Name = "NameLabel"
                        nameLabel.BackgroundTransparency = 1
                        nameLabel.Position = UDim2.new(0, 0, -20, 0) -- Adjust the position as needed
                        nameLabel.Size = UDim2.new(0, 100, 0, 20) -- Adjust the size as needed
                        nameLabel.Font = Enum.Font.SourceSans
                        nameLabel.TextSize = 14
                        nameLabel.TextColor3 = Color3.new(1, 1, 1)
                        nameLabel.TextStrokeTransparency = 0.5
                    end

                    -- Instantly update the color
                    Outline.FillColor = getgenv().colorESP
                    nameLabel.Text = player.Name
                end
            end
        end

        wait(1)
    end

    -- Clean up all highlights when toggleESP is false
    for _, object in pairs(workspace:GetChildren()) do
        local Outline = object:FindFirstChild("Highlight")
        local nameLabel = object:FindFirstChild("NameLabel")

        if Outline then
            Outline:Destroy()
        end

        if nameLabel then
            nameLabel:Destroy()
        end
    end
end

game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        if getgenv().toggleESP then
            updateESP()
        end
    end)
end)

game.Players.PlayerRemoving:Connect(function(player)
    if getgenv().toggleESP then
        updateESP()
    end
end)

local Toggle = Visuals:CreateToggle({
    Name = "ESP",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        getgenv().toggleESP = Value

        while getgenv().toggleESP == true do
            wait()
            updateESP()

        end
    end,
 })


local ColorPicker = Visuals:CreateColorPicker({
    Name = "ESP Colour",
    Color = Color3.fromRGB(255, 0, 0),
    Flag = "ColorPicker1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        getgenv().colorESP = Value
    end
})






-----------//  PlayerOptions  \\-----------
 
 local servHopper = PlayerOptions:CreateButton({
    Name = "Server Hopper",
    Interact = 'Click',
    Callback = function()
        Window:Prompt({
            Title = 'Are you Sure?',
            SubTitle = 'server hop',
            Content = 'Are you sure you want to server hop',
            Actions = {
                Accept = {
                    Name = 'Accept',
                    Callback = function()
                        local ts = game:GetService("TeleportService")
                        local p = game:GetService("Players").LocalPlayer
                        ts:Teleport(game.PlaceId, p)
                    end,
                },
                Decline = {
                    Name= "Decline",
                    Callback = function()
                        print("Declined")

                    end,
                }
            }
        })
    end,
 })

 local WSChanger = PlayerOptions:CreateInput({
    Name = "Input Walkspeed",
    PlaceholderText = "Walkspeed",
    NumbersOnly = true, -- If the user can only type numbers. Remove or set to false if none.
    CharacterLimit = 15, --max character limit. Remove or set to false
    OnEnter = true, -- Will callback only if the user pressed ENTER while being focused on the the box.
    RemoveTextAfterFocusLost = false, -- Speaks for itself.
    Callback = function(Text)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Text
    end,
 })






-----------//  Bad PC  \\-----------

local TextureRemover = BadPC:CreateButton({
    Name = "Remove all Textures",
    Interact = 'Click',
    Callback = function()
        ArrayField:Notify({
            Title = "Notification!",
            Content = "Removing all textures, May give bit lag",
            Duration = 5,
            Image = 4483362458,
            Actions = { -- Notification Buttons
               Ignore = {
                  Name = "Okay!",
                  Callback = function()
                  print("The user tapped Okay!")
               end
            },
          },
         })

         wait(3)

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

    end,
 })

 local Input = BadPC:CreateInput({
    Name = "Set FPS",
    PlaceholderText = "Input Amount",
    NumbersOnly = true, -- If the user can only type numbers. Remove or set to false if none.
    CharacterLimit = 15, --max character limit. Remove or set to false
    OnEnter = true, -- Will callback only if the user pressed ENTER while being focused on the the box.
    RemoveTextAfterFocusLost = false, -- Speaks for itself.
    Callback = function(Text)
        setfpscap(Text)
    end,
 })



ArrayField:LoadConfiguration()







while true do
   wait(1)

    plrAmount:Set("Amount of Players: "..playeramount) 
end
