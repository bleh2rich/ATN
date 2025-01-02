local clientId = game:GetService("RbxAnalyticsService"):GetClientId()


local whitelistedIds = {
    "12624836-6ED4-471C-88C3-954E582C8270",
    "7AE2CCE3-2FE6-41DA-B29C-EB997A149AB7"
}


local isWhitelisted = false
for _, id in ipairs(whitelistedIds) do
    if clientId == id then
        isWhitelisted = true
        break
    end
end

if isWhitelisted then
    local StarterGui = game:GetService("StarterGui")

StarterGui:SetCore("SendNotification", {
    Title = "Wattyhub ATN Premium",
    Text = "Welcome Back Premium User",
    Duration = 10,
    Button1 = "im so skibidi bling bling"
})


else

    game:GetService("Players").LocalPlayer:Kick("Access denied. Buy Premium From bl_h On Discord")
end




local replicatedStorage = game:GetService("ReplicatedStorage")
        game:GetService("ReplicatedStorage").ATB:Destroy()
        game:GetService("ReplicatedStorage").ATR:Destroy()
        game:GetService("ReplicatedStorage").playmusicevent:Destroy()
        game:GetService("ReplicatedStorage").SHA2:Destroy()


for _, child in pairs(replicatedStorage:GetChildren()) do
    local functionObj = child:FindFirstChild("__FUNCTION")
    if functionObj then
        child:Destroy()
        break
    end
end


local ESP = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bleh2rich/WattyhubPrestiged/main/ArchivedLibs/esp.lua'),true))()



local selectedKeybind = Enum.KeyCode.W
local isKeyPressed = false
local uis = game:GetService("UserInputService")
local lcpn = game:GetService("Players").LocalPlayer.Name
local BoostSpeed = 5
local DecelSpeed = 5
local isDecelKeyPressed = false
local selectedDecelKeybind = Enum.KeyCode.S



local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

Library:Notify("Hai UwU!!")
wait(1)
Library:Notify("Deleting anticheat...")
wait(1)
Library:Notify("Deleted 1/2!")
wait(0.5)
Library:Notify("Deleted 2/2!")
wait(1)
Library:Notify("Finished!")
wait(1)
Library:Notify("Loading Script...")
wait(0.8)
Library:Notify("Have fun being a femboy who exploits!")
wait(0.5)




local FrameTimer = tick()
local FrameCounter = 0;
local FPS = 60;
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local weaponsList = {
    "Pistol", "Heavy Pistol", "Ranch Rifle", "Revolver", "Hunting Shotgun",
    "Military Sniper", "Hunting Sniper", "Military Rifle", "Carbine",
    "Assault Rifle", "Pistol Supp", "Duty Pistol", "Duty Pistol Supp",
    "Heavy Revolver", "Sawn-Off", "SMG", "BIG MAC", "Shotgun", "Plinking Pistol", "Suppressed Carbine", "Fists", "Chainsaw", "Ninjato", "Pickaxe", "Bat", "Baton", "Tactical SMG", "Axe", "Boxing", "Shovel", "Dumbbell", "Shiv", "Pipe", "Crowbar", "Metal Bat", "Kitchen Knife", "Rolling Pin", "Cleaver", "Combat Knife", "Scythe", "Spear", "Hatchet", "Pitchfork", "Old Sword", "Frying Pan", "Bonesaw", "Flashlight", "Broom", "Mop", "Hammer", "Sledgehammer", "Temple Sword"
}
local WatermarkConnection = game:GetService('RunService').RenderStepped:Connect(function()
    FrameCounter += 1;

    if (tick() - FrameTimer) >= 1 then
        FPS = FrameCounter;
        FrameTimer = tick();
        FrameCounter = 0;
    end;

    Library:SetWatermark(('ATN | Bleh2rich | %s fps | %s ms'):format(
        math.floor(FPS),
        math.floor(game:GetService('Stats').Network.ServerStatsItem['Data Ping']:GetValue())
    ));
end);

local autoReloadEnabled = false
local player = game:GetService("Players").LocalPlayer



local KillAuraEnabled = false
local playerName = LocalPlayer.Name

local function enableCollision()
    local torso = workspace.PPlayers[playerName].HumanoidRootPart
    if torso and torso:IsA("BasePart") then
        torso.CanCollide = true
    end
end


local function disableCollision()
    wait()
    local parts = {
        workspace.PPlayers[playerName]["Right Leg"],
        workspace.PPlayers[playerName].Head,
        workspace.PPlayers[playerName].HumanoidRootPart,
        workspace.PPlayers[playerName].Torso,
        workspace.PPlayers[playerName]["Left Arm"],
        workspace.PPlayers[playerName]["Left Leg"],
        workspace.PPlayers[playerName]["Right Arm"],
    }
    for _, part in ipairs(parts) do
        if part and part:IsA("BasePart") then
            part.CanCollide = false
        end
    end
end


local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local noclipEnabled = false


local function disableCollision()
    local character = player.Character or player.CharacterAdded:Wait()
    local parts = {
        character:FindFirstChild("Right Leg"),
        character:FindFirstChild("Head"),
        character:FindFirstChild("HumanoidRootPart"),
        character:FindFirstChild("Torso"),
        character:FindFirstChild("Left Arm"),
        character:FindFirstChild("Left Leg"),
        character:FindFirstChild("Right Arm"),
    }

    for _, part in ipairs(parts) do
        if part and part:IsA("BasePart") then
            part.CanCollide = false
        end
    end
end


local function startNoclip()
    noclipEnabled = true
    while noclipEnabled do
        if player.Character then
            disableCollision()
        end
        wait(1)
    end
end


local function stopNoclip()
    noclipEnabled = false
    local character = player.Character or player.CharacterAdded:Wait()
    local rootPart = character:FindFirstChild("HumanoidRootPart")
    if rootPart then
        rootPart.CanCollide = true
    end
end



local function isInRange(targetPlayer, range)
    local myPosition = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character.HumanoidRootPart.Position
    local targetPosition = targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") and targetPlayer.Character.HumanoidRootPart.Position

    if myPosition and targetPosition then
        return (myPosition - targetPosition).Magnitude <= range
    end
    return false
end


local function inflictDamage(targetPlayer)
    if targetPlayer and targetPlayer.Character then
        local humanoid = targetPlayer.Character:FindFirstChild("Humanoid")
        local head = targetPlayer.Character:FindFirstChild("Head")
        if humanoid and head then
            for _, weaponName in pairs(weaponsList) do
                local weapon = LocalPlayer.Character:FindFirstChild(weaponName)
                if weapon and weapon:FindFirstChild("Damage") and weapon.Damage:FindFirstChild("InflictTarget") then
                    local args = {
                        [1] = humanoid,
                        [2] = 49,
                        [3] = head
                    }
                    weapon.Damage.InflictTarget:FireServer(unpack(args))
                end
            end
        end
    end
end


local function killAuraOn()
    _G.PlayerKillAura = true
    while _G.PlayerKillAura do
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and isInRange(player, 500) then
                inflictDamage(player)
            end
        end
        wait(0.05)
    end
end


local function killAuraOff()
    _G.PlayerKillAura = false
end




local SilentAimEnabled = false
local WallCheckEnabled = false
local AutoFireEnabled = false
local HideFOVCircle = false
local TargetingMode = "Hit Closest To Player"
local TargetBodyPart = "Head"
local FOVRadius = 100
local HitChance = 100


local NPC_SilentAimEnabled = false
local NPCAutoFireEnabled = false
local NPCRadius = 950
local NPCDamageAmount = 49
local NPCFolder = workspace.Pedestrians


local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PedestrianFolder = workspace:WaitForChild("Pedestrians")

local FOVCircle = Drawing.new("Circle")
FOVCircle.Radius = FOVRadius
FOVCircle.Color = Color3.fromRGB(255, 255, 255)
FOVCircle.Thickness = 2
FOVCircle.Filled = false
FOVCircle.Transparency = 1
FOVCircle.Visible = false


RunService.RenderStepped:Connect(function()
    if SilentAimEnabled then
        FOVCircle.Position = UserInputService:GetMouseLocation()
        FOVCircle.Visible = not HideFOVCircle
    else
        FOVCircle.Visible = false
    end


end)

local rainbowFOVEnabled = false
RunService.RenderStepped:Connect(function()
    if rainbowFOVEnabled then
        local hue = tick() % 6


        local r, g, b
        if hue < 1 then
            r, g, b = 1, hue, 0
        elseif hue < 2 then
            r, g, b = 2 - hue, 1, 0
        elseif hue < 3 then
            r, g, b = 0, 1, hue - 2
        elseif hue < 4 then
            r, g, b = 0, 4 - hue, 1
        elseif hue < 5 then
            r, g, b = hue - 4, 0, 1
        else
            r, g, b = 1, 0, 6 - hue
        end

        FOVCircle.Color = Color3.fromRGB(r * 255, g * 255, b * 255)
    else
        FOVCircle.Color = Color3.fromRGB(255, 255, 255)
    end
end)





local function isTargetVisible(targetPlayer)
    if not WallCheckEnabled then
        return true
    end

    local myPosition = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character.HumanoidRootPart.Position
    local targetPosition = targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") and targetPlayer.Character.Head.Position

    if myPosition and targetPosition then
        local direction = (targetPosition - myPosition).Unit
        local raycastParams = RaycastParams.new()
        raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
        raycastParams.FilterDescendantsInstances = {LocalPlayer.Character}
        local rayResult = workspace:Raycast(myPosition, direction * 500, raycastParams)

        if rayResult then
            return rayResult.Instance:IsDescendantOf(targetPlayer.Character)
        end
    end
    return false
end


local function getPlayersInFOV()
    local playersInFOV = {}
    local mousePosition = UserInputService:GetMouseLocation()

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local targetPosition = player.Character.HumanoidRootPart.Position
            local screenPosition, onScreen = Camera:WorldToScreenPoint(targetPosition)
            local distToMouse = (Vector2.new(screenPosition.X, screenPosition.Y) - mousePosition).Magnitude

            if distToMouse <= FOVRadius and isTargetVisible(player) then
                table.insert(playersInFOV, player)
            end
        end
    end
    return playersInFOV
end


local function getClosestPlayerInFOV(playersInFOV)
    local closestPlayer = nil
    local closestDistance = math.huge
    local myPosition = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character.HumanoidRootPart.Position
    local mousePosition = UserInputService:GetMouseLocation()

    for _, player in pairs(playersInFOV) do
        local targetPosition = player.Character.HumanoidRootPart.Position
        local screenPosition = Camera:WorldToScreenPoint(targetPosition)
        local distance

        if TargetingMode == "Hit Closest To Player" then
            distance = (myPosition - targetPosition).Magnitude
        elseif TargetingMode == "Hit Closest To Mouse" then
            distance = (Vector2.new(screenPosition.X, screenPosition.Y) - mousePosition).Magnitude
        end

        if distance < closestDistance then
            closestDistance = distance
            closestPlayer = player
        end
    end
    return closestPlayer
end


