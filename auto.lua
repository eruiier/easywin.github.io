task.spawn(function()
    task.wait(9) -- Wait for 10 seconds before starting
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ringtaa/castletpfast.github.io/refs/heads/main/FASTCASTLE.lua"))()
end)

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

-- Define the teleport target position
local teleportTarget = Vector3.new(147.79, 5.77, 29981.89)

-- Perform initial teleport after a delay
task.spawn(function()
    task.wait(19) -- Wait for 19 seconds
    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(teleportTarget))
end)

-- Repeated teleport logic (executing after the first teleport)
local tpCount, delay = 100, 0.1 -- Number of teleports and time delay between each teleport
task.spawn(function()
    task.wait(19) -- Ensure repeated teleports happen after the initial delay
    for i = 1, tpCount do
        task.wait(delay) -- Wait for the specified delay
        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(teleportTarget))
    end
end)





task.spawn(function()
    task.wait(1) -- Wait 10 seconds before starting the timer

    local Players = game:GetService("Players")
    local player = Players.LocalPlayer

    -- Ensure player is loaded
    while not player or not player:FindFirstChild("PlayerGui") do
        task.wait()
    end

    -- Create the ScreenGui
    local gui = Instance.new("ScreenGui")
    gui.Parent = player:WaitForChild("PlayerGui") -- Ensure it's added to PlayerGui

    -- Create the Frame
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 200, 0, 100)
    frame.Position = UDim2.new(0.5, -100, 0.1, 0) -- Centered
    frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    frame.Parent = gui

    -- Create the Timer Label
    local timerLabel = Instance.new("TextLabel")
    timerLabel.Size = UDim2.new(1, 0, 0.5, 0)
    timerLabel.Position = UDim2.new(0, 0, 0, 0)
    timerLabel.Text = "Timer: 0:00"
    timerLabel.TextScaled = true
    timerLabel.BackgroundTransparency = 1
    timerLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    timerLabel.Parent = frame

    -- Create the Minimize Button
    local minimizeButton = Instance.new("TextButton")
    minimizeButton.Size = UDim2.new(1, 0, 0.5, 0)
    minimizeButton.Position = UDim2.new(0, 0, 0.5, 0)
    minimizeButton.Text = "Minimize"
    minimizeButton.TextScaled = true
    minimizeButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    minimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    minimizeButton.Parent = frame

    -- Timer Function
    local timeElapsed = 0
    local running = true

    task.spawn(function()
        while running and timeElapsed < (15 * 60) do -- 15 minutes in seconds
            task.wait(1) -- Wait 1 second
            timeElapsed = timeElapsed + 1
            
            -- Convert seconds into MM:SS format
            local minutes = math.floor(timeElapsed / 60)
            local seconds = timeElapsed % 60
            timerLabel.Text = string.format("Timer: %d:%02d", minutes, seconds)
        end
    end)

    -- Minimize Button Functionality
    local minimized = false
    minimizeButton.MouseButton1Click:Connect(function()
        minimized = not minimized
        frame.Visible = not minimized

        if minimized then
            minimizeButton.Text = "Show Timer"
        else
            minimizeButton.Text = "Minimize"
        end
    end)
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



