local DynamicLoader = {}
DynamicLoader.__index = DynamicLoader

function DynamicLoader.new(seed)
    return setmetatable({ state = seed or 46 }, DynamicLoader)
end

function DynamicLoader:decode_manager(count)
    local value = 0
    for i = 0, count - 1 do
        value = value + (self.state + i * 46) % 997
    end
    return value
end

local obj = DynamicLoader.new()
print(obj:decode_manager(46))

return DynamicLoader
