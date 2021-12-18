local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        local Window = Library.CreateLib("AkenoHub~[Strongest Punch Simulator]", "Synapse")
        local Main = Window:NewTab("Main")
        local MainSection = Main:NewSection("Main")
        local credits = Window:NewTab("Credits")
        local creds = credits:NewSection("Credits")
      MainSection:NewToggle("Auto Punch","Auto Punches",
         function(punch)
          while wait() do
            if AutoClickerv1 == true then
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"Activate_Punch"})
            end
        end
      end)
