local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        local Window = Library.CreateLib("AkenoHub-[Prison-Life]", "Synapse")
     
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
        --KeyBinds
         local ke = Window:NewTab("KeyBinds")
         local keybinds = ke:NewSection("KeyBind")
         keybinds:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.Minus, function()
	Library:ToggleUI()
        end)
        -- CREDITS
        local credits = Window:NewTab("Credits")
        local creds = credits:NewSection("Credits")
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
