loadstring(game:HttpGet("https://raw.githubusercontent.com/ringtaa/castletpfast.github.io/refs/heads/main/FASTCASTLE.lua"))()

local teleportTarget = Vector3.new(-332.19, 3, -49047.07)

task.wait(5) -- Wait for 5 seconds
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(teleportTarget))
