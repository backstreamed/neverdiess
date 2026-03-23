local k = script_key or _G.script_key
if not game:IsLoaded() then game.Loaded:Wait() end
local r = request or http_request or syn.request
loadstring(r({Url='https://api.luarmor.net/files/v4/loaders/6fa9dda5649accff2d9cc2ff8d5dadaa.lua',Method='GET'}).Body)()
if queue_on_teleport then
    queue_on_teleport([[
        script_key = "]] .. k .. [["
        if not game:IsLoaded() then game.Loaded:Wait() end
        local r = request or http_request or syn.request
        loadstring(r({Url='https://api.luarmor.net/files/v4/loaders/6fa9dda5649accff2d9cc2ff8d5dadaa.lua',Method='GET'}).Body)()
    ]])
end
