local supported_games = {3956818381,5324597737,292439477,155615604}--dont delete this

if table.find(supported_games,game.PlaceId) then--dont delete this 
    local ixzy = "Have Fun!!!!"
    game:GetService("StarterGui"):SetCore(
        "SendNotification",
        {
            Title = "Akeno Hub",
            Text = ixzy
        }
    )
    if game.PlaceId == 5324597737 then--dragon ball evolution
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ixzy/akenohub/main/supported_games/dbe.lua"))();
    end

    if game.PlaceId == 3956818381 then--ninja legends
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ixzy/akenohub/main/supported_games/ninjalegends.lua"))()
    end
    if game.PlaceId == 292439477 then--phantom forces 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ixzy/akenohub/main/supported_games/phantomforces.lua"))()
    end
    if game.PlaceId == 155615604 then--prison life
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ixzy/akenohub/main/supported_games/prisonlife.lua"))()
    end
else
     game:GetService("StarterGui"):SetCore(
    "SendNotification",
    {
        Title = "Akeno Hub",
        Text = "We dont Support this game, You get universal gui"
    })
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ixzy/akenohub/main/Universal/Universal.lua"))()
end
