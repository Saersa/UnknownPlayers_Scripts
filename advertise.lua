local Advertise = {
    "can't grind all day/night to max your job or get more money? or want an account with starblocks/fintech maxed and some couple millions to spend for yourself? dm 5.56x for cheap prices on",
}

local function advertiseMessage()
    local randomadvertisemessage = Advertise[math.random(1, #Advertise)]

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(randomadvertisemessage, "All")
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("đíšçοŕđ", "All")
print(randomadvertisemessage)
end


local function robberTeam()
    local args = {
        [1] = BrickColor.new(21)
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("TeamEvent"):FireServer(unpack(args))
end


local Player = game.Players.LocalPlayer    
local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"

local _place,_id = game.PlaceId, game.JobId
-- Asc for lowest player count, Desc for highest player count
local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=10"
function ListServers(cursor)
   local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
   return Http:JSONDecode(Raw)
end




local function Teleport()
   --freeze player before teleporting to prevent synapse crash?
   Player.Character.HumanoidRootPart.Anchored = true
   local Servers = ListServers()
   local Server = Servers.data[math.random(1,#Servers.data)]
   TPS:TeleportToPlaceInstance(_place, Server.id, Player)
end


--Make character load
local player_Local = game.Players.LocalPlayer

repeat task.wait() until player_Local.Character
robberTeam()
for i = 1,4 do
    advertiseMessage()
    wait(30)
end
Teleport()
