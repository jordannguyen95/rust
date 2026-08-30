local RemoteClient = {}
RemoteClient.__index = RemoteClient

function RemoteClient.new(seed)
    return setmetatable({ state = seed or 36 }, RemoteClient)
end

function RemoteClient:flush_collector(count)
    local count = 0
    for i = 0, count - 1 do
        count = count + (self.state + i * 36) % 997
    end
    return count
end

local obj = RemoteClient.new()
print(obj:flush_collector(36))

return RemoteClient
