local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/aikaV3rm/UiLib/master/Lib.lua')))()
local remotePath = game:GetService("Players").LocalPlayer
local w = library:CreateWindow("akeno hub[For show]")
local b = w:CreateFolder("level: ")
local e = w:CreateFolder("technique giver[uit]")
local hehe = w:CreateFolder("PowerLevel")
game:GetService("Players").LocalPlayer.DataLoading.Value = false
b:Toggle("level giver",function(bool)
    remotePath.Stats.Level.Value = tonumber("2020202002")
end)
e:Toggle("jit instinct giver",function(bool)
    remotePath.player.Techniques.kaioken.Value =  36041
    game:GetService("Players").LocalPlayer.Skills.SkillK.Value = "Jit Instinct"
end)
hehe:Toggle("inf power level",function(bool)
    game:GetService("Players").LocalPlayer.PlayerGui.NewMain.PowerLevel.Text = "Current Power Level:".."inf"
end)
if remotePath.player.Stats.Level.Value == tonumber("69") then
     remotePath.player:kick("sussy")
end
