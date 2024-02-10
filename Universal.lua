
-----------//  LOGIC  \\-----------


local updatePlayercount = false

local gamename = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

local playeramount = 0

for i,v in pairs(game.Players:GetChildren()) do
    playeramount += 1
    print(v.Name.." is player "..playeramount)
end


game.Players.PlayerAdded:Connect(function(plr)
    local userId = plr.UserId
    local thumbType = Enum.ThumbnailType.AvatarBust
    local thumbSize = Enum.ThumbnailSize.Size420x420
    local content, isReady = game.Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)

    playeramount += 1
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

    playeramount =- 1
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
 local PlayerOptions = Window:CreateTab("Player", 16313704996) 
 local BadPC = Window:CreateTab("Bad Device", 16313704996) 

-----------//  Main  \\-----------

local Section = Main:CreateSection("Player Information",true) -- The 2nd argument is to tell if its only a Title and doesnt contain element
 local Label = Main:CreateLabel("Name: "..game.Players.LocalPlayer.Name)
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
        for i,v in pairs(game.Players:GetChildren()) do
            task.wait()
            playeramount += 1
            print(v.Name.." is player "..playeramount)
        end
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

         local ToDisable = {
            Textures = true,
            VisualEffects = true,
            Parts = true,
            Particles = true,
            Sky = true
        }
        
        local ToEnable = {
            FullBright = false
        }
        
        local Stuff = {}
        
        for _, v in next, game:GetDescendants() do
            if ToDisable.Parts then
                if v:IsA("Part") or v:IsA("Union") or v:IsA("BasePart") then
                    v.Material = Enum.Material.SmoothPlastic
                    table.insert(Stuff, 1, v)
                end
            end
            
            if ToDisable.Particles then
                if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Explosion") or v:IsA("Sparkles") or v:IsA("Fire") then
                    v.Enabled = false
                    table.insert(Stuff, 1, v)
                end
            end
            
            if ToDisable.VisualEffects then
                if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("DepthOfFieldEffect") or v:IsA("SunRaysEffect") then
                    v.Enabled = false
                    table.insert(Stuff, 1, v)
                end
            end
            
            if ToDisable.Textures then
                if v:IsA("Decal") or v:IsA("Texture") then
                    v.Texture = ""
                    table.insert(Stuff, 1, v)
                end
            end
            
            if ToDisable.Sky then
                if v:IsA("Sky") then
                    v.Parent = nil
                    table.insert(Stuff, 1, v)
                end
            end
        end
        
        
        for i, v in next, ToDisable do
            print(tostring(i)..": "..tostring(v))
        end
        
        if ToEnable.FullBright then
            local Lighting = game:GetService("Lighting")
            
            Lighting.FogColor = Color3.fromRGB(255, 255, 255)
            Lighting.FogEnd = math.huge
            Lighting.FogStart = math.huge
            Lighting.Ambient = Color3.fromRGB(255, 255, 255)
            Lighting.Brightness = 5
            Lighting.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
            Lighting.ColorShift_Top = Color3.fromRGB(255, 255, 255)
            Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
            Lighting.Outlines = true
        end

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