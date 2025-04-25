loadstring(game:HttpGet("https://raw.githubusercontent.com/ringtaa/castletpfast.github.io/refs/heads/main/FASTCASTLE.lua"))()

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer

-- Ensure the player object exists
while not player do
    task.wait()
    player = Players.LocalPlayer
end

-- Function to enable noclip
local function noclip()
    if player.Character then
        for _, part in pairs(player.Character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
    end
end

-- Connect to RunService to continuously apply noclip
RunService.Stepped:Connect(noclip)

task.spawn(function()
    wait(20) -- Wait 20 seconds before starting
    
    while true do
        local args = {
            [1] = false
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("EndDecision"):FireServer(unpack(args))
        
        wait(3) -- Wait 3 seconds before repeating
    end
end)

task.spawn(function()
    task.wait(600) -- Wait for 10 minutes
    local newTeleportTarget = Vector3.new(-351.57, 3, -49041.24)

    if game.Players.LocalPlayer and game.Players.LocalPlayer.Character then
        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(newTeleportTarget))
    end
end)

task.spawn(function()
    task.wait(45) -- Wait for 45 seconds before connecting the event

    local proxservice = game:GetService("ProximityPromptService")
    proxservice.PromptShown:Connect(function(prox)
        fireproximityprompt(prox)
    end)
end)


task.spawn(function()
    task.wait(605) -- Wait for 605 seconds before teleporting
    local teleportTarget = Vector3.new(133.22, 5.77, 30004.46)

    if game.Players.LocalPlayer and game.Players.LocalPlayer.Character then
        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(teleportTarget))
    end
end)


task.spawn(function()
    task.wait(601) -- Start camera rotation after 601 seconds

    local player = game.Players.LocalPlayer
    local camera = workspace.CurrentCamera
    camera.CameraType = Enum.CameraType.Scriptable -- Enables script control

    local rotationSpeed = 3 -- Increased rotation speed

    local cameraRotationConnection = game:GetService("RunService").RenderStepped:Connect(function(deltaTime)
        camera.CFrame = camera.CFrame * CFrame.Angles(0, math.rad(rotationSpeed), 0)
    end)

    -- Stop the camera spin after 4 seconds
    task.wait(3)
    if cameraRotationConnection then
        cameraRotationConnection:Disconnect()
    end

    -- Reset camera back to normal control
    camera.CameraType = Enum.CameraType.Custom
end)


local teleportTarget = Vector3.new(147.79, 5.77, 29981.89)

task.wait(5) -- Wait for 5 seconds
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(teleportTarget))
