local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ForgottenIslandGUI"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game.CoreGui

local LoadingFrame = Instance.new("Frame")
LoadingFrame.Name = "LoadingFrame"
LoadingFrame.Size = UDim2.new(0.3, 0, 0.1, 0)
LoadingFrame.Position = UDim2.new(0.35, 0, 0.45, 0)
LoadingFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
LoadingFrame.BackgroundTransparency = 0.2
LoadingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
LoadingFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0.1, 0)
UICorner.Parent = LoadingFrame

local LoadingText = Instance.new("TextLabel")
LoadingText.Name = "LoadingText"
LoadingText.Size = UDim2.new(0.8, 0, 0.4, 0)
LoadingText.Position = UDim2.new(0.1, 0, 0.1, 0)
LoadingText.BackgroundTransparency = 1
LoadingText.Text = "Loading DeltaScripts..."
LoadingText.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadingText.Font = Enum.Font.GothamBold
LoadingText.TextSize = 18
LoadingText.Parent = LoadingFrame

local ProgressBar = Instance.new("Frame")
ProgressBar.Name = "ProgressBar"
ProgressBar.Size = UDim2.new(0.8, 0, 0.2, 0)
ProgressBar.Position = UDim2.new(0.1, 0, 0.6, 0)
ProgressBar.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
ProgressBar.BorderSizePixel = 0
ProgressBar.Parent = LoadingFrame

local ProgressFill = Instance.new("Frame")
ProgressFill.Name = "ProgressFill"
ProgressFill.Size = UDim2.new(0, 0, 1, 0)
ProgressFill.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
ProgressFill.BorderSizePixel = 0
ProgressFill.Parent = ProgressBar

local UICorner2 = Instance.new("UICorner")
UICorner2.CornerRadius = UDim.new(0.5, 0)
UICorner2.Parent = ProgressBar

local PercentText = Instance.new("TextLabel")
PercentText.Name = "PercentText"
PercentText.Size = UDim2.new(0.8, 0, 0.3, 0)
PercentText.Position = UDim2.new(0.1, 0, 0.8, 0)
PercentText.BackgroundTransparency = 1
PercentText.Text = "0%"
PercentText.TextColor3 = Color3.fromRGB(200, 200, 200)
PercentText.Font = Enum.Font.Gotham
PercentText.TextSize = 14
PercentText.Parent = LoadingFrame

for i = 1, 100 do
    ProgressFill.Size = UDim2.new(i/100, 0, 1, 0)
    PercentText.Text = i.."%"
    wait(0.03)
end

wait(0.5)
LoadingFrame:Destroy()

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0.25, 0, 0.4, 0)
MainFrame.Position = UDim2.new(0.05, 0, 0.3, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
MainFrame.BackgroundTransparency = 0.2
MainFrame.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0.05, 0)
MainCorner.Parent = MainFrame

local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Size = UDim2.new(0.8, 0, 0.1, 0)
Title.Position = UDim2.new(0.1, 0, 0.05, 0)
Title.BackgroundTransparency = 1
Title.Text = "by w1z4er"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 16
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = MainFrame

local AvatarFrame = Instance.new("Frame")
AvatarFrame.Name = "AvatarFrame"
AvatarFrame.Size = UDim2.new(0.1, 0, 0.1, 0)
AvatarFrame.Position = UDim2.new(0.8, 0, 0.05, 0)
AvatarFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AvatarFrame.Parent = MainFrame

local AvatarCorner = Instance.new("UICorner")
AvatarCorner.CornerRadius = UDim.new(0.5, 0)
AvatarCorner.Parent = AvatarFrame

local PlayerName = Instance.new("TextLabel")
PlayerName.Name = "PlayerName"
PlayerName.Size = UDim2.new(0.8, 0, 0.05, 0)
PlayerName.Position = UDim2.new(0.1, 0, 0.9, 0)
PlayerName.BackgroundTransparency = 1
PlayerName.Text = LocalPlayer.Name
PlayerName.TextColor3 = Color3.fromRGB(200, 200, 200)
PlayerName.Font = Enum.Font.Gotham
PlayerName.TextSize = 12
PlayerName.TextXAlignment = Enum.TextXAlignment.Left
PlayerName.Parent = MainFrame

local ButtonNames = {"Main", "Troll", "About Script"}
local Buttons = {}