local function inflictDamages(targetPlayer)
    if targetPlayer and targetPlayer.Character then
        local humanoid = targetPlayer.Character:FindFirstChild("Humanoid")


        if math.random(1, 100) <= HitChance then

            local targetPart
            if TargetBodyPart == "Head" then
                targetPart = targetPlayer.Character:FindFirstChild("Head")
            elseif TargetBodyPart == "Torso" then
                targetPart = targetPlayer.Character:FindFirstChild("Torso")
            elseif TargetBodyPart == "Random Body Part" then

                targetPart = (math.random() <= 0.6) and targetPlayer.Character:FindFirstChild("Torso") or targetPlayer.Character:FindFirstChild("Head")
            end

            if humanoid and targetPart then
                for _, weaponName in pairs(weaponsList) do
                    local weapon = LocalPlayer.Character:FindFirstChild(weaponName)
                    if weapon and weapon:FindFirstChild("Damage") and weapon.Damage:FindFirstChild("InflictTarget") then
                        local args = {
                            [1] = humanoid,
                            [2] = 49,
                            [3] = targetPart
                        }
                        weapon.Damage.InflictTarget:FireServer(unpack(args))
                    end
                end
            end
        end
    end
end


local function getNPCsInFOV()
    local npcsInFOV = {}
    local myPosition = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character.HumanoidRootPart.Position

    for _, npc in pairs(NPCFolder:GetChildren()) do
        if npc:FindFirstChild("Humanoid") and npc:FindFirstChild("HumanoidRootPart") then
            local distance = (npc.HumanoidRootPart.Position - myPosition).Magnitude
            if distance <= NPCRadius then
                table.insert(npcsInFOV, npc)
            end
        end
    end
    return npcsInFOV
end

local function damageNPC(npc)
    local humanoid = npc:FindFirstChild("Humanoid")
    local targetPart = npc:FindFirstChild("HumanoidRootPart")

    if humanoid and targetPart then
        for _, weaponName in pairs(weaponsList) do
            local weapon = LocalPlayer.Character:FindFirstChild(weaponName)
            if weapon and weapon:FindFirstChild("Damage") and weapon.Damage:FindFirstChild("InflictTarget") then
                local args = {
                    [1] = humanoid,
                    [2] = 49,
                    [3] = targetPart
                }
                weapon.Damage.InflictTarget:FireServer(unpack(args))
            end
        end
    end
end


local function npcSilentAim()
    local playersInFOV = getPlayersInFOV()
    local myPosition = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position

    for _, npc in pairs(getNPCsInFOV()) do
        local npcPosition = npc.HumanoidRootPart.Position
        local screenPosition, onScreen = Camera:WorldToScreenPoint(npcPosition)
        local mousePosition = UserInputService:GetMouseLocation()
        local distToMouse = (Vector2.new(screenPosition.X, screenPosition.Y) - mousePosition).Magnitude


        if distToMouse <= FOVRadius then
            damageNPC(npc)
        end
    end
end


local function silentAim()
    local playersInFOV = getPlayersInFOV()
    local target = getClosestPlayerInFOV(playersInFOV)
    if target then
        inflictDamages(target)
    end

    if NPCSilentAimEnabled then
        npcSilentAim()
    end
end


UserInputService.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 and SilentAimEnabled then
        if AutoFireEnabled then

            task.spawn(function()
                while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) and SilentAimEnabled do
                    silentAim()
                    wait(0.35)
                end
            end)
        else

            silentAim()
        end
    end
end)








local Window = Library:CreateWindow({
   Title = 'ATN | Bleh2rich | V7.0 | Paid Version',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})



local Tabs = {
    Combat = Window:AddTab('Main'),
    Visuals = Window:AddTab('Visuals'),
    Teleports = Window:AddTab('Teleports'),
    Main = Window:AddTab('Vehicle'),
    Money = Window:AddTab('Autofarm'),
    Misc = Window:AddTab('Misc'),
    ['UI Settings'] = Window:AddTab('Config'),
}
local PlayerMove = Tabs.Combat:AddLeftGroupbox('Player Movement Exploits')
local ppplllaayerrrr = game:GetService("Players").LocalPlayer
local humanooidd = nil
local walkSpeedEnabled = false


local function setupCharacter(character)
    humanooidd = character:WaitForChild("Humanoid")


    if walkSpeedEnabled then
        humanooidd.WalkSpeed = Options.WalkSpeedSlider.Value
    else
        humanooidd.WalkSpeed = 16
    end
end


ppplllaayerrrr.CharacterAdded:Connect(setupCharacter)


if ppplllaayerrrr.Character then
    setupCharacter(ppplllaayerrrr.Character)
end


PlayerMove:AddToggle('Walkspeed', {
    Text = 'Toggle Walkspeed',
    Default = false,
    Tooltip = 'Enables And Disables Walkspeed',
    Callback = function(Value)
        walkSpeedEnabled = Value
        if humanooidd then
            if walkSpeedEnabled then
                humanooidd.WalkSpeed = Options.WalkSpeedSlider.Value
            else
                humanooidd.WalkSpeed = 16
            end
        end
    end
})


PlayerMove:AddSlider('WalkSpeedSlider', {
    Text = 'Changes player Walkspeed',
    Default = 16,
    Min = 1,
    Max = 500,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        if walkSpeedEnabled and humanooidd then
            humanooidd.WalkSpeed = Value
        end
    end
})


game:GetService("RunService").RenderStepped:Connect(function()
    if walkSpeedEnabled and humanooidd then
        humanooidd.WalkSpeed = Options.WalkSpeedSlider.Value
    end
end)

PlayerMove:AddToggle('Noclip', {
    Text = 'Toggle Noclip',
    Default = false,
    Tooltip = 'Enables And Disables Noclip',
    Callback = function(Value)
        if Value then
            startNoclip()
        else
            stopNoclip()
        end
    end
})


player.CharacterAdded:Connect(function(newCharacter)
    setupCharacter(newCharacter)
    if noclipEnabled then
        startNoclip()
    end
end)


setupCharacter(character)


local pppplllaayerrrr = game:GetService("Players").LocalPlayer
local humanooiddd = nil
local UserInputService = game:GetService("UserInputService")

local infiniteJumpEnabled = false
local canJumpAgain = false


local function setupCharacter(character)
    humanooiddd = character:WaitForChild("Humanoid")


    humanooiddd.StateChanged:Connect(function(_, newState)
        if newState == Enum.HumanoidStateType.Freefall then
            canJumpAgain = infiniteJumpEnabled
        elseif newState == Enum.HumanoidStateType.Jumping then
            canJumpAgain = true
        end
    end)

    humanooiddd:GetPropertyChangedSignal("FloorMaterial"):Connect(function()
        if humanooiddd.FloorMaterial ~= Enum.Material.Air then
            canJumpAgain = false
        end
    end)
end


pppplllaayerrrr.CharacterAdded:Connect(setupCharacter)


if pppplllaayerrrr.Character then
    setupCharacter(pppplllaayerrrr.Character)
end


PlayerMove:AddToggle('infjumping', {
    Text = 'Toggle Infinite Jump',
    Default = false,
    Tooltip = 'Enables And Disables Infinite Jump',
    Callback = function(Value)
        infiniteJumpEnabled = Value
    end
})


UserInputService.JumpRequest:Connect(function()
    if infiniteJumpEnabled and canJumpAgain and humanooiddd then
        humanooiddd:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end)





local PlayerCombat = Tabs.Combat:AddLeftGroupbox('Player Combat Exploits')


local AutoHealEnabled = false
local HealThreshold = 75

PlayerCombat:AddToggle('AutoHealSwitch', {
    Text = 'Autoheal',
    Default = false,
    Tooltip = 'Autoheals You',
    Callback = function(Value)
        AutoHealEnabled = Value
    end
})

PlayerCombat:AddSlider('AutoHealChanger', {
    Text = 'Change Heal Threshold',
    Default = 75,
    Min = 1,
    Max = 100,
    Rounding = 0,
    Compact = false,
    Callback = function(Value)
        HealThreshold = Value
    end
})


local function autoHeal()
    local Players = game:GetService("Players")
    local LocalPlayerrrrrr = Players.LocalPlayer.Name


    local Player = workspace:WaitForChild("PPlayers"):WaitForChild(LocalPlayerrrrrr)


    if AutoHealEnabled and Player:FindFirstChild("Humanoid") and Player:FindFirstChild("Torso") then

        if Player.Humanoid.Health < HealThreshold then

            local Backpack = Players.LocalPlayer.Backpack
            local bandage = Backpack:FindFirstChild("Bandages3") or Backpack:FindFirstChild("Bandages2") or Backpack:FindFirstChild("Bandages")

            if bandage then
                bandage.Parent = Players.LocalPlayer.Character


                while AutoHealEnabled and Player.Humanoid.Health < 100 do

                    if not Player or not Player:FindFirstChild("Humanoid") or not Player:FindFirstChild("Torso") then
                        break
                    end

                    local ohInstance1 = Player.Humanoid
                    local ohNumber2 = 0
                    local ohInstance3 = Player.Torso


                    bandage.Damage.InflictTarget:FireServer(ohInstance1, ohNumber2, ohInstance3)
                    wait(0.1)
                end


                bandage.Parent = Backpack
            end
        end
    end
end


game:GetService("RunService").RenderStepped:Connect(function()
    if AutoHealEnabled then
        pcall(autoHeal)
    end
end)

PlayerCombat:AddToggle('KASwitchs', {
    Text = 'Kill Aura',
    Default = false,
    Tooltip = 'Kills Those Around You',
    Callback = function(Valuee)
        KillAuraEnabled = Valuee
    end
})


Toggles.KASwitchs:OnChanged(function()
    if KillAuraEnabled then
        task.spawn(killAuraOn)
    else
        task.spawn(killAuraOff)
    end
end)






local function freezeCharacter(duration)
    local humanoidRootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        humanoidRootPart.Anchored = true
        wait(duration)
        humanoidRootPart.Anchored = false
    end
end


local function teleportBackToOriginalPosition(originalCFrame)
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        LocalPlayer.Character.HumanoidRootPart.CFrame = originalCFrame
        freezeCharacter(1.5)
    end
end


local function killAllOn()
    local originalCFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
    _G.KillAllActive = true
    _G.NoclipKillAll = true


    task.spawn(function()
        while _G.NoclipKillAll do
            disableCollision()
            wait()
        end
    end)


    while _G.KillAllActive do
        for _, targetPlayer in pairs(Players:GetPlayers()) do
            if targetPlayer ~= LocalPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local humanoidRootPart = targetPlayer.Character.HumanoidRootPart

                local startTime = tick()
                while tick() - startTime < 0.8 and _G.KillAllActive do
                    LocalPlayer.Character.HumanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.new(0, -7, 0)
                    inflictDamage(targetPlayer)
                    wait(0.05)
                end
            end
        end
        wait(1.5)
    end


    _G.NoclipKillAll = false
    enableCollision()
    teleportBackToOriginalPosition(originalCFrame)
end


local function killAllOff()
    _G.KillAllActive = false

    local originalCFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
    teleportBackToOriginalPosition(originalCFrame)
end


PlayerCombat:AddToggle('KillAllSwitch', {
    Text = 'Kill All',
    Default = false,
    Tooltip = 'Teleports under every player and kills them',
    Callback = function(Value)
        if Value then
            killAllOn()
        else
            killAllOff()
        end
    end
})



_G.InfiniteAmmoActive = false

local function autoReloadOn()
    _G.InfiniteAmmoActive = true
end

local function autoReloadOff()
    _G.InfiniteAmmoActive = false
end


