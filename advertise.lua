local Advertise = {
    "can't grind all day/night to max your job or get more money? or want an account with starblocks/fintech maxed and some couple millions to spend for yourself? dm 5.56x for cheap prices",
    ""
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



local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
    AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
end
function TPReturner()
    local Site;
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            delfile("NotSameServers.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                    wait()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                end)
                wait(4)
            end
        end
    end
end

function Teleport()
    while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end

--[[




Message every 30 seconds.

For total of 2 minutes
(4x)
for i = 1,4 do
    wait(30)

end

^^ can work

Serverhop
wait 20 seconds for loading in
choose an team (criminal for red name which is obvious)


local args = {
    [1] = BrickColor.new(21)
}

game:GetService("ReplicatedStorage"):WaitForChild("TeamEvent"):FireServer(unpack(args))

Crime Team

^ can auto make this

]]

--Make character load
repeat until game.Players.LocalPlayer.CharacterAdded:Wait()
wait(5)
robberTeam()
for i = 1,4 do
    advertiseMessage()
    wait(30)
end
Teleport()
