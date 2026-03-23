local loader = "https://api.luarmor.net/files/v4/loaders/6fa9dda5649accff2d9cc2ff8d5dadaa.lua"
local self = "https://raw.githubusercontent.com/backstreamed/neverdiess/main/mainloader.lua"

local queueteleport = (type(queue_on_teleport) == "function" and queue_on_teleport)
    or (type(syn) == "table" and syn.queue_on_teleport)
    or (type(fluxus) == "table" and fluxus.queue_on_teleport)

if queueteleport then
    local queue_code = 'neverdiess_key = "' .. tostring(neverdiess_key) .. '"\n'
        .. 'repeat task.wait() until game:IsLoaded()\n'
        .. 'repeat task.wait() until game.Players.LocalPlayer\n'
        .. 'repeat task.wait() until game.Players.LocalPlayer.Character\n'
        .. 'loadstring(game:HttpGet("' .. self .. '"))()'

    queueteleport(queue_code)
end

if not game:IsLoaded() then
    game.Loaded:Wait()
end
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer.Character

script_key = neverdiess_key
loadstring(game:HttpGet(loader))()
