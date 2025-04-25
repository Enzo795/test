-- Services Roblox
local CoreGui = game:GetService("CoreGui")

-- Création des instances
local screenGui  = Instance.new("ScreenGui")
local frame      = Instance.new("Frame")
local uiGrad     = Instance.new("UIGradient")
local corner     = Instance.new("UICorner")
local title      = Instance.new("TextLabel")
local launchBtn  = Instance.new("TextButton")
local btnCorner  = Instance.new("UICorner")
local btnStroke  = Instance.new("UIStroke")

-- Configuration du ScreenGui
screenGui.Name        = "AnimalSimLoader"
screenGui.ResetOnSpawn = false
screenGui.Parent      = CoreGui

-- Configuration du Frame principal
frame.Name             = "Background"
frame.Parent           = screenGui
frame.AnchorPoint      = Vector2.new(0.5, 0.5)
frame.Position         = UDim2.new(0.5, 0, 0.5, 0)
frame.Size             = UDim2.new(0, 420, 0, 280)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
frame.BorderSizePixel  = 0

-- Coins arrondis
corner.CornerRadius = UDim.new(0, 16)
corner.Parent       = frame

-- Dégradé de fond
uiGrad.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(40,40,40)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(15,15,15))
}
uiGrad.Rotation = 30
uiGrad.Parent   = frame

-- Titre
title.Name             = "Header"
title.Parent           = frame
title.Size             = UDim2.new(1, 0, 0, 50)
title.Position         = UDim2.new(0, 0, 0, 0)
title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel  = 0
title.Font             = Enum.Font.GothamBold
title.Text             = "Animal Sim Hub"
title.TextColor3       = Color3.fromRGB(255, 255, 255)
title.TextScaled       = true

-- Bouton "Lancer"
launchBtn.Name             = "LaunchButton"
launchBtn.Parent           = frame
launchBtn.Size             = UDim2.new(0, 180, 0, 50)
launchBtn.Position         = UDim2.new(0.5, -90, 0.7, 0)
launchBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 127)
launchBtn.BorderSizePixel  = 0
launchBtn.Font             = Enum.Font.GothamBold
launchBtn.Text             = "LANCER"
launchBtn.TextColor3       = Color3.fromRGB(255, 255, 255)
launchBtn.TextScaled       = true

-- Arrondir les coins du bouton
btnCorner.CornerRadius = UDim.new(0, 10)
btnCorner.Parent       = launchBtn

-- Liseré autour du bouton
btnStroke.Parent       = launchBtn
btnStroke.Thickness    = 2
btnStroke.Transparency = 0.4

-- Effet au survol
launchBtn.MouseEnter:Connect(function()
    launchBtn.BackgroundColor3 = launchBtn.BackgroundColor3:Lerp(Color3.fromRGB(0, 200, 160), 0.5)
end)
launchBtn.MouseLeave:Connect(function()
    launchBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 127)
end)

-- Exécution du script au clic
launchBtn.MouseButton1Click:Connect(function()
    -- Charge et exécute le hub Animal Sim
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xpzrmodzz/hub-animal-AS/main/README.md"))()
    -- Ferme le GUI
    screenGui:Destroy()
end)
