-- Strong Muscle Simulator Kyanite Hub V1

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/NekoMe0w/LushxoHub/main/Modules/Rayfield.Lib'))()
local Window = Rayfield:CreateWindow({
   Name = "Kyanite v1 - Strong Muscle Simulator 2",
   LoadingTitle = "Strong Muscle Simulator 2",
   LoadingSubtitle = "By Gabriel1#2811",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "Kyanite Hub", -- Create a custom folder for your hub/game
      FileName = "Strong Muscle Simulator 2"
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

local EggTab = Window:CreateTab("Egg", 13271304854) -- Title, Image

local SettingsTab = Window:CreateTab("Settings", 13271302772) -- Title, Image

--values
_G.Lift = true
_G.punch = true
_G.Rebirth = true
_G.pet = true
_G.Weight = true
_G.Wheel = true
_G.Huge = true
_G.Dominus = true
_G.Craft = true
_G.CraftW = true
_G.gift = true
--functions
function codes()
    game:GetService("ReplicatedStorage").Modules.CodeModule.EnterCode:InvokeServer("SUMMER")
end

function gift()
    while _G.gift == true do wait(10)
        game:GetService("ReplicatedStorage").Events.FreeGift:FireServer("Potion1")
        wait(1)
        game:GetService("ReplicatedStorage").Events.FreeGift:FireServer("Muscle1")
        wait(1)
        game:GetService("ReplicatedStorage").Events.FreeGift:FireServer("Gem1")
        wait(1)
        game:GetService("ReplicatedStorage").Events.FreeGift:FireServer("Potion2")
        wait(1)
        game:GetService("ReplicatedStorage").Events.FreeGift:FireServer("Muscle2")
        wait(1)
        game:GetService("ReplicatedStorage").Events.FreeGift:FireServer("Win1")
        wait(1)
        game:GetService("ReplicatedStorage").Events.FreeGift:FireServer("Gem2")
        wait(1)
        game:GetService("ReplicatedStorage").Events.FreeGift:FireServer("Win2")
        wait(1)
        game:GetService("ReplicatedStorage").Events.FreeGift:FireServer("LimitedPet")
    end
end

function CraftW()
    while _G.CraftW == true do wait(4)
    game:GetService("ReplicatedStorage").Events.CraftAllWeight:InvokeServer()
    end
end

function Craft()
    while _G.Craft == true do wait(1)
    game:GetService("ReplicatedStorage").Events.PetAction:InvokeServer("Craft All")
    end
end

function Dominus()
    while _G.Dominus == true do wait(1)
     game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer("Summer",1)
    end
end

function Wheel()
    while _G.Wheel == true do wait(4)
        game:GetService("ReplicatedStorage").Events["Spin Wheel"]:FireServer()
    end
end

function Huge()
    while _G.Huge == true do wait(4)
        game:GetService("ReplicatedStorage").Events.ClaimEgg:FireServer()
    end
end

function Weight()
    while _G.Weight == true do wait(4)
        game:GetService("ReplicatedStorage").Events.EquipBest:InvokeServer()
    end
end

function pet()
    while _G.pet == true do wait(4)
    game:GetService("ReplicatedStorage").Events.PetAction:InvokeServer("Equip Best")
    end
end

function punch()
    while _G.punch == true do wait(1)
game:GetService("ReplicatedStorage").Combat.Events.Punch:FireServer()
    end
end

function Lift()
    while _G.Lift == true do wait(1)
game:GetService("ReplicatedStorage").Events.Weight:FireServer("Tool")
    end
end

function Rebirth()
    while _G.Rebirth == true do wait(4)
    game:GetService("ReplicatedStorage").Events.Rebirth:FireServer()
    end
end
--main
local Section = MainTab:CreateSection("Auto Farm ",false) -- The 2nd argument is to tell if its only a Title and doesnt contain elements

local Toggle = MainTab:CreateToggle({
    Name = "Auto Lift",
    CurrentValue = false,
    Flag = "Lift",
    Callback = function(Value)
    _G.Lift = Value
    Lift()
    end,
 })

 local Toggle = MainTab:CreateToggle({
    Name = "Auto punch",
    CurrentValue = false,
    Flag = "punch",
    Callback = function(Value)
    _G.punch = Value
    punch()
    end,
 })

 local Toggle = MainTab:CreateToggle({
    Name = "Auto Rebirth",
    CurrentValue = false,
    Flag = "Rebirth",
    Callback = function(Value)
    _G.Rebirth = Value
    Rebirth()
    end,
 })

 local Section = MainTab:CreateSection("Auto Claim",false)

 local Button = MainTab:CreateButton({
    Name = "Redeem codes",
    Info = "", -- Speaks for itself, Remove if none.
    Interact = 'Reset player',
    Callback = function()
        codes()
    end,
 })

 local Toggle = MainTab:CreateToggle({
    Name = "Auto Spin Wheel",
    CurrentValue = false,
    Flag = "Wheel",
    Callback = function(Value)
    _G.Wheel = Value
    Wheel()
    end,
 })

 local Toggle = MainTab:CreateToggle({
    Name = "Auto free gift",
    CurrentValue = false,
    Flag = "Wheel",
    Callback = function(Value)
    _G.gift = Value
    gift()
    end,
 })

 local Toggle = MainTab:CreateToggle({
    Name = "Auto Huge",
    CurrentValue = false,
    Flag = "Huge",
    Callback = function(Value)
    _G.Huge = Value
    Huge()
    end,
 })

 local Section = EggTab:CreateSection("Weight stuff",false)

 local Toggle = EggTab:CreateToggle({
    Name = "Equip best weight",
    CurrentValue = false,
    Flag = "Weight",
    Callback = function(Value)
    _G.Weight = Value
    Weight()
    end,
 })

 local Toggle = EggTab:CreateToggle({
    Name = "Auto Craft",
    CurrentValue = false,
    Flag = "Weight",
    Callback = function(Value)
    _G.CraftW = Value
    CraftW()
    end,
 })

 local Section = EggTab:CreateSection("Pet stuff",false)

 local List = {
    ["Stop Hatching"] = [[]],
    ["Basic"] = [[game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer("Basic",1)]],
    ["Town"] = [[game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer("Town",1)]],
    ["Beach"] = [[game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer("Beach",1)]],
    ["Crystal"] = [[game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer("Crystal",1)]],
    ["Forest"] = [[game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer("Forest",1)]],
    ["Desert"] = [[game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer("Desert",1)]],
    ["Hell"] = [[game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer("Hell",1)]],
    ["Cat"] = [[game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer("Cat",1)]],
    ["Void"] = [[game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer("Void",1)]],
    ["Toy"] = [[]],
    ["Summer (Event)"] = [[game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer("Summer",1)]],
    [""] = [[]],
    [""] = [[]],

 }
 local Dropdown = EggTab:CreateDropdown({
    Name = "Egg",
    Options = {"Stop Hatching","Basic","Town","Beach","Crystal","Forest","Desert","Hell","Cat","Void","Toy","Summer (Event)"},
    CurrentOption = "--",
    Flag = "Egg", 
    Callback = function(Value)
       loadstring(List[Value[1]])()
       end
 })

 local Toggle = EggTab:CreateToggle({
    Name = "Auto Summer Egg",
    CurrentValue = false,
    Flag = "Dominus",
    Callback = function(Value)
    _G.Dominus = Value
    Dominus()
    end,
 })

 local Toggle = EggTab:CreateToggle({
    Name = "Equip best pet",
    CurrentValue = false,
    Flag = "pet",
    Callback = function(Value)
    _G.pet = Value
    pet()
    end,
 })

 local Toggle = EggTab:CreateToggle({
    Name = "Auto Craft",
    CurrentValue = false,
    Flag = "Craft",
    Callback = function(Value)
    _G.Craft = Value
    Craft()
    end,
 })

--Settings
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
