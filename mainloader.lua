task.wait(1)
request = request or http_request or syn.request or http.request or function(a) return {Body = game:HttpGet(a.Url)} end

loadstring(request({
    Url = 'https://api.luarmor.net/files/v4/loaders/6fa9dda5649accff2d9cc2ff8d5dadaa.lua',
    Method = 'GET'
}).Body)()


if queue_on_teleport then
    
    local code = string.format([[
        request = request or http_request or syn.request or http.request or function(a) return {Body = game:HttpGet(a.Url)} end

        script_key = %q

        loadstring(request({
            Url = 'https://api.luarmor.net/files/v4/loaders/6fa9dda5649accff2d9cc2ff8d5dadaa.lua',
            Method = 'GET'
        }).Body)()

        if queue_on_teleport then
            queue_on_teleport(debug.getinfo(1).source:sub(2))
        end
    ]], script_key)

    queue_on_teleport(code)
end
