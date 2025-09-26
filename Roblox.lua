local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local player = Players.LocalPlayer

local basePosition = player.Character and player.Character.PrimaryPart and player.Character.PrimaryPart.Position + player.Character.PrimaryPart.CFrame.LookVector * 10 or Vector3.new(0,5,0)

for i = 1, 20 do
    local part = Instance.new("Part")
    part.Size = Vector3.new(5,5,5)
    part.Anchored = true
    part.Material = Enum.Material.SmoothPlastic
    part.Color = Color3.fromRGB(255,100,100)
    part.Position = basePosition + Vector3.new(0, (i-1)*5, 0) -- układ pionowy (wysokość)
    part.Parent = Workspace
end