local function startInfiniteAmmoLoop()
    task.spawn(function()
        while true do
            if _G.InfiniteAmmoActive then
                local tool = player.Character and player.Character:FindFirstChildOfClass("Tool")

                if tool and tool:FindFirstChild("Damage") and tool.Damage:FindFirstChild("Ammo") then
                    local args = { [1] = "Reload" }
                    tool.Damage.Ammo:FireServer(unpack(args))
                end
            end
            wait(0.1)
        end
    end)
end


local function onCharacterAdded(newCharacter)
    if _G.InfiniteAmmoActive then
        startInfiniteAmmoLoop()
    end
end


player.CharacterAdded:Connect(onCharacterAdded)


startInfiniteAmmoLoop()


PlayerCombat:AddToggle('InfiniteAmmoToggle', {
    Text = 'Infinite Ammo',
    Default = false,
    Tooltip = 'Toggle to enable or disable infinite ammo',
    Callback = function(Value)
        if Value then
            autoReloadOn()
        else
            autoReloadOff()
        end
    end
})





local NPC_KillAuraEnabled = false
local radddius = 350
local damageammmount = 49

local pppllayer = game:GetService("Players").LocalPlayer
local peddestriansfoldder = workspace:WaitForChild("Pedestrians")
local currentPedestrians = {}


local function updatePedestriansList()
    currentPedestrians = peddestriansfoldder:GetChildren()
end


local function setupCharacterReferences()
    local chharacter = pppllayer.Character or pppllayer.CharacterAdded:Wait()
    local hhuumanoidRootPart = chharacter:WaitForChild("HumanoidRootPart")
    return chharacter, hhuumanoidRootPart
end


local function damageNearbyNPCs(hhuumanoidRootPart)
    for _, npc in ipairs(currentPedestrians) do
        if npc:FindFirstChild("Humanoid") and npc:FindFirstChild("HumanoidRootPart") then
            local distance = (npc.HumanoidRootPart.Position - hhuumanoidRootPart.Position).Magnitude
            if distance <= radddius then
                for _, weaponName in pairs(weaponsList) do
                    local weapon = pppllayer.Character:FindFirstChild(weaponName)
                    if weapon and weapon:FindFirstChild("Damage") and weapon.Damage:FindFirstChild("InflictTarget") then
                        local args = {
                            [1] = npc.Humanoid,
                            [2] = damageammmount,
                            [3] = npc:FindFirstChild("Torso") or npc:FindFirstChild("HumanoidRootPart")
                        }
                        weapon.Damage.InflictTarget:FireServer(unpack(args))
                    end
                end
            end
        end
    end
end


local function npcKillAuraOn()
    _G.NPCKillAura = true
    local chharacter, hhuumanoidRootPart = setupCharacterReferences()
    while _G.NPCKillAura do
        damageNearbyNPCs(hhuumanoidRootPart)
        wait(0.05)
    end
end


local function npcKillAuraOff()
    _G.NPCKillAura = false
end


local function updatePedestriansLoop()
    while _G.NPCKillAura do
        updatePedestriansList()
        wait(5)
    end
end


pppllayer.CharacterAdded:Connect(function(newCharacter)
    setupCharacterReferences()
    if NPC_KillAuraEnabled then
        task.spawn(npcKillAuraOn)
        task.spawn(updatePedestriansLoop)
    end
end)


PlayerCombat:AddToggle('NPC_KASwitch', {
    Text = 'NPC Kill Aura',
    Default = false,
    Tooltip = 'Kills NPCs Around You',
    Callback = function(Value)
        NPC_KillAuraEnabled = Value
    end
})

Toggles.NPC_KASwitch:OnChanged(function()
    if NPC_KillAuraEnabled then
        task.spawn(npcKillAuraOn)
        task.spawn(updatePedestriansLoop)
    else
        task.spawn(npcKillAuraOff)
    end
end)



local PlayerCombat2 = Tabs.Misc:AddRightGroupbox('NPC Exploits')
local BringALLNPCButton = PlayerCombat2:AddButton({
    Text = 'Bring All NPCS',
    Func = function()
        local ppplllaaayer = game:GetService("Players").LocalPlayer.Name
        local playerPath = workspace.PPlayers[ppplllaaayer].HumanoidRootPart
        local pedestriansFolder = workspace.Pedestrians
        local camera = workspace.CurrentCamera


        local playerCFrame = playerPath.CFrame


        camera.CameraType = Enum.CameraType.Scriptable


        local function teleportNPCs()
            for _, npc in ipairs(pedestriansFolder:GetChildren()) do
                if npc:IsA("Model") and npc:FindFirstChild("HumanoidRootPart") then
                    local npcCFrame = npc.HumanoidRootPart.CFrame


                    playerPath.CFrame = npcCFrame
                    wait(0.4)


                    npc.HumanoidRootPart.CFrame = playerCFrame
                    wait(0.2)
                end
            end


            playerPath.CFrame = playerCFrame


            camera.CameraType = Enum.CameraType.Custom
        end

        teleportNPCs()
    end,
    DoubleClick = false,
    Tooltip = 'Brings Every NPC'
})
local BringBatonCopsButton = PlayerCombat2:AddButton({
    Text = 'Bring All Baton Cops',
    Func = function()
        local ppplllaaayer = game:GetService("Players").LocalPlayer.Name
        local playerPath = workspace.PPlayers[ppplllaaayer].HumanoidRootPart
        local pedestriansFolder = workspace.Pedestrians
        local camera = workspace.CurrentCamera


        local playerCFrame = playerPath.CFrame


        camera.CameraType = Enum.CameraType.Scriptable


        local function teleportBatonCops()
            for _, npc in ipairs(pedestriansFolder:GetChildren()) do
                if npc:IsA("Model") and npc:FindFirstChild("NodeLocation") then

                    if npc.Name == "BatonCopM" or npc.Name == "BatonCopF" then
                        local npcCFrame = npc.HumanoidRootPart.CFrame


                        playerPath.CFrame = npcCFrame
                        wait(0.4)


                        npc.HumanoidRootPart.CFrame = playerCFrame
                        wait(0.2)
                    end
                end
            end


            playerPath.CFrame = playerCFrame


            camera.CameraType = Enum.CameraType.Custom
        end

        teleportBatonCops()
    end,
    DoubleClick = false,
    Tooltip = 'Brings All Baton Cops'
})
local BringGunCopsButton = PlayerCombat2:AddButton({
    Text = 'Bring All Gun Cops',
    Func = function()
        local ppplllaaayer = game:GetService("Players").LocalPlayer.Name
        local playerPath = workspace.PPlayers[ppplllaaayer].HumanoidRootPart
        local pedestriansFolder = workspace.Pedestrians
        local camera = workspace.CurrentCamera


        local playerCFrame = playerPath.CFrame


        camera.CameraType = Enum.CameraType.Scriptable


        local function teleportGunCops()
            for _, npc in ipairs(pedestriansFolder:GetChildren()) do
                if npc:IsA("Model") and npc:FindFirstChild("NodeLocation") then

                    if npc.Name == "GunCopM" or npc.Name == "GunCopF" then
                        local npcCFrame = npc.HumanoidRootPart.CFrame


                        playerPath.CFrame = npcCFrame
                        wait(0.4)


                        npc.HumanoidRootPart.CFrame = playerCFrame
                        wait(0.2)
                    end
                end
            end


            playerPath.CFrame = playerCFrame


            camera.CameraType = Enum.CameraType.Custom
        end

        teleportGunCops()
    end,
    DoubleClick = false,
    Tooltip = 'Brings All Gun Cops'
})
local BringEscapedConvictsButton = PlayerCombat2:AddButton({
    Text = 'Bring All Escaped Convicts',
    Func = function()
        local ppplllaaayer = game:GetService("Players").LocalPlayer.Name
        local playerPath = workspace.PPlayers[ppplllaaayer].HumanoidRootPart
        local pedestriansFolder = workspace.Pedestrians
        local camera = workspace.CurrentCamera


        local playerCFrame = playerPath.CFrame


        camera.CameraType = Enum.CameraType.Scriptable


        local function teleportEscapedConvicts()
            for _, npc in ipairs(pedestriansFolder:GetChildren()) do
                if npc:IsA("Model") and npc:FindFirstChild("NodeLocation") then

                    if npc.Name == "EscapedGunConvict" or npc.Name == "EscapedConvict" then
                        local npcCFrame = npc.HumanoidRootPart.CFrame


                        playerPath.CFrame = npcCFrame
                        wait(0.4)


                        npc.HumanoidRootPart.CFrame = playerCFrame
                        wait(0.2)
                    end
                end
            end


            playerPath.CFrame = playerCFrame


            camera.CameraType = Enum.CameraType.Custom
        end

        teleportEscapedConvicts()
    end,
    DoubleClick = false,
    Tooltip = 'Brings All Escaped Convicts'
})



local PlayerTrollingMenu = Tabs.Combat:AddLeftGroupbox('Troll Others')


PlayerTrollingMenu:AddLabel('PLAYERS USERNAME IS CASE SENSITIVE')
local validPlayers = {}

local function updateValidPlayers()
    while true do
        validPlayers = {}
        for _, player in pairs(workspace.PPlayers:GetChildren()) do
            if player:IsA("Model") and player:FindFirstChild("HumanoidRootPart") then
                table.insert(validPlayers, player.Name)
            end
        end
        wait(5)
    end
end


spawn(updateValidPlayers)


local PlayerToTPNPCS = PlayerTrollingMenu:AddInput('PlayerToTPNPCS', {
    Default = 'Player To Teleport ALL NPCS',
    Numeric = false,
    Finished = true,

    Text = 'Teleports ALL NPCs To Player',
    Tooltip = 'Teleports ALL NPCS To Provided Player',
    Placeholder = '',

    Callback = function(Value)

    end
})

local TeleportNPCStarter = PlayerTrollingMenu:AddButton({
    Text = 'Click To Teleport NPCS',
    Func = function()
        local LocalPlayerrrr = game:GetService("Players").LocalPlayer.Name
        local playerPath = workspace.PPlayers[LocalPlayerrrr].HumanoidRootPart


        local targetPlayerName = Options.PlayerToTPNPCS.Value
        local playerPath2 = workspace.PPlayers[targetPlayerName] and workspace.PPlayers[targetPlayerName].HumanoidRootPart


        if not playerPath2 then
            warn("Player not found: " .. targetPlayerName)
            return
        end

        local pedestriansFolder = workspace.Pedestrians


        local function ttteleportNPCCS()

            local playerCFrame = playerPath2.CFrame


            for _, npc in ipairs(pedestriansFolder:GetChildren()) do

                if npc:IsA("Model") and npc:FindFirstChild("HumanoidRootPart") then

                    playerPath.CFrame = npc.HumanoidRootPart.CFrame


                    wait(0.4)


                    playerPath2 = workspace.PPlayers[targetPlayerName] and workspace.PPlayers[targetPlayerName].HumanoidRootPart


                    if playerPath2 then
                        npc.HumanoidRootPart.CFrame = playerPath2.CFrame
                    else
                        warn("Target player lost during teleportation: " .. targetPlayerName)
                        return
                    end


                    wait(0.2)
                end
            end


            playerPath.CFrame = playerCFrame
        end


        ttteleportNPCCS()
    end,
    DoubleClick = false,
    Tooltip = 'Activates The Teleport NPCs To The Wanted Player'
})


local SilentAim = Tabs.Combat:AddRightGroupbox('Silent Aim')
SilentAim:AddToggle('SilentAimSwitch', {
    Text = 'Silent Aim',
    Default = false,
    Tooltip = 'Kills only players within FOV circle when you click',
    Callback = function(Value)
        SilentAimEnabled = Value
    end
})


