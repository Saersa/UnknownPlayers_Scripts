getgenv().toggleESP = true
getgenv().colorESP = Color3.fromRGB(119, 190, 110)

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
                        Outline.FillColor = getgenv().colorESP
                    end

                    if not nameLabel then
                        nameLabel = Instance.new("TextLabel")
                        nameLabel.Parent = object
                        nameLabel.Name = "NameLabel"
                        nameLabel.BackgroundTransparency = 1
                        nameLabel.Text = player.Name
                        nameLabel.Position = UDim2.new(0, 0, -20, 0) 
                        nameLabel.Size = UDim2.new(0, 100, 0, 20) 
                        nameLabel.Font = Enum.Font.SourceSans
                        nameLabel.TextSize = 14
                        nameLabel.TextColor3 = Color3.new(1, 1, 1)
                        nameLabel.TextStrokeTransparency = 0.5
                    else
                        nameLabel.Text = player.Name
                    end
                end
            end
        end

        wait(1)
    end

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
updateESP()


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
