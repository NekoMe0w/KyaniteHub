-- Natural Disaster Survival Kyanite Hub V1

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/NekoMe0w/LushxoHub/main/Modules/Rayfield.Lib'))()
local Window = Rayfield:CreateWindow({
   Name = "Kyanite v1 - Natural Disaster Survival",
   LoadingTitle = "Natural Disaster Survival",
   LoadingSubtitle = "By Gabriel1#2811",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "Kyanite Hub", -- Create a custom folder for your hub/game
      FileName = "Natural Disaster Survival"
   },
   Discord = {
      Enabled = true,
      Invite = "nZCVmjbMqg", -- The Discord invite code, do not include discord.gg/
      RememberJoins = false -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "By Kyanite Scripts",
      Subtitle = "Key System",
      Note = "Join the discord (discord.gg/nZCVmjbMqg)",
      FileName = "",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = ""
   }
})
--Tabs
local MainTab = Window:CreateTab("Main", 13271299008) -- Title, Image

local SettingsTab = Window:CreateTab("Settings", 13271302772) -- Title, Image

--values
_G.Win = true
_G.RainbowOcean = true
_G.Walk = true
_G.Walk = false
--functions
function Walk()
    if _G.Walk == true then wait()
game.Workspace.WaterLevel.Size = Vector3.new(1000000,1,1000000)
game:GetService("Workspace").WaterLevel.CanCollide = true
game:GetService("Workspace").WaterLevel.WaterHeightScript:Destroy()
    elseif _G.Walk == false then wait()
game.Workspace.WaterLevel.Size = Vector3.new(10,1,10)
game:GetService("Workspace").WaterLevel.CanCollide = false
end
end

function Vote()
votemenu = game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage

votemenu.Visible=true
wait(2)
votemenu = game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage

votemenu.Visible=false
end

--RainbowOcean
function RainbowOcean()
    while _G.RainbowOcean == true do wait(1)
game:GetService("Workspace").WaterLevel.BrickColor = BrickColor.Random()
    end
end

--Teleport Lobby
function Win()
while _G.Win == true do wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-253.96966552734375, 179.19998168945312, 295.4698791503906)
    end
end

--Ballon
function GetBalloon()
local player = tostring(game.Players.LocalPlayer.Name)
while true do
if game.Workspace:FindFirstChild("GreenBalloon") then
if not game.Workspace[player]:FindFirstChild("GreenBalloon") and not game.Players.LocalPlayer.Backpack:FindFirstChild("GreenBalloon") then
local workspaceClone = game.Workspace.GreenBalloon:Clone()
workspaceClone.Parent = game.Workspace[player]
end
else
local balloonCheck = game.Workspace:GetDescendants()
local balloonClone
for i, balloon in ipairs(balloonCheck) do
if (tostring(balloon.Name) == "GreenBalloon") then
balloonClone = balloon:Clone()
wait()
end
end
balloonClone.Parent = game.Workspace
local workspaceClone = game.Workspace.GreenBalloon:Clone()
workspaceClone.Parent = game.Workspace[player]
end
wait()
end
end

