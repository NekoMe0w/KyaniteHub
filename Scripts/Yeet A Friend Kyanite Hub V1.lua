-- Yeet A Friend Kyanite Hub V1

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/NekoMe0w/LushxoHub/main/Modules/Rayfield.Lib'))()
local Window = Rayfield:CreateWindow({
   Name = "Kyanite v1 - Yeet A Friend",
   LoadingTitle = "Yeet A Friend",
   LoadingSubtitle = "By Gabriel1#2811",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "Kyanite Hub", -- Create a custom folder for your hub/game
      FileName = "Yeet A Friend"
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
_G.Throw = true
_G.Stars = true
_G.Rebirth = true
_G.Rebirth = false
_G.craft = true
_G.PetEquip = true
_G.Summer = true
--functions

function Summer()
    while _G.Summer == true do wait()
    game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("106")
    end
end

function PetEquip()
    while _G.PetEquip == true do wait(1)
        game:GetService("ReplicatedStorage").Remote.Pet.Server.EquipBest:FireServer()
    end
end

function craft()
    while _G.craft == true do wait(1)
        game:GetService("ReplicatedStorage").Remote.Pet.Server.CraftAll:FireServer()
    end
end

function Throw()
    while _G.Throw == true do wait(1)
        game:GetService("ReplicatedStorage").Remote.Throw.Server.Request:FireServer()
    end
end

function Stars()
    while _G.Stars == true do Wait()
            for v22, v23 in pairs(workspace.Stars:GetChildren()) do
             if v23:IsA("Model") and not v23:GetAttribute("IsBeingPulledByMagnet") then
             v23:SetAttribute("IsBeingPulledByMagnet", true);
             require(game:GetService("ReplicatedStorage").Get.Client.Stars).MagnetStarToPlayer(v23, 0.06 + 40 / 100);
             end;
            end;
         end
        end

        function Rebirth()
            while _G.Rebirth == true do Wait()
                require(game:GetService("ReplicatedStorage").Get.Client.UI.Rebirth).AutoEnabled = true
            if _G.Rebirth == false then Wait()
                require(game:GetService("ReplicatedStorage").Get.Client.UI.Rebirth).AutoEnabled = false
            end
         end
         end

--main
local Section = MainTab:CreateSection("Auto Farm ",false) -- The 2nd argument is to tell if its only a Title and doesnt contain elements

local Toggle = MainTab:CreateToggle({
    Name = "Auto Rebirth",
    CurrentValue = false,
    Flag = "Rebirth",
    Callback = function(Value)
    _G.Rebirth = Value
    Rebirth()
    end,
 })

local Toggle = MainTab:CreateToggle({
    Name = "Auto Collect Stars",
    CurrentValue = false,
    Flag = "Collect Stars",
    Callback = function(Value)
    _G.Stars = Value
    Stars()
    end,
 })

local Toggle = MainTab:CreateToggle({
    Name = "Auto Buy Summer Egg (12k)",
    CurrentValue = false,
    Flag = "Summer",
    Callback = function(Value)
    _G.Summer = Value
    Summer()
    end,
 })

 local Section = MainTab:CreateSection("Teleport",false) 

 local List = {
    ["World 1"] = [[game:GetService("ReplicatedStorage").Remote.Teleport.Server.RequestTeleport:FireServer("1")]],
    ["World 2"] = [[game:GetService("ReplicatedStorage").Remote.Teleport.Server.RequestTeleport:FireServer("2")]],
    ["World 3"] = [[game:GetService("ReplicatedStorage").Remote.Teleport.Server.RequestTeleport:FireServer("3")]],
    ["World 4"] = [[game:GetService("ReplicatedStorage").Remote.Teleport.Server.RequestTeleport:FireServer("4")]],
    ["World 5"] = [[game:GetService("ReplicatedStorage").Remote.Teleport.Server.RequestTeleport:FireServer("5")]],
    ["World 6"] = [[game:GetService("ReplicatedStorage").Remote.Teleport.Server.RequestTeleport:FireServer("6")]],
    ["World 7"] = [[game:GetService("ReplicatedStorage").Remote.Teleport.Server.RequestTeleport:FireServer("7")]],
    ["World 8"] = [[game:GetService("ReplicatedStorage").Remote.Teleport.Server.RequestTeleport:FireServer("8")]],
    ["World 9"] = [[game:GetService("ReplicatedStorage").Remote.Teleport.Server.RequestTeleport:FireServer("9")]],
    ["World 10"] = [[game:GetService("ReplicatedStorage").Remote.Teleport.Server.RequestTeleport:FireServer("10")]],
    ["World 11"] = [[game:GetService("ReplicatedStorage").Remote.Teleport.Server.RequestTeleport:FireServer("11")]],
    ["World 12"] = [[game:GetService("ReplicatedStorage").Remote.Teleport.Server.RequestTeleport:FireServer("12")]],
    [""] = [[]],
    
    
    }
    
    local Dropdown = MainTab:CreateDropdown({
        Name = "Teleport",
        Options = {"--","World 1", "World 2","World 3", "World 4","World 5", "World 6","World 7", "World 8","World 9", "World 10", "World 11"},
        CurrentOption = "",
        Flag = "Teleport", 
        Callback = function(Value)
            loadstring(List[Value[1]])()
        end
    })

 --Pet

 local Section = EggTab:CreateSection("Pet stuff",false) 

 local List = {
    ["Stop Hatching"] = [[]],
    ["Forest"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("1")]],
    ["Flight"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("2")]],
    ["Bugs"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("3")]],
    ["Aqua"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("4")]],
    ["Bzzzz"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("5")]],
    ["Slime"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("6")]],
    ["Elemental"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("7")]],
    ["Green"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("8")]],
    ["Candy"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("9")]],
    ["Sweet"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("10")]],
    ["Wild"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("11")]],
    ["Feral"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("12")]],
    ["Viking"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("13")]],
    ["Mythic"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("14")]],
    ["Anime"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("15")]],
    ["Special"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("16")]],
    ["Captain"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("17")]],
    ["Pirate"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("18")]],
    ["Planetary"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("19")]],
    ["cosmic"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("20")]],
    ["Hard"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("21")]],
    ["Insane"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("22")]],
    ["Monster"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("23")]],
    ["Hell"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("24")]],
    ["Sketch"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("25")]],
    ["Cartoon"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("26")]],
    ["Summer Egg 1"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("104")]],
    ["Summer Egg 2"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("105")]],
    ["Summer Egg 3"] = [[game:GetService("ReplicatedStorage").Remote.Egg.Server.Purchase:InvokeServer("106")]],
    [""] = [[]],
    [""] = [[]],
    [""] = [[]],
    [""] = [[]],
    [""] = [[]],
    [""] = [[]],
 }
 local Dropdown = EggTab:CreateDropdown({
    Name = "Egg",
    Options = {"Stop Hatching","Forest","Flight","Bugs","Aqua","Bzzzz","Slime","Elemental","Green","Candy","Sweet","Wild","Feral","Viking","Mythic","Anime","Special","Captain","Pirate","Planetary","cosmic","Hard","Insane","Monster","Hell","Sketch","Cartoon","Summer Egg 1","Summer Egg 2","Summer Egg 3"},
    CurrentOption = "--",
    Flag = "Egg", 
    Callback = function(Value)
       loadstring(List[Value[1]])()
       end
 })

 local Toggle = EggTab:CreateToggle({
    Name = "Auto equip pet",
    CurrentValue = false,
    Flag = "pet",
    Callback = function(Value)
    _G.PetEquip = Value
    PetEquip()
    end,
 })

 local Toggle = EggTab:CreateToggle({
    Name = "Auto craft",
    CurrentValue = false,
    Flag = "craft",
    Callback = function(Value)
    _G.craft = Value
    craft()
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
