--// Variables \\--
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local WaveFarm = true
local BringWaveFarm = true
local UpgradeSkill = true
local AutoEgg = true
local autoDamage = true
local InsertService = game:GetService("InsertService")

-- kill monster to save princess

local Library = loadstring(game:HttpGet("https://pastebin.com/raw/aC8GQEKE"))()
local ui = Library:CreateWindow()


local Tab_1 = ui:new("Main")
local Tab_5 = ui:new("Hatch / Egg")
local Tab_6 = ui:new("Auto Skill")
local Tab_7 = ui:new("princess")
local Tab_2 = ui:new("Player")
local Tab_3 = ui:new("Visual")
local Tab_4 = ui:new("Misc")
local Tab_8 = ui:new("Daily Reward")

Tab_1:Ping()
Tab_1:FPS()

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

function Magic_Damage()
    for i,v in pairs(game.Workspace.Waves:GetDescendants()) do
        if v.Name == "HumanoidRootPart" then
                    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,1)
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

function ClaimPrincess(ClaimFunc)
local args = {
    [1] = ClaimFunc -- 1001/1011
}

game:GetService("ReplicatedStorage").Remote.Princess.PrincessClaim:InvokeServer(unpack(args))
end

function EquipPrincess(EquipFunc)
local args = {
    [1] = EquipFunc -- 1001/1011
}


game:GetService("ReplicatedStorage").Remote.Princess.PrincessEquip:FireServer(unpack(args))
wait()
local Hug = {
    [1] = true
}


game:GetService("ReplicatedStorage").Remote.Princess.PrincessHug:FireServer(unpack(Hug))
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
Tab_1:CreateToggle("Autofarm Waves (teleport)", false, function(state)
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

Tab_1:CreateToggle("Autofarm Waves (bring)", false, function(state)
    if state then
        BringWaveFarm = true
        while WaveFarm == true do
            wait(0.01)
            Magic_Damage()
        end
    else
        BringWaveFarm = false
    end
end)

Tab_1:CreateToggle("auto damage", false, function(state)
    if state then
        autoDamage = true
        while autoDamage == true do
            wait(0.01)
            game:GetService("ReplicatedStorage").Remote.Weapon.TakeDamage:FireServer()
        end
    else
        autoDamage = false
    end
end)

Tab_1:CreateButton("Ride Pet (Single click)", function()
local args = {
    [1] = state
}


game:GetService("ReplicatedStorage").Remote.Pet.PetRide:FireServer(unpack(args))
end)

Tab_7:CreateButton("Hug Princess (Single click)", function()
local args = {
    [1] = true
}


game:GetService("ReplicatedStorage").Remote.Princess.PrincessHug:FireServer(unpack(args))
end)

Tab_7:CreateButton("Mage / Healing Team", function()
EquipPrincess(1006)
wait(0.1)
EquipPrincess(1001)
wait(0.2)
EquipPrincess(1003)
end)

Tab_7:CreateButton("use all Princess", function()
EquipPrincess(1001)
EquipPrincess(1002)
EquipPrincess(1003)
EquipPrincess(1004)
EquipPrincess(1005)
EquipPrincess(1006)
EquipPrincess(1007)
EquipPrincess(1008)
EquipPrincess(1009)
EquipPrincess(1010)
EquipPrincess(1011)
end)

Tab_7:CreateButton("Claim all Princess", function()
ClaimPrincess(1001)
ClaimPrincess(1002)
ClaimPrincess(1003)
ClaimPrincess(1004)
ClaimPrincess(1005)
ClaimPrincess(1006)
ClaimPrincess(1007)
ClaimPrincess(1008)
ClaimPrincess(1009)
ClaimPrincess(1010)
ClaimPrincess(1011)
end)

Tab_8:CreateButton("Claim Daily Gems", function()
game:GetService("ReplicatedStorage").Remote.Shop.TryGetFreeGem:FireServer()
end)

Tab_8:CreateButton("Claim Daily Day Login (1-7 Days)", function()
local DailyRoutine = {"1", "2", "3", "4", "5", "6", "7"}
local Reward_V = {
    [1] = DailyRoutine[math.random(1, #DailyRoutine)] -- ??
}


game:GetService("ReplicatedStorage").Remote.Reward.DailyReward:InvokeServer(unpack(Reward_V))
end)

Tab_1:CreateButton("Equip best sword / weapon", function()
game:GetService("ReplicatedStorage").Remote.Weapon.EquipBest:FireServer()
end)

Tab_1:CreateButton("Join Prepare", function()
game:GetService("ReplicatedStorage").Remote.Battle.JoinPrepare:FireServer()
end)

Tab_1:CreateButton("Exit Prepare", function()
game:GetService("ReplicatedStorage").Remote.Battle.ExitPrepare:FireServer()
end)

Tab_1:CreateButton("Exit Battle", function()
game:GetService("ReplicatedStorage").Remote.Battle.ExitBattle:FireServer()
end)

Tab_5:CreateDropdown("Auto Egg", {"No egg","1","2","3","4","5"}, function(currentOption)
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

Tab_6:CreateDropdown("Auto Skill", {"No skill","Health","Attack","Speed","Luck"}, function(currentOption)
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

Tab_2:CreateBox("Hip Height", "Height number", function(s)
Players.LocalPlayer.Character.Humanoid.HipHeight = s
end)

Tab_2:CreateBox("Enemy hitbox (invisible)", "number", function(s)
_G.HeadSize = s
        _G.Disabled = true
 
        game:GetService('RunService').RenderStepped:connect(function()
            if _G.Disabled then
                    for i,v in pairs(game.Workspace.Waves:GetDescendants()) do
        if v.Name == "HumanoidRootPart" then
                        pcall(function()
                            v.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
                            v.Transparency = 100
                            v.BrickColor = BrickColor.new("Really Red")
                            v.Material = "Neon"
                            v.CanCollide = false
                        end)
                    end
                end
            end
        end)
end)

--// Visual Contents \\--
Tab_3:CreateButton("Fullbright", function()
    FullLight()
end)

--// Misc Contents \\--
Tab_4:CreateButton("Anti-AFK", function()
    AntiAFK()
end)

Tab_4:CreateButton("Perspective Watcher", function()    
loadstring(game:HttpGet('https://raw.githubusercontent.com/Gravity-0/CCAMERAv4.0/mainB/CCAMv5.0.lua'))()
end)

Tab_4:CreateButton("dex V3", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/peyton2465/Dex/master/out.lua"))()
end)

Tab_4:CreateButton("dex V4", function()
local getobjects = function(a)
        local Objects = {}
        if a then
            local b = InsertService:LoadLocalAsset(a)
            if b then 
                table.insert(Objects, b) 
            end
        end
        return Objects
    end

getobjects("rbxassetid://10055842438")[1]
end)

-- # test
