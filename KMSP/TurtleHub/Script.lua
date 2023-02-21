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
local Tab_9 = ui:new("Save")

Tab_1:Ping()
Tab_1:FPS()
Tab_1:TimePlayed()
Tab_1:UTC()

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

local Domain = {
                    Domain = Instance.new("ScreenGui"),
                    UITextSizeConstraint_13 = Instance.new("UITextSizeConstraint"),
                    FriendJoined = Instance.new("Frame"),
                    UICorner_66 = Instance.new("UICorner"),
                    UICorner_67 = Instance.new("UICorner"),
                    Textjoin = Instance.new("TextLabel"),
                    Other = Instance.new("Frame"),
                    Avatarjoin = Instance.new("ImageLabel")
}

Domain.Domain.Name = "Domain"
Domain.Domain.Parent = game:GetService("CoreGui")
Domain.Domain.ResetOnSpawn = false

Domain.Other.Name = "Other"
Domain.Other.Parent = Domain.Domain
Domain.Other.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Domain.Other.BackgroundTransparency = 1.000
Domain.Other.BorderSizePixel = 0
Domain.Other.Position = UDim2.new(0.966000021, 0, 0.261999995, 0)
Domain.Other.Size = UDim2.new(0.0430000015, 0, 0.474999994, 0)

Domain.FriendJoined.Name = "FriendJoined"
Domain.FriendJoined.Parent = Domain.Other
Domain.FriendJoined.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Domain.FriendJoined.BorderSizePixel = 0
Domain.FriendJoined.Position = UDim2.new(-4.58847857, 0, 1.30335116, 0)
Domain.FriendJoined.Size = UDim2.new(4.92762661, 0, 0.195112452, 0)
Domain.FriendJoined.Visible = false
 
Domain.UICorner_66.CornerRadius = UDim.new(0, 10)
Domain.UICorner_66.Parent = Domain.FriendJoined
 
Domain.Textjoin.Name = "Textjoin"
Domain.Textjoin.Parent = Domain.FriendJoined
Domain.Textjoin.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Domain.Textjoin.BackgroundTransparency = 1.000
Domain.Textjoin.BorderSizePixel = 0
Domain.Textjoin.Position = UDim2.new(0.26033023, 0, 0.25, 0)
Domain.Textjoin.Size = UDim2.new(0.685603261, 0, 0.5, 0)
Domain.Textjoin.Font = Enum.Font.GothamBold
Domain.Textjoin.Text = "Your friend, usernameusername has joined the server"
Domain.Textjoin.TextColor3 = Color3.fromRGB(255, 255, 255)
Domain.Textjoin.TextScaled = true
Domain.Textjoin.TextSize = 14.000
Domain.Textjoin.TextWrapped = true
Domain.Textjoin.TextXAlignment = Enum.TextXAlignment.Left
 
Domain.UITextSizeConstraint_13.Parent = Domain.Textjoin
Domain.UITextSizeConstraint_13.MaxTextSize = 20
 
Domain.Avatarjoin.Name = "Avatarjoin"
Domain.Avatarjoin.Parent = Domain.FriendJoined
Domain.Avatarjoin.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Domain.Avatarjoin.BackgroundTransparency = 1.000
Domain.Avatarjoin.BorderSizePixel = 0
Domain.Avatarjoin.Position = UDim2.new(0.0651319921, 0, 0.189999998, 0)
Domain.Avatarjoin.Size = UDim2.new(0.150188312, 0, 0.606190205, 0)
Domain.Avatarjoin.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

Domain.UICorner_67.CornerRadius = UDim.new(1, 20)
Domain.UICorner_67.Parent = Domain.Avatarjoin

