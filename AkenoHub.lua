if 1 == 1 then--dont delete this -- ok 
    local ixzy = "Have Fun!!!!"
    game:GetService("StarterGui"):SetCore(
        "SendNotification",
        {
            Title = "Akeno Hub",
            Text = ixzy
        }
    )

        
    if game.PlaceId == 5324597737 then--dragon ball evolution
        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        local Window = Library.CreateLib("AkenoHubV2-[DBE]", "Synapse")
        -- MAIN
        local Main = Window:NewTab("Main")
        local MainSection = Main:NewSection("Main")
        local original_level = game:GetService("Players").LocalPlayer.Stats.Level.Value
        MainSection:NewSlider("Level","Changes the LocalPlayers level",10000000999999999999999999999999,original_level, 
            function(v)
                game:GetService("Players").LocalPlayer.Stats.Level.Value = v
            end
        )-- this is a slider it slides values
        MainSection:NewSlider("Health Max","Changes the LocalPlayers HealthMax",1000000,1,
            function(v)
                game:GetService("Players").LocalPlayer.Stats.HealthMax.Value = v
            end
        )
        MainSection:NewSlider("KiDamage","Changes the LocalPlayers KiDamage",10000000,1,
            function(v)
                game:GetService("Players").LocalPlayer.Stats.KiDamage.Value = v
            end
        )
        MainSection:NewSlider("KiMax","Changes the LocalPlayers KiMax",10000000,1,
            function(v)
                game:GetService("Players").LocalPlayer.Stats.KiMax.Value = v
            end
        )
        MainSection:NewSlider("KiResistance","Changes the LocalPlayers KiResistance",10000000,1,
            function(v)
                game:GetService("Players").LocalPlayer.Stats.KiResistance.Value = v
            end
        )
        MainSection:NewSlider("MeleeDamage","Changes the LocalPlayers MeleeDamage",10000000,1,
            function(v)
                game:GetService("Players").LocalPlayer.Stats.MeleeDamage.Value = v
            end
        )
        MainSection:NewSlider("Speed","Changes the LocalPlayers Speed",10000000,250,
            function(v)
                game:GetService("Players").LocalPlayer.Stats.Speed.Value = v
            end)
        MainSection:NewSlider("Power Level","ez pz",10000000999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 1,
           function(pl)
            game:GetService("Players").localplayer.PlayerGui.NewMain.PowerLevel.Text = "Current Power Level:"..pl
           end
        )
        MainSection:NewSlider("SkillPoints","SkillPoints", 100000009999999999999999999999,original_level,
           function(SkillPoints)
            game:GetService("Players").LocalPlayer.Stats.SkillPoint.Value = SkillPoints
           end
        )
        -- PLAYER
        local Player = Window:NewTab("Player")
        local PlayerSection = Player:NewSection("Player")
        local credits = Window:NewTab("Credits")
        local creds = credits:NewSection("Credits")
        PlayerSection:NewSlider("Walkspeed","Changes the walkspeed",250,16,
            function(v)
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
            end
        )

        PlayerSection:NewSlider("Jumppower","Changes the jumppower",250,50,
            function(v)
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
            end
        )
        creds:NewButton("Copy discord invite","copies discord invite",
            function(v)
                setclipboard("https://discord.gg/Aw7JCXewVS")
            end
        )
        creds:NewButton("Scripter: BlueRock","Copies BlueRock's tag",
             function(v)
                setclipboard("BLUE ROCK#3750")
            end
        )
    end

    if game.PlaceId == 3956818381 then--ninja legends
        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        local Window = Library.CreateLib("AkenoHubV2-[Ninja Legends]", "Synapse")
        local Main = Window:NewTab("Main")
        local MainSection = Main:NewSection("Main")
        local Misc = Window:NewTab("Misc")
        local MiscSection = Misc:NewSection("Misc")
        local prty = Window:NewTab("Party")
        local party = prty:NewSection("Party")
        local sd = Window:NewTab("SS")
        local side_scripts = sd:NewSection("Side scripts")
        local credits = Window:NewTab("Credits")
        local creds = credits:NewSection("Credits")
        MainSection:NewToggle("Auto Swing","Make your player autoswing",
            function(v)
                getgenv().autoswing = v
                while true do
                    if not getgenv().autoswing then
                        return
                    end
                    for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v:FindFirstChild("ninjitsuGain") then
                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                            break
                        end
                    end
                    local A_1 = "swingKatana"
                    local Event = game:GetService("Players").LocalPlayer.ninjaEvent
                    Event:FireServer(A_1)
                    wait(0.5)
                end
            end
        )

        MainSection:NewToggle("Auto Sell","Makes your player autosell",
            function(v)
                getgenv().autosell = v
                while true do
                    if getgenv().autosell == false then
                        return
                    end
                    game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    wait(0.1)
                    game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = CFrame.new(0, 0, 0)
                    wait(0.5)
                end
            end
        )


        MainSection:NewToggle("Auto buy all swords","Auto buys all swords",
            function(v)
                getgenv().buyswords = v
                while true do
                    if not getgenv().buyswords then
                        return
                    end
                    local A_1 = "buyAllSwords"
                    local A_2 = "Inner Peace Island"
                    local Event = game:GetService("Players").LocalPlayer.ninjaEvent
                    Event:FireServer(A_1, A_2)
                    wait(0.5)
                end
            end
        )

        MainSection:NewToggle("Auto buy all belts","Auto buys all belts",
            function(v)
                getgenv().buybelts = v
                while true do
                    if not getgenv().buybelts then
                        return
                    end
                    local A_1 = "buyAllBelts"
                    local A_2 = "Inner Peace Island"
                    local Event = game:GetService("Players").LocalPlayer.ninjaEvent
                    Event:FireServer(A_1, A_2)
                    wait(0.5)
                end
            end
        )
        MainSection:NewToggle("Auto Rank","LocalPlayer auto ranks",
            function(auto)
                getgenv().buyranks = auto
                while true do 
                    if not getgenv().buyranks then break end
                         local Event = game:GetService("Players").LocalPlayer.ninjaEvent
                         local rank = game:GetService("ReplicatedStorage").Ranks.Ground:GetChildren()
                         for i = 1, #rank do
                              Event:FireServer("buyRank", rank[i].Name)
                         end
                    wait(0.5)
                end
            end)                                                     
        MiscSection:NewToggle("Max jumps","Gives jumps",
            function(v)
              while wait(0.01) do
               game.Players.LocalPlayer.multiJumpCount.Value = "50"
                end
            end
        )

        MiscSection:NewButton("Unlock all islands","Unlocks all islands",
            function(island_unlocker)
                local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                for _, v in pairs(game:GetService("Workspace").islandUnlockParts:GetChildren()) do
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                    wait(0.9)
                end
                wait(1)
            end
        )

        creds:NewButton("Copy discord invite","copies discord invite", -- this is a button so it doesnt repeat like a stupid developer it will copy it once for every x clicks
            function(v)
                setclipboard("https://discord.gg/Aw7JCXewVS")
            end
        )
         creds:NewButton("Scripter:Ixzy","copies ixzy's tag", -- same thing for this
            function(v)
                setclipboard("! ixzy#0900")
            end
        )

        creds:NewButton("Scripter: BlueRock","Copies BlueRock's tag",
            function(v)
                setclipboard("BLUE ROCK#3750")
            end
        )    
        side_scripts:NewButton("Anti afk","wont let u get kicked",
            function(dont_kick)
                wait(0.5)
                local ba = Instance.new("ScreenGui")
                local ca = Instance.new("TextLabel")
                local da = Instance.new("Frame")
                local _b = Instance.new("TextLabel")
                local ab = Instance.new("TextLabel")
                ba.Parent = game.CoreGui
                ba.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                ca.Parent = ba
                ca.Active = true
                ca.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
                ca.Draggable = true
                ca.Position = UDim2.new(0.698610067, 0, 0.098096624, 0)
                ca.Size = UDim2.new(0, 370, 0, 52)
                ca.Font = Enum.Font.SourceSansSemibold
                ca.Text = "Anti Afk"
                ca.TextColor3 = Color3.new(0, 1, 1)
                ca.TextSize = 22
                da.Parent = ca
                da.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
                da.Position = UDim2.new(0, 0, 1.0192306, 0)
                da.Size = UDim2.new(0, 370, 0, 107)
                _b.Parent = da
                _b.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
                _b.Position = UDim2.new(0, 0, 0.800455689, 0)
                _b.Size = UDim2.new(0, 370, 0, 21)
                _b.Font = Enum.Font.Arial
                _b.Text = "Created By: idk"
                _b.TextColor3 = Color3.new(0, 1, 1)
                _b.TextSize = 20
                ab.Parent = da
                ab.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
                ab.Position = UDim2.new(0, 0, 0.158377, 0)
                ab.Size = UDim2.new(0, 370, 0, 44)
                ab.Font = Enum.Font.ArialBold
                ab.Text = "Status: Active"
                ab.TextColor3 = Color3.new(0, 1, 1)
                ab.TextSize = 20
                local bb = game:service "VirtualUser"
                game:service "Players".LocalPlayer.Idled:connect(
                    function()
                        bb:CaptureController()
                        bb:ClickButton2(Vector2.new())
                        ab.Text = "Roblox kicked you but we didnt let them!"
                        wait(2)
                        ab.Text = "Status : Active"
                    end
                )
            end
        )
        party:NewToggle("Party","🎉",function(party_prow)
                while 1 == 1 do
                    game:GetService("Players").LocalPlayer.PlayerGui.gameGui.IgnoreGuilnset = true
                    game:GetService("Players").LocalPlayer.PlayerGui.gameGui.IgnoreGuilnset = false
                end
            end
        )
    end
    if game.PlaceId == 292439477 then--phantom forces
        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        local Window = Library.CreateLib("AkenoHubV2-[Phantom Forces]", "Synapse")
     
        -- MAIN
        local Main = Window:NewTab("Main")
        local MainSection = Main:NewSection("Main")
        MainSection:NewButton("EvoV2","evo evo",
          function(evo)
            loadstring(game:HttpGet("https://projectevo.xyz/script/loader.lua"))()
          end
        
    )
    end
    if game.PlaceId == 155615604 then--prison life
        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        local Window = Library.CreateLib("AkenoHubV2-[Prison-Life]", "Synapse")
     
        -- MAIN
        local Main = Window:NewTab("Main")
        local MainSection = Main:NewSection("Main")
     
        MainSection:NewDropdown("Give Gun", "Gives the localplayer a gun", {"M9", "Remington 870", "AK-47"}, function(gan)
            local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver[gan].ITEMPICKUP
            local Event = game:GetService("Workspace").Remote.ItemHandler
            Event:InvokeServer(A_1)
        end)
     
        MainSection:NewDropdown("Gun Mod", "Makes the gun op", {"M9", "Remington 870", "AK-47"}, function(Modded_gun)
            local module = nil
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Modded_gun) then
                module = require(game:GetService("Players").LocalPlayer.Backpack[Modded_gun].GunStates)
            elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(Modded_gun) then
                module = require(game:GetService("Players").LocalPlayer.Character[Modded_gun].GunStates)
            end
            if module ~= nil then
                module["MaxAmmo"] = math.huge --math go brrrr
                module["CurrentAmmo"] = math.huge
                module["StoredAmmo"] = math.huge
                module["FireRate"] = 0.000001
                module["Spread"] = 0
                module["Range"] = math.huge
                module["Bullets"] = 10
                module["ReloadTime"] = 0.000001
                module["AutoFire"] = true
            end
        end)
     
        -- PLAYER
        local Player = Window:NewTab("Player")
        local PlayerSection = Player:NewSection("Player")
     
        PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
        end)
     
        PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
        end)

        -- BTOOLS
        local bt = Window:NewTab("Tools")
        local tools = bt:NewSection("Tools")
        tools:NewButton("Btools","Gives localplayer Btools",
         function(btool)
            Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 4
        
         end
        )
        -- CREDITS
        local credits = Window:NewTab("Credits")
        local creds = credits:NewSection("Credits")
        creds:NewButton("Copy discord invite","copies discord invite",
        function(v)
            setclipboard("https://discord.gg/Aw7JCXewVS")
        end
    )
    creds:NewButton("Owner: Santa"," copies santa's tag",
    function(Owner)
        setclipboard("Santa#0800")
    end)
    creds:NewButton("Main Developer: Ixzy","Copies ixzy's tag",
    function(v)
        setclipboard("! ixzy#0900")
    end)
    creds:NewButton("Developer: BlueRock","Copies BlueRock's tag",
    function(v)
    setclipboard("BLUE ROCK#3750")
    end
)

end
end