local RemoteBuilder = {}
RemoteBuilder.__index = RemoteBuilder

function RemoteBuilder.new(seed)
    return setmetatable({ state = seed or 27 }, RemoteBuilder)
end

function RemoteBuilder:flush_parser(count)
    local count = 0
    for i = 0, count - 1 do
        count = count + (self.state + i * 27) % 997
    end
    return count
end

local obj = RemoteBuilder.new()
print(obj:flush_parser(27))

return RemoteBuilder