for i, name in ipairs(ButtonNames) do
    local Button = Instance.new("TextButton")
    Button.Name = name
    Button.Size = UDim2.new(0.8, 0, 0.1, 0)
    Button.Position = UDim2.new(0.1, 0, 0.2 + (i-1)*0.12, 0)
    Button.BackgroundColor3 = i == 1 and Color3.fromRGB(0, 100, 200) or Color3.fromRGB(60, 60, 70)
    Button.Text = name
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.Font = Enum.Font.GothamBold
    Button.TextSize = 14
    Button.Parent = MainFrame
    
    local ButtonCorner = Instance.new("UICorner")
    ButtonCorner.CornerRadius = UDim.new(0.2, 0)
    ButtonCorner.Parent = Button
    
    table.insert(Buttons, Button)
end

local MainContent = Instance.new("Frame")
MainContent.Name = "MainContent"
MainContent.Size = UDim2.new(0.6, 0, 0.6, 0)
MainContent.Position = UDim2.new(0.3, 0, 0.2, 0)
MainContent.BackgroundTransparency = 1
MainContent.Parent = MainFrame

local HitboxButton = Instance.new("TextButton")
HitboxButton.Name = "HitboxButton"
HitboxButton.Size = UDim2.new(0.9, 0, 0.3, 0)
HitboxButton.Position = UDim2.new(0.05, 0, 0.1, 0)
HitboxButton.BackgroundColor3 = Color3.fromRGB(70, 70, 80)
HitboxButton.Text = "Hitbox Change"
HitboxButton.TextColor3 = Color3.fromRGB(255, 255, 255)
HitboxButton.Font = Enum.Font.GothamBold
HitboxButton.TextSize = 14
HitboxButton.Parent = MainContent

local HitboxCorner = Instance.new("UICorner")
HitboxCorner.CornerRadius = UDim.new(0.2, 0)
HitboxCorner.Parent = HitboxButton

local ScaryButton = Instance.new("TextButton")
ScaryButton.Name = "ScaryButton"
ScaryButton.Size = UDim2.new(0.9, 0, 0.3, 0)
ScaryButton.Position = UDim2.new(0.05, 0, 0.5, 0)
ScaryButton.BackgroundColor3 = Color3.fromRGB(70, 70, 80)
ScaryButton.Text = "Scary PNG"
ScaryButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ScaryButton.Font = Enum.Font.GothamBold
ScaryButton.TextSize = 14
ScaryButton.Parent = MainContent

local ScaryCorner = Instance.new("UICorner")
ScaryCorner.CornerRadius = UDim.new(0.2, 0)
ScaryCorner.Parent = ScaryButton

local TrollContent = Instance.new("Frame")
TrollContent.Name = "TrollContent"
TrollContent.Size = UDim2.new(0.6, 0, 0.6, 0)
TrollContent.Position = UDim2.new(0.3, 0, 0.2, 0)
TrollContent.BackgroundTransparency = 1
TrollContent.Visible = false
TrollContent.Parent = MainFrame

local FlingPlayerButton = Instance.new("TextButton")
FlingPlayerButton.Name = "FlingPlayerButton"
FlingPlayerButton.Size = UDim2.new(0.9, 0, 0.3, 0)
FlingPlayerButton.Position = UDim2.new(0.05, 0, 0.1, 0)
FlingPlayerButton.BackgroundColor3 = Color3.fromRGB(70, 70, 80)
FlingPlayerButton.Text = "Fling Player"
FlingPlayerButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FlingPlayerButton.Font = Enum.Font.GothamBold
FlingPlayerButton.TextSize = 14
FlingPlayerButton.Parent = TrollContent

local FlingAllButton = Instance.new("TextButton")
FlingAllButton.Name = "FlingAllButton"
FlingAllButton.Size = UDim2.new(0.9, 0, 0.3, 0)
FlingAllButton.Position = UDim2.new(0.05, 0, 0.5, 0)
FlingAllButton.BackgroundColor3 = Color3.fromRGB(70, 70, 80)
FlingAllButton.Text = "Fling All"
FlingAllButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FlingAllButton.Font = Enum.Font.GothamBold
FlingAllButton.TextSize = 14
FlingAllButton.Parent = TrollContent

