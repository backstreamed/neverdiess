local LOADER = "https://api.luarmor.net/files/v4/loaders/6fa9dda5649accff2d9cc2ff8d5dadaa.lua"
local SELF_URL = "https://raw.githubusercontent.com/backstreamed/neverdiess/refs/heads/main/mainloader.lua"

if not neverdiess_key then
    warn("not found")
    return
end

local queueteleport = queue_on_teleport or (syn and syn.queue_on_teleport) or (fluxus and fluxus.queue_on_teleport)

if queueteleport then
    queueteleport('neverdiess_key = "' .. neverdiess_key .. '" repeat task.wait() until game:IsLoaded() repeat task.wait() until game.Players.LocalPlayer loadstring(game:HttpGet("' .. SELF_URL .. '"))()')
end

if not game:IsLoaded() then
    game.Loaded:Wait()
end
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer.Character

script_key = neverdiess_key
loadstring(game:HttpGet(LOADER))()