function ProtocolNotify(A1)
Domain.FriendJoined.Visible = true
    Domain.FriendJoined.Size = UDim2.new(0,0,0.195,0)
    Domain.FriendJoined.Textjoin.Text = A1
    Domain.FriendJoined.Textjoin.TextTransparency = 1
    Domain.FriendJoined.Avatarjoin.ImageTransparency = 1
    local transitionInfo = TweenInfo.new(0.65, Enum.EasingStyle.Quint)
    local tween = game:GetService("TweenService"):Create(Domain.FriendJoined, transitionInfo, {Size = UDim2.new(4.928, 0, 0.195, 0)})
    tween:Play()
    wait(0.5)
    local transitionInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quint)
    local tween = game:GetService("TweenService"):Create(Domain.FriendJoined.Avatarjoin, transitionInfo, {BackgroundTransparency = 1})
    tween:Play()
    local transitionInfo = TweenInfo.new(0.45, Enum.EasingStyle.Quint)
    local tween = game:GetService("TweenService"):Create(Domain.FriendJoined.Textjoin, transitionInfo, {TextTransparency = 0})
    tween:Play()
    local transitionInfo = TweenInfo.new(0.45, Enum.EasingStyle.Quint)
    local tween = game:GetService("TweenService"):Create(Domain.FriendJoined.Avatarjoin, transitionInfo, {ImageTransparency = 0})
    tween:Play()
    wait(4)
    local transitionInfo = TweenInfo.new(0.65, Enum.EasingStyle.Quint)
    local tween = game:GetService("TweenService"):Create(Domain.FriendJoined.Textjoin, transitionInfo, {TextTransparency = 1})
    tween:Play()
    local transitionInfo = TweenInfo.new(0.65, Enum.EasingStyle.Quint)
    local tween = game:GetService("TweenService"):Create(Domain.FriendJoined.Avatarjoin, transitionInfo, {ImageTransparency = 1})
    tween:Play()
    local transitionInfo = TweenInfo.new(0.65, Enum.EasingStyle.Quint)
    local tween = game:GetService("TweenService"):Create(Domain.FriendJoined.Avatarjoin, transitionInfo, {BackgroundTransparency = 1})
    tween:Play()
    wait(0.5)
    local transitionInfo = TweenInfo.new(0.65, Enum.EasingStyle.Quint)
    local tween = game:GetService("TweenService"):Create(Domain.FriendJoined, transitionInfo, {Size = UDim2.new(4.928, 0, 0, 0)})
    tween:Play()
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

function ProtocolSaveSettings(file, config)
       writefile(file, config)
end

function ProtocolReadSettings(file)
       readfile(file)
end

function ProtocolCheckFile(file)
       isfile(file)
end

local ProtocolTrigger_1 = false
local ProtocolTrigger_2 = false
local ProtocolTrigger_3 = false
local ProtocolFileType = ""


function LoadSettings()
local Initializing_1 = ProtocolCheckFile("Autofarm_Waves_Setting_1." .. ProtocolFileType)
local Initializing_2 = ProtocolCheckFile("Autofarm_Waves_Setting_2." .. ProtocolFileType)
local Initializing_3 = ProtocolCheckFile("Auto_Damage_Setting." .. ProtocolFileType)

if Initializing_1 and Initializing_2 and Initializing_3 then
local Check_1 = ProtocolReadSettings("Autofarm_Waves_Setting_1." .. ProtocolFileType)
local Check_2 = ProtocolReadSettings("Autofarm_Waves_Setting_2." .. ProtocolFileType)
local Check_3 = ProtocolReadSettings("Auto_Damage_Setting." .. ProtocolFileType)
ProtocolTrigger_1 = Check_1
ProtocolTrigger_2 = Check_2
ProtocolTrigger_3 = Check_3
else
ProtocolNotify("You didn't save your settings here, I hope you saved them first")
end
end

Tab_9:CreateDropdown("File type", {"txt","json","html","lua"}, function(currentOption)
     ProtocolFileType = currentOption
end)

Tab_9:CreateButton("save all toggles settings", function()
  if ProtocolFileType == "" or ProtocolFileType == nil then
       ProtocolNotify("please select the file type first")
  else
       ProtocolSaveSettings("Autofarm_Waves_Setting_1." .. ProtocolFileType, ProtocolTrigger_1)
       ProtocolSaveSettings("Autofarm_Waves_Setting_2." .. ProtocolFileType, ProtocolTrigger_2)
       ProtocolSaveSettings("Auto_Damage_Setting." .. ProtocolFileType, ProtocolTrigger_3)
  end
end)

Tab_9:CreateButton("Load all toggles settings", function()
LoadSettings()
end)

--// Main Contents \\--
Tab_1:CreateToggle("Autofarm Waves (teleport)", ProtocolTrigger_1, function(state)
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

Tab_1:CreateToggle("Autofarm Waves (bring)", ProtocolTrigger_2, function(state)
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

Tab_1:CreateToggle("auto damage", ProtocolTrigger_3, function(state)
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
    [1] = true
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
loadstring(game:GetObjects("rbxassetid://10055842438")[1])()
end)

Tab_4:CreateButton("Psy Hub", function()
loadstring(game:GetObjects("rbxassetid://3014051754")[1].Source)()
end)

Tab_4:CreateButton("Anti-Kick", function()
local mt = getrawmetatable(game)
local old = mt.__namecall
local protect = newcclosure or protect_function

if not protect then
protect = function(f) return f end
end

setreadonly(mt, false)
mt.__namecall = protect(function(self, ...)
local method = getnamecallmethod()
if method == "Kick" then
wait(9e9)
return
end
return old(self, ...)
end)
hookfunction(game:GetService("Players").LocalPlayer.Kick,protect(function() wait(9e9) end))
end)
-- # test
