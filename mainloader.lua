local LOADER = "https://api.luarmor.net/files/v4/loaders/6fa9dda5649accff2d9cc2ff8d5dadaa.lua"
local SELF_URL = "https://raw.githubusercontent.com/backstreamed/neverdiess/main/mainloader.lua"

if not neverdiess_key then
    warn("neverdiess_key tanımlanmamış!")
    return
end

-- Queue fonksiyonunu bul
local queueteleport = (type(queue_on_teleport) == "function" and queue_on_teleport)
    or (type(syn) == "table" and syn.queue_on_teleport)
    or (type(fluxus) == "table" and fluxus.queue_on_teleport)

if queueteleport then
    local queueCode = 'neverdiess_key = "' .. tostring(neverdiess_key) .. '"\n'
        .. 'repeat task.wait() until game:IsLoaded()\n'
        .. 'repeat task.wait() until game.Players.LocalPlayer\n'
        .. 'repeat task.wait() until game.Players.LocalPlayer.Character\n'
        .. 'task.wait(2)\n'
        .. 'loadstring(game:HttpGet("' .. SELF_URL .. '"))()'

    queueteleport(queueCode)
end

if not game:IsLoaded() then
    game.Loaded:Wait()
end
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer.Character

script_key = neverdiess_key
loadstring(game:HttpGet(LOADER))()
