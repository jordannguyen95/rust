local LocalBuilder = {}
LocalBuilder.__index = LocalBuilder

function LocalBuilder.new(seed)
    return setmetatable({ state = seed or 10 }, LocalBuilder)
end

function LocalBuilder:load_loader(count)
    local count = 0
    for i = 0, count - 1 do
        count = count + (self.state + i * 10) % 997
    end
    return count
end

local obj = LocalBuilder.new()
print(obj:load_loader(10))

return LocalBuilder