SilentAim:AddToggle('WallCheckSwitch', {
    Text = 'Wall Check',
    Default = false,
    Tooltip = 'Check if target is visible (not behind walls)',
    Callback = function(Value)
        WallCheckEnabled = Value
    end
})

SilentAim:AddToggle('AutoFireSwitch', {
    Text = 'Automatic',
    Default = false,
    Tooltip = 'Enable or disable automatic firing mode',
    Callback = function(Value)
        AutoFireEnabled = Value
    end
})
SilentAim:AddToggle('NPCTargetingSwitch', {
    Text = 'Target NPCs',
    Default = false,
    Tooltip = 'Enable or disable NPC silent aim targetting',
    Callback = function(Value)
        NPCSilentAimEnabled = Value
    end
})
SilentAim:AddToggle('RainbowFOVCircleSwitch', {
    Text = 'Rainbow FOV Circle',
    Default = false,
    Tooltip = 'Makes the FOV circle rainbow',
    Callback = function(enabled)
        rainbowFOVEnabled = enabled
    end
})
SilentAim:AddToggle('HideFOVCircleSwitch', {
    Text = 'Hide FOV Circle',
    Default = false,
    Tooltip = 'Hides the FOV circle from view',
    Callback = function(Value)
        HideFOVCircle = Value
    end
})


SilentAim:AddSlider('SilentAimFOVChanger', {
    Text = 'Change FOV Circle',
    Default = 100,
    Min = 5,
    Max = 500,
    Rounding = 0,
    Compact = false,

    Callback = function(Value)
        FOVRadius = Value
        FOVCircle.Radius = FOVRadius
    end
})
SilentAim:AddSlider('PercentHitSlider', {
    Text = 'Change Hit Percent Chance',
    Default = 100,
    Min = 1,
    Max = 100,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        HitChance = Value
    end
})


SilentAim:AddDropdown('MyDropdown', {
    Values = { 'Hit Closest To Player', 'Hit Closest To Mouse' },
    Default = 1,
    Multi = false,
    Text = 'Targeting Mode',
    Tooltip = 'Choose targeting mode for Silent Aim',
    Callback = function(Value)
        TargetingMode = Value
    end
})

Options.MyDropdown:OnChanged(function()
    TargetingMode = Options.MyDropdown.Value
end)

SilentAim:AddDropdown('BodyPartDropdown', {
    Values = { 'Head', 'Torso', 'Random Body Part' },
    Default = 1,
    Multi = false,
    Text = 'Target Body Part',
    Tooltip = 'Select the body part to target',
    Callback = function(Value)
        TargetBodyPart = Value
    end
})

Options.BodyPartDropdown:OnChanged(function()
    TargetBodyPart = Options.BodyPartDropdown.Value
end)







local ExperimentalTab = Tabs.Combat:AddRightGroupbox('Experimental')

local BringCarButton = ExperimentalTab:AddButton({
    Text = 'Bring Car (BUGGY)',
    Func = function()
        local carsFolder = workspace.cars
        local foundEmptyCar = false
        local player = game:GetService("Players").LocalPlayer
        local originalCFrame = player.Character.HumanoidRootPart.CFrame
        local tool = game:GetService("ReplicatedStorage")["EXP Bolt Action Sniper"]


        for _, car in ipairs(carsFolder:GetChildren()) do
            if car:FindFirstChild("Owner") and car.Owner.Value == "" then
                foundEmptyCar = true



                local bodyFolder = car:FindFirstChild("Body")
                if bodyFolder then
                    local driveSeat = bodyFolder:FindFirstChild("DriveSeat")

                    if driveSeat then



                        local carPosition = driveSeat.CFrame + Vector3.new(0, 7, 0)
                        player.Character.HumanoidRootPart.CFrame = carPosition


                        wait(3)


                        local clonedTool = tool:Clone()
                        clonedTool.Parent = player.Backpack

                        local handle = clonedTool:FindFirstChild("Handle")
                        if handle then

                            local positionOffset = Vector3.new(0, 2, 0)
                            handle.CFrame = originalCFrame * CFrame.new(positionOffset) * CFrame.Angles(0, math.rad(0), 0)
                        end


                        player.Character.Humanoid:EquipTool(clonedTool)


                        wait(5)


                        local wheelsModel = car:FindFirstChild("Wheels")
                        if wheelsModel then
                            for _, wheel in ipairs(wheelsModel:GetChildren()) do
                                if wheel:IsA("Model") and (wheel.Name == "FL" or wheel.Name == "FR" or wheel.Name == "RL" or wheel.Name == "RR") then

                                    wheel:SetPrimaryPartCFrame(originalCFrame)

                                end
                            end
                        else

                        end

                        player.Character.Humanoid:UnequipTools()
                        wait(0.2)
                        clonedTool:Destroy()


                        player.Character.HumanoidRootPart.CFrame = originalCFrame

                    else

                    end
                else

                end


                break
            end
        end


        if not foundEmptyCar then

        end
    end,
    DoubleClick = false,
    Tooltip = 'Teleports you to an empty car\'s driver seat and back'
})


local GotoCarButton = ExperimentalTab:AddButton({
    Text = 'Go To Car',
    Func = function()
        local carsFolder = workspace.cars
        local foundEmptyCar = false
        local player = game:GetService("Players").LocalPlayer


        for _, car in ipairs(carsFolder:GetChildren()) do
            if car:FindFirstChild("Owner") and car.Owner.Value == "" then
                foundEmptyCar = true



                local bodyFolder = car:FindFirstChild("Body")
                if bodyFolder then
                    local driveSeat = bodyFolder:FindFirstChild("DriveSeat")

                    if driveSeat then



                        local carPosition = driveSeat.CFrame + Vector3.new(0, 7, 0)
                        player.Character.HumanoidRootPart.CFrame = carPosition
                    else

                    end
                else

                end


                break
            end
        end


        if not foundEmptyCar then

        end
    end,
    DoubleClick = false,
    Tooltip = 'Teleports you to an empty car\'s driver seat'
})



local Player = Tabs.Combat:AddRightGroupbox("Player Exploits")

