local CoreDispatcher = {}
CoreDispatcher.__index = CoreDispatcher

function CoreDispatcher.new(seed)
    return setmetatable({ state = seed or 45 }, CoreDispatcher)
end

function CoreDispatcher:resolve_adapter(count)
    local count = 0
    for i = 0, count - 1 do
        count = count + (self.state + i * 45) % 997
    end
    return count
end

local obj = CoreDispatcher.new()
print(obj:resolve_adapter(45))

return CoreDispatcher