--play
function Play()
game:GetService("Workspace").ContentModel.Sounds.DirtSound.Playing = true
game:GetService("Workspace").ContentModel.Sounds.DirtSound.Volume = 1
game:GetService("Workspace").ContentModel.Sounds.Explosion1.Playing = true
game:GetService("Workspace").ContentModel.Sounds.Explosion1.Volume = 1
game:GetService("Workspace").ContentModel.Sounds.Explosion2.Playing = true
game:GetService("Workspace").ContentModel.Sounds.Explosion2.Volume = 1
game:GetService("Workspace").ContentModel.Sounds.IntenseWind.Playing = true
game:GetService("Workspace").ContentModel.Sounds.IntenseWind.Volume = 1
game:GetService("Workspace").ContentModel.Sounds.Lightning1.Playing = true
game:GetService("Workspace").ContentModel.Sounds.Lightning1.Volume = 1
game:GetService("Workspace").ContentModel.Sounds.Lightning2.Playing = true
game:GetService("Workspace").ContentModel.Sounds.Lightning2.Volume = 1
game:GetService("Workspace").ContentModel.Sounds.Lightning3.Playing = true
game:GetService("Workspace").ContentModel.Sounds.Lightning3.Volume = 1
game:GetService("Workspace").ContentModel.Sounds.Lightning4.Playing = true
game:GetService("Workspace").ContentModel.Sounds.Lightning4.Volume = 1
game:GetService("Workspace").ContentModel.Sounds.Lightning5.Playing = true
game:GetService("Workspace").ContentModel.Sounds.Lightning5.Volume = 1
game:GetService("Workspace").ContentModel.Sounds.Rain.Playing = true
game:GetService("Workspace").ContentModel.Sounds.Rain.Volume = 1
game:GetService("Workspace").ContentModel.Sounds.RockSound.Playing = true
game:GetService("Workspace").ContentModel.Sounds.RockSound.Volume = 1
game:GetService("Workspace").ContentModel.Sounds.Wind.Playing = true
game:GetService("Workspace").ContentModel.Sounds.Wind.Volume = 1
end

--mute
function Mute()
    game:GetService("Workspace").ContentModel.Sounds.DirtSound.Playing = false
    game:GetService("Workspace").ContentModel.Sounds.DirtSound.Volume = 0
    game:GetService("Workspace").ContentModel.Sounds.Explosion1.Playing = false
    game:GetService("Workspace").ContentModel.Sounds.Explosion1.Volume = 0
    game:GetService("Workspace").ContentModel.Sounds.Explosion2.Playing = false
    game:GetService("Workspace").ContentModel.Sounds.Explosion2.Volume = 0
    game:GetService("Workspace").ContentModel.Sounds.IntenseWind.Playing = false
    game:GetService("Workspace").ContentModel.Sounds.IntenseWind.Volume = 0
    game:GetService("Workspace").ContentModel.Sounds.Lightning1.Playing = false
    game:GetService("Workspace").ContentModel.Sounds.Lightning1.Volume = 0
    game:GetService("Workspace").ContentModel.Sounds.Lightning2.Playing = false
    game:GetService("Workspace").ContentModel.Sounds.Lightning2.Volume = 0
    game:GetService("Workspace").ContentModel.Sounds.Lightning3.Playing = false
    game:GetService("Workspace").ContentModel.Sounds.Lightning3.Volume = 0
    game:GetService("Workspace").ContentModel.Sounds.Lightning4.Playing = false
    game:GetService("Workspace").ContentModel.Sounds.Lightning4.Volume = 0
    game:GetService("Workspace").ContentModel.Sounds.Lightning5.Playing = false
    game:GetService("Workspace").ContentModel.Sounds.Lightning5.Volume = 0
    game:GetService("Workspace").ContentModel.Sounds.Rain.Playing = false
    game:GetService("Workspace").ContentModel.Sounds.Rain.Volume = 0
    game:GetService("Workspace").ContentModel.Sounds.RockSound.Playing = false
    game:GetService("Workspace").ContentModel.Sounds.RockSound.Volume = 0
    game:GetService("Workspace").ContentModel.Sounds.Wind.Playing = false
    game:GetService("Workspace").ContentModel.Sounds.Wind.Volume = 0
end

--Island
function island()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-138.96621704101562, 47.099998474121094, 7.665717601776123)
end

--Main

local Section = MainTab:CreateSection("Farm",false) -- The 2nd argument is to tell if its only a Title and doesnt contain elements

