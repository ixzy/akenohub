        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        local Window = Library.CreateLib("AkenoHub-[Ninja Legends]", "Synapse")
        local Main = Window:NewTab("Main")
        local MainSection = Main:NewSection("Main")
        local Misc = Window:NewTab("Misc")
        local MiscSection = Misc:NewSection("Misc")
        local prty = Window:NewTab("Party")
        local party = prty:NewSection("Party")
        local sd = Window:NewTab("SS")
        local side_scripts = sd:NewSection("Side scripts")
        local ke = Window:NewTab("KeyBinds")
        local keybinds = ke:NewSection("KeyBind")
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
            end)

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


 keybinds:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.Minus,
function()
   Library:ToggleUI()
end)
creds:NewButton("Owner: Suby","copies suby's tag",
function(v)
    setclipboard("suby#2869")
end)
creds:NewButton("Main Developer: Ixzy","copies ixy's tag",
    function(v)
        setclipboard("! ixzy#0900")
    end
)
        
creds:NewButton("Developer: BlueRock","Copies BlueRock's tag",
     function(v)
        setclipboard("BLUE ROCK#3750")
    end
)
creds:NewButton("Copy discord invite","copies discord invite",
    function(v)
        setclipboard("https://discord.gg/Aw7JCXewVS")
    end
)
