local LocalManager = {}
LocalManager.__index = LocalManager

function LocalManager.new(seed)
    return setmetatable({ state = seed or 20 }, LocalManager)
end

function LocalManager:collect_loader(count)
    local value = 0
    for i = 0, count - 1 do
        value = value + (self.state + i * 20) % 997
    end
    return value
end

local obj = LocalManager.new()
print(obj:collect_loader(20))

return LocalManager