local Toggle = MainTab:CreateToggle({
    Name = "Auto Win",
    CurrentValue = false,
    Flag = "Auto Win",
    Callback = function(Value)
     _G.Win = Value
     Win()
    end,
 })

 local Button = MainTab:CreateButton({
    Name = "Teleport island",
    Info = "", -- Speaks for itself, Remove if none.
    Interact = 'Island',
    Callback = function()
        island()
    end,
 })
 
 local Section = MainTab:CreateSection("Client",false) 

 local Button = MainTab:CreateButton({
    Name = "Vote",
    Info = "", -- Speaks for itself, Remove if none.
    Interact = 'Vote',
    Callback = function()
        Vote()
    end,
 })

 local Toggle = MainTab:CreateToggle({
    Name = "Rainbow Ocean",
    CurrentValue = false,
    Flag = "Rainbow Ocean",
    Callback = function(Value)
     _G.RainbowOcean = Value
     RainbowOcean()
    end,
 })

 local Toggle = MainTab:CreateToggle({
    Name = "Walk on water",
    CurrentValue = false,
    Flag = "",
    Callback = function(Value)
     _G.Walk = Value
     Walk()
    end,
 })

 local Section = MainTab:CreateSection("Tools",false) 

 local Button = MainTab:CreateButton({
    Name = "Get Balloon",
    Info = "", -- Speaks for itself, Remove if none.
    Interact = 'Get Balloon',
    Callback = function()
        GetBalloon()
    end,
 })

 local Section = MainTab:CreateSection("Sound",false)

 local Button = MainTab:CreateButton({
    Name = "Loop Play All Sounds",
    Info = "", -- Speaks for itself, Remove if none.
    Interact = 'Play',
    Callback = function()
        Play()
    end,
 })

 local Button = MainTab:CreateButton({
    Name = "Loop Mute All Sounds",
    Info = "", -- Speaks for itself, Remove if none.
    Interact = 'Mute',
    Callback = function()
        Mute()
    end,
 })

--functions

 local Section = MainTab:CreateSection("Player",false)

 local Slider = MainTab:CreateSlider({
    Name = "Walk Speed",
    Range = {16, 1000},
    Increment = 10,
    Suffix = "Walk Speed",
    CurrentValue = 16,
    Flag = "Walk Speed", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
         print(Value)
         game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
    end,
 })
 
 local Slider = MainTab:CreateSlider({
     Name = "Jump Power",
     Range = {50, 1000},
     Increment = 10,
     Suffix = "Jump Power",
     CurrentValue = 50,
     Flag = "Jump power", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
     Callback = function(Value)
         print(Value)
         game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
     end,
  })

 local Section = SettingsTab:CreateSection("Settings",false)

 local Button = SettingsTab:CreateButton({
    Name = "Rejoin Game",
    Info = "", -- Speaks for itself, Remove if none.
    Interact = '',
    Callback = function()
        Rejoin()
    end,
 })

 local Button = SettingsTab:CreateButton({
    Name = "Server Hop",
    Info = "", -- Speaks for itself, Remove if none.
    Interact = '',
    Callback = function()
        ServerHop()
    end,
 })

 local Button = SettingsTab:CreateButton({
    Name = "Destory Ui",
    Info = "", -- Speaks for itself, Remove if none.
    Interact = '',
    Callback = function()
        Destory()
    end,
 })

--Welcome
 local Paragraph = SettingsTab:CreateParagraph({Title = "Welcome to Kyanite Hub", Content = "Whilst Kyanite was Previously a Family Paradise only script, we have expanded & branched out to more games. We are offcially a hub and continue to grow each day with requests from our community."}) 
--Changelog
 local Section = SettingsTab:CreateSection("Credits",true)
--Credits
 local Paragraph = SettingsTab:CreateParagraph({Title = "Credits", Content = "Creator: Gabriel1#2811                                                                             Development: FB6437                                                                                       Script Contribitons: LA5TL0VER1914                                                                    UI: RayField      "})

--antiafk

if not game:IsLoaded() then
    game.Loaded:Wait()
    end
    
    for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
    v:Disable()
    end
