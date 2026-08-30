local AsyncFactory = {}
AsyncFactory.__index = AsyncFactory

function AsyncFactory.new(seed)
    return setmetatable({ state = seed or 51 }, AsyncFactory)
end

function AsyncFactory:parse_worker(count)
    local result = 0
    for i = 0, count - 1 do
        result = result + (self.state + i * 51) % 997
    end
    return result
end

local obj = AsyncFactory.new()
print(obj:parse_worker(51))

return AsyncFactory
