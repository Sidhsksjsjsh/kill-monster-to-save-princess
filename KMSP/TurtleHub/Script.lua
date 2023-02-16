--// Variables \\--
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local WaveFarm = true
local UpgradeSkill = true
local AutoEgg = true

-- kill monster to save princess

local Library = loadstring(game:HttpGet("https://pastebin.com/raw/aC8GQEKE"))()
local ui = Library:CreateWindow()


local Tab_1 = ui:new("Main")
local Tab_2 = ui:new("Player")
local Tab_3 = ui:new("Visual")
local Tab_4 = ui:new("Misc")


--// Main Functions \\--
function Damage()
    for i,v in pairs(game.Workspace.Waves:GetDescendants()) do
        if v.Name == "HumanoidRootPart" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,0,1)
                    wait(0.1)
                    for i = 1,100 do
                    game:GetService("ReplicatedStorage").Remote.Weapon.TakeDamage:FireServer()
                end
            end
        end
    end

--// Player Functions \\--
function EnableClickTp()
    local Plr = game:GetService("Players").LocalPlayer
    local Mouse = Plr:GetMouse()

    Mouse.Button1Down:connect(function()
        if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
        if not Mouse.Target then return end
        Plr.Character:MoveTo(Mouse.Hit.p)
    end)
end

--// Visual Functions \\--
function FullLight()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CosmoCircle/scripts/main/Full%20Light", true))()
end

--// Misc Functions \\--
function AntiAFK()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CosmoCircle/scripts/main/Anti%20AFK", true))()
end

function SpyChat()
    loadstring(game:HttpGet("https://github.com/CosmoCircle/scripts/blob/main/Spy_Chat", true))()
end


--// Main Contents \\--
Tab_1:CreateToggle("Autofarm Waves", false, function(state)
    if state then
        WaveFarm = true
        while WaveFarm == true do
            wait(0.01)
            Damage()
        end
    else
        WaveFarm = false
    end
end)

Tab_1:CreateDropdown("Auto Egg", {"No egg","1","2","3","4","5",}, function(currentOption)
    if currentOption == "No egg" then
        AutoEgg = false
    else
        AutoEgg = true
        while AutoEgg == true do
            wait(0.1)
            local ohNumber1 = tonumber(currentOption)
            local ohString2 = "Open1"
            local ohTable3 = {}

            game:GetService("ReplicatedStorage").Remote.Hatch.EggHatch:InvokeServer(ohNumber1, ohString2, ohTable3)
        end
    end
end)

Tab_1:CreateDropdown("Auto Skill", {"No skill","Health","Attack","Speed","Luck"}, function(currentOption)
    if currentOption == "No skill" then
        UpgradeSkill = false
    else
        UpgradeSkill = true
        while UpgradeSkill == true do
            wait(0.1)
            game:GetService("ReplicatedStorage").Remote.Profile.AddPoint:FireServer(currentOption)
        end
    end
end)



--// Player Contents \\--
Tab_2:CreateSlider("WalkSpeed", {min = 16, max = 250, default = 16}, function(s)
    Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Tab_2:CreateSlider("JumoPower", {min = 50, max = 350, default = 16}, function(s)
    Players.LocalPlayer.Character.Humanoid.JumpPower = s
    Players.LocalPlayer.Character.Humanoid.UseJumpPower = true
end)


--// Visual Contents \\--
Tab_3:CreateButton("Fullbright", function()
    FullLight()
end)

--// Misc Contents \\--
Tab_4:CreateButton("Anti-Kick", function()
    AntiAFK()
end)

Tab_4:CreateButton("Perspective Watcher", function()    loadstring(game:HttpGet('https://raw.githubusercontent.com/Gravity-0/CCAMERAv4.0/mainB/CCAMv5.0.lua'))()
end)
-- # test
