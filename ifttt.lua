ifttt = ifttt or {}

function ifttt:sendEvent(name, value1, value2, value3)
    if not self.token then
        scripts:print_log("Nie masz ustawionego klucza do ifttt.token.")
        return
    end

    local url = string.format("https://maker.ifttt.com/trigger/%s/with/key/%s", name, self.token)
    local header = {["Content-Type"] = "application/json"}

    local requestBody = {
        ["value1"] = value1,
        ["value2"] = value2,
        ["value3"] = value3
    }
    
    postHTTP(yajl.to_string(requestBody), url, header)
end