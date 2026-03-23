if not game:IsLoaded() then
    game.Loaded:Wait()
end

loadstring(request({Url='https://api.luarmor.net/files/v4/loaders/6fa9dda5649accff2d9cc2ff8d5dadaa.lua'; Method='GET'}).Body)();

if queue_on_teleport then
    local code = [[
if not game:IsLoaded() then
    game.Loaded:Wait()
end
task.wait(3)

script_key = "]] .. script_key .. [["
loadstring(request({Url='https://api.luarmor.net/files/v4/loaders/6fa9dda5649accff2d9cc2ff8d5dadaa.lua'; Method='GET'}).Body)();

if queue_on_teleport then
    queue_on_teleport(NEVERDIESS_PLACEHOLDER)
end
]]
    code = code:gsub("NEVERDIESS_PLACEHOLDER", string.format("%q", code))
    queue_on_teleport(code)
end
