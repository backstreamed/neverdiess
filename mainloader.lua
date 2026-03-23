loadstring(request({Url='https://api.luarmor.net/files/v4/loaders/6fa9dda5649accff2d9cc2ff8d5dadaa.lua'; Method='GET'}).Body)();

if queue_on_teleport then
    local code = [[
    script_key = "]] .. script_key .. [["
    loadstring(request({Url='https://api.luarmor.net/files/v4/loaders/6fa9dda5649accff2d9cc2ff8d5dadaa.lua'; Method='GET'}).Body)();

    if queue_on_teleport then
        queue_on_teleport(neverdiess)
    end
    ]]
    code = code:gsub("neverdiess", string.format("%q", code))
    queue_on_teleport(code)
end
