local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("AkenoHub-[DBE]", "Synapse")
-- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")
local Technique = Main:NewTab("Tech")
local TechSection = Technique:NewSection("Technique")
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
TechSection:NewButton("Uit","gives uit in inventory", 
  function(ui)
     game:GetService("Players").LocalPlayer.Skills.SkillK.Value = "Ultra Instinct"
  end)
TechSection:NewButton("Kaioken","gives Kaioken in inventory", 
  function(ui)
     game:GetService("Players").LocalPlayer.Skills.SkillK.Value = "Kaioken"
  end)
-- PLAYER
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")
local ke = Window:NewTab("KeyBinds")
local keybinds = ke:NewSection("KeyBind")
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
keybinds:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.Minus, function()
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
