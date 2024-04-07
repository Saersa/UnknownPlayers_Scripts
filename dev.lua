-----------//  LOGIC  \\-----------

local Playerhead = game.Players.LocalPlayer.Character.Head

local gamename = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local RunService = game:GetService("RunService")

getgenv().simpleCFrame = false


-----------//  GUI  \\-----------

local ArrayField = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/ArrayField/main/Source.lua'))()
local Window = ArrayField:CreateWindow({
    Name = gamename.."|| Dev GUI", -- The ScriptName
    LoadingTitle = gamename.."|| Dev GUI", -- The loading title for the name. Keep it gamename
    LoadingSubtitle = "by Doran",
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
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "Doran's ScriptHub",
       Subtitle = "Key System",
       Note = "Join our discord for the key!",
       FileName = "Key", -- It is recommended to use something unique as other scripts using ArrayField may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like ArrayField to get the key from
       Actions = {
             [1] = {
                 Text = 'Click here to copy the key link <--',
                 OnPress = function()
                     print('https://discord.gg/SSJ9yN3Zh4')
                     setclipboard("https://discord.gg/SSJ9yN3Zh4")
                 end,
                 }
             },
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 local Teleportation = Window:CreateTab("Teleportation", 4483362458) -- Title, Image
 local Local = Window:CreateTab("Local", 14294451648) -- Title, Image

 local Online = Window:CreateTab("Online", 14294451648) -- Title, Image
 local BadPc = Window:CreateTab("Bad PC settings", 542620095) -- Title, Image

 
 local Toggle = Teleportation:CreateToggle({
   Name = "Toggle Simple CFrame",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      getgenv.simpleCFrame  = Value
   end,
})

 local Button = Teleportation:CreateButton({
   Name = "Copy CFrame",
   Interact = 'Click',
   Callback = function()
      if getgenv().simpleCFrame == false then
         print("Simple CFrame false")
         setclipboard(game.Players.LocalPlayer.Character.Humanoid.HumanoidRootPart.Position)
      else
         setclipboard("game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new("..tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)..")")
      end
   end,
})

local Button = Teleportation:CreateButton({
   Name = "Rejoin same server",
   Callback = function()
      game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
   end,
})





local Button = BadPc:CreateButton({
   Name = "Low Graphics",
   Callback = function()
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
local frames = 0
local FPS = BadPc:CreateSection(frames.." FPS")

 local Input = BadPc:CreateInput({
    Name = "FPS Amount",
    PlaceholderText = "Input FPS",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
 setfpscap(tonumber(Text))
    end,
 })

 game:GetService('RunService').RenderStepped:Connect(function(step)
	local fps = 1/step

   frames = fps
end)


 while true do
   task.wait(1)
   --FPS:Set(frames.." FPS")
   FPS:Set(game.Workspace:GetRealPhysicsFPS())
 end