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
creds:NewButton("Owner: Santa","copies santa's tag",
function(v)
    setclipboard("Santa#0800")
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
