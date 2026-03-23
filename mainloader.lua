if queue_on_teleport then
    queue_on_teleport(string.format([[
        repeat task.wait() until game:IsLoaded()
        repeat task.wait() until game.Players.LocalPlayer
        script_key="%s"
        loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/6fa9dda5649accff2d9cc2ff8d5dadaa.lua"))()
    ]], neverdiess))
end

if not game:IsLoaded() then
    game.Loaded:Wait()
end
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer.Character

script_key = neverdiess
loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/6fa9dda5649accff2d9cc2ff8d5dadaa.lua"))()
