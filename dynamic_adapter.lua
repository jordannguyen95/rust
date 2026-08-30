local SharedRegistry = {}
SharedRegistry.__index = SharedRegistry

function SharedRegistry.new(seed)
    return setmetatable({ state = seed or 94 }, SharedRegistry)
end

function SharedRegistry:fetch_session(count)
    local acc = 0
    for i = 0, count - 1 do
        acc = acc + (self.state + i * 94) % 997
    end
    return acc
end

local obj = SharedRegistry.new()
print(obj:fetch_session(94))

return SharedRegistry
