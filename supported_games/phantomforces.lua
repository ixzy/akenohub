local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        local Window = Library.CreateLib("AkenoHubV2-[Phantom Forces]", "Synapse")
     
        -- MAIN
        local Main = Window:NewTab("Main")
        local MainSection = Main:NewSection("Main")
        MainSection:NewButton("EvoV2","evo evo",
          function(evo)
            loadstring(game:HttpGet("https://projectevo.xyz/script/loader.lua"))()
          end)
