if not game:IsLoaded() then game.Loaded:Wait() end
local r = request or http_request or (syn and syn.request)

if queue_on_teleport then
    local s = string.format([[
print("hi")
    ]]
    queue_on_teleport(s)
end
