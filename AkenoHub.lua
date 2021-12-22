--notification start--
local supported_games = {3956818381,5324597737,292439477,155615604,6875469709}--dont delete this

if table.find(supported_games,game.PlaceId) then--dont delete this -- ok 
  function notify(Title,Text,Duration)
      game.StarterGui:SetCore("SendNotification", {
          Title = Title,
          Text = Text,
          Duration = tonumber(Duration)
      })
  --loader start--
  if game.PlaceId == 5324597737  then
  notify("Akeno Hub", "Loading Dragon Ball Evolution", 6) 
  wait(2)
  loadstring(game:HttpGet('https://raw.githubusercontent.com/ixzy/akenohub/main/supported_games/dbe.lua'))()
  end
  if game.PlaceId == 3956818381 then
  notify("Akeno Hub", "Loading Ninja Legends", 6)   
  wait(2)
  loadstring(game:HttpGet('https://raw.githubusercontent.com/ixzy/akenohub/main/supported_games/ninjalegends.lua'))()
  end
  if game.PlaceId == 292439477 then
  notify("Akeno Hub", "Loading Phantom Forces", 6)  
  wait(2)
  loadstring(game:HttpGet('https://raw.githubusercontent.com/ixzy/akenohub/main/supported_games/phantomforces.lua'))()
  end
  if game.PlaceId == 155615604 then
  notify("Akeno Hub", "Loading Prison Life", 6)
  wait(2)
  loadstring(game:HttpGet('https://raw.githubusercontent.com/ixzy/akenohub/main/supported_games/prisonlife.lua'))()
  end
  if game.PlaceId == 6875469709 then
    notify("Akeno Hub", "Loading Strongest Punch Simulator",6)
       loadstring(game:HttpGet('https://raw.githubusercontent.com/ixzy/akenohub/main/supported_games/StrongestPunchSim.lua'))()
  end

else
  notify("Akeno Hub", "Loading Universal script", 6)  
  wait(2)
  loadstring(game:HttpGet('https://raw.githubusercontent.com/ixzy/akenohub/main/Universal/Universal.lua'))()
 end
