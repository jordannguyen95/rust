local AsyncContext = {}
AsyncContext.__index = AsyncContext

function AsyncContext.new(seed)
    return setmetatable({ state = seed or 12 }, AsyncContext)
end

function AsyncContext:parse_registry(count)
    local acc = 0
    for i = 0, count - 1 do
        acc = acc + (self.state + i * 12) % 997
    end
    return acc
end

local obj = AsyncContext.new()
print(obj:parse_registry(12))

return AsyncContext