Player:AddButton('Anti AFK 1', function()
    local vu = game:GetService("VirtualUser")

game:GetService("Players").LocalPlayer.Idled:Connect(function()
    vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

end)
Player:AddButton('Anti AFK 2', function()
    local GC = getconnections or get_signal_cons
	if GC then
		for i,v in pairs(GC(game:GetService("Players").LocalPlayer.Idled)) do
			if v["Disable"] then
				v["Disable"](v)
			elseif v["Disconnect"] then
				v["Disconnect"](v)
			end
		end
	else
		local VirtualUser = cloneref(game:GetService("VirtualUser"))
		game:GetService("Players").LocalPlayer.Idled:Connect(function()
			VirtualUser:CaptureController()
			VirtualUser:ClickButton2(Vector2.new())
		end)
	end
end)
Player:AddButton('Rejoin Server', function()
    local ts = game:GetService("TeleportService")

local p = game:GetService("Players").LocalPlayer



ts:Teleport(game.PlaceId, p)
end)
Player:AddButton('Server Hop', function()
    local Player = game:GetService("Players").LocalPlayer
local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"

local _place,_id = game.PlaceId, game.JobId

local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=10"
function ListServers(cursor)
   local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
   return Http:JSONDecode(Raw)
end

time_to_wait = 1


while wait(time_to_wait) do

   Player.Character.HumanoidRootPart.Anchored = true
   local Servers = ListServers()
   local Server = Servers.data[math.random(1,#Servers.data)]
   TPS:TeleportToPlaceInstance(_place, Server.id, Player)
end
end)



local Visual = Tabs.Visuals:AddLeftGroupbox("ESP Exploits")
ESP:Load()
ESP.options.outOfViewArrows = false
ESP.options.names = false
ESP.options.boxes = false
ESP.options.healthBars = false
ESP.options.healthText = false
ESP.options.distance = false
ESP.options.chams = false
ESP.options.teamColor = true
ESP.options.outOfViewArrowsFilled = false
ESP.options.outOfViewArrowsOutline = false

Visual:AddToggle('Arrows', {
    Text = 'ESP Arrows',
    Default = false,
    Tooltip = 'Creates visual arrows pointing to players'
})
Toggles.Arrows:OnChanged(function()
    ESP.options.outOfViewArrows = Toggles.Arrows.Value
    ESP.options.outOfViewArrowsFilled = Toggles.Arrows.Value
    ESP.options.outOfViewArrowsOutline = Toggles.Arrows.Value
end)
Visual:AddToggle('Names', {
    Text = 'ESP Names',
    Default = false,
    Tooltip = 'Creates visual text displaying the players name'
})
Toggles.Names:OnChanged(function()
    ESP.options.names = Toggles.Names.Value
end)
Visual:AddToggle('Boxes', {
    Text = 'ESP Boxes',
    Default = false,
    Tooltip = 'Creates visual boxes around players'
})
Toggles.Boxes:OnChanged(function()
    ESP.options.boxes = Toggles.Boxes.Value
end)
Visual:AddToggle('HealthBars', {
    Text = 'ESP Health Bars',
    Default = false,
    Tooltip = 'Creates visual health bar near the player'
})
Toggles.HealthBars:OnChanged(function()
    ESP.options.healthBars = Toggles.HealthBars.Value
end)
Visual:AddToggle('HealthText', {
    Text = 'ESP Health Text',
    Default = false,
    Tooltip = 'Creates visual text that displays the players health'
})
Toggles.HealthText:OnChanged(function()
    ESP.options.healthText = Toggles.HealthText.Value
end)
Visual:AddToggle('Distance', {
    Text = 'ESP Distance',
    Default = false,
    Tooltip = 'Creates visual text that displays the players distance'
})
Toggles.Distance:OnChanged(function()
    ESP.options.distance = Toggles.Distance.Value
end)
Visual:AddToggle('Tracers', {
    Text = 'ESP Tracers',
    Default = false,
    Tooltip = 'Creates visual lines that point to players'
})
Toggles.Tracers:OnChanged(function()
    ESP.options.tracers = Toggles.Tracers.Value
end)
Visual:AddToggle('Chams', {
    Text = 'ESP Chams',
    Default = false,
    Tooltip = 'Creates visual lines around the players'
})
Toggles.Chams:OnChanged(function()
    ESP.options.chams = Toggles.Chams.Value
end)

local Visual2 = Tabs.Visuals:AddRightGroupbox("Vision")

local fullBrightEnabled = false
local runService = game:GetService("RunService")


Visual2:AddToggle('FullBrightToggle', {
    Text = 'Toggle Fullbright',
    Default = false,
    Tooltip = 'Enable Or Disable Fullbright',
    Callback = function(Value)
        fullBrightEnabled = Value


        if fullBrightEnabled and not atmosphereDestroyed then
            local atmosphere = game:GetService("Lighting"):FindFirstChild("Atmosphere")
            if atmosphere then
                atmosphere:Destroy()
                atmosphereDestroyed = true
            end
        end
    end
})


runService.RenderStepped:Connect(function()
    if fullBrightEnabled then
        local lighting = game:GetService("Lighting")
        lighting.Brightness = 2
        lighting.ClockTime = 14
        lighting.FogEnd = 100000
        lighting.GlobalShadows = false
        lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
    end
end)

Visual2:AddSlider('FOVChanger', {
    Text = 'FOV Changer',
    Default = 70,
    Min = 1,
    Max = 120,
    Rounding = 0,
    Compact = false,

    Callback = function(Value)
        workspace.Camera.FieldOfView = Value
    end
})

Visual2:AddButton({
    Text = 'Unlimited Zoom',
    Func = function()
        game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 100000
    end,
    DoubleClick = false,
    Tooltip = 'Lets you zoom out forever.'
})



local Number = Options.FOVChanger.Value
Options.FOVChanger:OnChanged(function()
    workspace.Camera.FieldOfView = Options.FOVChanger.Value
end)


local Trees = Tabs.Visuals:AddRightGroupbox("Tree Stuff")

local TreesFolder = workspace:WaitForChild("Trees")

Trees:AddToggle('TreeCollisions', {
    Text = 'No Tree Collisions',
    Default = false,
    Tooltip = 'Enables And Disables Tree Collisions',
    Callback = function(Value)
        for _, tree in pairs(TreesFolder:GetDescendants()) do
            if tree.ClassName == "Part" or tree.ClassName == "MeshPart" then

                if tree.Name == "Part" or tree.Name == "GrassPart" then
                    tree.CanCollide = not Value
                end
            end


            if tree:IsA("MeshPart") and (tree.Name == "PineTreeTrunk" or tree.Name == "PineTreeLeaves") then
                tree.CanCollide = not Value
            end
        end
    end
})

Trees:AddToggle('TransparentTrees', {
    Text = 'Transparent Trees',
    Default = false,
    Tooltip = 'Enables And Disables Tree Transparency',
    Callback = function(Value)
        for _, tree in pairs(TreesFolder:GetDescendants()) do
            if (tree.ClassName == "Part" or tree.ClassName == "MeshPart") and
               (tree.Name == "Part" or tree.Name == "GrassPart" or
                tree.Name == "PineTreeTrunk" or tree.Name == "PineTreeLeaves") then
                tree.Transparency = Value and 1 or 0
            end
        end
    end
})




local Visual3 = Tabs.Visuals:AddLeftGroupbox("Weapon Visuals")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local RainbowGunEnabled = false
local TransparencyChangerEnabled = false
local GunTransparency = 0


local function getPlayerWeapons()
    local weapons = {}
    for _, weaponName in pairs(weaponsList) do
        local weapon = LocalPlayer.Backpack:FindFirstChild(weaponName) or LocalPlayer.Character:FindFirstChild(weaponName)
        if weapon then
            table.insert(weapons, weapon)
        end
    end
    return weapons
end


local function changeColorRainbow(weapon)
    local parts = weapon:GetDescendants()
    local hue = tick() % 6


    local r, g, b
    if hue < 1 then
        r, g, b = 1, hue, 0
    elseif hue < 2 then
        r, g, b = 2 - hue, 1, 0
    elseif hue < 3 then
        r, g, b = 0, 1, hue - 2
    elseif hue < 4 then
        r, g, b = 0, 4 - hue, 1
    elseif hue < 5 then
        r, g, b = hue - 4, 0, 1
    else
        r, g, b = 1, 0, 6 - hue
    end


    for _, part in pairs(parts) do
        if part:IsA("BasePart") then
            part.Color = Color3.new(r, g, b)
        end
    end
end


local function changeTransparency(weapon)
    local parts = weapon:GetDescendants()
    for _, part in pairs(parts) do
        if part:IsA("BasePart") then
            part.Transparency = GunTransparency
        end
    end
end


local function toggleRainbowGun(value)
    RainbowGunEnabled = value
    while RainbowGunEnabled do
        local weapons = getPlayerWeapons()
        for _, weapon in pairs(weapons) do
            changeColorRainbow(weapon)
            if TransparencyChangerEnabled then
                changeTransparency(weapon)
            end
        end
        wait(0.1)
    end
end

Visual3:AddToggle('RainbowGun', {
    Text = 'Rainbow Weapons',
    Default = false,
    Tooltip = 'Enables and Disables Rainbow Gun',
    Callback = function(Value)
        if Value then
            toggleRainbowGun(true)
        else
            RainbowGunEnabled = false
        end
    end
})

Visual3:AddToggle('TransparencyChanger', {
    Text = 'Transparency Changer',
    Default = false,
    Tooltip = 'Enables and Disables the Transparency Changer',
    Callback = function(Value)
        TransparencyChangerEnabled = Value
        local weapons = getPlayerWeapons()
        for _, weapon in pairs(weapons) do
            changeTransparency(weapon)
        end
    end
})

Visual3:AddSlider('GunTransNum', {
    Text = 'Weapon Transparency Slider',
    Default = 0,
    Min = 0,
    Max = 1,
    Rounding = 3,
    Compact = false,
    Callback = function(Value)
        GunTransparency = Value
        if TransparencyChangerEnabled then
            local weapons = getPlayerWeapons()
            for _, weapon in pairs(weapons) do
                changeTransparency(weapon)
            end
        end
    end
})




local TeleportTabs = Tabs.Teleports:AddLeftGroupbox('Teleport Exploits')
local TeleportTabs2 = Tabs.Teleports:AddRightGroupbox('Place Teleports')
local TeleportTabs4 = Tabs.Teleports:AddLeftGroupbox('Autobuy Gun')
local TeleportTabs3 = Tabs.Teleports:AddLeftGroupbox('Chest Grabbing')
TeleportTabs:AddInput('TeleportPlayer', {
    Default = '',
    Numeric = false,
    Finished = true,

    Text = 'Teleport To Player',
    Tooltip = 'Teleports to a player',

    Placeholder = '',


    Callback = function(ValueTP)
        local tool = game:GetService("ReplicatedStorage")["EXP Bolt Action Sniper"]
        local player = game:GetService("Players").LocalPlayer
        local backpack = player:FindFirstChild("Backpack")


        local targetUsername = Options.TeleportPlayer.Value


        local targetPlayer = game:GetService("Players"):FindFirstChild(targetUsername)
        local targetPlayerHRP = workspace.PPlayers[targetUsername].HumanoidRootPart


        local clonedTool = tool:Clone()
        clonedTool.Parent = backpack

        local handle = clonedTool:FindFirstChild("Handle")
        if handle then
            handle.CFrame = targetPlayerHRP.CFrame
        end


        player.Character.Humanoid:EquipTool(clonedTool)

        wait(0.3)
        player.Character.Humanoid:UnequipTools()
        wait(0.2)
        clonedTool:Destroy()
    end
})



local LocalPlayerName = Players.LocalPlayer.Name
local hhhrrpppp

TeleportTabs2:AddDropdown('MapTeleports', {
    Values = { '
    Default = 0,
    Multi = false,
    Text = 'Dustin Teleports',
    Tooltip = 'Teleports to areas in Dustin',
    Callback = function(Value)

    end
})


Options.MapTeleports:OnChanged(function()
    local hhhrrpppp = workspace.PPlayers[game:GetService("Players").LocalPlayer.Name].HumanoidRootPart

    if Options.MapTeleports.Value == 'Homeless Camp' then
        hhhrrpppp.CFrame = CFrame.new(-580.693054, 3.27999997, 164.283417, 0.068977952, 1.0056803e-07, 0.997618198, 3.26453864e-09, 1, -1.01033855e-07, -0.997618198, 1.02258717e-08, 0.068977952)
    elseif Options.MapTeleports.Value == 'The Store' then
        hhhrrpppp.CFrame = CFrame.new(-305.519745, 3.28001666, -577.713989, 0.000122000463, -2.90846209e-08, -1, -1.38464831e-08, 1, -2.90863102e-08, 1, 1.38500313e-08, 0.000122000463)
    elseif Options.MapTeleports.Value == 'Cargo' then
        hhhrrpppp.CFrame = CFrame.new(-681.529602, 3.08000493, -1223.7616, -0.0203233268, -2.56802735e-09, 0.99979347, -3.32072869e-10, 1, 2.56180765e-09, -0.99979347, -2.79939821e-10, -0.0203233268)
    elseif Options.MapTeleports.Value == 'Crane' then
        hhhrrpppp.CFrame = CFrame.new(-614.930359, 154.079956, -1494.01501, 0.0336253792, -1.00509148e-08, -0.999434531, -4.36374847e-08, 1, -1.15247589e-08, 0.999434531, 4.40003305e-08, 0.0336253792)
    elseif Options.MapTeleports.Value == 'Pit Stop Body Stop' then
        hhhrrpppp.CFrame = CFrame.new(-517.988647, 3.24999905, -680.747192, -0.999966323, 5.27419042e-09, -0.00821038801, 5.73816994e-09, 1, -5.64877034e-08, 0.00821038801, -5.65329117e-08, -0.999966323)
    elseif Options.MapTeleports.Value == 'Hospital' then
        hhhrrpppp.CFrame = CFrame.new(528.109314, 4.47999668, 144.847824, 0.0131165851, -9.64594946e-08, -0.99991399, 6.68117224e-08, 1, -9.55913748e-08, 0.99991399, -6.55521433e-08, 0.0131165851)
    elseif Options.MapTeleports.Value == 'Grave Yard' then
        hhhrrpppp.CFrame = CFrame.new(528.553406, 3.18543553, -189.363373, -0.0477843508, 2.92730036e-08, -0.998857677, -5.43072076e-08, 1, 3.19044844e-08, 0.998857677, 5.57697071e-08, -0.0477843508)
    elseif Options.MapTeleports.Value == 'Boxing' then
        hhhrrpppp.CFrame = CFrame.new(352.110199, 3.48000193, -80.6473694, -0.0502855033, -3.33666001e-08, -0.998734891, -4.43638655e-08, 1, -3.11751798e-08, 0.998734891, 4.27400799e-08, -0.0502855033)
    elseif Options.MapTeleports.Value == 'Hotel' then
        hhhrrpppp.CFrame = CFrame.new(-737.496521, 3.08000088, -181.985352, 0.0459585264, 6.49934577e-08, 0.998943329, 8.3182826e-08, 1, -6.88892072e-08, -0.998943329, 8.62609753e-08, 0.0459585264)
    elseif Options.MapTeleports.Value == 'Construction Site' then
        hhhrrpppp.CFrame = CFrame.new(523.364075, 3.28000116, -565.400269, -0.0220427215, -9.6856013e-08, -0.999757051, -1.17994068e-08, 1, -9.66194023e-08, 0.999757051, 9.66678559e-09, -0.0220427215)
    elseif Options.MapTeleports.Value == 'Storage Containers' then
        hhhrrpppp.CFrame = CFrame.new(190.340851, 3.27999926, -640.368286, -0.00219749473, 9.22030807e-08, 0.999997556, -2.0997275e-09, 1, -9.22079195e-08, -0.999997556, -2.30234898e-09, -0.00219749473)
    elseif Options.MapTeleports.Value == 'Apartments' then
        hhhrrpppp.CFrame = CFrame.new(313.312378, 3.299999, -243.610748, 0.00580964424, 7.23938669e-08, -0.999983132, 7.25068894e-09, 1, 7.243721e-08, 0.999983132, -7.67140129e-09, 0.00580964424)
    end
end)

TeleportTabs2:AddDropdown('MapTeleports2', {
    Values = { '
    Default = 0,
    Multi = false,
    Text = 'Austin Teleports',
    Tooltip = 'Teleports to areas in Austin',
    Callback = function(Value)

    end
})


Options.MapTeleports2:OnChanged(function()
    local hhhrrpppp = workspace.PPlayers[game:GetService("Players").LocalPlayer.Name].HumanoidRootPart

    if Options.MapTeleports2.Value == 'Grave Yard' then
        hhhrrpppp.CFrame = CFrame.new(-4015.60547, 3.48000193, -240.164505, -0.999548018, -4.73291522e-08, 0.0300630666, -5.04482429e-08, 1, -1.0299312e-07, -0.0300630666, -1.04463197e-07, -0.999548018)
    elseif Options.MapTeleports2.Value == 'Homes' then
        hhhrrpppp.CFrame = CFrame.new(-3993.91235, 3.69999623, -602.033325, 0.999652326, 5.61836e-09, 0.0263667516, -5.27345323e-09, 1, -1.31506672e-08, -0.0263667516, 1.30070514e-08, 0.999652326)
    elseif Options.MapTeleports2.Value == 'Baseball Field' then
        hhhrrpppp.CFrame = CFrame.new(-3532.12573, 3.48138046, -632.401978, 0.999791622, 5.67288545e-08, -0.020414073, -5.75836197e-08, 1, -4.12835739e-08, 0.020414073, 4.2450484e-08, 0.999791622)
    elseif Options.MapTeleports2.Value == 'Billboard' then
        hhhrrpppp.CFrame = CFrame.new(-3703.72705, 51.7813263, -940.565002, 0.999967098, -1.85505584e-08, 0.00811421964, 1.87352267e-08, 1, -2.26826931e-08, -0.00811421964, 2.28339694e-08, 0.999967098)
    elseif Options.MapTeleports2.Value == 'The Store' then
        hhhrrpppp.CFrame = CFrame.new(-3725.72266, 3.38016415, -1178.0083, 0.999987066, 9.54324335e-08, 0.00509028789, -9.56716733e-08, 1, 4.67554493e-08, -0.00509028789, -4.72418371e-08, 0.999987066)
    elseif Options.MapTeleports2.Value == 'Pizza Friday' then
        hhhrrpppp.CFrame = CFrame.new(-3588.03052, 3.30002666, -1188.64124, 0.999930859, -8.9023553e-09, -0.0117581291, 9.02241215e-09, 1, 1.01575051e-08, 0.0117581291, -1.02628892e-08, 0.999930859)
    elseif Options.MapTeleports2.Value == 'Apartments' then
        hhhrrpppp.CFrame = CFrame.new(-3860.67383, 3.69998336, -1133.33191, 0.0192082636, -5.03700335e-08, 0.999815524, -4.35374048e-08, 1, 5.12157605e-08, -0.999815524, -4.45131398e-08, 0.0192082636)
    elseif Options.MapTeleports2.Value == 'Bullet Holes' then
        hhhrrpppp.CFrame = CFrame.new(-3733.23096, 3.50493264, -773.881836, 0.0321812332, -7.44552064e-09, -0.999482036, -4.39130643e-09, 1, -7.59076979e-09, 0.999482036, 4.6333124e-09, 0.0321812332)
    elseif Options.MapTeleports2.Value == 'The Drip' then
        hhhrrpppp.CFrame = CFrame.new(-3737.19287, 3.59493279, -815.227722, 0.0354039297, -6.80258481e-08, -0.999373078, 4.37608811e-08, 1, -6.65182398e-08, 0.999373078, -4.13784385e-08, 0.0354039297)
    elseif Options.MapTeleports2.Value == 'Homeless Camp' then
        hhhrrpppp.CFrame = CFrame.new(-4029.65747, 3.48138046, -832.594421, -0.750778317, 6.57267165e-08, -0.66055429, 6.68269635e-08, 1, 2.35476278e-08, 0.66055429, -2.64637876e-08, -0.750778317)
    elseif Options.MapTeleports2.Value == 'Postal Office' then
        hhhrrpppp.CFrame = CFrame.new(-4406.93555, 3.2522881, -919.094849, -0.999785781, -6.67755273e-08, -0.020697983, -6.75266847e-08, 1, 3.55921195e-08, 0.020697983, 3.69821613e-08, -0.999785781)
    elseif Options.MapTeleports2.Value == 'Pharmacy' then
        hhhrrpppp.CFrame = CFrame.new(-4399.5791, 6.88295794, -1163.97168, 0.0252469517, -2.57924562e-08, 0.999681234, 4.62510457e-08, 1, 2.46326106e-08, -0.999681234, 4.56144065e-08, 0.0252469517)
    elseif Options.MapTeleports2.Value == 'Gas Station' then
        hhhrrpppp.CFrame = CFrame.new(-4233.52344, 4.13295937, -1123.21558, -0.999032497, 3.72744893e-08, 0.0439780504, 3.80050658e-08, 1, 1.57761662e-08, -0.0439780504, 1.74322903e-08, -0.999032497)
    elseif Options.MapTeleports2.Value == 'Diner' then
        hhhrrpppp.CFrame = CFrame.new(-4086.76611, 4.64998293, -1239.49146, -0.999999881, -1.01916697e-07, 0.000499512709, -1.01911432e-07, 1, 1.05559144e-08, -0.000499512709, 1.05050075e-08, -0.999999881)
    elseif Options.MapTeleports2.Value == 'The Church' then
        hhhrrpppp.CFrame = CFrame.new(-4102.0249, 5.50002241, -908.371887, -1, 3.38967148e-08, -3.0966504e-08, 3.38967148e-08, 1, -2.18548735e-08, 3.09665005e-08, -2.18548735e-08, -1)
    elseif Options.MapTeleports2.Value == 'Police Station' then
        hhhrrpppp.CFrame = CFrame.new(-3920.05884, 3.59999418, -918.702, 0.999655485, 5.64061297e-08, -0.0262490995, -5.28224319e-08, 1, 1.33120626e-08, 0.0262490995, -1.31727649e-08, 0.999655485)
    end
end)

TeleportTabs2:AddDropdown('MapTeleports3', {
    Values = { '
    Default = 0,
    Multi = false,
    Text = 'Misc Teleports',
    Tooltip = 'Teleports to Misc Areas',
    Callback = function(Value)

    end
})


Options.MapTeleports3:OnChanged(function(Value)
    local hhhrrpppp = workspace.PPlayers[game:GetService("Players").LocalPlayer.Name].HumanoidRootPart

    if Value == "ATM 1" then
        hhhrrpppp.CFrame = CFrame.new(-50.1947899, 3.27999163, -555.64563, 0.000441028969, -8.21139849e-08, 0.999999881, 5.98619536e-08, 1, 8.20875954e-08, -0.999999881, 5.98257444e-08, 0.000441028969)
    elseif Value == "ATM 2" then
        hhhrrpppp.CFrame = CFrame.new(-4206.19824, 4.13295937, -1122.13745, 0.997802317, 3.33666261e-10, -0.0662613213, -2.93117752e-10, 1, 6.21670382e-10, 0.0662613213, -6.00881789e-10, 0.997802317)
    elseif Value == "ATM 3" then
        hhhrrpppp.CFrame = CFrame.new(1327.39636, 166.27478, -773.880615, 0.999816835, -1.09641505e-08, -0.0191375967, 9.8627746e-09, 1, -5.76447547e-08, 0.0191375967, 5.74454511e-08, 0.999816835)
    elseif Value == "The Beach" then
        hhhrrpppp.CFrame = CFrame.new(-2340.06934, 10.110568, 1002.60565, -0.0028241633, -2.24935692e-09, 0.999996006, 1.75464684e-10, 1, 2.24986141e-09, -0.999996006, 1.81817963e-10, -0.0028241633)
    elseif Value == "The Bar" then
        hhhrrpppp.CFrame = CFrame.new(-2365.69067, 14.1332951, 1076.93555, -0.999999523, -1.09921112e-08, 0.00100602861, -1.09511555e-08, 1, 4.07153813e-08, -0.00100602861, 4.0704343e-08, -0.999999523)
    elseif Value == "The Sign Store" then
        hhhrrpppp.CFrame = CFrame.new(-2386.25, 10.3104153, 910.198486, 0.999987662, -5.42270087e-08, 0.00497258874, 5.41722152e-08, 1, 1.11538325e-08, -0.00497258874, -1.08843183e-08, 0.999987662)
    elseif Value == "The Temple" then
        hhhrrpppp.CFrame = CFrame.new(-2914.27979, 3.99999547, 1083.47119, 0.00635382812, 8.18624031e-08, 0.999979794, -9.17482197e-08, 1, -8.12810939e-08, -0.999979794, -9.12299214e-08, 0.00635382812)
    elseif Value == "The Pit Stop" then
        hhhrrpppp.CFrame = CFrame.new(1311.13879, 166.301987, -796.675476, 0.00969041698, 8.5002327e-08, 0.999953032, 3.29922649e-08, 1, -8.53260431e-08, -0.999953032, 3.38175603e-08, 0.00969041698)
    elseif Value == "Sector A" then
        hhhrrpppp.CFrame = CFrame.new(1416.10107, 24.799984, -427.7164, -0.994438291, 7.87778731e-08, 0.105320916, 8.20934218e-08, 1, 2.71452958e-08, -0.105320916, 3.56404755e-08, -0.994438291)
    elseif Value == "Acid Mines" then
        hhhrrpppp.CFrame = CFrame.new(1953.50769, 204.599792, 1355.83594, 0.999551892, -2.00485601e-08, 0.0299325809, 2.30080133e-08, 1, -9.85262361e-08, -0.0299325809, 9.91707765e-08, 0.999551892)
    elseif Value == "Pickaxe Mines" then
        hhhrrpppp.CFrame = CFrame.new(1297.77185, 8.99985313, 1695.76782, 0.99994576, 2.9460332e-09, -0.0104155699, -1.90195726e-09, 1, 1.00251732e-07, 0.0104155699, -1.00226487e-07, 0.99994576)
    elseif Value == "Large Mines" then
        hhhrrpppp.CFrame = CFrame.new(-1673.57263, 6.10952616, 2900.42578, -0.0133579364, -1.29875251e-11, 0.999910772, -7.00635827e-10, 1, 3.62879973e-12, -0.999910772, -7.0052486e-10, -0.0133579364)
    elseif Value == "Boxitts guns n ammo" then
        hhhrrpppp.CFrame = CFrame.new(-740.552551, 7.70639324, 2184.61963, -0.0339677185, -6.88027555e-08, -0.999422908, 7.83165248e-08, 1, -7.15042532e-08, 0.999422908, -8.07001612e-08, -0.0339677185)
    elseif Value == "Storm Shelter Home" then
        hhhrrpppp.CFrame = CFrame.new(-783.011597, 5.30000782, 2832.55444, 0.982119203, -1.10602505e-08, -0.188259989, 3.51524454e-09, 1, -4.04114573e-08, 0.188259989, 3.90270891e-08, 0.982119203)
    elseif Value == "Rich Home" then
        hhhrrpppp.CFrame = CFrame.new(-1212.24597, 11.6523333, 2766.62305, 0.950038075, 7.63867263e-08, -0.312134117, -5.68023992e-08, 1, 7.18354229e-08, 0.312134117, -5.05164159e-08, 0.950038075)
    elseif Value == "Escaped Convicts Home" then
        hhhrrpppp.CFrame = CFrame.new(-1902.78357, 5.30000973, 2539.41797, -0.915974379, -3.74718425e-08, 0.401236802, -4.881867e-08, 1, -1.80561948e-08, -0.401236802, -3.65554844e-08, -0.915974379)
    elseif Value == "Homeless Peoples Home" then
        hhhrrpppp.CFrame = CFrame.new(-1860.5083, 6.30000734, 2025.72217, -0.984663129, 4.03946215e-08, 0.174573645, -3.69427992e-08, 1, -6.2279055e-08, -0.174573645, -6.048973e-08, -0.984663129)
    elseif Value == "Broken Down Home" then
        hhhrrpppp.CFrame = CFrame.new(-1041.78003, 3.3999958, 2367.21387, -0.996126473, 1.81984818e-08, -0.0878655314, -1.61739158e-08, 1, 4.07354651e-08, 0.0878655314, 3.92110249e-08, -0.996126473)
    end
end)

TeleportTabs2:AddDropdown('MapTeleports4', {
    Values = { '
    Default = 0,
    Multi = false,
    Text = 'Weapon Teleports',
    Tooltip = 'Teleports to Weapons Areas',
    Callback = function(Value)

    end
})


Options.MapTeleports4:OnChanged(function(Value)
    local hhhrrpppp = workspace.PPlayers[game:GetService("Players").LocalPlayer.Name].HumanoidRootPart

    if Value == 'Sledgehammer 1' then
        hhhrrpppp.CFrame = CFrame.new(639.741882, 3.2800014, -608.223755, 0.924167752, -5.99493859e-08, -0.381986886, 1.83114466e-08, 1, -1.1263878e-07, 0.381986886, 9.71023937e-08, 0.924167752)
    elseif Value == 'Baseball Bat 1' then
        hhhrrpppp.CFrame = CFrame.new(166.428772, 3.43999887, -553.749939, -0.999992311, 8.39676419e-12, 0.00392762013, 6.2958673e-11, 1, 1.3891726e-08, -0.00392762013, 1.38918663e-08, -0.999992311)
    elseif Value == 'Baseball Bat 2' then
        hhhrrpppp.CFrame = CFrame.new(-726.95697, 3.83000088, 323.484833, 0.996851265, -2.03766426e-08, 0.0792941898, 1.55999942e-08, 1, 6.08590582e-08, -0.0792941898, -5.9430441e-08, 0.996851265)
    elseif Value == 'Crowbar 1' then
        hhhrrpppp.CFrame = CFrame.new(-222.872223, 3.28000069, -617.711426, -0.9999125, 8.02624029e-08, 0.0132281538, 8.02899649e-08, 1, 1.55252067e-09, -0.0132281538, 2.61447286e-09, -0.9999125)
    elseif Value == 'Pipe 1' then
        hhhrrpppp.CFrame = CFrame.new(-295.115112, 3.28000069, -618.423157, -0.997219384, -1.82887927e-08, 0.0745221078, -1.58890039e-08, 1, 3.27952314e-08, -0.0745221078, 3.15199564e-08, -0.997219384)
    elseif Value == 'Pipe 2' then
        hhhrrpppp.CFrame = CFrame.new(-687.244629, 3.83000088, 197.328598, -0.0216114484, 3.55518281e-09, 0.999766469, 2.88625781e-08, 1, -2.93210545e-09, -0.999766469, 2.87924706e-08, -0.0216114484)
    end
end)


local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer


local function buyGun(gunName, position, clickPath)
    local humanoidRootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then return end


    local previousCFrame = humanoidRootPart.CFrame


    humanoidRootPart.CFrame = CFrame.new(position)

    wait(0.5)


    local clickDetector = clickPath and clickPath:FindFirstChild("ClickDetector")
    if clickDetector then
        fireclickdetector(clickDetector)
    end

    wait(0.5)


    humanoidRootPart.CFrame = previousCFrame
end


TeleportTabs4:AddDropdown('AutoBuyGUN', {
    Values = {
        '
        'Plinking Pistol 300$',
        'Hunting Shotgun 325$',
        'BIG MAC 392$',
        'Sawn-Off Suppressed 394$',
        'Sawn-Off 394$',
        'Shotgun 412$',
        'Pistol 445$',
        'Pistol Suppressed 445$',
        'Micro Sten 498$',
        'Duty Pistol 533$',
        'Duty Pistol Suppressed 533$',
        'Revolver 602$',
        'SMG 693$',
        'Mini Ranch Rifle 728$',
        'Heavy Revolver 823$',
        'Heavy Pistol 890$',
        'Gun Box 1984$'
    },
    Default = 0,
    Multi = false,
    Text = 'Autobuy Gun',
    Tooltip = 'Teleports to the wanted gun',
    Callback = function(Value)
        if Value == 'Plinking Pistol 300$' then
            buyGun("Plinking Pistol", Vector3.new(-748.918884, 7.70639181, 2184.38623), workspace.Buildings.Purchaseables["Plinking Pistol"])
        elseif Value == 'Hunting Shotgun 325$' then
            buyGun("Hunting Shotgun", Vector3.new(-770.337402, 7.70639229, 2184.00391), workspace.Buildings.Purchaseables["Hunting Shotgun"])
        elseif Value == 'BIG MAC 392$' then
            buyGun("BIG MAC", Vector3.new(-721.849731, 9.24939251, 2149.01172), workspace.Buildings.Purchaseables["BIG MAC"])
        elseif Value == 'Sawn-Off Suppressed 394$' then
            buyGun("Sawn-Off Supp", Vector3.new(-735.449585, 9.19765091, 2147.82666), workspace.Buildings.Purchaseables["Sawn-Off Supp"])
        elseif Value == 'Sawn-Off 394$' then
            buyGun("Sawn-Off", Vector3.new(-721.849731, 9.24939251, 2149.01172), workspace.Buildings.Purchaseables["Sawn-Off"])
        elseif Value == 'Shotgun 412$' then
            buyGun("Shotgun", Vector3.new(-735.449585, 9.19765091, 2147.82666), workspace.Buildings.Purchaseables.Shotgun)
        elseif Value == 'Pistol 445$' then
            buyGun("Pistol", Vector3.new(-730.124695, 7.70639324, 2163.89844), workspace.Buildings.Purchaseables.Pistol)
        elseif Value == 'Pistol Suppressed 445$' then
            buyGun("Pistol Supp", Vector3.new(-730.124695, 7.70639324, 2163.89844), workspace.Buildings.Purchaseables["Pistol Supp"])
        elseif Value == 'Micro Sten 498$' then
            buyGun("Micro Sten", Vector3.new(-3721.81128, 3.50493336, -770.072632), workspace.Buildings.Purchaseables["Micro Sten"])
        elseif Value == 'Duty Pistol 533$' then
            buyGun("Duty Pistol", Vector3.new(-730.124695, 7.70639324, 2163.89844), workspace.Buildings.Purchaseables["Duty Pistol"])
        elseif Value == 'Duty Pistol Suppressed 533$' then
            buyGun("Duty Pistol Supp", Vector3.new(-730.124695, 7.70639324, 2163.89844), workspace.Buildings.Purchaseables["Duty Pistol Supp"])
        elseif Value == 'Revolver 602$' then
            buyGun("Revolver", Vector3.new(-738.065857, 7.70639229, 2184.76978), workspace.Buildings.Purchaseables.Revolver)
        elseif Value == 'SMG 693$' then
            buyGun("SMG", Vector3.new(-721.849731, 9.24939251, 2149.01172), workspace.Buildings.Purchaseables.SMG)
        elseif Value == 'Mini Ranch Rifle 728$' then
            buyGun("Ranch Rifle", Vector3.new(-738.065857, 7.70639229, 2184.76978), workspace.Buildings.Purchaseables["Ranch Rifle"])
        elseif Value == 'Heavy Revolver 823$' then
            buyGun("Heavy Revolver", Vector3.new(-717.644531, 7.70639324, 2163.92041), workspace.Buildings.Purchaseables["Heavy Revolver"])
        elseif Value == 'Heavy Pistol 890$' then
            buyGun("Heavy Pistol", Vector3.new(-748.918884, 7.70639181, 2184.38623), workspace.Buildings.Purchaseables["Heavy Pistol"])
        elseif Value == 'Gun Box 1984$' then
            buyGun("Gun Box", Vector3.new(-761.102234, 7.70639277, 2160.94385), workspace.Buildings.Gunstore.general.Shell)
        end
    end
})


local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer


local function grabChests()

    local humanoidRootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then return end
    local previousPosition = humanoidRootPart.Position


    local function teleportAndCollect(chest)
        local handle = chest:FindFirstChild("Handle") or chest:FindFirstChild("Part")
        local clickDetector = chest:FindFirstChild("ClickDetector")

        if handle and clickDetector then
            humanoidRootPart.CFrame = handle.CFrame
            wait(0.5)
            fireclickdetector(clickDetector)
            wait(0.5)
        end
    end


    local function findChestsInParent(parent)
        for _, item in pairs(parent:GetChildren()) do
            if item:IsA("Model") and (item.Name == "Chest" or item.Name == "Chest(Small)") then
                teleportAndCollect(item)
            end

            if item:IsA("Folder") then
                findChestsInParent(item)
            end
        end
    end


    findChestsInParent(workspace)


    local buildingsFolder = workspace:FindFirstChild("Buildings")
    if buildingsFolder then

        findChestsInParent(buildingsFolder)
    end


    local specificChestPath = workspace.Buildings:FindFirstChild("Chest")
    if specificChestPath and specificChestPath:IsA("Model") then
        teleportAndCollect(specificChestPath)
    end


    humanoidRootPart.CFrame = CFrame.new(previousPosition)
end


TeleportTabs3:AddButton('Grab all chests', function()
    grabChests()
end)

local MoneyTab = Tabs.Money:AddLeftGroupbox('AutoFarm')



local ThreatButton = MoneyTab:AddButton({
    Text = 'Get Threat',
    Func = function()
        local player = game:GetService("Players").LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        local originalCFrame = humanoidRootPart.CFrame
        local pedestriansFolder = workspace:WaitForChild("Pedestrians")
        local threatStat = player.leaderstats:WaitForChild("Threat")
        local teleportOffset = Vector3.new(0, -4, 0)
        local validNPCNames = {"BatonCopM", "BatonCopF", "GunCopM", "GunCopF"}
        local specificPaths = {64}

        _G.GetThreatNoclip = true


        task.spawn(function()
            while _G.GetThreatNoclip do
                disableCollision()
                wait(0.1)
            end
        end)


        local function teleportUnderNPC(npc)
            local startTime = tick()
            while tick() - startTime < 4.5 and threatStat.Value < 805 do
                if npc and npc:FindFirstChild("HumanoidRootPart") then
                    character:SetPrimaryPartCFrame(npc.HumanoidRootPart.CFrame * CFrame.new(teleportOffset))
                else
                    break
                end
                wait(0.02)
            end
        end


        local function handleNPCTeleports()
            for _, npc in ipairs(pedestriansFolder:GetChildren()) do
                if table.find(validNPCNames, npc.Name) and npc:IsA("Model") and npc:FindFirstChild("HumanoidRootPart") then
                    teleportUnderNPC(npc)
                end
                if threatStat.Value >= 805 then
                    break
                end
            end

            for _, pathIndex in ipairs(specificPaths) do
                local npc = pedestriansFolder:GetChildren()[pathIndex]
                if npc and npc:FindFirstChild("HumanoidRootPart") then
                    teleportUnderNPC(npc)
                end
                if threatStat.Value >= 805 then
                    break
                end
            end
        end


        while threatStat.Value < 805 do
            handleNPCTeleports()
            wait(0.1)
        end


        _G.GetThreatNoclip = false
        teleportBackToOriginalPosition(originalCFrame)
    end,
    DoubleClick = false,
    Tooltip = 'Gets 800 Threat For Autofarm'
})
local PunchButton = MoneyTab:AddButton({
    Text = 'Punch For Threat',
    Func = function()
        local player = game:GetService("Players").LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        local pedestriansFolder = workspace:WaitForChild("Pedestrians")
        local damageRemote = player.Character.Fists.Damage.InflictTarget
        local damageAmount = 49
        local radius = 350


        local function damageNearbyNPCs()
            for _, npc in ipairs(pedestriansFolder:GetChildren()) do
                if npc:FindFirstChild("Humanoid") and npc:FindFirstChild("HumanoidRootPart") then
                    local distance = (npc.HumanoidRootPart.Position - humanoidRootPart.Position).Magnitude
                    if distance <= radius then
                        local args = {
                            [1] = npc.Humanoid,
                            [2] = damageAmount,
                            [3] = npc:FindFirstChild("Torso") or npc:FindFirstChild("HumanoidRootPart")
                        }
                        damageRemote:FireServer(unpack(args))
                    end
                end
            end
        end

        while true do
            damageNearbyNPCs()
            wait(0.05)
        end
    end,
    DoubleClick = false,
    Tooltip = 'Helps Get 800 Threat For Autofarm'
})
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local player = game:GetService("Players").LocalPlayer
local humanoidRootPart = workspace.PPlayers:WaitForChild(player.Name):WaitForChild("HumanoidRootPart")

local isTeleporting = false

local function tweenToCFrame(targetCFrame, duration)
    local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
    local tween = TweenService:Create(humanoidRootPart, tweenInfo, {CFrame = targetCFrame})
    tween:Play()
    tween.Completed:Wait()
end

local function teleportToFirstLocation()
    tweenToCFrame(CFrame.new(-2364.82642, 14.1335316, 1076.78125) * CFrame.Angles(math.rad(180), math.rad(0.19599999487400055), math.rad(180)), 0.5)
    wait(3.25)
end

local function teleportToSecondLocation()
    tweenToCFrame(CFrame.new(-2385.32983, 10.3104153, 882.913391) * CFrame.Angles(math.rad(0), math.rad(-1.5110000371932983), math.rad(0)), 0.5)
    wait(2.6)
end

local function teleportToThirdLocation()
    tweenToCFrame(CFrame.new(-2228.16455, 3.09006619, 974.424316) * CFrame.Angles(math.rad(180), math.rad(-90), math.rad(180)), 0.5)
    wait(5)
end

local function teleportLoop()
    while isTeleporting do
        teleportToFirstLocation()
        teleportToSecondLocation()
        teleportToThirdLocation()
        wait(0.05)
    end
end


MoneyTab:AddToggle('TeleportToggle', {
    Text = 'Rob Registers (MAIN THING)',
    Default = false,
    Tooltip = 'Enable or disable teleportation loop',
    Callback = function(Value)
        isTeleporting = Value
        if isTeleporting then
            task.spawn(teleportLoop)
        end
    end
})

local Money3 = Tabs.Money:AddRightGroupbox('Postal Autofarm')

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local rightArm = character:WaitForChild("Right Arm")
local rootPart = character:WaitForChild("HumanoidRootPart")
local TweenService = game:GetService("TweenService")

local autofarmEnabled = false



Money3:AddToggle('PostalAutoFarm', {
    Text = 'Toggle Autofarm',
    Default = false,
    Tooltip = 'Enables And Disables Postal Autofarm',
    Callback = function(Value)
        autofarmEnabled = Value
        if autofarmEnabled then
            startAutoFarm()
        end
    end
})







function resizeLocations()
    local deliveryLocs = workspace.Buildings.DeliveryLocs.Long
    for _, number in ipairs({"1", "2", "3", "4", "6", "7"}) do
        local part = deliveryLocs:FindFirstChild(number)
        if part then
            part.Size = Vector3.new(10, 10, 10)
        end
    end
end

function tweenTo(targetPosition)
    local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
    local tween = TweenService:Create(rootPart, tweenInfo, {CFrame = targetPosition})
    tween:Play()
    tween.Completed:Wait()
end

function jump()
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end

function startAutoFarm()
    while autofarmEnabled do

        jump()
        wait(1)


        local initialLocation = CFrame.new(-4467.81348, 3.25235748, -895.739807)
        tweenTo(initialLocation)
        wait(0.55)

        local clickDetector = workspace.Buildings:GetChildren()[113].Model:GetChildren()[14].DeliveryJob:FindFirstChild("ClickDetector")
        if clickDetector then
            fireclickdetector(clickDetector)
            wait(0.5)
        end


        local deliveryBox = LocalPlayer.Backpack:FindFirstChild("Delivery Box")
        if deliveryBox and deliveryBox:IsA("Tool") then
            character.Humanoid:EquipTool(deliveryBox)
            wait(0.5)
        end


        resizeLocations()


        local destinations = {
            workspace.Buildings.DeliveryLocs.Long["1"],
            workspace.Buildings.DeliveryLocs.Long["2"],
            workspace.Buildings.DeliveryLocs.Long["3"],
            workspace.Buildings.DeliveryLocs.Long["4"],
            workspace.Buildings.DeliveryLocs.Long["6"],
            workspace.Buildings.DeliveryLocs.Long["7"]
        }


        tweenTo(destinations[1].CFrame)
        wait(0.55)


        for i = 2, #destinations do
            if i == 5 then

                tweenTo(destinations[i].CFrame - Vector3.new(0, 2, 0))
            else
                tweenTo(destinations[i].CFrame)
            end
            wait(0.55)
        end
    end
end


coroutine.wrap(function()
    while true do
        if autofarmEnabled then
            jump()
        end
        wait(1)
    end
end)()


































































































































local GodCarButton = Tabs.Main:AddRightGroupbox('Car Exploits'):AddButton({
    Text = 'Semi God Car',
    Func = function()

        local carsFolder = workspace.cars


        local function deleteSpecifiedScriptsAndModelsInAllCars()

            local namesToDelete = { "Damage", "PartHealth", "Script", "EngineDamage", "CarManager", "DmgType", "RunoverDamage", "TouchInterest", "Exploded" }


            for _, car in ipairs(carsFolder:GetChildren()) do

                for _, part in ipairs(car:GetDescendants()) do

                    if part:IsA("Script") or part:IsA("Model") and part.Name == "PartDmg" or table.find(namesToDelete, part.Name) then

                        part:Destroy()
                    end
                end
            end
        end


        deleteSpecifiedScriptsAndModelsInAllCars()

    end,
    DoubleClick = false,
    Tooltip = 'Makes Car Mostly Invincible'
})



local keybindsEnabled = true

local ToggleGroupBox = Tabs.Main:AddLeftGroupbox('Toggle Keybinds')
ToggleGroupBox:AddToggle('CarToggleKeyBind', {
    Text = 'Toggle Car Keybinds',
    Default = true,
    Tooltip = 'Toggles Car Keybinds',
    Callback = function(Value)
        keybindsEnabled = Value


        if not keybindsEnabled then
            isKeyPressed = false
            isDecelKeyPressed = false
        end
    end
})


local BoostGroupBox = Tabs.Main:AddLeftGroupbox('Boost Controls')

BoostGroupBox:AddSlider('BoostNum', {
    Text = 'Boost Speed',
    Default = 5,
    Min = 0,
    Max = 50,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        BoostSpeed = Value
    end
})

BoostGroupBox:AddLabel('Keybind'):AddKeyPicker('CarBooster', {
    Default = 'W',
    SyncToggleState = false,
    Mode = 'Hold',
    Text = 'Car Boost',
    NoUI = false,
    ChangedCallback = function(New)
        selectedKeybind = New
    end
})


local DecelGroupBox = Tabs.Main:AddLeftGroupbox('Deceleration Controls')
DecelGroupBox:AddSlider('DecelNum', {
    Text = 'Deceleration Speed',
    Default = 5,
    Min = 0,
    Max = 350,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        DecelSpeed = Value
    end
})

DecelGroupBox:AddLabel('Keybind'):AddKeyPicker('CarDecelerator', {
    Default = 'S',
    SyncToggleState = false,
    Mode = 'Hold',
    Text = 'Car Decelerate',
    NoUI = false,
    ChangedCallback = function(New)
        selectedDecelKeybind = New
    end
})


local function boostCar()
    while isKeyPressed do
        for _, v in pairs(workspace.cars:GetChildren()) do
            if tostring(v.Owner.Value) == lcpn then
                v.Body.Hitbox.Velocity += v.Body.Hitbox.CFrame.LookVector * Vector3.new(BoostSpeed, 0, BoostSpeed) - Vector3.new(0, 1, 0)
            end
        end
        wait()
    end
end


local function decelerateCar()
    while isDecelKeyPressed do
        for _, v in pairs(workspace.cars:GetChildren()) do
            if tostring(v.Owner.Value) == lcpn then
                local currentVelocity = v.Body.Hitbox.Velocity
                local decelerationVector = currentVelocity.Unit * math.min(currentVelocity.Magnitude, DecelSpeed * 10)
                v.Body.Hitbox.Velocity -= decelerationVector
            end
        end
        wait()
    end
end


uis.InputBegan:Connect(function(input)
    if keybindsEnabled then
        if input.KeyCode == selectedKeybind and not isKeyPressed then
            isKeyPressed = true
            boostCar()
        elseif input.KeyCode == selectedDecelKeybind and not isDecelKeyPressed then
            isDecelKeyPressed = true
            decelerateCar()
        end
    end
end)

uis.InputEnded:Connect(function(input)
    if keybindsEnabled then
        if input.KeyCode == selectedKeybind and isKeyPressed then
            isKeyPressed = false
        elseif input.KeyCode == selectedDecelKeybind and isDecelKeyPressed then
            isDecelKeyPressed = false
        end
    end
end)







local MiscScripts = Tabs.Misc:AddLeftGroupbox('Side Scripts')

local IYButton = MiscScripts:AddButton({
    Text = 'Infinite Yield',
    Func = function()

        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()

    end,
    DoubleClick = false,
    Tooltip = 'Loads Infinite Yield'
})
local AimbotLoader = MiscScripts:AddButton({
    Text = 'Aimbot',
    Func = function()

        loadstring(game:HttpGet('https://raw.githubusercontent.com/bleh2rich/ATN/refs/heads/main/aimbot.lua'))()

    end,
    DoubleClick = false,
    Tooltip = 'Loads A Aimbot'
})





local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'RightShift', NoUI = true, Text = 'Menu keybind' })

Library.ToggleKeybind = Options.MenuKeybind


ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)


ThemeManager:SetFolder('WattyhubATN')
SaveManager:SetFolder('Wattyhub/ATN')


SaveManager:BuildConfigSection(Tabs['UI Settings'])


ThemeManager:ApplyToTab(Tabs['UI Settings'])
















local StarterGui = game:GetService("StarterGui")

StarterGui:SetCore("SendNotification", {
    Title = "Wattyhub ATN",
    Text = "RUNNING WATTYHUB ATN VERSION V1.0",
    Duration = 10,
    Button1 = "thank you master uwu"
})
