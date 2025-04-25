loadstring(game:HttpGet("https://raw.githubusercontent.com/ringtaa/castletpfast.github.io/refs/heads/main/FASTCASTLE.lua"))()

local player = Players.LocalPlayer

local function noclip()
    if player.Character then
        for _, part in pairs(player.Character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
    end
end

RunService.Stepped:Connect(noclip)


local teleportTarget = Vector3.new(-332.19, 3, -49047.07)

task.wait(5) -- Wait for 5 seconds
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(teleportTarget))