local AboutContent = Instance.new("Frame")
AboutContent.Name = "AboutContent"
AboutContent.Size = UDim2.new(0.6, 0, 0.6, 0)
AboutContent.Position = UDim2.new(0.3, 0, 0.2, 0)
AboutContent.BackgroundTransparency = 1
AboutContent.Visible = false
AboutContent.Parent = MainFrame

local AboutText = Instance.new("TextLabel")
AboutText.Name = "AboutText"
AboutText.Size = UDim2.new(0.9, 0, 0.9, 0)
AboutText.Position = UDim2.new(0.05, 0, 0.05, 0)
AboutText.BackgroundTransparency = 1
AboutText.Text = "мой тг- @w1z4er\nspecial thanks---> @sasha_chelik3 and @Pipiskkin228"
AboutText.TextColor3 = Color3.fromRGB(255, 255, 255)
AboutText.Font = Enum.Font.Gotham
AboutText.TextSize = 14
AboutText.TextXAlignment = Enum.TextXAlignment.Left
AboutText.TextYAlignment = Enum.TextYAlignment.Top
AboutText.Parent = AboutContent

for i, button in ipairs(Buttons) do
    button.MouseButton1Click:Connect(function()
        for _, btn in ipairs(Buttons) do
            btn.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
        end
        button.BackgroundColor3 = Color3.fromRGB(0, 100, 200)
        
        MainContent.Visible = (button.Name == "Main")
        TrollContent.Visible = (button.Name == "Troll")
        AboutContent.Visible = (button.Name == "About Script")
    end)
end

HitboxButton.MouseButton1Click:Connect(function()
    local playerName = game:GetService("TextService"):FilterStringAsync(
        "Enter player name", LocalPlayer.UserId
    ):GetNonChatStringForBroadcastAsync()
    
    local hitboxSize = game:GetService("TextService"):FilterStringAsync(
        "Enter hitbox size (1-500)", LocalPlayer.UserId
    ):GetNonChatStringForBroadcastAsync()
    
    hitboxSize = tonumber(hitboxSize) or 10
    
    for _, player in ipairs(Players:GetPlayers()) do
        if string.find(string.lower(player.Name), string.lower(playerName)) then
            local character = player.Character
            if character then
                for _, part in ipairs(character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.Size = Vector3.new(hitboxSize, hitboxSize, hitboxSize)
                    end
                end
            end
        end
    end
end)

ScaryButton.MouseButton1Click:Connect(function()
    local scaryImage = Instance.new("ImageLabel")
    scaryImage.Name = "ScaryImage"
    scaryImage.Size = UDim2.new(1, 0, 1, 0)
    scaryImage.Position = UDim2.new(0, 0, 0, 0)
    scaryImage.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    scaryImage.Image = "rbxassetid://134012608735465"
    scaryImage.Parent = ScreenGui
    
    wait(2)
    scaryImage:Destroy()
end)

local function FlingPlayer(player)
    local character = player.Character
    if character then
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart then
            humanoidRootPart.Velocity = Vector3.new(0, 10000, 0)
            humanoidRootPart.RotVelocity = Vector3.new(10000, 10000, 10000)
        end
    end
end

FlingPlayerButton.MouseButton1Click:Connect(function()
    local playerName = game:GetService("TextService"):FilterStringAsync(
        "Enter player name to fling", LocalPlayer.UserId
    ):GetNonChatStringForBroadcastAsync()
    
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and string.find(string.lower(player.Name), string.lower(playerName)) then
            FlingPlayer(player)
        end
    end
end)

FlingAllButton.MouseButton1Click:Connect(function()
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            FlingPlayer(player)
        end
    end
end)

local dragging
local dragInput
local dragStart
local startPos

local function UpdateInput(input)
    local delta = input.Position - dragStart
    MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

MainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

MainFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        UpdateInput(input)
    end
end)

local function UpdateAvatar()
    local userId = LocalPlayer.UserId
    local thumbType = Enum.ThumbnailType.HeadShot
    local thumbSize = Enum.ThumbnailSize.Size100x100
    
    local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
    
    local imageLabel = Instance.new("ImageLabel")
    imageLabel.Name = "AvatarImage"
    imageLabel.Size = UDim2.new(1, 0, 1, 0)
    imageLabel.BackgroundTransparency = 1
    imageLabel.Image = content
    imageLabel.Parent = AvatarFrame
end

UpdateAvatar()
